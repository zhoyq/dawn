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

#ifndef SRC_AST_EXPRESSION_H_
#define SRC_AST_EXPRESSION_H_

#include <string>
#include <vector>

#include "src/ast/node.h"
#include "src/sem/type.h"

namespace tint {
namespace ast {

/// Base expression class
class Expression : public Castable<Expression, Node> {
 public:
  ~Expression() override;

 protected:
  /// Constructor
  /// @param pid the identifier of the program that owns this node
  /// @param src the source of this node
  Expression(ProgramID pid, const Source& src);
  /// Move constructor
  Expression(Expression&&);

 private:
  Expression(const Expression&) = delete;
};

/// A list of expressions
using ExpressionList = std::vector<Expression*>;

}  // namespace ast
}  // namespace tint

#endif  // SRC_AST_EXPRESSION_H_
