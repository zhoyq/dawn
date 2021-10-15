// Copyright 2020 The Tint Authors.
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

#include "src/ast/call_statement.h"

#include "src/program_builder.h"

TINT_INSTANTIATE_TYPEINFO(tint::ast::CallStatement);

namespace tint {
namespace ast {

CallStatement::CallStatement(ProgramID pid,
                             const Source& src,
                             CallExpression* call)
    : Base(pid, src), expr(call) {
  TINT_ASSERT(AST, expr);
  TINT_ASSERT_PROGRAM_IDS_EQUAL_IF_VALID(AST, expr, program_id);
}

CallStatement::CallStatement(CallStatement&&) = default;

CallStatement::~CallStatement() = default;

CallStatement* CallStatement::Clone(CloneContext* ctx) const {
  // Clone arguments outside of create() call to have deterministic ordering
  auto src = ctx->Clone(source);
  auto* call = ctx->Clone(expr);
  return ctx->dst->create<CallStatement>(src, call);
}

}  // namespace ast
}  // namespace tint
