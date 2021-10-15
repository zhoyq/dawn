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

#ifndef SRC_AST_BOOL_LITERAL_H_
#define SRC_AST_BOOL_LITERAL_H_

#include <string>

#include "src/ast/literal.h"

namespace tint {
namespace ast {

/// A boolean literal
class BoolLiteral : public Castable<BoolLiteral, Literal> {
 public:
  /// Constructor
  /// @param pid the identifier of the program that owns this node
  /// @param src the source of this node
  /// @param value the bool literals value
  BoolLiteral(ProgramID pid, const Source& src, bool value);
  ~BoolLiteral() override;


  /// Clones this node and all transitive child nodes using the `CloneContext`
  /// `ctx`.
  /// @param ctx the clone context
  /// @return the newly cloned node
  BoolLiteral* Clone(CloneContext* ctx) const override;

  /// The boolean literal value
  bool const value;
};

}  // namespace ast
}  // namespace tint

#endif  // SRC_AST_BOOL_LITERAL_H_
