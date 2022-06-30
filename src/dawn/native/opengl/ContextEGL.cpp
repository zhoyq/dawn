// Copyright 2022 The Dawn Authors
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

#include "dawn/native/opengl/ContextEGL.h"

#include <memory>
#include <vector>

namespace dawn::native::opengl {

std::unique_ptr<ContextEGL> ContextEGL::Create(const EGLFunctions& egl, EGLenum api) {
    EGLDisplay display = egl.GetCurrentDisplay();

    if (display == EGL_NO_DISPLAY) {
        display = egl.GetDisplay(EGL_DEFAULT_DISPLAY);
    }

    if (display == EGL_NO_DISPLAY) {
        return nullptr;
    }

    EGLint renderableType = api == EGL_OPENGL_ES_API ? EGL_OPENGL_ES3_BIT : EGL_OPENGL_BIT;

    egl.Initialize(display, nullptr, nullptr);

    // Since we're creating a surfaceless context, the only thing we really care
    // about is the RENDERABLE_TYPE.
    EGLint config_attribs[] = {EGL_RENDERABLE_TYPE, renderableType, EGL_NONE};

    EGLint num_config;
    EGLConfig config;
    if (egl.ChooseConfig(display, config_attribs, &config, 1, &num_config) == EGL_FALSE) {
        return nullptr;
    }

    if (!egl.BindAPI(api)) {
        return nullptr;
    }

    EGLint major, minor;
    if (api == EGL_OPENGL_ES_API) {
        major = 3;
        minor = 1;
    } else {
        major = 4;
        minor = 4;
    }
    EGLint attrib_list[] = {
        EGL_CONTEXT_MAJOR_VERSION, major, EGL_CONTEXT_MINOR_VERSION, minor, EGL_NONE, EGL_NONE,
    };
    EGLContext context = egl.CreateContext(display, config, EGL_NO_CONTEXT, attrib_list);
    if (!context) {
        return nullptr;
    }

    return std::unique_ptr<ContextEGL>(new ContextEGL(egl, display, context));
}

void ContextEGL::MakeCurrent() {
    egl.MakeCurrent(mDisplay, EGL_NO_SURFACE, EGL_NO_SURFACE, mContext);
}

ContextEGL::~ContextEGL() {
    egl.DestroyContext(mDisplay, mContext);
}

}  // namespace dawn::native::opengl