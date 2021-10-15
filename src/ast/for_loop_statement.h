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

#ifndef SRC_AST_FOR_LOOP_STATEMENT_H_
#define SRC_AST_FOR_LOOP_STATEMENT_H_

#include "src/ast/block_statement.h"

namespace tint {
namespace ast {

class Expression;

/// A for loop statement
class ForLoopStatement : public Castable<ForLoopStatement, Statement> {
 public:
  /// Constructor
  /// @param program_id the identifier of the program that owns this node
  /// @param source the for loop statement source
  /// @param initializer the optional loop initializer statement
  /// @param condition the optional loop condition expression
  /// @param continuing the optional continuing statement
  /// @param body the loop body
  ForLoopStatement(ProgramID program_id,
                   const Source& source,
                   Statement* initializer,
                   Expression* condition,
                   Statement* continuing,
                   BlockStatement* body);
  /// Move constructor
  ForLoopStatement(ForLoopStatement&&);
  ~ForLoopStatement() override;

  /// Clones this node and all transitive child nodes using the `CloneContext`
  /// `ctx`.
  /// @param ctx the clone context
  /// @return the newly cloned node
  ForLoopStatement* Clone(CloneContext* ctx) const override;

  /// The initializer statement
  Statement* const initializer;

  /// The condition expression
  Expression* const condition;

  /// The continuing statement
  Statement* const continuing;

  /// The loop body block
  BlockStatement* const body;

 private:
  ForLoopStatement(const ForLoopStatement&) = delete;
};

}  // namespace ast
}  // namespace tint

#endif  // SRC_AST_FOR_LOOP_STATEMENT_H_
