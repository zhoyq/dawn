// Copyright 2018 The Dawn Authors
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//     http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

#ifndef DAWNNATIVE_OPENGL_DEVICEGL_H_
#define DAWNNATIVE_OPENGL_DEVICEGL_H_

#include "dawn_native/dawn_platform.h"

#include "common/Platform.h"
#include "dawn_native/Device.h"
#include "dawn_native/QuerySet.h"
#include "dawn_native/opengl/Forward.h"
#include "dawn_native/opengl/GLFormat.h"
#include "dawn_native/opengl/OpenGLFunctions.h"

#include <queue>

// Remove windows.h macros after glad's include of windows.h
#if defined(DAWN_PLATFORM_WINDOWS)
#    include "common/windows_with_undefs.h"
#endif

namespace dawn_native { namespace opengl {

    class Device : public DeviceBase {
      public:
        static ResultOrError<Device*> Create(AdapterBase* adapter,
                                             const DeviceDescriptor* descriptor,
                                             const OpenGLFunctions& functions);
        ~Device() override;

        MaybeError Initialize();

        // Contains all the OpenGL entry points, glDoFoo is called via device->gl.DoFoo.
        const OpenGLFunctions gl;

        const GLFormat& GetGLFormat(const Format& format);

        void SubmitFenceSync();

        ResultOrError<Ref<CommandBufferBase>> CreateCommandBuffer(
            CommandEncoder* encoder,
            const CommandBufferDescriptor* descriptor) override;

        MaybeError TickImpl() override;

        ResultOrError<std::unique_ptr<StagingBufferBase>> CreateStagingBuffer(size_t size) override;
        MaybeError CopyFromStagingToBuffer(StagingBufferBase* source,
                                           uint64_t sourceOffset,
                                           BufferBase* destination,
                                           uint64_t destinationOffset,
                                           uint64_t size) override;

        MaybeError CopyFromStagingToTexture(const StagingBufferBase* source,
                                            const TextureDataLayout& src,
                                            TextureCopy* dst,
                                            const Extent3D& copySizePixels) override;

        uint32_t GetOptimalBytesPerRowAlignment() const override;
        uint64_t GetOptimalBufferToTextureCopyOffsetAlignment() const override;

        float GetTimestampPeriodInNS() const override;

      private:
        Device(AdapterBase* adapter,
               const DeviceDescriptor* descriptor,
               const OpenGLFunctions& functions);

        ResultOrError<Ref<BindGroupBase>> CreateBindGroupImpl(
            const BindGroupDescriptor* descriptor) override;
        ResultOrError<Ref<BindGroupLayoutBase>> CreateBindGroupLayoutImpl(
            const BindGroupLayoutDescriptor* descriptor) override;
        ResultOrError<Ref<BufferBase>> CreateBufferImpl(
            const BufferDescriptor* descriptor) override;
        ResultOrError<Ref<ComputePipelineBase>> CreateComputePipelineImpl(
            const ComputePipelineDescriptor* descriptor) override;
        ResultOrError<Ref<PipelineLayoutBase>> CreatePipelineLayoutImpl(
            const PipelineLayoutDescriptor* descriptor) override;
        ResultOrError<Ref<QuerySetBase>> CreateQuerySetImpl(
            const QuerySetDescriptor* descriptor) override;
        ResultOrError<Ref<RenderPipelineBase>> CreateRenderPipelineImpl(
            const RenderPipelineDescriptor2* descriptor) override;
        ResultOrError<Ref<SamplerBase>> CreateSamplerImpl(
            const SamplerDescriptor* descriptor) override;
        ResultOrError<Ref<ShaderModuleBase>> CreateShaderModuleImpl(
            const ShaderModuleDescriptor* descriptor,
            ShaderModuleParseResult* parseResult) override;
        ResultOrError<Ref<SwapChainBase>> CreateSwapChainImpl(
            const SwapChainDescriptor* descriptor) override;
        ResultOrError<Ref<NewSwapChainBase>> CreateSwapChainImpl(
            Surface* surface,
            NewSwapChainBase* previousSwapChain,
            const SwapChainDescriptor* descriptor) override;
        ResultOrError<Ref<TextureBase>> CreateTextureImpl(
            const TextureDescriptor* descriptor) override;
        ResultOrError<Ref<TextureViewBase>> CreateTextureViewImpl(
            TextureBase* texture,
            const TextureViewDescriptor* descriptor) override;

        void InitTogglesFromDriver();
        ExecutionSerial CheckAndUpdateCompletedSerials() override;
        void ShutDownImpl() override;
        MaybeError WaitForIdleForDestruction() override;

        std::queue<std::pair<GLsync, ExecutionSerial>> mFencesInFlight;

        GLFormatTable mFormatTable;
    };

}}  // namespace dawn_native::opengl

#endif  // DAWNNATIVE_OPENGL_DEVICEGL_H_
