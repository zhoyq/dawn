// Copyright 2021 The Tint Authors.
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

#include "src/sem/block_statement.h"

#include "src/ast/block_statement.h"
#include "src/ast/function.h"
#include "src/sem/function.h"

TINT_INSTANTIATE_TYPEINFO(tint::sem::BlockStatement);
TINT_INSTANTIATE_TYPEINFO(tint::sem::FunctionBlockStatement);
TINT_INSTANTIATE_TYPEINFO(tint::sem::LoopBlockStatement);

namespace tint {
namespace sem {

BlockStatement::BlockStatement(const ast::BlockStatement* declaration,
                               const CompoundStatement* parent)
    : Base(declaration, parent) {}

BlockStatement::~BlockStatement() = default;

const ast::BlockStatement* BlockStatement::Declaration() const {
  return Base::Declaration()->As<ast::BlockStatement>();
}

void BlockStatement::AddDecl(ast::Variable* var) {
  decls_.push_back(var);
}

FunctionBlockStatement::FunctionBlockStatement(const ast::Function* function)
    : Base(function->body, nullptr), function_(function) {}

FunctionBlockStatement::~FunctionBlockStatement() = default;

LoopBlockStatement::LoopBlockStatement(const ast::BlockStatement* declaration,
                                       const CompoundStatement* parent)
    : Base(declaration, parent) {
  TINT_ASSERT(Semantic, parent);
}
LoopBlockStatement::~LoopBlockStatement() = default;

void LoopBlockStatement::SetFirstContinue(
    const ast::ContinueStatement* first_continue,
    size_t num_decls) {
  first_continue_ = first_continue;
  num_decls_at_first_continue_ = num_decls;
}

}  // namespace sem
}  // namespace tint
