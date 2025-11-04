# Parser errors

A parser error is reported when OCamlformat rejects an input on a specific token.
The error location is the token that caused the failure; 
it is usually the exact point where the parser could not continue.

## Error: Syntax error: A parenthesis here can only follow one of: 
  ., .L, .l, .n, .:, .:L, .:l, .:n, .idx_imm, .idx_mut.

### Item `block_access: DOTOP ident . LPAREN seq_expr RPAREN` (in 1741 errors)

- Derivation (1741 occurrences):
  ```
  block_access: DOTOP ident . LPAREN seq_expr RPAREN
  ```
  Sample sentence (implementation):
  ```ocaml
  ( .+ x ( X ) )
         ^
  ```


### Item `block_access: DOTOP . LPAREN seq_expr RPAREN` (in 1740 errors)

- Derivation (1740 occurrences):
  ```
  block_access: DOTOP . LPAREN seq_expr RPAREN
  ```
  Sample sentence (implementation):
  ```ocaml
  ( .+ ( _ ) )
       ^
  ```


### Item `block_access: DOT ident . LPAREN seq_expr RPAREN` (in 1740 errors)

- Derivation (1740 occurrences):
  ```
  block_access: DOT ident . LPAREN seq_expr RPAREN
  ```
  Sample sentence (implementation):
  ```ocaml
  ( . x ( X ) )
        ^
  ```

## Error: Syntax error: ')' expected

### Item `fun_expr: OVERWRITE ext list(attribute) seq_expr . WITH fun_expr` (in 259 errors)

- Derivation (259 occurrences):
  ```
  fun_expr: OVERWRITE ext list(attribute) seq_expr . WITH fun_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  ( overwrite_ X with X )
                 ^^^^
  ```


### Item `fun_expr: OVERWRITE ext list(attribute) seq_expr . WITH FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)` (in 185 errors)

- Derivation (185 occurrences):
  ```
  fun_expr: OVERWRITE ext list(attribute) seq_expr . WITH FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
  ```
  Sample sentence (implementation):
  ```ocaml
  ( overwrite_ X with function false -> X )
                 ^^^^
  ```


### Item `fun_expr: OVERWRITE ext list(attribute) seq_expr . WITH STACK FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)` (in 185 errors)

- Derivation (185 occurrences):
  ```
  fun_expr: OVERWRITE ext list(attribute) seq_expr . WITH STACK FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
  ```
  Sample sentence (implementation):
  ```ocaml
  ( overwrite_ X with stack_ function false -> X )
                 ^^^^
  ```


### Item `fun_seq_expr: . fun_expr` (in 72 errors)

- Derivation (1 occurrence):
  ```
  fun_expr: ONCE . seq_expr
    seq_expr: . fun_seq_expr
      fun_seq_expr: . fun_expr
        fun_expr: . reversed_labeled_tuple_body
          reversed_labeled_tuple_body: . STACK FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case) COMMA LABEL simple_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  ( once_ stack_ function false -> . , ~label: #1.0 )
          ^^^^^^
  ```
- Derivation (1 occurrence):
  ```
  fun_expr: UNIQUE . seq_expr
    seq_expr: . fun_seq_expr
      fun_seq_expr: . fun_expr
        fun_expr: . reversed_labeled_tuple_body
          reversed_labeled_tuple_body: . STACK FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case) COMMA LABEL simple_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  ( unique_ stack_ function false -> . , ~label: #1.0 )
            ^^^^^^
  ```
- Derivation (1 occurrence):
  ```
  fun_expr: ONCE . seq_expr
    seq_expr: . fun_seq_expr
      fun_seq_expr: . fun_expr
        fun_expr: . reversed_labeled_tuple_body
          reversed_labeled_tuple_body: . STACK FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case) COMMA STACK FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
  ```
  Sample sentence (implementation):
  ```ocaml
  ( once_ stack_ function false -> . , stack_ function false -> X )
          ^^^^^^
  ```
- Derivation (1 occurrence):
  ```
  fun_expr: UNIQUE . seq_expr
    seq_expr: . fun_seq_expr
      fun_seq_expr: . fun_expr
        fun_expr: . reversed_labeled_tuple_body
          reversed_labeled_tuple_body: . STACK FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case) COMMA STACK FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
  ```
  Sample sentence (implementation):
  ```ocaml
  ( unique_ stack_ function false -> . , stack_ function false -> X )
            ^^^^^^
  ```
- Derivation (1 occurrence):
  ```
  fun_expr: ONCE . seq_expr
    seq_expr: . fun_seq_expr
      fun_seq_expr: . fun_expr
        fun_expr: . reversed_labeled_tuple_body
          reversed_labeled_tuple_body: . STACK FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case) COMMA FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
  ```
  Sample sentence (implementation):
  ```ocaml
  ( once_ stack_ function false -> . , function false -> X )
          ^^^^^^
  ```
- Derivation (1 occurrence):
  ```
  fun_expr: UNIQUE . seq_expr
    seq_expr: . fun_seq_expr
      fun_seq_expr: . fun_expr
        fun_expr: . reversed_labeled_tuple_body
          reversed_labeled_tuple_body: . STACK FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case) COMMA FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
  ```
  Sample sentence (implementation):
  ```ocaml
  ( unique_ stack_ function false -> . , function false -> X )
            ^^^^^^
  ```
- Derivation (1 occurrence):
  ```
  fun_expr: ONCE . seq_expr
    seq_expr: . fun_seq_expr
      fun_seq_expr: . fun_expr
        fun_expr: . reversed_labeled_tuple_body
          reversed_labeled_tuple_body: . STACK FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case) COMMA fun_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  ( once_ stack_ function false -> . , X )
          ^^^^^^
  ```
- Derivation (1 occurrence):
  ```
  fun_expr: UNIQUE . seq_expr
    seq_expr: . fun_seq_expr
      fun_seq_expr: . fun_expr
        fun_expr: . reversed_labeled_tuple_body
          reversed_labeled_tuple_body: . STACK FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case) COMMA fun_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  ( unique_ stack_ function false -> . , X )
            ^^^^^^
  ```
- Derivation (1 occurrence):
  ```
  fun_expr: ONCE . seq_expr
    seq_expr: . fun_seq_expr
      fun_seq_expr: . fun_expr
        fun_expr: . reversed_labeled_tuple_body
          reversed_labeled_tuple_body: . FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case) COMMA LABEL simple_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  ( once_ function false -> . , ~label: #1.0 )
          ^^^^^^^^
  ```
- Derivation (1 occurrence):
  ```
  fun_expr: UNIQUE . seq_expr
    seq_expr: . fun_seq_expr
      fun_seq_expr: . fun_expr
        fun_expr: . reversed_labeled_tuple_body
          reversed_labeled_tuple_body: . FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case) COMMA LABEL simple_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  ( unique_ function false -> . , ~label: #1.0 )
            ^^^^^^^^
  ```
- Derivation (1 occurrence):
  ```
  fun_expr: ONCE . seq_expr
    seq_expr: . fun_seq_expr
      fun_seq_expr: . fun_expr
        fun_expr: . reversed_labeled_tuple_body
          reversed_labeled_tuple_body: . FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case) COMMA STACK FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
  ```
  Sample sentence (implementation):
  ```ocaml
  ( once_ function false -> . , stack_ function false -> X )
          ^^^^^^^^
  ```
- Derivation (1 occurrence):
  ```
  fun_expr: UNIQUE . seq_expr
    seq_expr: . fun_seq_expr
      fun_seq_expr: . fun_expr
        fun_expr: . reversed_labeled_tuple_body
          reversed_labeled_tuple_body: . FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case) COMMA STACK FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
  ```
  Sample sentence (implementation):
  ```ocaml
  ( unique_ function false -> . , stack_ function false -> X )
            ^^^^^^^^
  ```
- Derivation (1 occurrence):
  ```
  fun_expr: ONCE . seq_expr
    seq_expr: . fun_seq_expr
      fun_seq_expr: . fun_expr
        fun_expr: . reversed_labeled_tuple_body
          reversed_labeled_tuple_body: . FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case) COMMA FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
  ```
  Sample sentence (implementation):
  ```ocaml
  ( once_ function false -> . , function false -> X )
          ^^^^^^^^
  ```
- Derivation (1 occurrence):
  ```
  fun_expr: UNIQUE . seq_expr
    seq_expr: . fun_seq_expr
      fun_seq_expr: . fun_expr
        fun_expr: . reversed_labeled_tuple_body
          reversed_labeled_tuple_body: . FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case) COMMA FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
  ```
  Sample sentence (implementation):
  ```ocaml
  ( unique_ function false -> . , function false -> X )
            ^^^^^^^^
  ```
- Derivation (1 occurrence):
  ```
  fun_expr: ONCE . seq_expr
    seq_expr: . fun_seq_expr
      fun_seq_expr: . fun_expr
        fun_expr: . reversed_labeled_tuple_body
          reversed_labeled_tuple_body: . FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case) COMMA fun_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  ( once_ function false -> . , X )
          ^^^^^^^^
  ```
- Derivation (1 occurrence):
  ```
  fun_expr: UNIQUE . seq_expr
    seq_expr: . fun_seq_expr
      fun_seq_expr: . fun_expr
        fun_expr: . reversed_labeled_tuple_body
          reversed_labeled_tuple_body: . FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case) COMMA fun_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  ( unique_ function false -> . , X )
            ^^^^^^^^
  ```
- Derivation (1 occurrence):
  ```
  fun_expr: ONCE . seq_expr
    seq_expr: . fun_seq_expr
      fun_seq_expr: . fun_expr
        fun_expr: . let_bindings(ext) IN seq_expr
          let_bindings(ext): . LET ext list(attribute) mutable_flag rec_flag let_binding_body list(post_item_attribute)
  ```
  Sample sentence (implementation):
  ```ocaml
  ( once_ let x in X )
          ^^^
  ```
- Derivation (1 occurrence):
  ```
  fun_expr: UNIQUE . seq_expr
    seq_expr: . fun_seq_expr
      fun_seq_expr: . fun_expr
        fun_expr: . let_bindings(ext) IN seq_expr
          let_bindings(ext): . LET ext list(attribute) mutable_flag rec_flag let_binding_body list(post_item_attribute)
  ```
  Sample sentence (implementation):
  ```ocaml
  ( unique_ let x in X )
            ^^^
  ```
- Derivation (1 occurrence):
  ```
  fun_expr: ONCE . seq_expr
    seq_expr: . fun_seq_expr
      fun_seq_expr: . fun_expr
        fun_expr: . EXCLAVE seq_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  ( once_ exclave_ X )
          ^^^^^^^^
  ```
- Derivation (1 occurrence):
  ```
  fun_expr: UNIQUE . seq_expr
    seq_expr: . fun_seq_expr
      fun_seq_expr: . fun_expr
        fun_expr: . EXCLAVE seq_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  ( unique_ exclave_ X )
            ^^^^^^^^
  ```
- Derivation (1 occurrence):
  ```
  fun_expr: ONCE . seq_expr
    seq_expr: . fun_seq_expr
      fun_seq_expr: . fun_expr
        fun_expr: . LOCAL seq_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  ( once_ local_ X )
          ^^^^^^
  ```
- ...


### Item `seq_expr: . FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)` (in 42 errors)

- Derivation (21 occurrences):
  ```
  fun_expr: ONCE . seq_expr
    seq_expr: . FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
  ```
  Sample sentence (implementation):
  ```ocaml
  ( once_ function false -> X )
          ^^^^^^^^
  ```
- Derivation (21 occurrences):
  ```
  fun_expr: UNIQUE . seq_expr
    seq_expr: . FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
  ```
  Sample sentence (implementation):
  ```ocaml
  ( unique_ function false -> X )
            ^^^^^^^^
  ```


### Item `fun_seq_expr: fun_expr . SEMI` (in 28 errors)

- Derivation (28 occurrences):
  ```
  fun_seq_expr: fun_expr . SEMI
  ```
  Sample sentence (implementation):
  ```ocaml
  ( unique_ X ; ; )
                ^
  ```


### Item `fun_expr: fun_expr . AT fun_expr` (in 18 errors)

- Derivation (18 occurrences):
  ```
  fun_expr: fun_expr . AT fun_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  ( unique_ X ; @ X )
                ^
  ```


### Item `fun_expr: fun_expr . INFIXOP3 fun_expr` (in 18 errors)

- Derivation (18 occurrences):
  ```
  fun_expr: fun_expr . INFIXOP3 fun_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  ( unique_ X ; land X )
                ^^^^
  ```


### Item `fun_expr: fun_expr . INFIXOP4 fun_expr` (in 18 errors)

- Derivation (18 occurrences):
  ```
  fun_expr: fun_expr . INFIXOP4 fun_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  ( unique_ X ; ** X )
                ^^
  ```


### Item `fun_expr: fun_expr . EQUAL fun_expr` (in 18 errors)

- Derivation (18 occurrences):
  ```
  fun_expr: fun_expr . EQUAL fun_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  ( unique_ X ; = X )
                ^
  ```


### Item `fun_expr: fun_expr . BARBAR fun_expr` (in 18 errors)

- Derivation (18 occurrences):
  ```
  fun_expr: fun_expr . BARBAR fun_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  ( unique_ X ; || X )
                ^^
  ```


### Item `fun_expr: fun_expr . AMPERAMPER fun_expr` (in 18 errors)

- Derivation (18 occurrences):
  ```
  fun_expr: fun_expr . AMPERAMPER fun_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  ( unique_ X ; && X )
                ^^
  ```


### Item `fun_expr: fun_expr . COLONEQUAL fun_expr` (in 18 errors)

- Derivation (18 occurrences):
  ```
  fun_expr: fun_expr . COLONEQUAL fun_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  ( unique_ X ; := X )
                ^^
  ```


### Item `fun_expr: fun_expr . COLONCOLON fun_expr` (in 18 errors)

- Derivation (18 occurrences):
  ```
  fun_expr: fun_expr . COLONCOLON fun_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  ( unique_ X ; :: X )
                ^^
  ```


### Item `reversed_labeled_tuple_body: fun_expr . COMMA fun_expr` (in 18 errors)

- Derivation (18 occurrences):
  ```
  reversed_labeled_tuple_body: fun_expr . COMMA fun_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  ( unique_ X ; , X )
                ^
  ```


### Item `nonempty_list(mode_legacy): . LOCAL` (in 8 errors)

- Derivation (4 occurrences):
  ```
  nonempty_list(mode_legacy): ONCE . nonempty_list(mode_legacy)
    nonempty_list(mode_legacy): . LOCAL
  ```
  Sample sentence (implementation):
  ```ocaml
  fun ( once_ local_ false ) -> X
              ^^^^^^
  ```
- Derivation (4 occurrences):
  ```
  nonempty_list(mode_legacy): UNIQUE . nonempty_list(mode_legacy)
    nonempty_list(mode_legacy): . LOCAL
  ```
  Sample sentence (implementation):
  ```ocaml
  fun ( unique_ local_ false ) -> X
                ^^^^^^
  ```


### Item `separated_or_terminated_nonempty_list(SEMI,expr): fun_expr . SEMI` (in 8 errors)

- Derivation (8 occurrences):
  ```
  separated_or_terminated_nonempty_list(SEMI,expr): fun_expr . SEMI
  ```
  Sample sentence (implementation):
  ```ocaml
  X .+ ( once_ X ; ; )
                   ^
  ```


### Item `atomic_type: . delimited_type` (in 4 errors)

- Derivation (4 occurrences):
  ```
  strict_function_or_labeled_tuple_type: nonempty_list(mode_legacy) . tuple_type MINUSGREATER tuple_type
    tuple_type: . atomic_type
      atomic_type: . delimited_type
        delimited_type: . extension_type
          extension_type: . extension
            extension: . QUOTED_STRING_EXPR
  ```
  Sample sentence (implementation):
  ```ocaml
  function ( false : once_ {%ext|s|} -> {%ext|s|} ) -> .
                           ^^^^^^^^^
  ```


### Item `constr_extra_nonprefix_ident: . FALSE` (in 4 errors)

- Derivation (4 occurrences):
  ```
  pattern_with_modes_or_poly: nonempty_list(mode_legacy) . pattern optional_poly_type_and_modes
    pattern: . pattern_gen
      pattern_gen: . simple_pattern
        simple_pattern: . simple_pattern_not_ident
          simple_pattern_not_ident: . constr_longident
            constr_longident: . constr_extra_nonprefix_ident
              constr_extra_nonprefix_ident: . FALSE
  ```
  Sample sentence (implementation):
  ```ocaml
  fun ( once_ false ) -> X
              ^^^^^
  ```


### Item `fun_expr: LIDENT . LESSMINUS fun_expr` (in 2 errors)

- Derivation (2 occurrences):
  ```
  fun_expr: LIDENT . LESSMINUS fun_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  ( unique_ x <- X )
              ^^
  ```


### Item `fun_expr: LIDENT . LESSMINUS FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)` (in 2 errors)

- Derivation (2 occurrences):
  ```
  fun_expr: LIDENT . LESSMINUS FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
  ```
  Sample sentence (implementation):
  ```ocaml
  ( unique_ x <- function false -> X )
              ^^
  ```


### Item `fun_expr: LIDENT . LESSMINUS STACK FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)` (in 2 errors)

- Derivation (2 occurrences):
  ```
  fun_expr: LIDENT . LESSMINUS STACK FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
  ```
  Sample sentence (implementation):
  ```ocaml
  ( unique_ x <- stack_ function false -> X )
              ^^
  ```


### Item `fun_expr: simple_expr DOT label_longident . LESSMINUS fun_expr` (in 2 errors)

- Derivation (2 occurrences):
  ```
  fun_expr: simple_expr DOT label_longident . LESSMINUS fun_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  ( unique_ false . x <- X )
                      ^^
  ```


### Item `fun_expr: simple_expr DOT label_longident . LESSMINUS FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)` (in 2 errors)

- Derivation (2 occurrences):
  ```
  fun_expr: simple_expr DOT label_longident . LESSMINUS FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
  ```
  Sample sentence (implementation):
  ```ocaml
  ( unique_ false . x <- function false -> X )
                      ^^
  ```


### Item `fun_expr: simple_expr DOT label_longident . LESSMINUS STACK FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)` (in 2 errors)

- Derivation (2 occurrences):
  ```
  fun_expr: simple_expr DOT label_longident . LESSMINUS STACK FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
  ```
  Sample sentence (implementation):
  ```ocaml
  ( unique_ false . x <- stack_ function false -> X )
                      ^^
  ```


### Item `fun_expr: simple_expr DOT LPAREN seq_expr RPAREN . LESSMINUS fun_expr` (in 2 errors)

- Derivation (2 occurrences):
  ```
  fun_expr: simple_expr DOT LPAREN seq_expr RPAREN . LESSMINUS fun_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  ( unique_ false . ( X ) <- X )
                          ^^
  ```


### Item `fun_expr: simple_expr DOT LPAREN seq_expr RPAREN . LESSMINUS FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)` (in 2 errors)

- Derivation (2 occurrences):
  ```
  fun_expr: simple_expr DOT LPAREN seq_expr RPAREN . LESSMINUS FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
  ```
  Sample sentence (implementation):
  ```ocaml
  ( unique_ false . ( X ) <- function false -> X )
                          ^^
  ```


### Item `fun_expr: simple_expr DOT LPAREN seq_expr RPAREN . LESSMINUS STACK FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)` (in 2 errors)

- Derivation (2 occurrences):
  ```
  fun_expr: simple_expr DOT LPAREN seq_expr RPAREN . LESSMINUS STACK FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
  ```
  Sample sentence (implementation):
  ```ocaml
  ( unique_ false . ( X ) <- stack_ function false -> X )
                          ^^
  ```


### Item `fun_expr: simple_expr DOT LBRACE seq_expr RBRACE . LESSMINUS fun_expr` (in 2 errors)

- Derivation (2 occurrences):
  ```
  fun_expr: simple_expr DOT LBRACE seq_expr RBRACE . LESSMINUS fun_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  ( unique_ false . { X } <- X )
                          ^^
  ```


### Item `fun_expr: simple_expr DOT LBRACE seq_expr RBRACE . LESSMINUS FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)` (in 2 errors)

- Derivation (2 occurrences):
  ```
  fun_expr: simple_expr DOT LBRACE seq_expr RBRACE . LESSMINUS FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
  ```
  Sample sentence (implementation):
  ```ocaml
  ( unique_ false . { X } <- function false -> X )
                          ^^
  ```


### Item `fun_expr: simple_expr DOT LBRACE seq_expr RBRACE . LESSMINUS STACK FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)` (in 2 errors)

- Derivation (2 occurrences):
  ```
  fun_expr: simple_expr DOT LBRACE seq_expr RBRACE . LESSMINUS STACK FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
  ```
  Sample sentence (implementation):
  ```ocaml
  ( unique_ false . { X } <- stack_ function false -> X )
                          ^^
  ```


### Item `fun_expr: simple_expr DOT LBRACKET seq_expr RBRACKET . LESSMINUS fun_expr` (in 2 errors)

- Derivation (2 occurrences):
  ```
  fun_expr: simple_expr DOT LBRACKET seq_expr RBRACKET . LESSMINUS fun_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  ( unique_ false . [ X ] <- X )
                          ^^
  ```


### Item `fun_expr: simple_expr DOT LBRACKET seq_expr RBRACKET . LESSMINUS FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)` (in 2 errors)

- Derivation (2 occurrences):
  ```
  fun_expr: simple_expr DOT LBRACKET seq_expr RBRACKET . LESSMINUS FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
  ```
  Sample sentence (implementation):
  ```ocaml
  ( unique_ false . [ X ] <- function false -> X )
                          ^^
  ```


### Item `fun_expr: simple_expr DOT LBRACKET seq_expr RBRACKET . LESSMINUS STACK FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)` (in 2 errors)

- Derivation (2 occurrences):
  ```
  fun_expr: simple_expr DOT LBRACKET seq_expr RBRACKET . LESSMINUS STACK FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
  ```
  Sample sentence (implementation):
  ```ocaml
  ( unique_ false . [ X ] <- stack_ function false -> X )
                          ^^
  ```


### Item `fun_expr: simple_expr DOTOP LPAREN separated_or_terminated_nonempty_list(SEMI,expr) RPAREN . LESSMINUS fun_expr` (in 2 errors)

- Derivation (2 occurrences):
  ```
  fun_expr: simple_expr DOTOP LPAREN separated_or_terminated_nonempty_list(SEMI,expr) RPAREN . LESSMINUS fun_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  ( unique_ X .+ ( X ) <- X )
                       ^^
  ```


### Item `fun_expr: simple_expr DOTOP LPAREN separated_or_terminated_nonempty_list(SEMI,expr) RPAREN . LESSMINUS FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)` (in 2 errors)

- Derivation (2 occurrences):
  ```
  fun_expr: simple_expr DOTOP LPAREN separated_or_terminated_nonempty_list(SEMI,expr) RPAREN . LESSMINUS FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
  ```
  Sample sentence (implementation):
  ```ocaml
  ( unique_ X .+ ( X ) <- function false -> X )
                       ^^
  ```


### Item `fun_expr: simple_expr DOTOP LPAREN separated_or_terminated_nonempty_list(SEMI,expr) RPAREN . LESSMINUS STACK FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)` (in 2 errors)

- Derivation (2 occurrences):
  ```
  fun_expr: simple_expr DOTOP LPAREN separated_or_terminated_nonempty_list(SEMI,expr) RPAREN . LESSMINUS STACK FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
  ```
  Sample sentence (implementation):
  ```ocaml
  ( unique_ X .+ ( X ) <- stack_ function false -> X )
                       ^^
  ```


### Item `fun_expr: simple_expr DOT mod_longident DOTOP LPAREN separated_or_terminated_nonempty_list(SEMI,expr) RPAREN . LESSMINUS fun_expr` (in 2 errors)

- Derivation (2 occurrences):
  ```
  fun_expr: simple_expr DOT mod_longident DOTOP LPAREN separated_or_terminated_nonempty_list(SEMI,expr) RPAREN . LESSMINUS fun_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  ( unique_ false . X .+ ( X ) <- X )
                               ^^
  ```


### Item `fun_expr: simple_expr DOT mod_longident DOTOP LPAREN separated_or_terminated_nonempty_list(SEMI,expr) RPAREN . LESSMINUS FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)` (in 2 errors)

- Derivation (2 occurrences):
  ```
  fun_expr: simple_expr DOT mod_longident DOTOP LPAREN separated_or_terminated_nonempty_list(SEMI,expr) RPAREN . LESSMINUS FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
  ```
  Sample sentence (implementation):
  ```ocaml
  ( unique_ false . X .+ ( X ) <- function false -> X )
                               ^^
  ```


### Item `fun_expr: simple_expr DOT mod_longident DOTOP LPAREN separated_or_terminated_nonempty_list(SEMI,expr) RPAREN . LESSMINUS STACK FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)` (in 2 errors)

- Derivation (2 occurrences):
  ```
  fun_expr: simple_expr DOT mod_longident DOTOP LPAREN separated_or_terminated_nonempty_list(SEMI,expr) RPAREN . LESSMINUS STACK FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
  ```
  Sample sentence (implementation):
  ```ocaml
  ( unique_ false . X .+ ( X ) <- stack_ function false -> X )
                               ^^
  ```


### Item `fun_expr: simple_expr DOTOP LBRACE separated_or_terminated_nonempty_list(SEMI,expr) RBRACE . LESSMINUS fun_expr` (in 2 errors)

- Derivation (2 occurrences):
  ```
  fun_expr: simple_expr DOTOP LBRACE separated_or_terminated_nonempty_list(SEMI,expr) RBRACE . LESSMINUS fun_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  ( unique_ X .+ { X } <- X )
                       ^^
  ```


### Item `fun_expr: simple_expr DOTOP LBRACE separated_or_terminated_nonempty_list(SEMI,expr) RBRACE . LESSMINUS FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)` (in 2 errors)

- Derivation (2 occurrences):
  ```
  fun_expr: simple_expr DOTOP LBRACE separated_or_terminated_nonempty_list(SEMI,expr) RBRACE . LESSMINUS FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
  ```
  Sample sentence (implementation):
  ```ocaml
  ( unique_ X .+ { X } <- function false -> X )
                       ^^
  ```


### Item `fun_expr: simple_expr DOTOP LBRACE separated_or_terminated_nonempty_list(SEMI,expr) RBRACE . LESSMINUS STACK FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)` (in 2 errors)

- Derivation (2 occurrences):
  ```
  fun_expr: simple_expr DOTOP LBRACE separated_or_terminated_nonempty_list(SEMI,expr) RBRACE . LESSMINUS STACK FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
  ```
  Sample sentence (implementation):
  ```ocaml
  ( unique_ X .+ { X } <- stack_ function false -> X )
                       ^^
  ```


### Item `fun_expr: simple_expr DOT mod_longident DOTOP LBRACE separated_or_terminated_nonempty_list(SEMI,expr) RBRACE . LESSMINUS fun_expr` (in 2 errors)

- Derivation (2 occurrences):
  ```
  fun_expr: simple_expr DOT mod_longident DOTOP LBRACE separated_or_terminated_nonempty_list(SEMI,expr) RBRACE . LESSMINUS fun_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  ( unique_ false . X .+ { X } <- X )
                               ^^
  ```


### Item `fun_expr: simple_expr DOT mod_longident DOTOP LBRACE separated_or_terminated_nonempty_list(SEMI,expr) RBRACE . LESSMINUS FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)` (in 2 errors)

- Derivation (2 occurrences):
  ```
  fun_expr: simple_expr DOT mod_longident DOTOP LBRACE separated_or_terminated_nonempty_list(SEMI,expr) RBRACE . LESSMINUS FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
  ```
  Sample sentence (implementation):
  ```ocaml
  ( unique_ false . X .+ { X } <- function false -> X )
                               ^^
  ```


### Item `fun_expr: simple_expr DOT mod_longident DOTOP LBRACE separated_or_terminated_nonempty_list(SEMI,expr) RBRACE . LESSMINUS STACK FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)` (in 2 errors)

- Derivation (2 occurrences):
  ```
  fun_expr: simple_expr DOT mod_longident DOTOP LBRACE separated_or_terminated_nonempty_list(SEMI,expr) RBRACE . LESSMINUS STACK FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
  ```
  Sample sentence (implementation):
  ```ocaml
  ( unique_ false . X .+ { X } <- stack_ function false -> X )
                               ^^
  ```


### Item `fun_expr: simple_expr DOTOP LBRACKET separated_or_terminated_nonempty_list(SEMI,expr) RBRACKET . LESSMINUS fun_expr` (in 2 errors)

- Derivation (2 occurrences):
  ```
  fun_expr: simple_expr DOTOP LBRACKET separated_or_terminated_nonempty_list(SEMI,expr) RBRACKET . LESSMINUS fun_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  ( unique_ X .+ [ X ] <- X )
                       ^^
  ```


### Item `fun_expr: simple_expr DOTOP LBRACKET separated_or_terminated_nonempty_list(SEMI,expr) RBRACKET . LESSMINUS FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)` (in 2 errors)

- Derivation (2 occurrences):
  ```
  fun_expr: simple_expr DOTOP LBRACKET separated_or_terminated_nonempty_list(SEMI,expr) RBRACKET . LESSMINUS FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
  ```
  Sample sentence (implementation):
  ```ocaml
  ( unique_ X .+ [ X ] <- function false -> X )
                       ^^
  ```


### Item `fun_expr: simple_expr DOTOP LBRACKET separated_or_terminated_nonempty_list(SEMI,expr) RBRACKET . LESSMINUS STACK FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)` (in 2 errors)

- Derivation (2 occurrences):
  ```
  fun_expr: simple_expr DOTOP LBRACKET separated_or_terminated_nonempty_list(SEMI,expr) RBRACKET . LESSMINUS STACK FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
  ```
  Sample sentence (implementation):
  ```ocaml
  ( unique_ X .+ [ X ] <- stack_ function false -> X )
                       ^^
  ```


### Item `fun_expr: simple_expr DOT mod_longident DOTOP LBRACKET separated_or_terminated_nonempty_list(SEMI,expr) RBRACKET . LESSMINUS fun_expr` (in 2 errors)

- Derivation (2 occurrences):
  ```
  fun_expr: simple_expr DOT mod_longident DOTOP LBRACKET separated_or_terminated_nonempty_list(SEMI,expr) RBRACKET . LESSMINUS fun_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  ( unique_ false . X .+ [ X ] <- X )
                               ^^
  ```


### Item `fun_expr: simple_expr DOT mod_longident DOTOP LBRACKET separated_or_terminated_nonempty_list(SEMI,expr) RBRACKET . LESSMINUS FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)` (in 2 errors)

- Derivation (2 occurrences):
  ```
  fun_expr: simple_expr DOT mod_longident DOTOP LBRACKET separated_or_terminated_nonempty_list(SEMI,expr) RBRACKET . LESSMINUS FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
  ```
  Sample sentence (implementation):
  ```ocaml
  ( unique_ false . X .+ [ X ] <- function false -> X )
                               ^^
  ```


### Item `fun_expr: simple_expr DOT mod_longident DOTOP LBRACKET separated_or_terminated_nonempty_list(SEMI,expr) RBRACKET . LESSMINUS STACK FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)` (in 2 errors)

- Derivation (2 occurrences):
  ```
  fun_expr: simple_expr DOT mod_longident DOTOP LBRACKET separated_or_terminated_nonempty_list(SEMI,expr) RBRACKET . LESSMINUS STACK FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
  ```
  Sample sentence (implementation):
  ```ocaml
  ( unique_ false . X .+ [ X ] <- stack_ function false -> X )
                               ^^
  ```


### Item `seq_expr: . STACK FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)` (in 2 errors)

- Derivation (1 occurrence):
  ```
  fun_expr: ONCE . seq_expr
    seq_expr: . STACK FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
  ```
  Sample sentence (implementation):
  ```ocaml
  ( once_ stack_ function false -> X )
          ^^^^^^
  ```
- Derivation (1 occurrence):
  ```
  fun_expr: UNIQUE . seq_expr
    seq_expr: . STACK FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
  ```
  Sample sentence (implementation):
  ```ocaml
  ( unique_ stack_ function false -> X )
            ^^^^^^
  ```

## Error: In this scoped type, variable 'x is reserved for the local type x.

### Item `alias_type: alias_type AS QUOTE . ident` (in 432 errors)

- Derivation (432 occurrences):
  ```
  alias_type: alias_type AS QUOTE . ident
    ident: . LIDENT
  ```
  Sample sentence (implementation):
  ```ocaml
  let x : type x . {%ext|s|} as ' x = X
                                  ^
  ```

## Error: Syntax error: '}' expected

### Item `fun_expr: OVERWRITE ext list(attribute) seq_expr . WITH fun_expr` (in 236 errors)

- Derivation (236 occurrences):
  ```
  fun_expr: OVERWRITE ext list(attribute) seq_expr . WITH fun_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  false . { overwrite_ X with X }
                         ^^^^
  ```


### Item `fun_expr: OVERWRITE ext list(attribute) seq_expr . WITH FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)` (in 139 errors)

- Derivation (139 occurrences):
  ```
  fun_expr: OVERWRITE ext list(attribute) seq_expr . WITH FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
  ```
  Sample sentence (implementation):
  ```ocaml
  X .+ { overwrite_ X with function false -> X }
                      ^^^^
  ```


### Item `fun_expr: OVERWRITE ext list(attribute) seq_expr . WITH STACK FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)` (in 139 errors)

- Derivation (139 occurrences):
  ```
  fun_expr: OVERWRITE ext list(attribute) seq_expr . WITH STACK FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
  ```
  Sample sentence (implementation):
  ```ocaml
  X .+ { overwrite_ X with stack_ function false -> X }
                      ^^^^
  ```


### Item `fun_seq_expr: . fun_expr` (in 60 errors)

- Derivation (1 occurrence):
  ```
  fun_expr: ONCE . seq_expr
    seq_expr: . fun_seq_expr
      fun_seq_expr: . fun_expr
        fun_expr: . reversed_labeled_tuple_body
          reversed_labeled_tuple_body: . STACK FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case) COMMA STACK FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
  ```
  Sample sentence (implementation):
  ```ocaml
  X .+ { once_ stack_ function false -> . , stack_ function false -> X }
               ^^^^^^
  ```
- Derivation (1 occurrence):
  ```
  fun_expr: UNIQUE . seq_expr
    seq_expr: . fun_seq_expr
      fun_seq_expr: . fun_expr
        fun_expr: . reversed_labeled_tuple_body
          reversed_labeled_tuple_body: . STACK FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case) COMMA STACK FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
  ```
  Sample sentence (implementation):
  ```ocaml
  X .+ { unique_ stack_ function false -> . , stack_ function false -> X }
                 ^^^^^^
  ```
- Derivation (1 occurrence):
  ```
  fun_expr: ONCE . seq_expr
    seq_expr: . fun_seq_expr
      fun_seq_expr: . fun_expr
        fun_expr: . reversed_labeled_tuple_body
          reversed_labeled_tuple_body: . STACK FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case) COMMA FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
  ```
  Sample sentence (implementation):
  ```ocaml
  X .+ { once_ stack_ function false -> . , function false -> X }
               ^^^^^^
  ```
- Derivation (1 occurrence):
  ```
  fun_expr: UNIQUE . seq_expr
    seq_expr: . fun_seq_expr
      fun_seq_expr: . fun_expr
        fun_expr: . reversed_labeled_tuple_body
          reversed_labeled_tuple_body: . STACK FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case) COMMA FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
  ```
  Sample sentence (implementation):
  ```ocaml
  X .+ { unique_ stack_ function false -> . , function false -> X }
                 ^^^^^^
  ```
- Derivation (1 occurrence):
  ```
  fun_expr: ONCE . seq_expr
    seq_expr: . fun_seq_expr
      fun_seq_expr: . fun_expr
        fun_expr: . reversed_labeled_tuple_body
          reversed_labeled_tuple_body: . STACK FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case) COMMA fun_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  X .+ { once_ stack_ function false -> . , X }
               ^^^^^^
  ```
- Derivation (1 occurrence):
  ```
  fun_expr: UNIQUE . seq_expr
    seq_expr: . fun_seq_expr
      fun_seq_expr: . fun_expr
        fun_expr: . reversed_labeled_tuple_body
          reversed_labeled_tuple_body: . STACK FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case) COMMA fun_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  X .+ { unique_ stack_ function false -> . , X }
                 ^^^^^^
  ```
- Derivation (1 occurrence):
  ```
  fun_expr: ONCE . seq_expr
    seq_expr: . fun_seq_expr
      fun_seq_expr: . fun_expr
        fun_expr: . reversed_labeled_tuple_body
          reversed_labeled_tuple_body: . FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case) COMMA STACK FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
  ```
  Sample sentence (implementation):
  ```ocaml
  X .+ { once_ function false -> . , stack_ function false -> X }
               ^^^^^^^^
  ```
- Derivation (1 occurrence):
  ```
  fun_expr: UNIQUE . seq_expr
    seq_expr: . fun_seq_expr
      fun_seq_expr: . fun_expr
        fun_expr: . reversed_labeled_tuple_body
          reversed_labeled_tuple_body: . FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case) COMMA STACK FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
  ```
  Sample sentence (implementation):
  ```ocaml
  X .+ { unique_ function false -> . , stack_ function false -> X }
                 ^^^^^^^^
  ```
- Derivation (1 occurrence):
  ```
  fun_expr: ONCE . seq_expr
    seq_expr: . fun_seq_expr
      fun_seq_expr: . fun_expr
        fun_expr: . reversed_labeled_tuple_body
          reversed_labeled_tuple_body: . FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case) COMMA FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
  ```
  Sample sentence (implementation):
  ```ocaml
  X .+ { once_ function false -> . , function false -> X }
               ^^^^^^^^
  ```
- Derivation (1 occurrence):
  ```
  fun_expr: UNIQUE . seq_expr
    seq_expr: . fun_seq_expr
      fun_seq_expr: . fun_expr
        fun_expr: . reversed_labeled_tuple_body
          reversed_labeled_tuple_body: . FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case) COMMA FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
  ```
  Sample sentence (implementation):
  ```ocaml
  X .+ { unique_ function false -> . , function false -> X }
                 ^^^^^^^^
  ```
- Derivation (1 occurrence):
  ```
  fun_expr: ONCE . seq_expr
    seq_expr: . fun_seq_expr
      fun_seq_expr: . fun_expr
        fun_expr: . reversed_labeled_tuple_body
          reversed_labeled_tuple_body: . FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case) COMMA fun_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  X .+ { once_ function false -> . , X }
               ^^^^^^^^
  ```
- Derivation (1 occurrence):
  ```
  fun_expr: UNIQUE . seq_expr
    seq_expr: . fun_seq_expr
      fun_seq_expr: . fun_expr
        fun_expr: . reversed_labeled_tuple_body
          reversed_labeled_tuple_body: . FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case) COMMA fun_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  X .+ { unique_ function false -> . , X }
                 ^^^^^^^^
  ```
- Derivation (1 occurrence):
  ```
  fun_expr: ONCE . seq_expr
    seq_expr: . fun_seq_expr
      fun_seq_expr: . fun_expr
        fun_expr: . let_bindings(ext) IN seq_expr
          let_bindings(ext): . LET ext list(attribute) mutable_flag rec_flag let_binding_body list(post_item_attribute)
  ```
  Sample sentence (implementation):
  ```ocaml
  X .+ { once_ let x in X }
               ^^^
  ```
- Derivation (1 occurrence):
  ```
  fun_expr: UNIQUE . seq_expr
    seq_expr: . fun_seq_expr
      fun_seq_expr: . fun_expr
        fun_expr: . let_bindings(ext) IN seq_expr
          let_bindings(ext): . LET ext list(attribute) mutable_flag rec_flag let_binding_body list(post_item_attribute)
  ```
  Sample sentence (implementation):
  ```ocaml
  X .+ { unique_ let x in X }
                 ^^^
  ```
- Derivation (1 occurrence):
  ```
  fun_expr: ONCE . seq_expr
    seq_expr: . fun_seq_expr
      fun_seq_expr: . fun_expr
        fun_expr: . EXCLAVE seq_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  X .+ { once_ exclave_ X }
               ^^^^^^^^
  ```
- Derivation (1 occurrence):
  ```
  fun_expr: UNIQUE . seq_expr
    seq_expr: . fun_seq_expr
      fun_seq_expr: . fun_expr
        fun_expr: . EXCLAVE seq_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  X .+ { unique_ exclave_ X }
                 ^^^^^^^^
  ```
- Derivation (1 occurrence):
  ```
  fun_expr: ONCE . seq_expr
    seq_expr: . fun_seq_expr
      fun_seq_expr: . fun_expr
        fun_expr: . LOCAL seq_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  X .+ { once_ local_ X }
               ^^^^^^
  ```
- Derivation (1 occurrence):
  ```
  fun_expr: UNIQUE . seq_expr
    seq_expr: . fun_seq_expr
      fun_seq_expr: . fun_expr
        fun_expr: . LOCAL seq_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  X .+ { unique_ local_ X }
                 ^^^^^^
  ```
- Derivation (1 occurrence):
  ```
  fun_expr: ONCE . seq_expr
    seq_expr: . fun_seq_expr
      fun_seq_expr: . fun_expr
        fun_expr: . LETOP letop_bindings IN seq_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  X .+ { once_ let* x in X }
               ^^^^
  ```
- Derivation (1 occurrence):
  ```
  fun_expr: UNIQUE . seq_expr
    seq_expr: . fun_seq_expr
      fun_seq_expr: . fun_expr
        fun_expr: . LETOP letop_bindings IN seq_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  X .+ { unique_ let* x in X }
                 ^^^^
  ```
- Derivation (1 occurrence):
  ```
  fun_expr: ONCE . seq_expr
    seq_expr: . fun_seq_expr
      fun_seq_expr: . fun_expr
        fun_expr: . IF ext list(attribute) seq_expr THEN STACK FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
  ```
  Sample sentence (implementation):
  ```ocaml
  X .+ { once_ if X then stack_ function false -> X }
               ^^
  ```
- ...


### Item `seq_expr: . FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)` (in 26 errors)

- Derivation (13 occurrences):
  ```
  fun_expr: ONCE . seq_expr
    seq_expr: . FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
  ```
  Sample sentence (implementation):
  ```ocaml
  X .+ { once_ function false -> X }
               ^^^^^^^^
  ```
- Derivation (13 occurrences):
  ```
  fun_expr: UNIQUE . seq_expr
    seq_expr: . FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
  ```
  Sample sentence (implementation):
  ```ocaml
  X .+ { unique_ function false -> X }
                 ^^^^^^^^
  ```


### Item `fun_expr: fun_expr . AT fun_expr` (in 12 errors)

- Derivation (12 occurrences):
  ```
  fun_expr: fun_expr . AT fun_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  X .+ { unique_ X ; @ X }
                     ^
  ```


### Item `fun_expr: fun_expr . INFIXOP3 fun_expr` (in 12 errors)

- Derivation (12 occurrences):
  ```
  fun_expr: fun_expr . INFIXOP3 fun_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  X .+ { unique_ X ; land X }
                     ^^^^
  ```


### Item `fun_expr: fun_expr . INFIXOP4 fun_expr` (in 12 errors)

- Derivation (12 occurrences):
  ```
  fun_expr: fun_expr . INFIXOP4 fun_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  X .+ { unique_ X ; ** X }
                     ^^
  ```


### Item `fun_expr: fun_expr . EQUAL fun_expr` (in 12 errors)

- Derivation (12 occurrences):
  ```
  fun_expr: fun_expr . EQUAL fun_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  X .+ { unique_ X ; = X }
                     ^
  ```


### Item `fun_expr: fun_expr . BARBAR fun_expr` (in 12 errors)

- Derivation (12 occurrences):
  ```
  fun_expr: fun_expr . BARBAR fun_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  X .+ { unique_ X ; || X }
                     ^^
  ```


### Item `fun_expr: fun_expr . AMPERAMPER fun_expr` (in 12 errors)

- Derivation (12 occurrences):
  ```
  fun_expr: fun_expr . AMPERAMPER fun_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  X .+ { unique_ X ; && X }
                     ^^
  ```


### Item `fun_expr: fun_expr . COLONEQUAL fun_expr` (in 12 errors)

- Derivation (12 occurrences):
  ```
  fun_expr: fun_expr . COLONEQUAL fun_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  X .+ { unique_ X ; := X }
                     ^^
  ```


### Item `fun_expr: fun_expr . COLONCOLON fun_expr` (in 12 errors)

- Derivation (12 occurrences):
  ```
  fun_expr: fun_expr . COLONCOLON fun_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  X .+ { unique_ X ; :: X }
                     ^^
  ```


### Item `reversed_labeled_tuple_body: fun_expr . COMMA fun_expr` (in 12 errors)

- Derivation (12 occurrences):
  ```
  reversed_labeled_tuple_body: fun_expr . COMMA fun_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  X .+ { unique_ X ; , X }
                     ^
  ```


### Item `atomic_type: . delimited_type` (in 8 errors)

- Derivation (8 occurrences):
  ```
  strict_function_or_labeled_tuple_type: nonempty_list(mode_legacy) . tuple_type MINUSGREATER tuple_type
    tuple_type: . atomic_type
      atomic_type: . delimited_type
        delimited_type: . extension_type
          extension_type: . extension
            extension: . QUOTED_STRING_EXPR
  ```
  Sample sentence (implementation):
  ```ocaml
  { x :> once_ {%ext|s|} -> {%ext|s|} }
               ^^^^^^^^^
  ```


### Item `nonempty_list(mode_legacy): . LOCAL` (in 8 errors)

- Derivation (4 occurrences):
  ```
  nonempty_list(mode_legacy): ONCE . nonempty_list(mode_legacy)
    nonempty_list(mode_legacy): . LOCAL
  ```
  Sample sentence (implementation):
  ```ocaml
  { x :> once_ local_ {%ext|s|} -> {%ext|s|} }
               ^^^^^^
  ```
- Derivation (4 occurrences):
  ```
  nonempty_list(mode_legacy): UNIQUE . nonempty_list(mode_legacy)
    nonempty_list(mode_legacy): . LOCAL
  ```
  Sample sentence (implementation):
  ```ocaml
  { x :> unique_ local_ {%ext|s|} -> {%ext|s|} }
                 ^^^^^^
  ```


### Item `separated_or_terminated_nonempty_list(SEMI,expr): fun_expr . SEMI` (in 8 errors)

- Derivation (8 occurrences):
  ```
  separated_or_terminated_nonempty_list(SEMI,expr): fun_expr . SEMI
  ```
  Sample sentence (implementation):
  ```ocaml
  X .+ { unique_ X ; ; }
                     ^
  ```


### Item `fun_seq_expr: fun_expr . SEMI` (in 4 errors)

- Derivation (4 occurrences):
  ```
  fun_seq_expr: fun_expr . SEMI
  ```
  Sample sentence (implementation):
  ```ocaml
  false . { unique_ X ; ; }
                        ^
  ```


### Item `fun_expr: LIDENT . LESSMINUS fun_expr` (in 2 errors)

- Derivation (2 occurrences):
  ```
  fun_expr: LIDENT . LESSMINUS fun_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  X .+ { unique_ x <- X }
                   ^^
  ```


### Item `fun_expr: LIDENT . LESSMINUS FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)` (in 2 errors)

- Derivation (2 occurrences):
  ```
  fun_expr: LIDENT . LESSMINUS FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
  ```
  Sample sentence (implementation):
  ```ocaml
  X .+ { unique_ x <- function false -> X }
                   ^^
  ```


### Item `fun_expr: LIDENT . LESSMINUS STACK FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)` (in 2 errors)

- Derivation (2 occurrences):
  ```
  fun_expr: LIDENT . LESSMINUS STACK FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
  ```
  Sample sentence (implementation):
  ```ocaml
  X .+ { unique_ x <- stack_ function false -> X }
                   ^^
  ```


### Item `fun_expr: simple_expr DOT label_longident . LESSMINUS fun_expr` (in 2 errors)

- Derivation (2 occurrences):
  ```
  fun_expr: simple_expr DOT label_longident . LESSMINUS fun_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  X .+ { unique_ false . x <- X }
                           ^^
  ```


### Item `fun_expr: simple_expr DOT label_longident . LESSMINUS FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)` (in 2 errors)

- Derivation (2 occurrences):
  ```
  fun_expr: simple_expr DOT label_longident . LESSMINUS FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
  ```
  Sample sentence (implementation):
  ```ocaml
  X .+ { unique_ false . x <- function false -> X }
                           ^^
  ```


### Item `fun_expr: simple_expr DOT label_longident . LESSMINUS STACK FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)` (in 2 errors)

- Derivation (2 occurrences):
  ```
  fun_expr: simple_expr DOT label_longident . LESSMINUS STACK FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
  ```
  Sample sentence (implementation):
  ```ocaml
  X .+ { unique_ false . x <- stack_ function false -> X }
                           ^^
  ```


### Item `fun_expr: simple_expr DOT LPAREN seq_expr RPAREN . LESSMINUS fun_expr` (in 2 errors)

- Derivation (2 occurrences):
  ```
  fun_expr: simple_expr DOT LPAREN seq_expr RPAREN . LESSMINUS fun_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  X .+ { unique_ false . ( X ) <- X }
                               ^^
  ```


### Item `fun_expr: simple_expr DOT LPAREN seq_expr RPAREN . LESSMINUS FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)` (in 2 errors)

- Derivation (2 occurrences):
  ```
  fun_expr: simple_expr DOT LPAREN seq_expr RPAREN . LESSMINUS FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
  ```
  Sample sentence (implementation):
  ```ocaml
  X .+ { unique_ false . ( X ) <- function false -> X }
                               ^^
  ```


### Item `fun_expr: simple_expr DOT LPAREN seq_expr RPAREN . LESSMINUS STACK FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)` (in 2 errors)

- Derivation (2 occurrences):
  ```
  fun_expr: simple_expr DOT LPAREN seq_expr RPAREN . LESSMINUS STACK FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
  ```
  Sample sentence (implementation):
  ```ocaml
  X .+ { unique_ false . ( X ) <- stack_ function false -> X }
                               ^^
  ```


### Item `fun_expr: simple_expr DOT LBRACE seq_expr RBRACE . LESSMINUS fun_expr` (in 2 errors)

- Derivation (2 occurrences):
  ```
  fun_expr: simple_expr DOT LBRACE seq_expr RBRACE . LESSMINUS fun_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  X .+ { unique_ false . { X } <- X }
                               ^^
  ```


### Item `fun_expr: simple_expr DOT LBRACE seq_expr RBRACE . LESSMINUS FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)` (in 2 errors)

- Derivation (2 occurrences):
  ```
  fun_expr: simple_expr DOT LBRACE seq_expr RBRACE . LESSMINUS FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
  ```
  Sample sentence (implementation):
  ```ocaml
  X .+ { unique_ false . { X } <- function false -> X }
                               ^^
  ```


### Item `fun_expr: simple_expr DOT LBRACE seq_expr RBRACE . LESSMINUS STACK FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)` (in 2 errors)

- Derivation (2 occurrences):
  ```
  fun_expr: simple_expr DOT LBRACE seq_expr RBRACE . LESSMINUS STACK FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
  ```
  Sample sentence (implementation):
  ```ocaml
  X .+ { unique_ false . { X } <- stack_ function false -> X }
                               ^^
  ```


### Item `fun_expr: simple_expr DOT LBRACKET seq_expr RBRACKET . LESSMINUS fun_expr` (in 2 errors)

- Derivation (2 occurrences):
  ```
  fun_expr: simple_expr DOT LBRACKET seq_expr RBRACKET . LESSMINUS fun_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  X .+ { unique_ false . [ X ] <- X }
                               ^^
  ```


### Item `fun_expr: simple_expr DOT LBRACKET seq_expr RBRACKET . LESSMINUS FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)` (in 2 errors)

- Derivation (2 occurrences):
  ```
  fun_expr: simple_expr DOT LBRACKET seq_expr RBRACKET . LESSMINUS FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
  ```
  Sample sentence (implementation):
  ```ocaml
  X .+ { unique_ false . [ X ] <- function false -> X }
                               ^^
  ```


### Item `fun_expr: simple_expr DOT LBRACKET seq_expr RBRACKET . LESSMINUS STACK FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)` (in 2 errors)

- Derivation (2 occurrences):
  ```
  fun_expr: simple_expr DOT LBRACKET seq_expr RBRACKET . LESSMINUS STACK FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
  ```
  Sample sentence (implementation):
  ```ocaml
  X .+ { unique_ false . [ X ] <- stack_ function false -> X }
                               ^^
  ```


### Item `fun_expr: simple_expr DOTOP LPAREN separated_or_terminated_nonempty_list(SEMI,expr) RPAREN . LESSMINUS fun_expr` (in 2 errors)

- Derivation (2 occurrences):
  ```
  fun_expr: simple_expr DOTOP LPAREN separated_or_terminated_nonempty_list(SEMI,expr) RPAREN . LESSMINUS fun_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  X .+ { unique_ X .+ ( X ) <- X }
                            ^^
  ```


### Item `fun_expr: simple_expr DOTOP LPAREN separated_or_terminated_nonempty_list(SEMI,expr) RPAREN . LESSMINUS FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)` (in 2 errors)

- Derivation (2 occurrences):
  ```
  fun_expr: simple_expr DOTOP LPAREN separated_or_terminated_nonempty_list(SEMI,expr) RPAREN . LESSMINUS FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
  ```
  Sample sentence (implementation):
  ```ocaml
  X .+ { unique_ X .+ ( X ) <- function false -> X }
                            ^^
  ```


### Item `fun_expr: simple_expr DOTOP LPAREN separated_or_terminated_nonempty_list(SEMI,expr) RPAREN . LESSMINUS STACK FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)` (in 2 errors)

- Derivation (2 occurrences):
  ```
  fun_expr: simple_expr DOTOP LPAREN separated_or_terminated_nonempty_list(SEMI,expr) RPAREN . LESSMINUS STACK FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
  ```
  Sample sentence (implementation):
  ```ocaml
  X .+ { unique_ X .+ ( X ) <- stack_ function false -> X }
                            ^^
  ```


### Item `fun_expr: simple_expr DOT mod_longident DOTOP LPAREN separated_or_terminated_nonempty_list(SEMI,expr) RPAREN . LESSMINUS fun_expr` (in 2 errors)

- Derivation (2 occurrences):
  ```
  fun_expr: simple_expr DOT mod_longident DOTOP LPAREN separated_or_terminated_nonempty_list(SEMI,expr) RPAREN . LESSMINUS fun_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  X .+ { unique_ false . X .+ ( X ) <- X }
                                    ^^
  ```


### Item `fun_expr: simple_expr DOT mod_longident DOTOP LPAREN separated_or_terminated_nonempty_list(SEMI,expr) RPAREN . LESSMINUS FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)` (in 2 errors)

- Derivation (2 occurrences):
  ```
  fun_expr: simple_expr DOT mod_longident DOTOP LPAREN separated_or_terminated_nonempty_list(SEMI,expr) RPAREN . LESSMINUS FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
  ```
  Sample sentence (implementation):
  ```ocaml
  X .+ { unique_ false . X .+ ( X ) <- function false -> X }
                                    ^^
  ```


### Item `fun_expr: simple_expr DOT mod_longident DOTOP LPAREN separated_or_terminated_nonempty_list(SEMI,expr) RPAREN . LESSMINUS STACK FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)` (in 2 errors)

- Derivation (2 occurrences):
  ```
  fun_expr: simple_expr DOT mod_longident DOTOP LPAREN separated_or_terminated_nonempty_list(SEMI,expr) RPAREN . LESSMINUS STACK FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
  ```
  Sample sentence (implementation):
  ```ocaml
  X .+ { unique_ false . X .+ ( X ) <- stack_ function false -> X }
                                    ^^
  ```


### Item `fun_expr: simple_expr DOTOP LBRACE separated_or_terminated_nonempty_list(SEMI,expr) RBRACE . LESSMINUS fun_expr` (in 2 errors)

- Derivation (2 occurrences):
  ```
  fun_expr: simple_expr DOTOP LBRACE separated_or_terminated_nonempty_list(SEMI,expr) RBRACE . LESSMINUS fun_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  X .+ { unique_ X .+ { X } <- X }
                            ^^
  ```


### Item `fun_expr: simple_expr DOTOP LBRACE separated_or_terminated_nonempty_list(SEMI,expr) RBRACE . LESSMINUS FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)` (in 2 errors)

- Derivation (2 occurrences):
  ```
  fun_expr: simple_expr DOTOP LBRACE separated_or_terminated_nonempty_list(SEMI,expr) RBRACE . LESSMINUS FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
  ```
  Sample sentence (implementation):
  ```ocaml
  X .+ { unique_ X .+ { X } <- function false -> X }
                            ^^
  ```


### Item `fun_expr: simple_expr DOTOP LBRACE separated_or_terminated_nonempty_list(SEMI,expr) RBRACE . LESSMINUS STACK FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)` (in 2 errors)

- Derivation (2 occurrences):
  ```
  fun_expr: simple_expr DOTOP LBRACE separated_or_terminated_nonempty_list(SEMI,expr) RBRACE . LESSMINUS STACK FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
  ```
  Sample sentence (implementation):
  ```ocaml
  X .+ { unique_ X .+ { X } <- stack_ function false -> X }
                            ^^
  ```


### Item `fun_expr: simple_expr DOT mod_longident DOTOP LBRACE separated_or_terminated_nonempty_list(SEMI,expr) RBRACE . LESSMINUS fun_expr` (in 2 errors)

- Derivation (2 occurrences):
  ```
  fun_expr: simple_expr DOT mod_longident DOTOP LBRACE separated_or_terminated_nonempty_list(SEMI,expr) RBRACE . LESSMINUS fun_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  X .+ { unique_ false . X .+ { X } <- X }
                                    ^^
  ```


### Item `fun_expr: simple_expr DOT mod_longident DOTOP LBRACE separated_or_terminated_nonempty_list(SEMI,expr) RBRACE . LESSMINUS FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)` (in 2 errors)

- Derivation (2 occurrences):
  ```
  fun_expr: simple_expr DOT mod_longident DOTOP LBRACE separated_or_terminated_nonempty_list(SEMI,expr) RBRACE . LESSMINUS FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
  ```
  Sample sentence (implementation):
  ```ocaml
  X .+ { unique_ false . X .+ { X } <- function false -> X }
                                    ^^
  ```


### Item `fun_expr: simple_expr DOT mod_longident DOTOP LBRACE separated_or_terminated_nonempty_list(SEMI,expr) RBRACE . LESSMINUS STACK FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)` (in 2 errors)

- Derivation (2 occurrences):
  ```
  fun_expr: simple_expr DOT mod_longident DOTOP LBRACE separated_or_terminated_nonempty_list(SEMI,expr) RBRACE . LESSMINUS STACK FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
  ```
  Sample sentence (implementation):
  ```ocaml
  X .+ { unique_ false . X .+ { X } <- stack_ function false -> X }
                                    ^^
  ```


### Item `fun_expr: simple_expr DOTOP LBRACKET separated_or_terminated_nonempty_list(SEMI,expr) RBRACKET . LESSMINUS fun_expr` (in 2 errors)

- Derivation (2 occurrences):
  ```
  fun_expr: simple_expr DOTOP LBRACKET separated_or_terminated_nonempty_list(SEMI,expr) RBRACKET . LESSMINUS fun_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  X .+ { unique_ X .+ [ X ] <- X }
                            ^^
  ```


### Item `fun_expr: simple_expr DOTOP LBRACKET separated_or_terminated_nonempty_list(SEMI,expr) RBRACKET . LESSMINUS FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)` (in 2 errors)

- Derivation (2 occurrences):
  ```
  fun_expr: simple_expr DOTOP LBRACKET separated_or_terminated_nonempty_list(SEMI,expr) RBRACKET . LESSMINUS FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
  ```
  Sample sentence (implementation):
  ```ocaml
  X .+ { unique_ X .+ [ X ] <- function false -> X }
                            ^^
  ```


### Item `fun_expr: simple_expr DOTOP LBRACKET separated_or_terminated_nonempty_list(SEMI,expr) RBRACKET . LESSMINUS STACK FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)` (in 2 errors)

- Derivation (2 occurrences):
  ```
  fun_expr: simple_expr DOTOP LBRACKET separated_or_terminated_nonempty_list(SEMI,expr) RBRACKET . LESSMINUS STACK FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
  ```
  Sample sentence (implementation):
  ```ocaml
  X .+ { unique_ X .+ [ X ] <- stack_ function false -> X }
                            ^^
  ```


### Item `fun_expr: simple_expr DOT mod_longident DOTOP LBRACKET separated_or_terminated_nonempty_list(SEMI,expr) RBRACKET . LESSMINUS fun_expr` (in 2 errors)

- Derivation (2 occurrences):
  ```
  fun_expr: simple_expr DOT mod_longident DOTOP LBRACKET separated_or_terminated_nonempty_list(SEMI,expr) RBRACKET . LESSMINUS fun_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  X .+ { unique_ false . X .+ [ X ] <- X }
                                    ^^
  ```


### Item `fun_expr: simple_expr DOT mod_longident DOTOP LBRACKET separated_or_terminated_nonempty_list(SEMI,expr) RBRACKET . LESSMINUS FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)` (in 2 errors)

- Derivation (2 occurrences):
  ```
  fun_expr: simple_expr DOT mod_longident DOTOP LBRACKET separated_or_terminated_nonempty_list(SEMI,expr) RBRACKET . LESSMINUS FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
  ```
  Sample sentence (implementation):
  ```ocaml
  X .+ { unique_ false . X .+ [ X ] <- function false -> X }
                                    ^^
  ```


### Item `fun_expr: simple_expr DOT mod_longident DOTOP LBRACKET separated_or_terminated_nonempty_list(SEMI,expr) RBRACKET . LESSMINUS STACK FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)` (in 2 errors)

- Derivation (2 occurrences):
  ```
  fun_expr: simple_expr DOT mod_longident DOTOP LBRACKET separated_or_terminated_nonempty_list(SEMI,expr) RBRACKET . LESSMINUS STACK FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
  ```
  Sample sentence (implementation):
  ```ocaml
  X .+ { unique_ false . X .+ [ X ] <- stack_ function false -> X }
                                    ^^
  ```


### Item `fun_seq_expr: fun_expr SEMI . PERCENT attr_id seq_expr` (in 2 errors)

- Derivation (2 occurrences):
  ```
  fun_seq_expr: fun_expr SEMI . PERCENT attr_id seq_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  X .+ { unique_ X ; % and X }
                     ^
  ```


### Item `seq_expr: . STACK FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)` (in 2 errors)

- Derivation (1 occurrence):
  ```
  fun_expr: ONCE . seq_expr
    seq_expr: . STACK FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
  ```
  Sample sentence (implementation):
  ```ocaml
  X .+ { once_ stack_ function false -> X }
               ^^^^^^
  ```
- Derivation (1 occurrence):
  ```
  fun_expr: UNIQUE . seq_expr
    seq_expr: . STACK FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
  ```
  Sample sentence (implementation):
  ```ocaml
  X .+ { unique_ stack_ function false -> X }
                 ^^^^^^
  ```

## Error: Syntax error: 'end' expected

### Item `fun_expr: OVERWRITE ext list(attribute) seq_expr . WITH FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)` (in 133 errors)

- Derivation (133 occurrences):
  ```
  fun_expr: OVERWRITE ext list(attribute) seq_expr . WITH FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
  ```
  Sample sentence (implementation):
  ```ocaml
  begin overwrite_ X with function false -> X end
                     ^^^^
  ```


### Item `fun_expr: OVERWRITE ext list(attribute) seq_expr . WITH STACK FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)` (in 133 errors)

- Derivation (133 occurrences):
  ```
  fun_expr: OVERWRITE ext list(attribute) seq_expr . WITH STACK FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
  ```
  Sample sentence (implementation):
  ```ocaml
  begin overwrite_ X with stack_ function false -> X end
                     ^^^^
  ```


### Item `seq_expr: . FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)` (in 44 errors)

- Derivation (22 occurrences):
  ```
  fun_expr: ONCE . seq_expr
    seq_expr: . FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
  ```
  Sample sentence (implementation):
  ```ocaml
  begin once_ function false -> . % X end
              ^^^^^^^^
  ```
- Derivation (22 occurrences):
  ```
  fun_expr: UNIQUE . seq_expr
    seq_expr: . FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
  ```
  Sample sentence (implementation):
  ```ocaml
  begin unique_ function false -> . % X end
                ^^^^^^^^
  ```


### Item `fun_expr: OVERWRITE ext list(attribute) seq_expr . WITH fun_expr` (in 23 errors)

- Derivation (23 occurrences):
  ```
  fun_expr: OVERWRITE ext list(attribute) seq_expr . WITH fun_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  begin overwrite_ X with X end
                     ^^^^
  ```


### Item `fun_expr: fun_expr . AT fun_expr` (in 22 errors)

- Derivation (22 occurrences):
  ```
  fun_expr: fun_expr . AT fun_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  begin once_ X ; @ X end
                  ^
  ```


### Item `fun_expr: fun_expr . INFIXOP3 fun_expr` (in 22 errors)

- Derivation (22 occurrences):
  ```
  fun_expr: fun_expr . INFIXOP3 fun_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  begin once_ X ; land X end
                  ^^^^
  ```


### Item `fun_expr: fun_expr . INFIXOP4 fun_expr` (in 22 errors)

- Derivation (22 occurrences):
  ```
  fun_expr: fun_expr . INFIXOP4 fun_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  begin once_ X ; ** X end
                  ^^
  ```


### Item `fun_expr: fun_expr . EQUAL fun_expr` (in 22 errors)

- Derivation (22 occurrences):
  ```
  fun_expr: fun_expr . EQUAL fun_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  begin once_ X ; = X end
                  ^
  ```


### Item `fun_expr: fun_expr . BARBAR fun_expr` (in 22 errors)

- Derivation (22 occurrences):
  ```
  fun_expr: fun_expr . BARBAR fun_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  begin once_ X ; || X end
                  ^^
  ```


### Item `fun_expr: fun_expr . AMPERAMPER fun_expr` (in 22 errors)

- Derivation (22 occurrences):
  ```
  fun_expr: fun_expr . AMPERAMPER fun_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  begin once_ X ; && X end
                  ^^
  ```


### Item `fun_expr: fun_expr . COLONEQUAL fun_expr` (in 22 errors)

- Derivation (22 occurrences):
  ```
  fun_expr: fun_expr . COLONEQUAL fun_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  begin once_ X ; := X end
                  ^^
  ```


### Item `fun_expr: fun_expr . COLONCOLON fun_expr` (in 22 errors)

- Derivation (22 occurrences):
  ```
  fun_expr: fun_expr . COLONCOLON fun_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  begin once_ X ; :: X end
                  ^^
  ```


### Item `fun_seq_expr: fun_expr . SEMI` (in 22 errors)

- Derivation (22 occurrences):
  ```
  fun_seq_expr: fun_expr . SEMI
  ```
  Sample sentence (implementation):
  ```ocaml
  begin once_ X ; ; end
                  ^
  ```


### Item `reversed_labeled_tuple_body: fun_expr . COMMA fun_expr` (in 22 errors)

- Derivation (22 occurrences):
  ```
  reversed_labeled_tuple_body: fun_expr . COMMA fun_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  begin once_ X ; , X end
                  ^
  ```


### Item `atomic_type: . delimited_type` (in 10 errors)

- Derivation (10 occurrences):
  ```
  strict_function_or_labeled_tuple_type: nonempty_list(mode_legacy) . tuple_type MINUSGREATER tuple_type
    tuple_type: . atomic_type
      atomic_type: . delimited_type
        delimited_type: . extension_type
          extension_type: . extension
            extension: . QUOTED_STRING_EXPR
  ```
  Sample sentence (implementation):
  ```ocaml
  object constraint {%ext|s|} = unique_ {%ext|s|} -> {%ext|s|} end
                                        ^^^^^^^^^
  ```


### Item `nonempty_list(mode_legacy): . LOCAL` (in 10 errors)

- Derivation (5 occurrences):
  ```
  nonempty_list(mode_legacy): ONCE . nonempty_list(mode_legacy)
    nonempty_list(mode_legacy): . LOCAL
  ```
  Sample sentence (implementation):
  ```ocaml
  object constraint {%ext|s|} = once_ local_ {%ext|s|} -> {%ext|s|} end
                                      ^^^^^^
  ```
- Derivation (5 occurrences):
  ```
  nonempty_list(mode_legacy): UNIQUE . nonempty_list(mode_legacy)
    nonempty_list(mode_legacy): . LOCAL
  ```
  Sample sentence (implementation):
  ```ocaml
  object constraint {%ext|s|} = unique_ local_ {%ext|s|} -> {%ext|s|} end
                                        ^^^^^^
  ```

## Error: Syntax error: nonrec flag not expected.

### Item `generic_type_declaration(no_nonrec_flag,type_subst_kind): TYPE ext list(attribute) . NONREC type_parameters LIDENT option(jkind_constraint) COLONEQUAL nonempty_type_kind reversed_llist(preceded(CONSTRAINT,constrain)) list(post_item_attribute)` (in 495 errors)

- Derivation (495 occurrences):
  ```
  generic_type_declaration(no_nonrec_flag,type_subst_kind): TYPE ext list(attribute) . NONREC type_parameters LIDENT option(jkind_constraint) COLONEQUAL nonempty_type_kind reversed_llist(preceded(CONSTRAINT,constrain)) list(post_item_attribute)
  ```
  Sample sentence (interface):
  ```ocaml
  type nonrec x := _
       ^^^^^^
  ```


### Item `structure_item: TYPE ext list(attribute) . NONREC type_parameters type_longident PLUSEQ private_flag reversed_bar_llist(extension_constructor) list(post_item_attribute)` (in 39 errors)

- Derivation (39 occurrences):
  ```
  structure_item: TYPE ext list(attribute) . NONREC type_parameters type_longident PLUSEQ private_flag reversed_bar_llist(extension_constructor) list(post_item_attribute)
  ```
  Sample sentence (implementation):
  ```ocaml
  type nonrec x += X
       ^^^^^^
  ```


### Item `signature_item: TYPE ext list(attribute) . NONREC type_parameters type_longident PLUSEQ private_flag reversed_bar_llist(extension_constructor_declaration) list(post_item_attribute)` (in 17 errors)

- Derivation (17 occurrences):
  ```
  signature_item: TYPE ext list(attribute) . NONREC type_parameters type_longident PLUSEQ private_flag reversed_bar_llist(extension_constructor_declaration) list(post_item_attribute)
  ```
  Sample sentence (interface):
  ```ocaml
  type nonrec x += X
       ^^^^^^
  ```

## Error: Syntax error: ']' expected

### Item `fun_expr: OVERWRITE ext list(attribute) seq_expr . WITH FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)` (in 98 errors)

- Derivation (98 occurrences):
  ```
  fun_expr: OVERWRITE ext list(attribute) seq_expr . WITH FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
  ```
  Sample sentence (implementation):
  ```ocaml
  [ overwrite_ X with function false -> X ]
                 ^^^^
  ```


### Item `fun_expr: OVERWRITE ext list(attribute) seq_expr . WITH STACK FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)` (in 98 errors)

- Derivation (98 occurrences):
  ```
  fun_expr: OVERWRITE ext list(attribute) seq_expr . WITH STACK FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
  ```
  Sample sentence (implementation):
  ```ocaml
  [ overwrite_ X with stack_ function false -> X ]
                 ^^^^
  ```


### Item `seq_expr: . FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)` (in 32 errors)

- Derivation (16 occurrences):
  ```
  fun_expr: ONCE . seq_expr
    seq_expr: . FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
  ```
  Sample sentence (implementation):
  ```ocaml
  [ once_ function false -> . - X ]
          ^^^^^^^^
  ```
- Derivation (16 occurrences):
  ```
  fun_expr: UNIQUE . seq_expr
    seq_expr: . FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
  ```
  Sample sentence (implementation):
  ```ocaml
  [ unique_ function false -> . - X ]
            ^^^^^^^^
  ```


### Item `fun_expr: OVERWRITE ext list(attribute) seq_expr . WITH fun_expr` (in 18 errors)

- Derivation (18 occurrences):
  ```
  fun_expr: OVERWRITE ext list(attribute) seq_expr . WITH fun_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  [ overwrite_ X with X ]
                 ^^^^
  ```


### Item `fun_expr: fun_expr . AT fun_expr` (in 16 errors)

- Derivation (16 occurrences):
  ```
  fun_expr: fun_expr . AT fun_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  [ unique_ X ; @ X ]
                ^
  ```


### Item `fun_expr: fun_expr . INFIXOP3 fun_expr` (in 16 errors)

- Derivation (16 occurrences):
  ```
  fun_expr: fun_expr . INFIXOP3 fun_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  [ unique_ X ; land X ]
                ^^^^
  ```


### Item `fun_expr: fun_expr . INFIXOP4 fun_expr` (in 16 errors)

- Derivation (16 occurrences):
  ```
  fun_expr: fun_expr . INFIXOP4 fun_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  [ unique_ X ; ** X ]
                ^^
  ```


### Item `fun_expr: fun_expr . EQUAL fun_expr` (in 16 errors)

- Derivation (16 occurrences):
  ```
  fun_expr: fun_expr . EQUAL fun_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  [ unique_ X ; = X ]
                ^
  ```


### Item `fun_expr: fun_expr . BARBAR fun_expr` (in 16 errors)

- Derivation (16 occurrences):
  ```
  fun_expr: fun_expr . BARBAR fun_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  [ unique_ X ; || X ]
                ^^
  ```


### Item `fun_expr: fun_expr . AMPERAMPER fun_expr` (in 16 errors)

- Derivation (16 occurrences):
  ```
  fun_expr: fun_expr . AMPERAMPER fun_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  [ unique_ X ; && X ]
                ^^
  ```


### Item `fun_expr: fun_expr . COLONEQUAL fun_expr` (in 16 errors)

- Derivation (16 occurrences):
  ```
  fun_expr: fun_expr . COLONEQUAL fun_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  [ unique_ X ; := X ]
                ^^
  ```


### Item `fun_expr: fun_expr . COLONCOLON fun_expr` (in 16 errors)

- Derivation (16 occurrences):
  ```
  fun_expr: fun_expr . COLONCOLON fun_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  [ unique_ X ; :: X ]
                ^^
  ```


### Item `reversed_labeled_tuple_body: fun_expr . COMMA fun_expr` (in 16 errors)

- Derivation (16 occurrences):
  ```
  reversed_labeled_tuple_body: fun_expr . COMMA fun_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  [ unique_ X ; , X ]
                ^
  ```


### Item `separated_or_terminated_nonempty_list(SEMI,expr): fun_expr . SEMI` (in 12 errors)

- Derivation (12 occurrences):
  ```
  separated_or_terminated_nonempty_list(SEMI,expr): fun_expr . SEMI
  ```
  Sample sentence (implementation):
  ```ocaml
  [ unique_ X ; ; ]
                ^
  ```


### Item `fun_seq_expr: fun_expr . SEMI` (in 4 errors)

- Derivation (4 occurrences):
  ```
  fun_seq_expr: fun_expr . SEMI
  ```
  Sample sentence (implementation):
  ```ocaml
  false . [ unique_ X ; ; ]
                        ^
  ```

## Error: Syntax error: ':]' expected

### Item `fun_expr: OVERWRITE ext list(attribute) seq_expr . WITH FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)` (in 26 errors)

- Derivation (26 occurrences):
  ```
  fun_expr: OVERWRITE ext list(attribute) seq_expr . WITH FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
  ```
  Sample sentence (implementation):
  ```ocaml
  [: overwrite_ X with function false -> X :]
                  ^^^^
  ```


### Item `fun_expr: OVERWRITE ext list(attribute) seq_expr . WITH STACK FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)` (in 26 errors)

- Derivation (26 occurrences):
  ```
  fun_expr: OVERWRITE ext list(attribute) seq_expr . WITH STACK FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
  ```
  Sample sentence (implementation):
  ```ocaml
  [: overwrite_ X with stack_ function false -> X :]
                  ^^^^
  ```


### Item `seq_expr: . FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)` (in 8 errors)

- Derivation (4 occurrences):
  ```
  fun_expr: ONCE . seq_expr
    seq_expr: . FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
  ```
  Sample sentence (implementation):
  ```ocaml
  [: once_ function false -> . - X :]
           ^^^^^^^^
  ```
- Derivation (4 occurrences):
  ```
  fun_expr: UNIQUE . seq_expr
    seq_expr: . FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
  ```
  Sample sentence (implementation):
  ```ocaml
  [: unique_ function false -> . - X :]
             ^^^^^^^^
  ```


### Item `fun_expr: OVERWRITE ext list(attribute) seq_expr . WITH fun_expr` (in 6 errors)

- Derivation (6 occurrences):
  ```
  fun_expr: OVERWRITE ext list(attribute) seq_expr . WITH fun_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  [: overwrite_ X with X :]
                  ^^^^
  ```


### Item `fun_expr: fun_expr . AT fun_expr` (in 4 errors)

- Derivation (4 occurrences):
  ```
  fun_expr: fun_expr . AT fun_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  [: unique_ X ; @ X :]
                 ^
  ```


### Item `fun_expr: fun_expr . INFIXOP3 fun_expr` (in 4 errors)

- Derivation (4 occurrences):
  ```
  fun_expr: fun_expr . INFIXOP3 fun_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  [: unique_ X ; land X :]
                 ^^^^
  ```


### Item `fun_expr: fun_expr . INFIXOP4 fun_expr` (in 4 errors)

- Derivation (4 occurrences):
  ```
  fun_expr: fun_expr . INFIXOP4 fun_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  [: unique_ X ; ** X :]
                 ^^
  ```


### Item `fun_expr: fun_expr . EQUAL fun_expr` (in 4 errors)

- Derivation (4 occurrences):
  ```
  fun_expr: fun_expr . EQUAL fun_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  [: unique_ X ; = X :]
                 ^
  ```


### Item `fun_expr: fun_expr . BARBAR fun_expr` (in 4 errors)

- Derivation (4 occurrences):
  ```
  fun_expr: fun_expr . BARBAR fun_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  [: unique_ X ; || X :]
                 ^^
  ```


### Item `fun_expr: fun_expr . AMPERAMPER fun_expr` (in 4 errors)

- Derivation (4 occurrences):
  ```
  fun_expr: fun_expr . AMPERAMPER fun_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  [: unique_ X ; && X :]
                 ^^
  ```


### Item `fun_expr: fun_expr . COLONEQUAL fun_expr` (in 4 errors)

- Derivation (4 occurrences):
  ```
  fun_expr: fun_expr . COLONEQUAL fun_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  [: unique_ X ; := X :]
                 ^^
  ```


### Item `fun_expr: fun_expr . COLONCOLON fun_expr` (in 4 errors)

- Derivation (4 occurrences):
  ```
  fun_expr: fun_expr . COLONCOLON fun_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  [: unique_ X ; :: X :]
                 ^^
  ```


### Item `reversed_labeled_tuple_body: fun_expr . COMMA fun_expr` (in 4 errors)

- Derivation (4 occurrences):
  ```
  reversed_labeled_tuple_body: fun_expr . COMMA fun_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  [: unique_ X ; , X :]
                 ^
  ```


### Item `separated_or_terminated_nonempty_list(SEMI,expr): fun_expr . SEMI` (in 4 errors)

- Derivation (4 occurrences):
  ```
  separated_or_terminated_nonempty_list(SEMI,expr): fun_expr . SEMI
  ```
  Sample sentence (implementation):
  ```ocaml
  [: unique_ X ; ; :]
                 ^
  ```

## Error: Syntax error: '|]' expected

### Item `fun_expr: OVERWRITE ext list(attribute) seq_expr . WITH FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)` (in 26 errors)

- Derivation (26 occurrences):
  ```
  fun_expr: OVERWRITE ext list(attribute) seq_expr . WITH FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
  ```
  Sample sentence (implementation):
  ```ocaml
  [| overwrite_ X with function false -> X |]
                  ^^^^
  ```


### Item `fun_expr: OVERWRITE ext list(attribute) seq_expr . WITH STACK FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)` (in 26 errors)

- Derivation (26 occurrences):
  ```
  fun_expr: OVERWRITE ext list(attribute) seq_expr . WITH STACK FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
  ```
  Sample sentence (implementation):
  ```ocaml
  [| overwrite_ X with stack_ function false -> X |]
                  ^^^^
  ```


### Item `seq_expr: . FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)` (in 8 errors)

- Derivation (4 occurrences):
  ```
  fun_expr: ONCE . seq_expr
    seq_expr: . FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
  ```
  Sample sentence (implementation):
  ```ocaml
  [| once_ function false -> . - X |]
           ^^^^^^^^
  ```
- Derivation (4 occurrences):
  ```
  fun_expr: UNIQUE . seq_expr
    seq_expr: . FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
  ```
  Sample sentence (implementation):
  ```ocaml
  [| unique_ function false -> . - X |]
             ^^^^^^^^
  ```


### Item `fun_expr: OVERWRITE ext list(attribute) seq_expr . WITH fun_expr` (in 6 errors)

- Derivation (6 occurrences):
  ```
  fun_expr: OVERWRITE ext list(attribute) seq_expr . WITH fun_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  [| overwrite_ X with X |]
                  ^^^^
  ```


### Item `fun_expr: fun_expr . AT fun_expr` (in 4 errors)

- Derivation (4 occurrences):
  ```
  fun_expr: fun_expr . AT fun_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  [| unique_ X ; @ X |]
                 ^
  ```


### Item `fun_expr: fun_expr . INFIXOP3 fun_expr` (in 4 errors)

- Derivation (4 occurrences):
  ```
  fun_expr: fun_expr . INFIXOP3 fun_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  [| unique_ X ; land X |]
                 ^^^^
  ```


### Item `fun_expr: fun_expr . INFIXOP4 fun_expr` (in 4 errors)

- Derivation (4 occurrences):
  ```
  fun_expr: fun_expr . INFIXOP4 fun_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  [| unique_ X ; ** X |]
                 ^^
  ```


### Item `fun_expr: fun_expr . EQUAL fun_expr` (in 4 errors)

- Derivation (4 occurrences):
  ```
  fun_expr: fun_expr . EQUAL fun_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  [| unique_ X ; = X |]
                 ^
  ```


### Item `fun_expr: fun_expr . BARBAR fun_expr` (in 4 errors)

- Derivation (4 occurrences):
  ```
  fun_expr: fun_expr . BARBAR fun_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  [| unique_ X ; || X |]
                 ^^
  ```


### Item `fun_expr: fun_expr . AMPERAMPER fun_expr` (in 4 errors)

- Derivation (4 occurrences):
  ```
  fun_expr: fun_expr . AMPERAMPER fun_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  [| unique_ X ; && X |]
                 ^^
  ```


### Item `fun_expr: fun_expr . COLONEQUAL fun_expr` (in 4 errors)

- Derivation (4 occurrences):
  ```
  fun_expr: fun_expr . COLONEQUAL fun_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  [| unique_ X ; := X |]
                 ^^
  ```


### Item `fun_expr: fun_expr . COLONCOLON fun_expr` (in 4 errors)

- Derivation (4 occurrences):
  ```
  fun_expr: fun_expr . COLONCOLON fun_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  [| unique_ X ; :: X |]
                 ^^
  ```


### Item `reversed_labeled_tuple_body: fun_expr . COMMA fun_expr` (in 4 errors)

- Derivation (4 occurrences):
  ```
  reversed_labeled_tuple_body: fun_expr . COMMA fun_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  [| unique_ X ; , X |]
                 ^
  ```


### Item `separated_or_terminated_nonempty_list(SEMI,expr): fun_expr . SEMI` (in 4 errors)

- Derivation (4 occurrences):
  ```
  separated_or_terminated_nonempty_list(SEMI,expr): fun_expr . SEMI
  ```
  Sample sentence (implementation):
  ```ocaml
  [| unique_ X ; ; |]
                 ^
  ```

## Error: Syntax error: '>}' expected

### Item `fun_expr: OVERWRITE ext list(attribute) seq_expr . WITH FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)` (in 12 errors)

- Derivation (12 occurrences):
  ```
  fun_expr: OVERWRITE ext list(attribute) seq_expr . WITH FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
  ```
  Sample sentence (implementation):
  ```ocaml
  {< x = overwrite_ X with function false -> X >}
                      ^^^^
  ```


### Item `fun_expr: OVERWRITE ext list(attribute) seq_expr . WITH STACK FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)` (in 12 errors)

- Derivation (12 occurrences):
  ```
  fun_expr: OVERWRITE ext list(attribute) seq_expr . WITH STACK FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
  ```
  Sample sentence (implementation):
  ```ocaml
  {< x = overwrite_ X with stack_ function false -> X >}
                      ^^^^
  ```


### Item `seq_expr: . FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)` (in 4 errors)

- Derivation (2 occurrences):
  ```
  fun_expr: ONCE . seq_expr
    seq_expr: . FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
  ```
  Sample sentence (implementation):
  ```ocaml
  {< x = once_ function false -> . - X >}
               ^^^^^^^^
  ```
- Derivation (2 occurrences):
  ```
  fun_expr: UNIQUE . seq_expr
    seq_expr: . FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
  ```
  Sample sentence (implementation):
  ```ocaml
  {< x = unique_ function false -> . - X >}
                 ^^^^^^^^
  ```


### Item `fun_expr: OVERWRITE ext list(attribute) seq_expr . WITH fun_expr` (in 2 errors)

- Derivation (2 occurrences):
  ```
  fun_expr: OVERWRITE ext list(attribute) seq_expr . WITH fun_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  {< x = overwrite_ X with X >}
                      ^^^^
  ```


### Item `fun_expr: fun_expr . AT fun_expr` (in 2 errors)

- Derivation (2 occurrences):
  ```
  fun_expr: fun_expr . AT fun_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  {< x = unique_ X ; @ X >}
                     ^
  ```


### Item `fun_expr: fun_expr . INFIXOP3 fun_expr` (in 2 errors)

- Derivation (2 occurrences):
  ```
  fun_expr: fun_expr . INFIXOP3 fun_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  {< x = unique_ X ; land X >}
                     ^^^^
  ```


### Item `fun_expr: fun_expr . INFIXOP4 fun_expr` (in 2 errors)

- Derivation (2 occurrences):
  ```
  fun_expr: fun_expr . INFIXOP4 fun_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  {< x = unique_ X ; ** X >}
                     ^^
  ```


### Item `fun_expr: fun_expr . EQUAL fun_expr` (in 2 errors)

- Derivation (2 occurrences):
  ```
  fun_expr: fun_expr . EQUAL fun_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  {< x = unique_ X ; = X >}
                     ^
  ```


### Item `fun_expr: fun_expr . BARBAR fun_expr` (in 2 errors)

- Derivation (2 occurrences):
  ```
  fun_expr: fun_expr . BARBAR fun_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  {< x = unique_ X ; || X >}
                     ^^
  ```


### Item `fun_expr: fun_expr . AMPERAMPER fun_expr` (in 2 errors)

- Derivation (2 occurrences):
  ```
  fun_expr: fun_expr . AMPERAMPER fun_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  {< x = unique_ X ; && X >}
                     ^^
  ```


### Item `fun_expr: fun_expr . COLONEQUAL fun_expr` (in 2 errors)

- Derivation (2 occurrences):
  ```
  fun_expr: fun_expr . COLONEQUAL fun_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  {< x = unique_ X ; := X >}
                     ^^
  ```


### Item `fun_expr: fun_expr . COLONCOLON fun_expr` (in 2 errors)

- Derivation (2 occurrences):
  ```
  fun_expr: fun_expr . COLONCOLON fun_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  {< x = unique_ X ; :: X >}
                     ^^
  ```


### Item `reversed_labeled_tuple_body: fun_expr . COMMA fun_expr` (in 2 errors)

- Derivation (2 occurrences):
  ```
  reversed_labeled_tuple_body: fun_expr . COMMA fun_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  {< x = unique_ X ; , X >}
                     ^
  ```


### Item `separated_or_terminated_nonempty_list(SEMI,object_expr_field): LIDENT option(preceded(EQUAL,expr)) . SEMI` (in 2 errors)

- Derivation (2 occurrences):
  ```
  separated_or_terminated_nonempty_list(SEMI,object_expr_field): LIDENT option(preceded(EQUAL,expr)) . SEMI
  ```
  Sample sentence (implementation):
  ```ocaml
  {< x = unique_ X ; ; >}
                     ^
  ```


# Lexer errors

A lexer error is reported when OCamlformat rejected an input on a location that does not form a complete token for the fuzzer.
This usually indicates a mismatch between the lexical specification used by the fuzzer and the lexer implementation in OCamlformat.
The token at that spot is likely not properly recognized.

## Error: Syntax error

### Item `seq_expr: . fun_seq_expr` (in 7664 errors)

- Derivation (7576 occurrences):
  ```
  implementation: . structure EOF
    structure: . seq_expr list(post_item_attribute) list(structure_element)
      seq_expr: . fun_seq_expr
        fun_seq_expr: . fun_expr
          fun_expr: . simple_expr
            simple_expr: . LESSLBRACKET separated_or_terminated_nonempty_list(SEMI,expr) RBRACKETGREATER
  ```
  Sample sentence (implementation):
  ```ocaml
  <[ _ ]>
  ^^
  ```
- Derivation (2 occurrences):
  ```
  simple_expr: simple_expr DOT LBRACKET . seq_expr RBRACKET
    seq_expr: . fun_seq_expr
      fun_seq_expr: . fun_expr
        fun_expr: . simple_expr
          simple_expr: . LESSLBRACKET separated_or_terminated_nonempty_list(SEMI,expr) RBRACKETGREATER
  ```
  Sample sentence (implementation):
  ```ocaml
  false . [ <[ X ]> ]
            ^^
  ```
- Derivation (2 occurrences):
  ```
  simple_expr: simple_expr DOT LBRACE . seq_expr RBRACE
    seq_expr: . fun_seq_expr
      fun_seq_expr: . fun_expr
        fun_expr: . simple_expr
          simple_expr: . LESSLBRACKET separated_or_terminated_nonempty_list(SEMI,expr) RBRACKETGREATER
  ```
  Sample sentence (implementation):
  ```ocaml
  false . { <[ X ]> }
            ^^
  ```
- Derivation (2 occurrences):
  ```
  simple_expr: simple_expr DOT LPAREN . seq_expr RPAREN
    seq_expr: . fun_seq_expr
      fun_seq_expr: . fun_expr
        fun_expr: . simple_expr
          simple_expr: . LESSLBRACKET separated_or_terminated_nonempty_list(SEMI,expr) RBRACKETGREATER
  ```
  Sample sentence (implementation):
  ```ocaml
  false . ( <[ X ]> )
            ^^
  ```
- Derivation (1 occurrence):
  ```
  value: BANG list(attribute) mutable_flag LIDENT type_constraint EQUAL . seq_expr
    seq_expr: . fun_seq_expr
      fun_seq_expr: . fun_expr
        fun_expr: . simple_expr
          simple_expr: . LESSLBRACKET separated_or_terminated_nonempty_list(SEMI,expr) RBRACKETGREATER
  ```
  Sample sentence (implementation):
  ```ocaml
  object val ! x : {%ext|s|} = <[ X ]> end
                               ^^
  ```
- Derivation (1 occurrence):
  ```
  value: list(attribute) mutable_flag LIDENT type_constraint EQUAL . seq_expr
    seq_expr: . fun_seq_expr
      fun_seq_expr: . fun_expr
        fun_expr: . simple_expr
          simple_expr: . LESSLBRACKET separated_or_terminated_nonempty_list(SEMI,expr) RBRACKETGREATER
  ```
  Sample sentence (implementation):
  ```ocaml
  object val x : {%ext|s|} = <[ X ]> end
                             ^^
  ```
- Derivation (1 occurrence):
  ```
  value: BANG list(attribute) mutable_flag LIDENT EQUAL . seq_expr
    seq_expr: . fun_seq_expr
      fun_seq_expr: . fun_expr
        fun_expr: . simple_expr
          simple_expr: . LESSLBRACKET separated_or_terminated_nonempty_list(SEMI,expr) RBRACKETGREATER
  ```
  Sample sentence (implementation):
  ```ocaml
  object val ! x = <[ X ]> end
                   ^^
  ```
- Derivation (1 occurrence):
  ```
  value: list(attribute) mutable_flag LIDENT EQUAL . seq_expr
    seq_expr: . fun_seq_expr
      fun_seq_expr: . fun_expr
        fun_expr: . simple_expr
          simple_expr: . LESSLBRACKET separated_or_terminated_nonempty_list(SEMI,expr) RBRACKETGREATER
  ```
  Sample sentence (implementation):
  ```ocaml
  object val x = <[ X ]> end
                 ^^
  ```
- Derivation (1 occurrence):
  ```
  item_extension: LBRACKETPERCENTPERCENT attr_id . payload RBRACKET
    payload: . structure
      structure: . seq_expr list(post_item_attribute) list(structure_element)
        seq_expr: . fun_seq_expr
          fun_seq_expr: . fun_expr
            fun_expr: . simple_expr
              simple_expr: . LESSLBRACKET separated_or_terminated_nonempty_list(SEMI,expr) RBRACKETGREATER
  ```
  Sample sentence (implementation):
  ```ocaml
  [%% and <[ X ]> ]
          ^^
  ```
- Derivation (1 occurrence):
  ```
  extension: LBRACKETPERCENT attr_id . payload RBRACKET
    payload: . structure
      structure: . seq_expr list(post_item_attribute) list(structure_element)
        seq_expr: . fun_seq_expr
          fun_seq_expr: . fun_expr
            fun_expr: . simple_expr
              simple_expr: . LESSLBRACKET separated_or_terminated_nonempty_list(SEMI,expr) RBRACKETGREATER
  ```
  Sample sentence (implementation):
  ```ocaml
  [% and <[ X ]> ]
         ^^
  ```
- Derivation (1 occurrence):
  ```
  post_item_attribute: LBRACKETATAT attr_id . attr_payload RBRACKET
    attr_payload: . payload
      payload: . structure
        structure: . seq_expr list(post_item_attribute) list(structure_element)
          seq_expr: . fun_seq_expr
            fun_seq_expr: . fun_expr
              fun_expr: . simple_expr
                simple_expr: . LESSLBRACKET separated_or_terminated_nonempty_list(SEMI,expr) RBRACKETGREATER
  ```
  Sample sentence (implementation):
  ```ocaml
  X [@@ and <[ X ]> ]
            ^^
  ```
- Derivation (1 occurrence):
  ```
  floating_attribute: LBRACKETATATAT attr_id . attr_payload RBRACKET
    attr_payload: . payload
      payload: . structure
        structure: . seq_expr list(post_item_attribute) list(structure_element)
          seq_expr: . fun_seq_expr
            fun_seq_expr: . fun_expr
              fun_expr: . simple_expr
                simple_expr: . LESSLBRACKET separated_or_terminated_nonempty_list(SEMI,expr) RBRACKETGREATER
  ```
  Sample sentence (implementation):
  ```ocaml
  [@@@ and <[ X ]> ]
           ^^
  ```
- Derivation (1 occurrence):
  ```
  attribute: LBRACKETAT attr_id . attr_payload RBRACKET
    attr_payload: . payload
      payload: . structure
        structure: . seq_expr list(post_item_attribute) list(structure_element)
          seq_expr: . fun_seq_expr
            fun_seq_expr: . fun_expr
              fun_expr: . simple_expr
                simple_expr: . LESSLBRACKET separated_or_terminated_nonempty_list(SEMI,expr) RBRACKETGREATER
  ```
  Sample sentence (implementation):
  ```ocaml
  X [@ and <[ X ]> ]
           ^^
  ```
- Derivation (1 occurrence):
  ```
  strict_binding_modes: EQUAL . seq_expr
    seq_expr: . fun_seq_expr
      fun_seq_expr: . fun_expr
        fun_expr: . simple_expr
          simple_expr: . LESSLBRACKET separated_or_terminated_nonempty_list(SEMI,expr) RBRACKETGREATER
  ```
  Sample sentence (implementation):
  ```ocaml
  let x = <[ X ]>
          ^^
  ```
- Derivation (1 occurrence):
  ```
  simple_expr: BEGIN ext list(attribute) . seq_expr END
    seq_expr: . fun_seq_expr
      fun_seq_expr: . fun_expr
        fun_expr: . simple_expr
          simple_expr: . LESSLBRACKET separated_or_terminated_nonempty_list(SEMI,expr) RBRACKETGREATER
  ```
  Sample sentence (implementation):
  ```ocaml
  begin <[ X ]> end
        ^^
  ```
- Derivation (1 occurrence):
  ```
  payload: QUESTION pattern WHEN . seq_expr
    seq_expr: . fun_seq_expr
      fun_seq_expr: . fun_expr
        fun_expr: . simple_expr
          simple_expr: . LESSLBRACKET separated_or_terminated_nonempty_list(SEMI,expr) RBRACKETGREATER
  ```
  Sample sentence (implementation):
  ```ocaml
  [%% and ? false when <[ X ]> ]
                       ^^
  ```
- Derivation (1 occurrence):
  ```
  option(preceded(EQUAL,seq_expr)): EQUAL . seq_expr
    seq_expr: . fun_seq_expr
      fun_seq_expr: . fun_expr
        fun_expr: . simple_expr
          simple_expr: . LESSLBRACKET separated_or_terminated_nonempty_list(SEMI,expr) RBRACKETGREATER
  ```
  Sample sentence (implementation):
  ```ocaml
  fun ? ( x = <[ X ]> ) -> X
              ^^
  ```
- Derivation (1 occurrence):
  ```
  method_: BANG list(attribute) private_flag LIDENT COLON TYPE newtypes DOT core_type EQUAL . seq_expr
    seq_expr: . fun_seq_expr
      fun_seq_expr: . fun_expr
        fun_expr: . simple_expr
          simple_expr: . LESSLBRACKET separated_or_terminated_nonempty_list(SEMI,expr) RBRACKETGREATER
  ```
  Sample sentence (implementation):
  ```ocaml
  object method ! x : type x . {%ext|s|} = <[ X ]> end
                                           ^^
  ```
- Derivation (1 occurrence):
  ```
  method_: list(attribute) private_flag LIDENT COLON TYPE newtypes DOT core_type EQUAL . seq_expr
    seq_expr: . fun_seq_expr
      fun_seq_expr: . fun_expr
        fun_expr: . simple_expr
          simple_expr: . LESSLBRACKET separated_or_terminated_nonempty_list(SEMI,expr) RBRACKETGREATER
  ```
  Sample sentence (implementation):
  ```ocaml
  object method x : type x . {%ext|s|} = <[ X ]> end
                                         ^^
  ```
- Derivation (1 occurrence):
  ```
  method_: BANG list(attribute) private_flag LIDENT COLON possibly_poly(core_type) EQUAL . seq_expr
    seq_expr: . fun_seq_expr
      fun_seq_expr: . fun_expr
        fun_expr: . simple_expr
          simple_expr: . LESSLBRACKET separated_or_terminated_nonempty_list(SEMI,expr) RBRACKETGREATER
  ```
  Sample sentence (implementation):
  ```ocaml
  object method ! x : {%ext|s|} = <[ X ]> end
                                  ^^
  ```
- Derivation (1 occurrence):
  ```
  method_: list(attribute) private_flag LIDENT COLON possibly_poly(core_type) EQUAL . seq_expr
    seq_expr: . fun_seq_expr
      fun_seq_expr: . fun_expr
        fun_expr: . simple_expr
          simple_expr: . LESSLBRACKET separated_or_terminated_nonempty_list(SEMI,expr) RBRACKETGREATER
  ```
  Sample sentence (implementation):
  ```ocaml
  object method x : {%ext|s|} = <[ X ]> end
                                ^^
  ```
- ...


### Item `pattern: . pattern_gen` (in 2 errors)

- Derivation (1 occurrence):
  ```
  comprehension_clause_binding: list(attribute) ONCE . pattern IN fun_expr
    pattern: . pattern_gen
      pattern_gen: . simple_pattern
        simple_pattern: . simple_pattern_not_ident
          simple_pattern_not_ident: . signed_constant
            signed_constant: . signed_value_constant
              signed_value_constant: . value_constant
                value_constant: . FLOAT
  ```
  Sample sentence (implementation):
  ```ocaml
  [: X for once_ 4.0 in X :]
                 ^^^
  ```
- Derivation (1 occurrence):
  ```
  comprehension_clause_binding: list(attribute) UNIQUE . pattern IN fun_expr
    pattern: . pattern_gen
      pattern_gen: . simple_pattern
        simple_pattern: . simple_pattern_not_ident
          simple_pattern_not_ident: . signed_constant
            signed_constant: . signed_value_constant
              signed_value_constant: . value_constant
                value_constant: . FLOAT
  ```
  Sample sentence (implementation):
  ```ocaml
  [: X for unique_ 4.0 in X :]
                   ^^^
  ```


### Item `atomic_type: LESSLBRACKET core_type . RBRACKETGREATER` (in 2885 errors)

- Derivation (2885 occurrences):
  ```
  atomic_type: LESSLBRACKET core_type . RBRACKETGREATER
  ```
  Sample sentence (implementation):
  ```ocaml
  exception false : <[ {%ext|s|} ]>
                                 ^^
  ```


### Item `simple_expr: . LESSLBRACKET separated_or_terminated_nonempty_list(SEMI,expr) RBRACKETGREATER` (in 164 errors)

- Derivation (65 occurrences):
  ```
  fun_expr: STACK . simple_expr
    simple_expr: . LESSLBRACKET separated_or_terminated_nonempty_list(SEMI,expr) RBRACKETGREATER
  ```
  Sample sentence (implementation):
  ```ocaml
  stack_ <[ X ]>
         ^^
  ```
- Derivation (2 occurrences):
  ```
  simple_expr: simple_expr DOT mod_longident DOTOP LBRACKET . separated_or_terminated_nonempty_list(SEMI,expr) RBRACKET
    separated_or_terminated_nonempty_list(SEMI,expr): . fun_expr
      fun_expr: . simple_expr
        simple_expr: . LESSLBRACKET separated_or_terminated_nonempty_list(SEMI,expr) RBRACKETGREATER
  ```
  Sample sentence (implementation):
  ```ocaml
  false . X .+ [ <[ X ]> ]
                 ^^
  ```
- Derivation (2 occurrences):
  ```
  simple_expr: simple_expr DOTOP LBRACKET . separated_or_terminated_nonempty_list(SEMI,expr) RBRACKET
    separated_or_terminated_nonempty_list(SEMI,expr): . fun_expr
      fun_expr: . simple_expr
        simple_expr: . LESSLBRACKET separated_or_terminated_nonempty_list(SEMI,expr) RBRACKETGREATER
  ```
  Sample sentence (implementation):
  ```ocaml
  X .+ [ <[ X ]> ]
         ^^
  ```
- Derivation (2 occurrences):
  ```
  simple_expr: simple_expr DOT mod_longident DOTOP LBRACE . separated_or_terminated_nonempty_list(SEMI,expr) RBRACE
    separated_or_terminated_nonempty_list(SEMI,expr): . fun_expr
      fun_expr: . simple_expr
        simple_expr: . LESSLBRACKET separated_or_terminated_nonempty_list(SEMI,expr) RBRACKETGREATER
  ```
  Sample sentence (implementation):
  ```ocaml
  false . X .+ { <[ X ]> }
                 ^^
  ```
- Derivation (2 occurrences):
  ```
  simple_expr: simple_expr DOTOP LBRACE . separated_or_terminated_nonempty_list(SEMI,expr) RBRACE
    separated_or_terminated_nonempty_list(SEMI,expr): . fun_expr
      fun_expr: . simple_expr
        simple_expr: . LESSLBRACKET separated_or_terminated_nonempty_list(SEMI,expr) RBRACKETGREATER
  ```
  Sample sentence (implementation):
  ```ocaml
  X .+ { <[ X ]> }
         ^^
  ```
- Derivation (2 occurrences):
  ```
  simple_expr: simple_expr DOT mod_longident DOTOP LPAREN . separated_or_terminated_nonempty_list(SEMI,expr) RPAREN
    separated_or_terminated_nonempty_list(SEMI,expr): . fun_expr
      fun_expr: . simple_expr
        simple_expr: . LESSLBRACKET separated_or_terminated_nonempty_list(SEMI,expr) RBRACKETGREATER
  ```
  Sample sentence (implementation):
  ```ocaml
  false . X .+ ( <[ X ]> )
                 ^^
  ```
- Derivation (2 occurrences):
  ```
  simple_expr: simple_expr DOTOP LPAREN . separated_or_terminated_nonempty_list(SEMI,expr) RPAREN
    separated_or_terminated_nonempty_list(SEMI,expr): . fun_expr
      fun_expr: . simple_expr
        simple_expr: . LESSLBRACKET separated_or_terminated_nonempty_list(SEMI,expr) RBRACKETGREATER
  ```
  Sample sentence (implementation):
  ```ocaml
  X .+ ( <[ X ]> )
         ^^
  ```
- Derivation (1 occurrence):
  ```
  simple_expr: simple_expr HASHOP . simple_expr
    simple_expr: . LESSLBRACKET separated_or_terminated_nonempty_list(SEMI,expr) RBRACKETGREATER
  ```
  Sample sentence (implementation):
  ```ocaml
  X ## <[ X ]>
       ^^
  ```
- Derivation (1 occurrence):
  ```
  simple_expr: BANG . simple_expr
    simple_expr: . LESSLBRACKET separated_or_terminated_nonempty_list(SEMI,expr) RBRACKETGREATER
  ```
  Sample sentence (implementation):
  ```ocaml
  ! <[ X ]>
    ^^
  ```
- Derivation (1 occurrence):
  ```
  simple_expr: PREFIXOP . simple_expr
    simple_expr: . LESSLBRACKET separated_or_terminated_nonempty_list(SEMI,expr) RBRACKETGREATER
  ```
  Sample sentence (implementation):
  ```ocaml
  !+ <[ X ]>
     ^^
  ```
- Derivation (1 occurrence):
  ```
  reversed_labeled_tuple_body: TILDE LPAREN LIDENT type_constraint RPAREN COMMA LABEL . simple_expr
    simple_expr: . LESSLBRACKET separated_or_terminated_nonempty_list(SEMI,expr) RBRACKETGREATER
  ```
  Sample sentence (implementation):
  ```ocaml
  ~ ( x : {%ext|s|} ) , ~label: <[ X ]>
                                ^^
  ```
- Derivation (1 occurrence):
  ```
  reversed_labeled_tuple_body: TILDE LIDENT COMMA LABEL . simple_expr
    simple_expr: . LESSLBRACKET separated_or_terminated_nonempty_list(SEMI,expr) RBRACKETGREATER
  ```
  Sample sentence (implementation):
  ```ocaml
  ~ x , ~label: <[ X ]>
                ^^
  ```
- Derivation (1 occurrence):
  ```
  reversed_labeled_tuple_body: LABEL simple_expr COMMA LABEL . simple_expr
    simple_expr: . LESSLBRACKET separated_or_terminated_nonempty_list(SEMI,expr) RBRACKETGREATER
  ```
  Sample sentence (implementation):
  ```ocaml
  ~label: #1.0 , ~label: <[ X ]>
                         ^^
  ```
- Derivation (1 occurrence):
  ```
  reversed_labeled_tuple_body: LABEL . simple_expr COMMA fun_expr
    simple_expr: . LESSLBRACKET separated_or_terminated_nonempty_list(SEMI,expr) RBRACKETGREATER
  ```
  Sample sentence (implementation):
  ```ocaml
  ~label: <[ X ]> , X
          ^^
  ```
- Derivation (1 occurrence):
  ```
  reversed_labeled_tuple_body: STACK FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case) COMMA LABEL . simple_expr
    simple_expr: . LESSLBRACKET separated_or_terminated_nonempty_list(SEMI,expr) RBRACKETGREATER
  ```
  Sample sentence (implementation):
  ```ocaml
  stack_ function false -> . , ~label: <[ X ]>
                                       ^^
  ```
- Derivation (1 occurrence):
  ```
  reversed_labeled_tuple_body: FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case) COMMA LABEL . simple_expr
    simple_expr: . LESSLBRACKET separated_or_terminated_nonempty_list(SEMI,expr) RBRACKETGREATER
  ```
  Sample sentence (implementation):
  ```ocaml
  function false -> . , ~label: <[ X ]>
                                ^^
  ```
- Derivation (1 occurrence):
  ```
  reversed_labeled_tuple_body: fun_expr COMMA LABEL . simple_expr
    simple_expr: . LESSLBRACKET separated_or_terminated_nonempty_list(SEMI,expr) RBRACKETGREATER
  ```
  Sample sentence (implementation):
  ```ocaml
  X , ~label: <[ X ]>
              ^^
  ```
- Derivation (1 occurrence):
  ```
  reversed_labeled_tuple_body: reversed_labeled_tuple_body COMMA LABEL . simple_expr
    simple_expr: . LESSLBRACKET separated_or_terminated_nonempty_list(SEMI,expr) RBRACKETGREATER
  ```
  Sample sentence (implementation):
  ```ocaml
  X , X , ~label: <[ X ]>
                  ^^
  ```
- Derivation (1 occurrence):
  ```
  simple_expr: mod_longident DOT LBRACE . record_expr_content RBRACE
    record_expr_content: . simple_expr WITH separated_or_terminated_nonempty_list(SEMI,record_expr_field)
      simple_expr: . LESSLBRACKET separated_or_terminated_nonempty_list(SEMI,expr) RBRACKETGREATER
  ```
  Sample sentence (implementation):
  ```ocaml
  X . { <[ X ]> with x }
        ^^
  ```
- Derivation (1 occurrence):
  ```
  simple_expr: HASHLBRACE . record_expr_content RBRACE
    record_expr_content: . simple_expr WITH separated_or_terminated_nonempty_list(SEMI,record_expr_field)
      simple_expr: . LESSLBRACKET separated_or_terminated_nonempty_list(SEMI,expr) RBRACKETGREATER
  ```
  Sample sentence (implementation):
  ```ocaml
  #{ <[ X ]> with x }
     ^^
  ```
- Derivation (1 occurrence):
  ```
  simple_expr: LBRACE . record_expr_content RBRACE
    record_expr_content: . simple_expr WITH separated_or_terminated_nonempty_list(SEMI,record_expr_field)
      simple_expr: . LESSLBRACKET separated_or_terminated_nonempty_list(SEMI,expr) RBRACKETGREATER
  ```
  Sample sentence (implementation):
  ```ocaml
  { <[ X ]> with x }
    ^^
  ```
- ...

## Error: Syntax error: ')' expected

### Item `fun_seq_expr: . fun_expr` (in 2 errors)

- Derivation (1 occurrence):
  ```
  simple_expr: mod_longident DOT LPAREN . seq_expr RPAREN
    seq_expr: . fun_seq_expr
      fun_seq_expr: . fun_expr
        fun_expr: . simple_expr
          simple_expr: . LESSLBRACKET separated_or_terminated_nonempty_list(SEMI,expr) RBRACKETGREATER
  ```
  Sample sentence (implementation):
  ```ocaml
  X . ( <[ X ]> )
        ^^
  ```
- Derivation (1 occurrence):
  ```
  simple_expr: LPAREN . seq_expr RPAREN
    seq_expr: . fun_seq_expr
      fun_seq_expr: . fun_expr
        fun_expr: . simple_expr
          simple_expr: . LESSLBRACKET separated_or_terminated_nonempty_list(SEMI,expr) RBRACKETGREATER
  ```
  Sample sentence (implementation):
  ```ocaml
  ( <[ X ]> )
    ^^
  ```


### Item `simple_expr: . LESSLBRACKET separated_or_terminated_nonempty_list(SEMI,expr) RBRACKETGREATER` (in 2 errors)

- Derivation (1 occurrence):
  ```
  simple_expr: BANG . simple_expr
    simple_expr: . LESSLBRACKET separated_or_terminated_nonempty_list(SEMI,expr) RBRACKETGREATER
  ```
  Sample sentence (implementation):
  ```ocaml
  ( ! <[ X ]> )
      ^^
  ```
- Derivation (1 occurrence):
  ```
  simple_expr: PREFIXOP . simple_expr
    simple_expr: . LESSLBRACKET separated_or_terminated_nonempty_list(SEMI,expr) RBRACKETGREATER
  ```
  Sample sentence (implementation):
  ```ocaml
  ( !+ <[ X ]> )
       ^^
  ```

## Error: Syntax error: 'end' expected

### Item `fun_expr: . simple_expr` (in 1 error)

- Derivation (1 occurrence):
  ```
  module_expr: STRUCT list(attribute) . structure END
    structure: . seq_expr list(post_item_attribute) list(structure_element)
      seq_expr: . fun_seq_expr
        fun_seq_expr: . fun_expr
          fun_expr: . simple_expr
            simple_expr: . LESSLBRACKET separated_or_terminated_nonempty_list(SEMI,expr) RBRACKETGREATER
  ```
  Sample sentence (implementation):
  ```ocaml
  include struct <[ X ]> end
                 ^^
  ```


# Comment errors

These are errors OCamlformat reports while processing a comment.
They usually mean that the comment was not preserved by the formatting process (e.g., it was dropped or moved).

## Error: comment dropped.

### Item `class_field: METHOD . method_ list(post_item_attribute)` (in 1894 errors)

- Derivation (1894 occurrences):
  ```
  class_field: METHOD . method_ list(post_item_attribute)
    method_: . BANG list(attribute) private_flag LIDENT COLON TYPE newtypes DOT core_type EQUAL seq_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  object method (* ... *) ! x : type x . {%ext|s|} = X end
                ^^^^^^^^^
  ```


### Item `method_: list(attribute) private_flag . LIDENT COLON TYPE newtypes DOT core_type EQUAL seq_expr` (in 1894 errors)

- Derivation (1894 occurrences):
  ```
  method_: list(attribute) private_flag . LIDENT COLON TYPE newtypes DOT core_type EQUAL seq_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  object method (* ... *) x : type x . {%ext|s|} = X end
                ^^^^^^^^^
  ```


### Item `class_field: VAL . value list(post_item_attribute)` (in 1719 errors)

- Derivation (1719 occurrences):
  ```
  class_field: VAL . value list(post_item_attribute)
    value: . BANG list(attribute) mutable_flag LIDENT type_constraint EQUAL seq_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  object val (* ... *) ! x : {%ext|s|} = X end
             ^^^^^^^^^
  ```


### Item `value: list(attribute) mutable_flag . LIDENT type_constraint EQUAL seq_expr` (in 1719 errors)

- Derivation (1719 occurrences):
  ```
  value: list(attribute) mutable_flag . LIDENT type_constraint EQUAL seq_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  object val (* ... *) x : {%ext|s|} = X end
             ^^^^^^^^^
  ```


### Item `module_type: . extension` (in 454 errors)

- Derivation (263 occurrences):
  ```
  signature_item: include_kind ext list(attribute) . module_type list(post_item_attribute) optional_atat_modalities_expr
    module_type: . module_type WITH mod_ext_longident
      module_type: . module_type WITH reversed_separated_nonempty_llist(AND,with_constraint)
        module_type: . extension
          extension: . QUOTED_STRING_EXPR
  ```
  Sample sentence (interface):
  ```ocaml
  include (* ... *) {%ext|s|} with module X := X with X
          ^^^^^^^^^
  ```
- Derivation (39 occurrences):
  ```
  module_type: reversed_nonempty_llist(functor_arg) MINUSGREATER . module_type
    module_type: . extension
      extension: . QUOTED_STRING_EXPR
  ```
  Sample sentence (interface):
  ```ocaml
  module X : ( ) -> (* ... *) {%ext|s|}
                    ^^^^^^^^^
  ```
- Derivation (30 occurrences):
  ```
  signature_item: MODULE ext list(attribute) REC module_name COLON . module_type optional_atat_modalities_expr list(post_item_attribute) list(and_module_declaration)
    module_type: . extension
      extension: . QUOTED_STRING_EXPR
  ```
  Sample sentence (interface):
  ```ocaml
  module rec _ : (* ... *) {%ext|s|}
                 ^^^^^^^^^
  ```
- Derivation (22 occurrences):
  ```
  list(and_module_declaration): AND list(attribute) module_name COLON . module_type optional_atat_modalities_expr list(post_item_attribute) list(and_module_declaration)
    module_type: . extension
      extension: . QUOTED_STRING_EXPR
  ```
  Sample sentence (interface):
  ```ocaml
  module rec X : {%ext|s|} and _ : (* ... *) {%ext|s|}
                                   ^^^^^^^^^
  ```
- Derivation (15 occurrences):
  ```
  with_constraint: MODULE TYPE mty_longident COLONEQUAL . module_type
    module_type: . extension
      extension: . QUOTED_STRING_EXPR
  ```
  Sample sentence (interface):
  ```ocaml
  include {%ext|s|} with module type X := (* ... *) {%ext|s|}
                                          ^^^^^^^^^
  ```
- Derivation (13 occurrences):
  ```
  module_type_atomic: LPAREN . module_type RPAREN
    module_type: . extension
      extension: . QUOTED_STRING_EXPR
  ```
  Sample sentence (interface):
  ```ocaml
  include ( (* ... *) {%ext|s|} )
            ^^^^^^^^^
  ```
- Derivation (11 occurrences):
  ```
  with_constraint: MODULE TYPE mty_longident EQUAL . module_type
    module_type: . extension
      extension: . QUOTED_STRING_EXPR
  ```
  Sample sentence (interface):
  ```ocaml
  include {%ext|s|} with module type X = (* ... *) {%ext|s|}
                                         ^^^^^^^^^
  ```
- Derivation (9 occurrences):
  ```
  module_declaration_body(__anonymous_8): COLON . module_type optional_atat_modalities_expr
    module_type: . extension
      extension: . QUOTED_STRING_EXPR
  ```
  Sample sentence (interface):
  ```ocaml
  module _ : (* ... *) {%ext|s|}
             ^^^^^^^^^
  ```
- Derivation (5 occurrences):
  ```
  signature_item: include_kind ext list(attribute) . module_type list(post_item_attribute) optional_atat_modalities_expr
    module_type: . extension
      extension: . QUOTED_STRING_EXPR
  ```
  Sample sentence (interface):
  ```ocaml
  ;; include (* ... *) {%ext|s|}
             ^^^^^^^^^
  ```
- Derivation (4 occurrences):
  ```
  module_type_subst: MODULE TYPE ext list(attribute) ident COLONEQUAL . module_type list(post_item_attribute)
    module_type: . extension
      extension: . QUOTED_STRING_EXPR
  ```
  Sample sentence (interface):
  ```ocaml
  module type x := (* ... *) {%ext|s|}
                   ^^^^^^^^^
  ```
- Derivation (2 occurrences):
  ```
  option(preceded(EQUAL,module_type)): EQUAL . module_type
    module_type: . extension
      extension: . QUOTED_STRING_EXPR
  ```
  Sample sentence (implementation):
  ```ocaml
  module type x = (* ... *) {%ext|s|}
                  ^^^^^^^^^
  ```
- Derivation (2 occurrences):
  ```
  signature_item: include_kind ext list(attribute) . module_type list(post_item_attribute) optional_atat_modalities_expr
    module_type: . module_type WITH mod_ext_longident
      module_type: . extension
        extension: . QUOTED_STRING_EXPR
  ```
  Sample sentence (interface):
  ```ocaml
  include (* ... *) {%ext|s|} with X . X
          ^^^^^^^^^
  ```
- Derivation (2 occurrences):
  ```
  module_type: reversed_nonempty_llist(functor_arg) MINUSGREATER . module_type
    module_type: . module_type MINUSGREATER module_type
      module_type: . extension
        extension: . QUOTED_STRING_EXPR
  ```
  Sample sentence (implementation):
  ```ocaml
  module X : ( ) -> (* ... *) {%ext|s|} -> X = {%ext|s|}
                    ^^^^^^^^^
  ```
- Derivation (1 occurrence):
  ```
  paren_module_expr: LPAREN module_expr COLON . module_type RPAREN
    module_type: . extension
      extension: . QUOTED_STRING_EXPR
  ```
  Sample sentence (implementation):
  ```ocaml
  include ( {%ext|s|} : (* ... *) {%ext|s|} )
                        ^^^^^^^^^
  ```
- Derivation (1 occurrence):
  ```
  signature_item: MODULE ext list(attribute) REC module_name COLON . module_type optional_atat_modalities_expr list(post_item_attribute) list(and_module_declaration)
    module_type: . module_type WITH mod_ext_longident
      module_type: . extension
        extension: . QUOTED_STRING_EXPR
  ```
  Sample sentence (interface):
  ```ocaml
  module rec X : (* ... *) {%ext|s|} with X
                 ^^^^^^^^^
  ```
- Derivation (1 occurrence):
  ```
  option(preceded(EQUAL,module_type)): EQUAL . module_type
    module_type: . module_type WITH mod_ext_longident
      module_type: . extension
        extension: . QUOTED_STRING_EXPR
  ```
  Sample sentence (implementation):
  ```ocaml
  module type x = (* ... *) {%ext|s|} with X
                  ^^^^^^^^^
  ```
- Derivation (1 occurrence):
  ```
  module_type_subst: MODULE TYPE ext list(attribute) ident COLONEQUAL . module_type list(post_item_attribute)
    module_type: . module_type WITH mod_ext_longident
      module_type: . extension
        extension: . QUOTED_STRING_EXPR
  ```
  Sample sentence (interface):
  ```ocaml
  module type x := (* ... *) {%ext|s|} with X
                   ^^^^^^^^^
  ```
- Derivation (1 occurrence):
  ```
  module_type_atomic: LPAREN . module_type RPAREN
    module_type: . module_type WITH mod_ext_longident
      module_type: . extension
        extension: . QUOTED_STRING_EXPR
  ```
  Sample sentence (interface):
  ```ocaml
  include ( (* ... *) {%ext|s|} with X )
            ^^^^^^^^^
  ```
- Derivation (1 occurrence):
  ```
  module_declaration_body(__anonymous_8): COLON . module_type optional_atat_modalities_expr
    module_type: . module_type WITH mod_ext_longident
      module_type: . extension
        extension: . QUOTED_STRING_EXPR
  ```
  Sample sentence (interface):
  ```ocaml
  module X : (* ... *) {%ext|s|} with X
             ^^^^^^^^^
  ```
- Derivation (1 occurrence):
  ```
  list(and_module_declaration): AND list(attribute) module_name COLON . module_type optional_atat_modalities_expr list(post_item_attribute) list(and_module_declaration)
    module_type: . module_type WITH mod_ext_longident
      module_type: . extension
        extension: . QUOTED_STRING_EXPR
  ```
  Sample sentence (interface):
  ```ocaml
  module rec X : {%ext|s|} and X : (* ... *) {%ext|s|} with X
                                   ^^^^^^^^^
  ```
- Derivation (1 occurrence):
  ```
  signature_item: MODULE ext list(attribute) REC module_name COLON . module_type optional_atat_modalities_expr list(post_item_attribute) list(and_module_declaration)
    module_type: . module_type WITH mod_ext_longident
      module_type: . module_type WITH reversed_separated_nonempty_llist(AND,with_constraint)
        module_type: . extension
          extension: . QUOTED_STRING_EXPR
  ```
  Sample sentence (interface):
  ```ocaml
  module rec X : (* ... *) {%ext|s|} with module X := X with X
                 ^^^^^^^^^
  ```
- ...


### Item `simple_expr: LBRACELESS separated_or_terminated_nonempty_list(SEMI,object_expr_field) . GREATERRBRACE` (in 263 errors)

- Derivation (263 occurrences):
  ```
  simple_expr: LBRACELESS separated_or_terminated_nonempty_list(SEMI,object_expr_field) . GREATERRBRACE
  ```
  Sample sentence (implementation):
  ```ocaml
  {< x (* ... *) >}
       ^^^^^^^^^
  ```


### Item `simple_expr: mod_longident DOT LBRACELESS separated_or_terminated_nonempty_list(SEMI,object_expr_field) . GREATERRBRACE` (in 263 errors)

- Derivation (263 occurrences):
  ```
  simple_expr: mod_longident DOT LBRACELESS separated_or_terminated_nonempty_list(SEMI,object_expr_field) . GREATERRBRACE
  ```
  Sample sentence (implementation):
  ```ocaml
  X . {< x (* ... *) >}
           ^^^^^^^^^
  ```


### Item `seq_expr: . fun_seq_expr` (in 200 errors)

- Derivation (90 occurrences):
  ```
  simple_expr: LPAREN . seq_expr RPAREN
    seq_expr: . fun_seq_expr
      fun_seq_expr: . fun_expr
        fun_expr: . subtractive fun_expr
          subtractive: . MINUS
  ```
  Sample sentence (implementation):
  ```ocaml
  ( (* ... *) - X )
    ^^^^^^^^^
  ```
- Derivation (90 occurrences):
  ```
  simple_expr: LPAREN . seq_expr RPAREN
    seq_expr: . fun_seq_expr
      fun_seq_expr: . fun_expr
        fun_expr: . additive fun_expr
          additive: . PLUS
  ```
  Sample sentence (implementation):
  ```ocaml
  ( (* ... *) + X )
    ^^^^^^^^^
  ```
- Derivation (3 occurrences):
  ```
  simple_expr: LPAREN . seq_expr RPAREN
    seq_expr: . fun_seq_expr
      fun_seq_expr: . fun_expr
        fun_expr: . subtractive STACK FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
          subtractive: . MINUS
  ```
  Sample sentence (implementation):
  ```ocaml
  ( (* ... *) - stack_ function false -> X )
    ^^^^^^^^^
  ```
- Derivation (3 occurrences):
  ```
  simple_expr: LPAREN . seq_expr RPAREN
    seq_expr: . fun_seq_expr
      fun_seq_expr: . fun_expr
        fun_expr: . subtractive FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
          subtractive: . MINUS
  ```
  Sample sentence (implementation):
  ```ocaml
  ( (* ... *) - function false -> X )
    ^^^^^^^^^
  ```
- Derivation (3 occurrences):
  ```
  simple_expr: LPAREN . seq_expr RPAREN
    seq_expr: . fun_seq_expr
      fun_seq_expr: . fun_expr
        fun_expr: . additive STACK FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
          additive: . PLUS
  ```
  Sample sentence (implementation):
  ```ocaml
  ( (* ... *) + stack_ function false -> X )
    ^^^^^^^^^
  ```
- Derivation (3 occurrences):
  ```
  simple_expr: LPAREN . seq_expr RPAREN
    seq_expr: . fun_seq_expr
      fun_seq_expr: . fun_expr
        fun_expr: . additive FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
          additive: . PLUS
  ```
  Sample sentence (implementation):
  ```ocaml
  ( (* ... *) + function false -> X )
    ^^^^^^^^^
  ```
- Derivation (1 occurrence):
  ```
  simple_expr: LPAREN . seq_expr RPAREN
    seq_expr: . fun_seq_expr
      fun_seq_expr: . fun_expr SEMI
        fun_expr: . subtractive STACK FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
          subtractive: . MINUS
  ```
  Sample sentence (implementation):
  ```ocaml
  ( (* ... *) - stack_ function false -> . ; )
    ^^^^^^^^^
  ```
- Derivation (1 occurrence):
  ```
  simple_expr: LPAREN . seq_expr RPAREN
    seq_expr: . fun_seq_expr
      fun_seq_expr: . fun_expr SEMI
        fun_expr: . subtractive FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
          subtractive: . MINUS
  ```
  Sample sentence (implementation):
  ```ocaml
  ( (* ... *) - function false -> . ; )
    ^^^^^^^^^
  ```
- Derivation (1 occurrence):
  ```
  simple_expr: LPAREN . seq_expr RPAREN
    seq_expr: . fun_seq_expr
      fun_seq_expr: . fun_expr SEMI
        fun_expr: . subtractive fun_expr
          subtractive: . MINUS
  ```
  Sample sentence (implementation):
  ```ocaml
  ( (* ... *) - X ; )
    ^^^^^^^^^
  ```
- Derivation (1 occurrence):
  ```
  value: BANG list(attribute) mutable_flag LIDENT EQUAL . seq_expr
    seq_expr: . fun_seq_expr
      fun_seq_expr: . fun_expr
        fun_expr: . simple_expr
          simple_expr: . LPAREN seq_expr COLON core_type RPAREN
  ```
  Sample sentence (implementation):
  ```ocaml
  object val ! x = (* ... *) ( X : {%ext|s|} ) end
                   ^^^^^^^^^
  ```
- Derivation (1 occurrence):
  ```
  value: list(attribute) mutable_flag LIDENT EQUAL . seq_expr
    seq_expr: . fun_seq_expr
      fun_seq_expr: . fun_expr
        fun_expr: . simple_expr
          simple_expr: . LPAREN seq_expr COLON core_type RPAREN
  ```
  Sample sentence (implementation):
  ```ocaml
  object val x = (* ... *) ( X : {%ext|s|} ) end
                 ^^^^^^^^^
  ```
- Derivation (1 occurrence):
  ```
  simple_expr: LPAREN . seq_expr RPAREN
    seq_expr: . fun_seq_expr
      fun_seq_expr: . fun_expr SEMI
        fun_expr: . additive STACK FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
          additive: . PLUS
  ```
  Sample sentence (implementation):
  ```ocaml
  ( (* ... *) + stack_ function false -> . ; )
    ^^^^^^^^^
  ```
- Derivation (1 occurrence):
  ```
  simple_expr: LPAREN . seq_expr RPAREN
    seq_expr: . fun_seq_expr
      fun_seq_expr: . fun_expr SEMI
        fun_expr: . additive FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
          additive: . PLUS
  ```
  Sample sentence (implementation):
  ```ocaml
  ( (* ... *) + function false -> . ; )
    ^^^^^^^^^
  ```
- Derivation (1 occurrence):
  ```
  simple_expr: LPAREN . seq_expr RPAREN
    seq_expr: . fun_seq_expr
      fun_seq_expr: . fun_expr SEMI
        fun_expr: . additive fun_expr
          additive: . PLUS
  ```
  Sample sentence (implementation):
  ```ocaml
  ( (* ... *) + X ; )
    ^^^^^^^^^
  ```


### Item `class_expr: . class_simple_expr` (in 82 errors)

- Derivation (79 occurrences):
  ```
  class_fun_binding: EQUAL . class_expr
    class_expr: . class_simple_expr
      class_simple_expr: . LPAREN class_expr COLON class_type RPAREN
  ```
  Sample sentence (implementation):
  ```ocaml
  class x = (* ... *) ( x : {%ext|s|} )
            ^^^^^^^^^
  ```
- Derivation (1 occurrence):
  ```
  class_simple_expr: LPAREN . class_expr RPAREN
    class_expr: . class_simple_expr
      class_simple_expr: . LPAREN class_expr COLON class_type RPAREN
  ```
  Sample sentence (implementation):
  ```ocaml
  class x = ( (* ... *) ( x : {%ext|s|} ) )
              ^^^^^^^^^
  ```
- Derivation (1 occurrence):
  ```
  class_fun_def: labeled_simple_pattern MINUSGREATER . class_expr
    class_expr: . class_simple_expr
      class_simple_expr: . LPAREN class_expr COLON class_type RPAREN
  ```
  Sample sentence (implementation):
  ```ocaml
  class x = fun false -> (* ... *) ( x : {%ext|s|} )
                         ^^^^^^^^^
  ```
- Derivation (1 occurrence):
  ```
  class_fun_binding: EQUAL . class_expr
    class_expr: . class_simple_expr
      class_simple_expr: . LPAREN class_expr RPAREN
  ```
  Sample sentence (implementation):
  ```ocaml
  class x = (* ... *) ( ( x : {%ext|s|} ) )
            ^^^^^^^^^
  ```


### Item `class_fun_binding: . COLON class_type EQUAL class_expr` (in 68 errors)

- Derivation (60 occurrences):
  ```
  structure_item: CLASS ext list(attribute) virtual_flag formal_class_parameters LIDENT . class_fun_binding list(post_item_attribute) list(and_class_declaration)
    class_fun_binding: . COLON class_type EQUAL class_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  class x (* ... *) : {%ext|s|} = {%ext|s|}
          ^^^^^^^^^
  ```
- Derivation (7 occurrences):
  ```
  class_fun_binding: labeled_simple_pattern . class_fun_binding
    class_fun_binding: . COLON class_type EQUAL class_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  class x false (* ... *) : {%ext|s|} = x
                ^^^^^^^^^
  ```
- Derivation (1 occurrence):
  ```
  list(and_class_declaration): AND list(attribute) virtual_flag formal_class_parameters LIDENT . class_fun_binding list(post_item_attribute) list(and_class_declaration)
    class_fun_binding: . COLON class_type EQUAL class_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  class x = x and x (* ... *) : {%ext|s|} = x
                    ^^^^^^^^^
  ```


### Item `module_type: . module_type_atomic` (in 33 errors)

- Derivation (6 occurrences):
  ```
  signature_item: include_kind ext list(attribute) . module_type list(post_item_attribute) optional_atat_modalities_expr
    module_type: . module_type_atomic
      module_type_atomic: . LPAREN module_type RPAREN
  ```
  Sample sentence (interface):
  ```ocaml
  include (* ... *) ( {%ext|s|} )
          ^^^^^^^^^
  ```
- Derivation (4 occurrences):
  ```
  module_type: FUNCTOR list(attribute) reversed_nonempty_llist(functor_arg) MINUSGREATER . module_type
    module_type: . module_type MINUSGREATER module_type
      module_type: . module_type_atomic
        module_type_atomic: . mty_longident
          mty_longident: . mk_longident(mod_ext_longident,ident)
            mk_longident(mod_ext_longident,ident): . ident
              ident: . UIDENT
  ```
  Sample sentence (interface):
  ```ocaml
  include functor functor ( ) -> (* ... *) X -> X
                                 ^^^^^^^^^
  ```
- Derivation (2 occurrences):
  ```
  module_type: module_type MINUSGREATER . module_type
    module_type: . module_type MINUSGREATER module_type
      module_type: . module_type_atomic
        module_type_atomic: . mty_longident
          mty_longident: . mk_longident(mod_ext_longident,ident)
            mk_longident(mod_ext_longident,ident): . ident
              ident: . UIDENT
  ```
  Sample sentence (implementation):
  ```ocaml
  module X : X -> (* ... *) X -> X = {%ext|s|}
                  ^^^^^^^^^
  ```
- Derivation (1 occurrence):
  ```
  with_constraint: MODULE TYPE mty_longident COLONEQUAL . module_type
    module_type: . module_type_atomic
      module_type_atomic: . LPAREN module_type RPAREN
  ```
  Sample sentence (interface):
  ```ocaml
  include {%ext|s|} with module type X := (* ... *) ( {%ext|s|} )
                                          ^^^^^^^^^
  ```
- Derivation (1 occurrence):
  ```
  with_constraint: MODULE TYPE mty_longident EQUAL . module_type
    module_type: . module_type_atomic
      module_type_atomic: . LPAREN module_type RPAREN
  ```
  Sample sentence (interface):
  ```ocaml
  include {%ext|s|} with module type X = (* ... *) ( {%ext|s|} )
                                         ^^^^^^^^^
  ```
- Derivation (1 occurrence):
  ```
  signature_item: MODULE ext list(attribute) REC module_name COLON . module_type optional_atat_modalities_expr list(post_item_attribute) list(and_module_declaration)
    module_type: . module_type_atomic
      module_type_atomic: . LPAREN module_type RPAREN
  ```
  Sample sentence (interface):
  ```ocaml
  module rec X : (* ... *) ( {%ext|s|} )
                 ^^^^^^^^^
  ```
- Derivation (1 occurrence):
  ```
  paren_module_expr: LPAREN module_expr COLON . module_type RPAREN
    module_type: . module_type_atomic
      module_type_atomic: . LPAREN module_type RPAREN
  ```
  Sample sentence (implementation):
  ```ocaml
  include ( {%ext|s|} : (* ... *) ( {%ext|s|} ) )
                        ^^^^^^^^^
  ```
- Derivation (1 occurrence):
  ```
  option(preceded(EQUAL,module_type)): EQUAL . module_type
    module_type: . module_type_atomic
      module_type_atomic: . LPAREN module_type RPAREN
  ```
  Sample sentence (implementation):
  ```ocaml
  module type x = (* ... *) ( {%ext|s|} )
                  ^^^^^^^^^
  ```
- Derivation (1 occurrence):
  ```
  module_type_subst: MODULE TYPE ext list(attribute) ident COLONEQUAL . module_type list(post_item_attribute)
    module_type: . module_type_atomic
      module_type_atomic: . LPAREN module_type RPAREN
  ```
  Sample sentence (interface):
  ```ocaml
  module type x := (* ... *) ( {%ext|s|} )
                   ^^^^^^^^^
  ```
- Derivation (1 occurrence):
  ```
  module_type_atomic: LPAREN . module_type RPAREN
    module_type: . module_type_atomic
      module_type_atomic: . LPAREN module_type RPAREN
  ```
  Sample sentence (interface):
  ```ocaml
  include ( (* ... *) ( {%ext|s|} ) )
            ^^^^^^^^^
  ```
- Derivation (1 occurrence):
  ```
  module_type: FUNCTOR list(attribute) reversed_nonempty_llist(functor_arg) MINUSGREATER . module_type
    module_type: . module_type_atomic
      module_type_atomic: . LPAREN module_type RPAREN
  ```
  Sample sentence (interface):
  ```ocaml
  include functor functor ( ) -> (* ... *) ( {%ext|s|} )
                                 ^^^^^^^^^
  ```
- Derivation (1 occurrence):
  ```
  module_declaration_body(module_type_with_optional_modes): COLON . module_type
    module_type: . module_type_atomic
      module_type_atomic: . LPAREN module_type RPAREN
  ```
  Sample sentence (interface):
  ```ocaml
  module X ( ) : (* ... *) ( {%ext|s|} )
                 ^^^^^^^^^
  ```
- Derivation (1 occurrence):
  ```
  module_declaration_body(__anonymous_8): COLON . module_type optional_atat_modalities_expr
    module_type: . module_type_atomic
      module_type_atomic: . LPAREN module_type RPAREN
  ```
  Sample sentence (interface):
  ```ocaml
  module X : (* ... *) ( {%ext|s|} )
             ^^^^^^^^^
  ```
- Derivation (1 occurrence):
  ```
  module_binding_body: COLON . module_type EQUAL module_expr
    module_type: . module_type_atomic
      module_type_atomic: . LPAREN module_type RPAREN
  ```
  Sample sentence (implementation):
  ```ocaml
  module X : (* ... *) ( {%ext|s|} ) = {%ext|s|}
             ^^^^^^^^^
  ```
- Derivation (1 occurrence):
  ```
  list(and_module_declaration): AND list(attribute) module_name COLON . module_type optional_atat_modalities_expr list(post_item_attribute) list(and_module_declaration)
    module_type: . module_type_atomic
      module_type_atomic: . LPAREN module_type RPAREN
  ```
  Sample sentence (interface):
  ```ocaml
  module rec X : {%ext|s|} and X : (* ... *) ( {%ext|s|} )
                                   ^^^^^^^^^
  ```
- Derivation (1 occurrence):
  ```
  paren_module_expr: LPAREN module_expr COLON . module_type RPAREN
    module_type: . module_type WITH mod_ext_longident
      module_type: . module_type_atomic
        module_type_atomic: . mty_longident
          mty_longident: . mk_longident(mod_ext_longident,ident)
            mk_longident(mod_ext_longident,ident): . ident
              ident: . UIDENT
  ```
  Sample sentence (implementation):
  ```ocaml
  include ( {%ext|s|} : (* ... *) X with X )
                        ^^^^^^^^^
  ```
- Derivation (1 occurrence):
  ```
  module_type: FUNCTOR list(attribute) reversed_nonempty_llist(functor_arg) MINUSGREATER . module_type
    module_type: . module_type WITH mod_ext_longident
      module_type: . module_type_atomic
        module_type_atomic: . mty_longident
          mty_longident: . mk_longident(mod_ext_longident,ident)
            mk_longident(mod_ext_longident,ident): . ident
              ident: . UIDENT
  ```
  Sample sentence (interface):
  ```ocaml
  include functor functor ( ) -> (* ... *) X with X
                                 ^^^^^^^^^
  ```
- Derivation (1 occurrence):
  ```
  module_declaration_body(module_type_with_optional_modes): COLON . module_type
    module_type: . module_type WITH mod_ext_longident
      module_type: . module_type_atomic
        module_type_atomic: . mty_longident
          mty_longident: . mk_longident(mod_ext_longident,ident)
            mk_longident(mod_ext_longident,ident): . ident
              ident: . UIDENT
  ```
  Sample sentence (interface):
  ```ocaml
  module X ( ) : (* ... *) X with X
                 ^^^^^^^^^
  ```
- Derivation (1 occurrence):
  ```
  module_binding_body: COLON . module_type EQUAL module_expr
    module_type: . module_type WITH mod_ext_longident
      module_type: . module_type_atomic
        module_type_atomic: . mty_longident
          mty_longident: . mk_longident(mod_ext_longident,ident)
            mk_longident(mod_ext_longident,ident): . ident
              ident: . UIDENT
  ```
  Sample sentence (implementation):
  ```ocaml
  module X : (* ... *) X with X = {%ext|s|}
             ^^^^^^^^^
  ```
- Derivation (1 occurrence):
  ```
  paren_module_expr: LPAREN module_expr COLON . module_type RPAREN
    module_type: . module_type WITH mod_ext_longident
      module_type: . module_type WITH reversed_separated_nonempty_llist(AND,with_constraint)
        module_type: . module_type_atomic
          module_type_atomic: . mty_longident
            mty_longident: . mk_longident(mod_ext_longident,ident)
              mk_longident(mod_ext_longident,ident): . ident
                ident: . UIDENT
  ```
  Sample sentence (implementation):
  ```ocaml
  include ( {%ext|s|} : (* ... *) X with module X := X with X )
                        ^^^^^^^^^
  ```
- Derivation (1 occurrence):
  ```
  module_type: FUNCTOR list(attribute) reversed_nonempty_llist(functor_arg) MINUSGREATER . module_type
    module_type: . module_type WITH mod_ext_longident
      module_type: . module_type WITH reversed_separated_nonempty_llist(AND,with_constraint)
        module_type: . module_type_atomic
          module_type_atomic: . mty_longident
            mty_longident: . mk_longident(mod_ext_longident,ident)
              mk_longident(mod_ext_longident,ident): . ident
                ident: . UIDENT
  ```
  Sample sentence (interface):
  ```ocaml
  include functor functor ( ) -> (* ... *) X with module X := X with X
                                 ^^^^^^^^^
  ```
- ...


### Item `module_type: FUNCTOR list(attribute) reversed_nonempty_llist(functor_arg) MINUSGREATER . module_type` (in 9 errors)

- Derivation (4 occurrences):
  ```
  module_type: FUNCTOR list(attribute) reversed_nonempty_llist(functor_arg) MINUSGREATER . module_type
    module_type: . FUNCTOR list(attribute) reversed_nonempty_llist(functor_arg) MINUSGREATER module_type
  ```
  Sample sentence (interface):
  ```ocaml
  include functor functor ( ) -> (* ... *) functor ( ) -> X
                                 ^^^^^^^^^
  ```
- Derivation (4 occurrences):
  ```
  module_type: FUNCTOR list(attribute) reversed_nonempty_llist(functor_arg) MINUSGREATER . module_type
    module_type: . reversed_nonempty_llist(functor_arg) MINUSGREATER module_type
      reversed_nonempty_llist(functor_arg): . functor_arg
        functor_arg: . LPAREN RPAREN
  ```
  Sample sentence (interface):
  ```ocaml
  include functor functor ( ) -> (* ... *) ( ) -> {%ext|s|}
                                 ^^^^^^^^^
  ```
- Derivation (1 occurrence):
  ```
  module_type: FUNCTOR list(attribute) reversed_nonempty_llist(functor_arg) MINUSGREATER . module_type
    module_type: . reversed_nonempty_llist(functor_arg) MINUSGREATER module_type
      reversed_nonempty_llist(functor_arg): . functor_arg
        functor_arg: . LPAREN module_name COLON module_type RPAREN
  ```
  Sample sentence (interface):
  ```ocaml
  include functor functor ( ) -> (* ... *) ( X : X ) -> {%ext|s|}
                                 ^^^^^^^^^
  ```


### Item `possibly_poly(core_type): . reversed_nonempty_llist(typevar) DOT core_type` (in 6 errors)

- Derivation (1 occurrence):
  ```
  method_: BANG list(attribute) private_flag LIDENT COLON . possibly_poly(core_type) EQUAL seq_expr
    possibly_poly(core_type): . reversed_nonempty_llist(typevar) DOT core_type
      reversed_nonempty_llist(typevar): . reversed_nonempty_llist(typevar) LPAREN QUOTE ident COLON jkind_annotation RPAREN
        reversed_nonempty_llist(typevar): . QUOTE ident
  ```
  Sample sentence (implementation):
  ```ocaml
  object method ! x : (* ... *) ' x ( ' x : x ) . {%ext|s|} = X end
                      ^^^^^^^^^
  ```
- Derivation (1 occurrence):
  ```
  method_: list(attribute) private_flag LIDENT COLON . possibly_poly(core_type) EQUAL seq_expr
    possibly_poly(core_type): . reversed_nonempty_llist(typevar) DOT core_type
      reversed_nonempty_llist(typevar): . reversed_nonempty_llist(typevar) LPAREN QUOTE ident COLON jkind_annotation RPAREN
        reversed_nonempty_llist(typevar): . QUOTE ident
  ```
  Sample sentence (implementation):
  ```ocaml
  object method x : (* ... *) ' x ( ' x : x ) . {%ext|s|} = X end
                    ^^^^^^^^^
  ```
- Derivation (1 occurrence):
  ```
  method_: BANG list(attribute) private_flag LIDENT COLON . possibly_poly(core_type) EQUAL seq_expr
    possibly_poly(core_type): . reversed_nonempty_llist(typevar) DOT core_type
      reversed_nonempty_llist(typevar): . reversed_nonempty_llist(typevar) QUOTE ident
        reversed_nonempty_llist(typevar): . QUOTE ident
  ```
  Sample sentence (implementation):
  ```ocaml
  object method ! x : (* ... *) ' x ' x . {%ext|s|} = X end
                      ^^^^^^^^^
  ```
- Derivation (1 occurrence):
  ```
  method_: list(attribute) private_flag LIDENT COLON . possibly_poly(core_type) EQUAL seq_expr
    possibly_poly(core_type): . reversed_nonempty_llist(typevar) DOT core_type
      reversed_nonempty_llist(typevar): . reversed_nonempty_llist(typevar) QUOTE ident
        reversed_nonempty_llist(typevar): . QUOTE ident
  ```
  Sample sentence (implementation):
  ```ocaml
  object method x : (* ... *) ' x ' x . {%ext|s|} = X end
                    ^^^^^^^^^
  ```
- Derivation (1 occurrence):
  ```
  method_: BANG list(attribute) private_flag LIDENT COLON . possibly_poly(core_type) EQUAL seq_expr
    possibly_poly(core_type): . reversed_nonempty_llist(typevar) DOT core_type
      reversed_nonempty_llist(typevar): . QUOTE ident
  ```
  Sample sentence (implementation):
  ```ocaml
  object method ! x : (* ... *) ' x . {%ext|s|} = X end
                      ^^^^^^^^^
  ```
- Derivation (1 occurrence):
  ```
  method_: list(attribute) private_flag LIDENT COLON . possibly_poly(core_type) EQUAL seq_expr
    possibly_poly(core_type): . reversed_nonempty_llist(typevar) DOT core_type
      reversed_nonempty_llist(typevar): . QUOTE ident
  ```
  Sample sentence (implementation):
  ```ocaml
  object method x : (* ... *) ' x . {%ext|s|} = X end
                    ^^^^^^^^^
  ```


### Item `separated_or_terminated_nonempty_list(SEMI,object_expr_field): LIDENT option(preceded(EQUAL,expr)) . SEMI separated_or_terminated_nonempty_list(SEMI,object_expr_field)` (in 5 errors)

- Derivation (5 occurrences):
  ```
  separated_or_terminated_nonempty_list(SEMI,object_expr_field): LIDENT option(preceded(EQUAL,expr)) . SEMI separated_or_terminated_nonempty_list(SEMI,object_expr_field)
  ```
  Sample sentence (implementation):
  ```ocaml
  {< x (* ... *) ; x >}
       ^^^^^^^^^
  ```


### Item `functor_arg: . LPAREN RPAREN` (in 4 errors)

- Derivation (2 occurrences):
  ```
  module_type: module_type MINUSGREATER . module_type
    module_type: . reversed_nonempty_llist(functor_arg) MINUSGREATER module_type
      reversed_nonempty_llist(functor_arg): . functor_arg
        functor_arg: . LPAREN RPAREN
  ```
  Sample sentence (implementation):
  ```ocaml
  module X : X -> (* ... *) ( ) -> {%ext|s|} = {%ext|s|}
                  ^^^^^^^^^
  ```
- Derivation (2 occurrences):
  ```
  module_type: reversed_nonempty_llist(functor_arg) MINUSGREATER . module_type
    module_type: . reversed_nonempty_llist(functor_arg) MINUSGREATER module_type
      reversed_nonempty_llist(functor_arg): . functor_arg
        functor_arg: . LPAREN RPAREN
  ```
  Sample sentence (implementation):
  ```ocaml
  module X : ( ) -> (* ... *) ( ) -> {%ext|s|} = {%ext|s|}
                    ^^^^^^^^^
  ```


### Item `module_type: . FUNCTOR list(attribute) reversed_nonempty_llist(functor_arg) MINUSGREATER module_type` (in 4 errors)

- Derivation (2 occurrences):
  ```
  module_type: module_type MINUSGREATER . module_type
    module_type: . FUNCTOR list(attribute) reversed_nonempty_llist(functor_arg) MINUSGREATER module_type
  ```
  Sample sentence (implementation):
  ```ocaml
  module X : X -> (* ... *) functor ( ) -> X = {%ext|s|}
                  ^^^^^^^^^
  ```
- Derivation (2 occurrences):
  ```
  module_type: reversed_nonempty_llist(functor_arg) MINUSGREATER . module_type
    module_type: . FUNCTOR list(attribute) reversed_nonempty_llist(functor_arg) MINUSGREATER module_type
  ```
  Sample sentence (implementation):
  ```ocaml
  module X : ( ) -> (* ... *) functor ( ) -> X = {%ext|s|}
                    ^^^^^^^^^
  ```


### Item `module_type_atomic: LPAREN module_type . RPAREN` (in 4 errors)

- Derivation (4 occurrences):
  ```
  module_type_atomic: LPAREN module_type . RPAREN
  ```
  Sample sentence (interface):
  ```ocaml
  include ( [% and ] (* ... *) )
                     ^^^^^^^^^
  ```


### Item `attr_id: . single_attr_id` (in 2 errors)

- Derivation (2 occurrences):
  ```
  ext: PERCENT . attr_id
    attr_id: . single_attr_id
      single_attr_id: . AND
  ```
  Sample sentence (implementation):
  ```ocaml
  open ! % (* ... *) and {%ext|s|}
           ^^^^^^^^^
  ```


### Item `ext: . PERCENT attr_id` (in 2 errors)

- Derivation (1 occurrence):
  ```
  open_description: OPEN BANG . ext list(attribute) mod_ext_longident list(post_item_attribute)
    ext: . PERCENT attr_id
  ```
  Sample sentence (interface):
  ```ocaml
  open ! (* ... *) % and X
         ^^^^^^^^^
  ```
- Derivation (1 occurrence):
  ```
  open_declaration: OPEN BANG . ext list(attribute) module_expr list(post_item_attribute)
    ext: . PERCENT attr_id
  ```
  Sample sentence (implementation):
  ```ocaml
  open ! (* ... *) % and {%ext|s|}
         ^^^^^^^^^
  ```


### Item `fun_expr: . simple_expr` (in 2 errors)

- Derivation (1 occurrence):
  ```
  fun_expr: additive . fun_expr
    fun_expr: . simple_expr
      simple_expr: . BEGIN ext list(attribute) seq_expr END
  ```
  Sample sentence (implementation):
  ```ocaml
  + (* ... *) begin X end
    ^^^^^^^^^
  ```
- Derivation (1 occurrence):
  ```
  fun_expr: subtractive . fun_expr
    fun_expr: . simple_expr
      simple_expr: . BEGIN ext list(attribute) seq_expr END
  ```
  Sample sentence (implementation):
  ```ocaml
  - (* ... *) begin X end
    ^^^^^^^^^
  ```


### Item `module_declaration_body(__anonymous_8): . COLON module_type optional_atat_modalities_expr` (in 2 errors)

- Derivation (2 occurrences):
  ```
  signature_item: MODULE ext list(attribute) module_name_modal(atat_modalities_expr) . module_declaration_body(__anonymous_8) list(post_item_attribute)
    module_declaration_body(__anonymous_8): . COLON module_type optional_atat_modalities_expr
  ```
  Sample sentence (interface):
  ```ocaml
  module ( X @@ x ) (* ... *) : {%ext|s|}
                    ^^^^^^^^^
  ```


### Item `paren_module_expr: LPAREN module_expr COLON module_type . RPAREN` (in 2 errors)

- Derivation (2 occurrences):
  ```
  paren_module_expr: LPAREN module_expr COLON module_type . RPAREN
  ```
  Sample sentence (implementation):
  ```ocaml
  include ( {%ext|s|} : [% and ] (* ... *) )
                                 ^^^^^^^^^
  ```


### Item `atat_modalities_expr: . ATAT nonempty_list(modality)` (in 1 error)

- Derivation (1 occurrence):
  ```
  signature_item: include_kind ext list(attribute) module_type list(post_item_attribute) . optional_atat_modalities_expr
    optional_atat_modalities_expr: . atat_modalities_expr
      atat_modalities_expr: . ATAT nonempty_list(modality)
  ```
  Sample sentence (interface):
  ```ocaml
  include {%ext|s|} [@@ and ] (* ... *) @@ x
                              ^^^^^^^^^
  ```


### Item `class_simple_expr: LPAREN class_expr . RPAREN` (in 1 error)

- Derivation (1 occurrence):
  ```
  class_simple_expr: LPAREN class_expr . RPAREN
  ```
  Sample sentence (implementation):
  ```ocaml
  class x = ( ( x : {%ext|s|} ) (* ... *) )
                                ^^^^^^^^^
  ```


### Item `module_binding_body: COLON module_type . EQUAL module_expr` (in 1 error)

- Derivation (1 occurrence):
  ```
  module_binding_body: COLON module_type . EQUAL module_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  module X : [% and ] (* ... *) = {%ext|s|}
                      ^^^^^^^^^
  ```


### Item `open_declaration: OPEN . BANG ext list(attribute) module_expr list(post_item_attribute)` (in 1 error)

- Derivation (1 occurrence):
  ```
  open_declaration: OPEN . BANG ext list(attribute) module_expr list(post_item_attribute)
  ```
  Sample sentence (implementation):
  ```ocaml
  open (* ... *) ! % and {%ext|s|}
       ^^^^^^^^^
  ```


### Item `open_description: OPEN . BANG ext list(attribute) mod_ext_longident list(post_item_attribute)` (in 1 error)

- Derivation (1 occurrence):
  ```
  open_description: OPEN . BANG ext list(attribute) mod_ext_longident list(post_item_attribute)
  ```
  Sample sentence (interface):
  ```ocaml
  open (* ... *) ! % and X
       ^^^^^^^^^
  ```


### Item `option(preceded(EQUAL,expr)): . EQUAL fun_expr` (in 1 error)

- Derivation (1 occurrence):
  ```
  separated_or_terminated_nonempty_list(SEMI,object_expr_field): LIDENT . option(preceded(EQUAL,expr))
    option(preceded(EQUAL,expr)): . EQUAL fun_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  {< x (* ... *) = x >}
       ^^^^^^^^^
  ```


### Item `separated_or_terminated_nonempty_list(SEMI,object_expr_field): . LIDENT option(preceded(EQUAL,expr))` (in 1 error)

- Derivation (1 occurrence):
  ```
  simple_expr: LBRACELESS . separated_or_terminated_nonempty_list(SEMI,object_expr_field) GREATERRBRACE
    separated_or_terminated_nonempty_list(SEMI,object_expr_field): . LIDENT option(preceded(EQUAL,expr))
  ```
  Sample sentence (implementation):
  ```ocaml
  {< (* ... *) x = x >}
     ^^^^^^^^^
  ```


# Invariant errors

Invariant errors are grammatical violations that span more than one token and are detected by semantic actions after parsing.
They are not produced by Menhir itself but by checks that enforce specific language invariants.
The reported location is typically the first token of the offending construct.
Because the fuzzer does not understand these finer invariants, such errors may appear as false positives.

## Error: invalid package type: only module type identifier and with type constraints are supported

### Item `module_type: . extension` (in 1605 errors)

- Derivation (289 occurrences):
  ```
  simple_expr: mod_longident DOT LPAREN MODULE ext list(attribute) module_expr COLON . module_type RPAREN
    module_type: . extension
      extension: . QUOTED_STRING_EXPR
  ```
  Sample sentence (implementation):
  ```ocaml
  X . ( module {%ext|s|} : {%ext|s|} )
                           ^^^^^^^^^
  ```
- Derivation (266 occurrences):
  ```
  simple_expr: LPAREN MODULE ext list(attribute) module_expr COLON . module_type RPAREN
    module_type: . extension
      extension: . QUOTED_STRING_EXPR
  ```
  Sample sentence (implementation):
  ```ocaml
  ( module {%ext|s|} : {%ext|s|} )
                       ^^^^^^^^^
  ```
- Derivation (209 occurrences):
  ```
  simple_pattern_not_ident: LPAREN MODULE ext list(attribute) module_name COLON . module_type RPAREN
    module_type: . extension
      extension: . QUOTED_STRING_EXPR
  ```
  Sample sentence (implementation):
  ```ocaml
  function ( module X : {%ext|s|} ) -> .
                        ^^^^^^^^^
  ```
- Derivation (205 occurrences):
  ```
  paren_module_expr: LPAREN VAL list(attribute) fun_expr COLONGREATER . module_type RPAREN
    module_type: . extension
      extension: . QUOTED_STRING_EXPR
  ```
  Sample sentence (implementation):
  ```ocaml
  open ( val X :> {%ext|s|} )
                  ^^^^^^^^^
  ```
- Derivation (203 occurrences):
  ```
  delimited_type_supporting_local_open: LPAREN MODULE ext list(attribute) . module_type RPAREN
    module_type: . extension
      extension: . QUOTED_STRING_EXPR
  ```
  Sample sentence (implementation):
  ```ocaml
  exception false : ( module {%ext|s|} )
                             ^^^^^^^^^
  ```
- Derivation (71 occurrences):
  ```
  paren_module_expr: LPAREN VAL list(attribute) fun_expr COLON module_type COLONGREATER . module_type RPAREN
    module_type: . extension
      extension: . QUOTED_STRING_EXPR
  ```
  Sample sentence (implementation):
  ```ocaml
  open ( val X : {%ext|s|} :> {%ext|s|} )
                              ^^^^^^^^^
  ```
- Derivation (34 occurrences):
  ```
  paren_module_expr: LPAREN VAL list(attribute) STACK FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case) COLON module_type COLONGREATER . module_type RPAREN
    module_type: . extension
      extension: . QUOTED_STRING_EXPR
  ```
  Sample sentence (implementation):
  ```ocaml
  include ( val stack_ function false -> X : X :> {%ext|s|} )
                                                  ^^^^^^^^^
  ```
- Derivation (34 occurrences):
  ```
  paren_module_expr: LPAREN VAL list(attribute) FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case) COLON module_type COLONGREATER . module_type RPAREN
    module_type: . extension
      extension: . QUOTED_STRING_EXPR
  ```
  Sample sentence (implementation):
  ```ocaml
  include ( val function false -> X : X :> {%ext|s|} )
                                           ^^^^^^^^^
  ```
- Derivation (32 occurrences):
  ```
  paren_module_expr: LPAREN VAL list(attribute) FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case) COLONGREATER . module_type RPAREN
    module_type: . extension
      extension: . QUOTED_STRING_EXPR
  ```
  Sample sentence (implementation):
  ```ocaml
  include ( val function false -> X :> {%ext|s|} )
                                       ^^^^^^^^^
  ```
- Derivation (32 occurrences):
  ```
  paren_module_expr: LPAREN VAL list(attribute) STACK FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case) COLON . module_type RPAREN
    module_type: . extension
      extension: . QUOTED_STRING_EXPR
  ```
  Sample sentence (implementation):
  ```ocaml
  include ( val stack_ function false -> X : {%ext|s|} )
                                             ^^^^^^^^^
  ```
- Derivation (29 occurrences):
  ```
  paren_module_expr: LPAREN VAL list(attribute) STACK FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case) COLONGREATER . module_type RPAREN
    module_type: . extension
      extension: . QUOTED_STRING_EXPR
  ```
  Sample sentence (implementation):
  ```ocaml
  include ( val stack_ function false -> X :> {%ext|s|} )
                                              ^^^^^^^^^
  ```
- Derivation (29 occurrences):
  ```
  paren_module_expr: LPAREN VAL list(attribute) FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case) COLON . module_type RPAREN
    module_type: . extension
      extension: . QUOTED_STRING_EXPR
  ```
  Sample sentence (implementation):
  ```ocaml
  include ( val function false -> X : {%ext|s|} )
                                      ^^^^^^^^^
  ```
- Derivation (28 occurrences):
  ```
  paren_module_expr: LPAREN VAL list(attribute) fun_expr COLON . module_type RPAREN
    module_type: . extension
      extension: . QUOTED_STRING_EXPR
  ```
  Sample sentence (implementation):
  ```ocaml
  open ( val X : {%ext|s|} )
                 ^^^^^^^^^
  ```
- Derivation (13 occurrences):
  ```
  module_type_atomic: LPAREN . module_type RPAREN
    module_type: . extension
      extension: . QUOTED_STRING_EXPR
  ```
  Sample sentence (implementation):
  ```ocaml
  ( module {%ext|s|} : ( {%ext|s|} ) )
                         ^^^^^^^^^
  ```
- Derivation (5 occurrences):
  ```
  paren_module_expr: LPAREN VAL list(attribute) STACK FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case) COLON . module_type COLONGREATER module_type RPAREN
    module_type: . extension
      extension: . QUOTED_STRING_EXPR
  ```
  Sample sentence (implementation):
  ```ocaml
  include ( val stack_ function false -> X : {%ext|s|} :> X )
                                             ^^^^^^^^^
  ```
- Derivation (5 occurrences):
  ```
  paren_module_expr: LPAREN VAL list(attribute) FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case) COLON . module_type COLONGREATER module_type RPAREN
    module_type: . extension
      extension: . QUOTED_STRING_EXPR
  ```
  Sample sentence (implementation):
  ```ocaml
  include ( val function false -> X : {%ext|s|} :> X )
                                      ^^^^^^^^^
  ```
- Derivation (5 occurrences):
  ```
  paren_module_expr: LPAREN VAL list(attribute) fun_expr COLON . module_type COLONGREATER module_type RPAREN
    module_type: . extension
      extension: . QUOTED_STRING_EXPR
  ```
  Sample sentence (implementation):
  ```ocaml
  include ( val X : {%ext|s|} :> X )
                    ^^^^^^^^^
  ```
- Derivation (1 occurrence):
  ```
  simple_pattern_not_ident: LPAREN MODULE ext list(attribute) module_name COLON . module_type RPAREN
    module_type: . module_type WITH mod_ext_longident
      module_type: . extension
        extension: . QUOTED_STRING_EXPR
  ```
  Sample sentence (implementation):
  ```ocaml
  function ( module X : {%ext|s|} with X ) -> .
                        ^^^^^^^^^
  ```
- Derivation (1 occurrence):
  ```
  simple_expr: mod_longident DOT LPAREN MODULE ext list(attribute) module_expr COLON . module_type RPAREN
    module_type: . module_type WITH mod_ext_longident
      module_type: . extension
        extension: . QUOTED_STRING_EXPR
  ```
  Sample sentence (implementation):
  ```ocaml
  X . ( module {%ext|s|} : {%ext|s|} with X )
                           ^^^^^^^^^
  ```
- Derivation (1 occurrence):
  ```
  simple_expr: LPAREN MODULE ext list(attribute) module_expr COLON . module_type RPAREN
    module_type: . module_type WITH mod_ext_longident
      module_type: . extension
        extension: . QUOTED_STRING_EXPR
  ```
  Sample sentence (implementation):
  ```ocaml
  ( module {%ext|s|} : {%ext|s|} with X )
                       ^^^^^^^^^
  ```
- Derivation (1 occurrence):
  ```
  paren_module_expr: LPAREN VAL list(attribute) STACK FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case) COLONGREATER . module_type RPAREN
    module_type: . module_type WITH mod_ext_longident
      module_type: . extension
        extension: . QUOTED_STRING_EXPR
  ```
  Sample sentence (implementation):
  ```ocaml
  include ( val stack_ function false -> X :> {%ext|s|} with X )
                                              ^^^^^^^^^
  ```
- ...


### Item `reversed_nonempty_llist(functor_arg): . functor_arg` (in 51 errors)

- Derivation (1 occurrence):
  ```
  simple_pattern_not_ident: LPAREN MODULE ext list(attribute) module_name COLON . module_type RPAREN
    module_type: . reversed_nonempty_llist(functor_arg) MINUSGREATER module_type
      reversed_nonempty_llist(functor_arg): . functor_arg
        functor_arg: . LPAREN module_name COLON module_type_atomic at_mode_expr RPAREN
  ```
  Sample sentence (implementation):
  ```ocaml
  function ( module X : ( X : X @ x ) -> {%ext|s|} ) -> .
                        ^
  ```
- Derivation (1 occurrence):
  ```
  simple_expr: mod_longident DOT LPAREN MODULE ext list(attribute) module_expr COLON . module_type RPAREN
    module_type: . reversed_nonempty_llist(functor_arg) MINUSGREATER module_type
      reversed_nonempty_llist(functor_arg): . functor_arg
        functor_arg: . LPAREN module_name COLON module_type_atomic at_mode_expr RPAREN
  ```
  Sample sentence (implementation):
  ```ocaml
  X . ( module {%ext|s|} : ( X : X @ x ) -> {%ext|s|} )
                           ^
  ```
- Derivation (1 occurrence):
  ```
  simple_expr: LPAREN MODULE ext list(attribute) module_expr COLON . module_type RPAREN
    module_type: . reversed_nonempty_llist(functor_arg) MINUSGREATER module_type
      reversed_nonempty_llist(functor_arg): . functor_arg
        functor_arg: . LPAREN module_name COLON module_type_atomic at_mode_expr RPAREN
  ```
  Sample sentence (implementation):
  ```ocaml
  ( module {%ext|s|} : ( X : X @ x ) -> {%ext|s|} )
                       ^
  ```
- Derivation (1 occurrence):
  ```
  paren_module_expr: LPAREN VAL list(attribute) STACK FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case) COLONGREATER . module_type RPAREN
    module_type: . reversed_nonempty_llist(functor_arg) MINUSGREATER module_type
      reversed_nonempty_llist(functor_arg): . functor_arg
        functor_arg: . LPAREN module_name COLON module_type_atomic at_mode_expr RPAREN
  ```
  Sample sentence (implementation):
  ```ocaml
  include ( val stack_ function false -> X :> ( X : X @ x ) -> {%ext|s|} )
                                              ^
  ```
- Derivation (1 occurrence):
  ```
  paren_module_expr: LPAREN VAL list(attribute) FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case) COLONGREATER . module_type RPAREN
    module_type: . reversed_nonempty_llist(functor_arg) MINUSGREATER module_type
      reversed_nonempty_llist(functor_arg): . functor_arg
        functor_arg: . LPAREN module_name COLON module_type_atomic at_mode_expr RPAREN
  ```
  Sample sentence (implementation):
  ```ocaml
  include ( val function false -> X :> ( X : X @ x ) -> {%ext|s|} )
                                       ^
  ```
- Derivation (1 occurrence):
  ```
  paren_module_expr: LPAREN VAL list(attribute) fun_expr COLONGREATER . module_type RPAREN
    module_type: . reversed_nonempty_llist(functor_arg) MINUSGREATER module_type
      reversed_nonempty_llist(functor_arg): . functor_arg
        functor_arg: . LPAREN module_name COLON module_type_atomic at_mode_expr RPAREN
  ```
  Sample sentence (implementation):
  ```ocaml
  include ( val X :> ( X : X @ x ) -> {%ext|s|} )
                     ^
  ```
- Derivation (1 occurrence):
  ```
  paren_module_expr: LPAREN VAL list(attribute) STACK FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case) COLON module_type COLONGREATER . module_type RPAREN
    module_type: . reversed_nonempty_llist(functor_arg) MINUSGREATER module_type
      reversed_nonempty_llist(functor_arg): . functor_arg
        functor_arg: . LPAREN module_name COLON module_type_atomic at_mode_expr RPAREN
  ```
  Sample sentence (implementation):
  ```ocaml
  include ( val stack_ function false -> X : {%ext|s|} :> ( X : X @ x ) -> {%ext|s|} )
                                                          ^
  ```
- Derivation (1 occurrence):
  ```
  paren_module_expr: LPAREN VAL list(attribute) FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case) COLON module_type COLONGREATER . module_type RPAREN
    module_type: . reversed_nonempty_llist(functor_arg) MINUSGREATER module_type
      reversed_nonempty_llist(functor_arg): . functor_arg
        functor_arg: . LPAREN module_name COLON module_type_atomic at_mode_expr RPAREN
  ```
  Sample sentence (implementation):
  ```ocaml
  include ( val function false -> X : {%ext|s|} :> ( X : X @ x ) -> {%ext|s|} )
                                                   ^
  ```
- Derivation (1 occurrence):
  ```
  paren_module_expr: LPAREN VAL list(attribute) fun_expr COLON module_type COLONGREATER . module_type RPAREN
    module_type: . reversed_nonempty_llist(functor_arg) MINUSGREATER module_type
      reversed_nonempty_llist(functor_arg): . functor_arg
        functor_arg: . LPAREN module_name COLON module_type_atomic at_mode_expr RPAREN
  ```
  Sample sentence (implementation):
  ```ocaml
  include ( val X : {%ext|s|} :> ( X : X @ x ) -> {%ext|s|} )
                                 ^
  ```
- Derivation (1 occurrence):
  ```
  paren_module_expr: LPAREN VAL list(attribute) STACK FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case) COLON . module_type RPAREN
    module_type: . reversed_nonempty_llist(functor_arg) MINUSGREATER module_type
      reversed_nonempty_llist(functor_arg): . functor_arg
        functor_arg: . LPAREN module_name COLON module_type_atomic at_mode_expr RPAREN
  ```
  Sample sentence (implementation):
  ```ocaml
  include ( val stack_ function false -> X : ( X : X @ x ) -> {%ext|s|} )
                                             ^
  ```
- Derivation (1 occurrence):
  ```
  paren_module_expr: LPAREN VAL list(attribute) FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case) COLON . module_type RPAREN
    module_type: . reversed_nonempty_llist(functor_arg) MINUSGREATER module_type
      reversed_nonempty_llist(functor_arg): . functor_arg
        functor_arg: . LPAREN module_name COLON module_type_atomic at_mode_expr RPAREN
  ```
  Sample sentence (implementation):
  ```ocaml
  include ( val function false -> X : ( X : X @ x ) -> {%ext|s|} )
                                      ^
  ```
- Derivation (1 occurrence):
  ```
  paren_module_expr: LPAREN VAL list(attribute) fun_expr COLON . module_type RPAREN
    module_type: . reversed_nonempty_llist(functor_arg) MINUSGREATER module_type
      reversed_nonempty_llist(functor_arg): . functor_arg
        functor_arg: . LPAREN module_name COLON module_type_atomic at_mode_expr RPAREN
  ```
  Sample sentence (implementation):
  ```ocaml
  include ( val X : ( X : X @ x ) -> {%ext|s|} )
                    ^
  ```
- Derivation (1 occurrence):
  ```
  delimited_type_supporting_local_open: LPAREN MODULE ext list(attribute) . module_type RPAREN
    module_type: . reversed_nonempty_llist(functor_arg) MINUSGREATER module_type
      reversed_nonempty_llist(functor_arg): . functor_arg
        functor_arg: . LPAREN module_name COLON module_type_atomic at_mode_expr RPAREN
  ```
  Sample sentence (implementation):
  ```ocaml
  exception false : ( module ( X : X @ x ) -> {%ext|s|} )
                             ^
  ```
- Derivation (1 occurrence):
  ```
  simple_pattern_not_ident: LPAREN MODULE ext list(attribute) module_name COLON . module_type RPAREN
    module_type: . reversed_nonempty_llist(functor_arg) MINUSGREATER module_type
      reversed_nonempty_llist(functor_arg): . functor_arg
        functor_arg: . LPAREN module_name COLON module_type RPAREN
  ```
  Sample sentence (implementation):
  ```ocaml
  function ( module X : ( X : X ) -> {%ext|s|} ) -> .
                        ^
  ```
- Derivation (1 occurrence):
  ```
  simple_expr: mod_longident DOT LPAREN MODULE ext list(attribute) module_expr COLON . module_type RPAREN
    module_type: . reversed_nonempty_llist(functor_arg) MINUSGREATER module_type
      reversed_nonempty_llist(functor_arg): . functor_arg
        functor_arg: . LPAREN module_name COLON module_type RPAREN
  ```
  Sample sentence (implementation):
  ```ocaml
  X . ( module {%ext|s|} : ( X : X ) -> {%ext|s|} )
                           ^
  ```
- Derivation (1 occurrence):
  ```
  simple_expr: LPAREN MODULE ext list(attribute) module_expr COLON . module_type RPAREN
    module_type: . reversed_nonempty_llist(functor_arg) MINUSGREATER module_type
      reversed_nonempty_llist(functor_arg): . functor_arg
        functor_arg: . LPAREN module_name COLON module_type RPAREN
  ```
  Sample sentence (implementation):
  ```ocaml
  ( module {%ext|s|} : ( X : X ) -> {%ext|s|} )
                       ^
  ```
- Derivation (1 occurrence):
  ```
  paren_module_expr: LPAREN VAL list(attribute) STACK FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case) COLONGREATER . module_type RPAREN
    module_type: . reversed_nonempty_llist(functor_arg) MINUSGREATER module_type
      reversed_nonempty_llist(functor_arg): . functor_arg
        functor_arg: . LPAREN module_name COLON module_type RPAREN
  ```
  Sample sentence (implementation):
  ```ocaml
  include ( val stack_ function false -> X :> ( X : X ) -> {%ext|s|} )
                                              ^
  ```
- Derivation (1 occurrence):
  ```
  paren_module_expr: LPAREN VAL list(attribute) FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case) COLONGREATER . module_type RPAREN
    module_type: . reversed_nonempty_llist(functor_arg) MINUSGREATER module_type
      reversed_nonempty_llist(functor_arg): . functor_arg
        functor_arg: . LPAREN module_name COLON module_type RPAREN
  ```
  Sample sentence (implementation):
  ```ocaml
  include ( val function false -> X :> ( X : X ) -> {%ext|s|} )
                                       ^
  ```
- Derivation (1 occurrence):
  ```
  paren_module_expr: LPAREN VAL list(attribute) fun_expr COLONGREATER . module_type RPAREN
    module_type: . reversed_nonempty_llist(functor_arg) MINUSGREATER module_type
      reversed_nonempty_llist(functor_arg): . functor_arg
        functor_arg: . LPAREN module_name COLON module_type RPAREN
  ```
  Sample sentence (implementation):
  ```ocaml
  include ( val X :> ( X : X ) -> {%ext|s|} )
                     ^
  ```
- Derivation (1 occurrence):
  ```
  paren_module_expr: LPAREN VAL list(attribute) STACK FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case) COLON module_type COLONGREATER . module_type RPAREN
    module_type: . reversed_nonempty_llist(functor_arg) MINUSGREATER module_type
      reversed_nonempty_llist(functor_arg): . functor_arg
        functor_arg: . LPAREN module_name COLON module_type RPAREN
  ```
  Sample sentence (implementation):
  ```ocaml
  include ( val stack_ function false -> X : {%ext|s|} :> ( X : X ) -> {%ext|s|} )
                                                          ^
  ```
- Derivation (1 occurrence):
  ```
  paren_module_expr: LPAREN VAL list(attribute) FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case) COLON module_type COLONGREATER . module_type RPAREN
    module_type: . reversed_nonempty_llist(functor_arg) MINUSGREATER module_type
      reversed_nonempty_llist(functor_arg): . functor_arg
        functor_arg: . LPAREN module_name COLON module_type RPAREN
  ```
  Sample sentence (implementation):
  ```ocaml
  include ( val function false -> X : {%ext|s|} :> ( X : X ) -> {%ext|s|} )
                                                   ^
  ```
- ...


### Item `ident: . UIDENT` (in 26 errors)

- Derivation (1 occurrence):
  ```
  simple_pattern_not_ident: LPAREN MODULE ext list(attribute) module_name COLON . module_type RPAREN
    module_type: . module_type_atomic at_mode_expr MINUSGREATER module_type_atomic at_mode_expr
      module_type_atomic: . mty_longident
        mty_longident: . mk_longident(mod_ext_longident,ident)
          mk_longident(mod_ext_longident,ident): . ident
            ident: . UIDENT
  ```
  Sample sentence (implementation):
  ```ocaml
  function ( module X : X @ x -> X @ x ) -> .
                        ^
  ```
- Derivation (1 occurrence):
  ```
  simple_expr: mod_longident DOT LPAREN MODULE ext list(attribute) module_expr COLON . module_type RPAREN
    module_type: . module_type_atomic at_mode_expr MINUSGREATER module_type_atomic at_mode_expr
      module_type_atomic: . mty_longident
        mty_longident: . mk_longident(mod_ext_longident,ident)
          mk_longident(mod_ext_longident,ident): . ident
            ident: . UIDENT
  ```
  Sample sentence (implementation):
  ```ocaml
  X . ( module {%ext|s|} : X @ x -> X @ x )
                           ^
  ```
- Derivation (1 occurrence):
  ```
  simple_expr: LPAREN MODULE ext list(attribute) module_expr COLON . module_type RPAREN
    module_type: . module_type_atomic at_mode_expr MINUSGREATER module_type_atomic at_mode_expr
      module_type_atomic: . mty_longident
        mty_longident: . mk_longident(mod_ext_longident,ident)
          mk_longident(mod_ext_longident,ident): . ident
            ident: . UIDENT
  ```
  Sample sentence (implementation):
  ```ocaml
  ( module {%ext|s|} : X @ x -> X @ x )
                       ^
  ```
- Derivation (1 occurrence):
  ```
  paren_module_expr: LPAREN VAL list(attribute) STACK FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case) COLONGREATER . module_type RPAREN
    module_type: . module_type_atomic at_mode_expr MINUSGREATER module_type_atomic at_mode_expr
      module_type_atomic: . mty_longident
        mty_longident: . mk_longident(mod_ext_longident,ident)
          mk_longident(mod_ext_longident,ident): . ident
            ident: . UIDENT
  ```
  Sample sentence (implementation):
  ```ocaml
  include ( val stack_ function false -> X :> X @ x -> X @ x )
                                              ^
  ```
- Derivation (1 occurrence):
  ```
  paren_module_expr: LPAREN VAL list(attribute) FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case) COLONGREATER . module_type RPAREN
    module_type: . module_type_atomic at_mode_expr MINUSGREATER module_type_atomic at_mode_expr
      module_type_atomic: . mty_longident
        mty_longident: . mk_longident(mod_ext_longident,ident)
          mk_longident(mod_ext_longident,ident): . ident
            ident: . UIDENT
  ```
  Sample sentence (implementation):
  ```ocaml
  include ( val function false -> X :> X @ x -> X @ x )
                                       ^
  ```
- Derivation (1 occurrence):
  ```
  paren_module_expr: LPAREN VAL list(attribute) fun_expr COLONGREATER . module_type RPAREN
    module_type: . module_type_atomic at_mode_expr MINUSGREATER module_type_atomic at_mode_expr
      module_type_atomic: . mty_longident
        mty_longident: . mk_longident(mod_ext_longident,ident)
          mk_longident(mod_ext_longident,ident): . ident
            ident: . UIDENT
  ```
  Sample sentence (implementation):
  ```ocaml
  include ( val X :> X @ x -> X @ x )
                     ^
  ```
- Derivation (1 occurrence):
  ```
  paren_module_expr: LPAREN VAL list(attribute) STACK FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case) COLON module_type COLONGREATER . module_type RPAREN
    module_type: . module_type_atomic at_mode_expr MINUSGREATER module_type_atomic at_mode_expr
      module_type_atomic: . mty_longident
        mty_longident: . mk_longident(mod_ext_longident,ident)
          mk_longident(mod_ext_longident,ident): . ident
            ident: . UIDENT
  ```
  Sample sentence (implementation):
  ```ocaml
  include ( val stack_ function false -> X : {%ext|s|} :> X @ x -> X @ x )
                                                          ^
  ```
- Derivation (1 occurrence):
  ```
  paren_module_expr: LPAREN VAL list(attribute) FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case) COLON module_type COLONGREATER . module_type RPAREN
    module_type: . module_type_atomic at_mode_expr MINUSGREATER module_type_atomic at_mode_expr
      module_type_atomic: . mty_longident
        mty_longident: . mk_longident(mod_ext_longident,ident)
          mk_longident(mod_ext_longident,ident): . ident
            ident: . UIDENT
  ```
  Sample sentence (implementation):
  ```ocaml
  include ( val function false -> X : {%ext|s|} :> X @ x -> X @ x )
                                                   ^
  ```
- Derivation (1 occurrence):
  ```
  paren_module_expr: LPAREN VAL list(attribute) fun_expr COLON module_type COLONGREATER . module_type RPAREN
    module_type: . module_type_atomic at_mode_expr MINUSGREATER module_type_atomic at_mode_expr
      module_type_atomic: . mty_longident
        mty_longident: . mk_longident(mod_ext_longident,ident)
          mk_longident(mod_ext_longident,ident): . ident
            ident: . UIDENT
  ```
  Sample sentence (implementation):
  ```ocaml
  include ( val X : {%ext|s|} :> X @ x -> X @ x )
                                 ^
  ```
- Derivation (1 occurrence):
  ```
  paren_module_expr: LPAREN VAL list(attribute) STACK FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case) COLON . module_type RPAREN
    module_type: . module_type_atomic at_mode_expr MINUSGREATER module_type_atomic at_mode_expr
      module_type_atomic: . mty_longident
        mty_longident: . mk_longident(mod_ext_longident,ident)
          mk_longident(mod_ext_longident,ident): . ident
            ident: . UIDENT
  ```
  Sample sentence (implementation):
  ```ocaml
  include ( val stack_ function false -> X : X @ x -> X @ x )
                                             ^
  ```
- Derivation (1 occurrence):
  ```
  paren_module_expr: LPAREN VAL list(attribute) FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case) COLON . module_type RPAREN
    module_type: . module_type_atomic at_mode_expr MINUSGREATER module_type_atomic at_mode_expr
      module_type_atomic: . mty_longident
        mty_longident: . mk_longident(mod_ext_longident,ident)
          mk_longident(mod_ext_longident,ident): . ident
            ident: . UIDENT
  ```
  Sample sentence (implementation):
  ```ocaml
  include ( val function false -> X : X @ x -> X @ x )
                                      ^
  ```
- Derivation (1 occurrence):
  ```
  paren_module_expr: LPAREN VAL list(attribute) fun_expr COLON . module_type RPAREN
    module_type: . module_type_atomic at_mode_expr MINUSGREATER module_type_atomic at_mode_expr
      module_type_atomic: . mty_longident
        mty_longident: . mk_longident(mod_ext_longident,ident)
          mk_longident(mod_ext_longident,ident): . ident
            ident: . UIDENT
  ```
  Sample sentence (implementation):
  ```ocaml
  include ( val X : X @ x -> X @ x )
                    ^
  ```
- Derivation (1 occurrence):
  ```
  delimited_type_supporting_local_open: LPAREN MODULE ext list(attribute) . module_type RPAREN
    module_type: . module_type_atomic at_mode_expr MINUSGREATER module_type_atomic at_mode_expr
      module_type_atomic: . mty_longident
        mty_longident: . mk_longident(mod_ext_longident,ident)
          mk_longident(mod_ext_longident,ident): . ident
            ident: . UIDENT
  ```
  Sample sentence (implementation):
  ```ocaml
  exception false : ( module X @ x -> X @ x )
                             ^
  ```
- Derivation (1 occurrence):
  ```
  simple_pattern_not_ident: LPAREN MODULE ext list(attribute) module_name COLON . module_type RPAREN
    module_type: . module_type_atomic at_mode_expr MINUSGREATER module_type
      module_type_atomic: . mty_longident
        mty_longident: . mk_longident(mod_ext_longident,ident)
          mk_longident(mod_ext_longident,ident): . ident
            ident: . UIDENT
  ```
  Sample sentence (implementation):
  ```ocaml
  function ( module X : X @ x -> {%ext|s|} ) -> .
                        ^
  ```
- Derivation (1 occurrence):
  ```
  simple_expr: mod_longident DOT LPAREN MODULE ext list(attribute) module_expr COLON . module_type RPAREN
    module_type: . module_type_atomic at_mode_expr MINUSGREATER module_type
      module_type_atomic: . mty_longident
        mty_longident: . mk_longident(mod_ext_longident,ident)
          mk_longident(mod_ext_longident,ident): . ident
            ident: . UIDENT
  ```
  Sample sentence (implementation):
  ```ocaml
  X . ( module {%ext|s|} : X @ x -> {%ext|s|} )
                           ^
  ```
- Derivation (1 occurrence):
  ```
  simple_expr: LPAREN MODULE ext list(attribute) module_expr COLON . module_type RPAREN
    module_type: . module_type_atomic at_mode_expr MINUSGREATER module_type
      module_type_atomic: . mty_longident
        mty_longident: . mk_longident(mod_ext_longident,ident)
          mk_longident(mod_ext_longident,ident): . ident
            ident: . UIDENT
  ```
  Sample sentence (implementation):
  ```ocaml
  ( module {%ext|s|} : X @ x -> {%ext|s|} )
                       ^
  ```
- Derivation (1 occurrence):
  ```
  paren_module_expr: LPAREN VAL list(attribute) STACK FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case) COLONGREATER . module_type RPAREN
    module_type: . module_type_atomic at_mode_expr MINUSGREATER module_type
      module_type_atomic: . mty_longident
        mty_longident: . mk_longident(mod_ext_longident,ident)
          mk_longident(mod_ext_longident,ident): . ident
            ident: . UIDENT
  ```
  Sample sentence (implementation):
  ```ocaml
  include ( val stack_ function false -> X :> X @ x -> {%ext|s|} )
                                              ^
  ```
- Derivation (1 occurrence):
  ```
  paren_module_expr: LPAREN VAL list(attribute) FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case) COLONGREATER . module_type RPAREN
    module_type: . module_type_atomic at_mode_expr MINUSGREATER module_type
      module_type_atomic: . mty_longident
        mty_longident: . mk_longident(mod_ext_longident,ident)
          mk_longident(mod_ext_longident,ident): . ident
            ident: . UIDENT
  ```
  Sample sentence (implementation):
  ```ocaml
  include ( val function false -> X :> X @ x -> {%ext|s|} )
                                       ^
  ```
- Derivation (1 occurrence):
  ```
  paren_module_expr: LPAREN VAL list(attribute) fun_expr COLONGREATER . module_type RPAREN
    module_type: . module_type_atomic at_mode_expr MINUSGREATER module_type
      module_type_atomic: . mty_longident
        mty_longident: . mk_longident(mod_ext_longident,ident)
          mk_longident(mod_ext_longident,ident): . ident
            ident: . UIDENT
  ```
  Sample sentence (implementation):
  ```ocaml
  include ( val X :> X @ x -> {%ext|s|} )
                     ^
  ```
- Derivation (1 occurrence):
  ```
  paren_module_expr: LPAREN VAL list(attribute) STACK FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case) COLON module_type COLONGREATER . module_type RPAREN
    module_type: . module_type_atomic at_mode_expr MINUSGREATER module_type
      module_type_atomic: . mty_longident
        mty_longident: . mk_longident(mod_ext_longident,ident)
          mk_longident(mod_ext_longident,ident): . ident
            ident: . UIDENT
  ```
  Sample sentence (implementation):
  ```ocaml
  include ( val stack_ function false -> X : {%ext|s|} :> X @ x -> {%ext|s|} )
                                                          ^
  ```
- Derivation (1 occurrence):
  ```
  paren_module_expr: LPAREN VAL list(attribute) FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case) COLON module_type COLONGREATER . module_type RPAREN
    module_type: . module_type_atomic at_mode_expr MINUSGREATER module_type
      module_type_atomic: . mty_longident
        mty_longident: . mk_longident(mod_ext_longident,ident)
          mk_longident(mod_ext_longident,ident): . ident
            ident: . UIDENT
  ```
  Sample sentence (implementation):
  ```ocaml
  include ( val function false -> X : {%ext|s|} :> X @ x -> {%ext|s|} )
                                                   ^
  ```
- ...


### Item `module_type: . module_type_atomic` (in 13 errors)

- Derivation (1 occurrence):
  ```
  simple_pattern_not_ident: LPAREN MODULE ext list(attribute) module_name COLON . module_type RPAREN
    module_type: . module_type_atomic
      module_type_atomic: . SIG list(attribute) signature END
  ```
  Sample sentence (implementation):
  ```ocaml
  function ( module X : sig end ) -> .
                        ^^^
  ```
- Derivation (1 occurrence):
  ```
  simple_expr: mod_longident DOT LPAREN MODULE ext list(attribute) module_expr COLON . module_type RPAREN
    module_type: . module_type_atomic
      module_type_atomic: . SIG list(attribute) signature END
  ```
  Sample sentence (implementation):
  ```ocaml
  X . ( module {%ext|s|} : sig end )
                           ^^^
  ```
- Derivation (1 occurrence):
  ```
  simple_expr: LPAREN MODULE ext list(attribute) module_expr COLON . module_type RPAREN
    module_type: . module_type_atomic
      module_type_atomic: . SIG list(attribute) signature END
  ```
  Sample sentence (implementation):
  ```ocaml
  ( module {%ext|s|} : sig end )
                       ^^^
  ```
- Derivation (1 occurrence):
  ```
  paren_module_expr: LPAREN VAL list(attribute) STACK FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case) COLONGREATER . module_type RPAREN
    module_type: . module_type_atomic
      module_type_atomic: . SIG list(attribute) signature END
  ```
  Sample sentence (implementation):
  ```ocaml
  include ( val stack_ function false -> X :> sig end )
                                              ^^^
  ```
- Derivation (1 occurrence):
  ```
  paren_module_expr: LPAREN VAL list(attribute) FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case) COLONGREATER . module_type RPAREN
    module_type: . module_type_atomic
      module_type_atomic: . SIG list(attribute) signature END
  ```
  Sample sentence (implementation):
  ```ocaml
  include ( val function false -> X :> sig end )
                                       ^^^
  ```
- Derivation (1 occurrence):
  ```
  paren_module_expr: LPAREN VAL list(attribute) fun_expr COLONGREATER . module_type RPAREN
    module_type: . module_type_atomic
      module_type_atomic: . SIG list(attribute) signature END
  ```
  Sample sentence (implementation):
  ```ocaml
  include ( val X :> sig end )
                     ^^^
  ```
- Derivation (1 occurrence):
  ```
  paren_module_expr: LPAREN VAL list(attribute) STACK FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case) COLON module_type COLONGREATER . module_type RPAREN
    module_type: . module_type_atomic
      module_type_atomic: . SIG list(attribute) signature END
  ```
  Sample sentence (implementation):
  ```ocaml
  include ( val stack_ function false -> X : {%ext|s|} :> sig end )
                                                          ^^^
  ```
- Derivation (1 occurrence):
  ```
  paren_module_expr: LPAREN VAL list(attribute) FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case) COLON module_type COLONGREATER . module_type RPAREN
    module_type: . module_type_atomic
      module_type_atomic: . SIG list(attribute) signature END
  ```
  Sample sentence (implementation):
  ```ocaml
  include ( val function false -> X : {%ext|s|} :> sig end )
                                                   ^^^
  ```
- Derivation (1 occurrence):
  ```
  paren_module_expr: LPAREN VAL list(attribute) fun_expr COLON module_type COLONGREATER . module_type RPAREN
    module_type: . module_type_atomic
      module_type_atomic: . SIG list(attribute) signature END
  ```
  Sample sentence (implementation):
  ```ocaml
  include ( val X : {%ext|s|} :> sig end )
                                 ^^^
  ```
- Derivation (1 occurrence):
  ```
  paren_module_expr: LPAREN VAL list(attribute) STACK FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case) COLON . module_type RPAREN
    module_type: . module_type_atomic
      module_type_atomic: . SIG list(attribute) signature END
  ```
  Sample sentence (implementation):
  ```ocaml
  include ( val stack_ function false -> X : sig end )
                                             ^^^
  ```
- Derivation (1 occurrence):
  ```
  paren_module_expr: LPAREN VAL list(attribute) FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case) COLON . module_type RPAREN
    module_type: . module_type_atomic
      module_type_atomic: . SIG list(attribute) signature END
  ```
  Sample sentence (implementation):
  ```ocaml
  include ( val function false -> X : sig end )
                                      ^^^
  ```
- Derivation (1 occurrence):
  ```
  paren_module_expr: LPAREN VAL list(attribute) fun_expr COLON . module_type RPAREN
    module_type: . module_type_atomic
      module_type_atomic: . SIG list(attribute) signature END
  ```
  Sample sentence (implementation):
  ```ocaml
  include ( val X : sig end )
                    ^^^
  ```
- Derivation (1 occurrence):
  ```
  delimited_type_supporting_local_open: LPAREN MODULE ext list(attribute) . module_type RPAREN
    module_type: . module_type_atomic
      module_type_atomic: . SIG list(attribute) signature END
  ```
  Sample sentence (implementation):
  ```ocaml
  exception false : ( module sig end )
                             ^^^
  ```


### Item `module_type: . FUNCTOR list(attribute) reversed_nonempty_llist(functor_arg) MINUSGREATER module_type` (in 13 errors)

- Derivation (1 occurrence):
  ```
  simple_pattern_not_ident: LPAREN MODULE ext list(attribute) module_name COLON . module_type RPAREN
    module_type: . FUNCTOR list(attribute) reversed_nonempty_llist(functor_arg) MINUSGREATER module_type
  ```
  Sample sentence (implementation):
  ```ocaml
  function ( module X : functor ( ) -> X ) -> .
                        ^^^^^^^
  ```
- Derivation (1 occurrence):
  ```
  simple_expr: mod_longident DOT LPAREN MODULE ext list(attribute) module_expr COLON . module_type RPAREN
    module_type: . FUNCTOR list(attribute) reversed_nonempty_llist(functor_arg) MINUSGREATER module_type
  ```
  Sample sentence (implementation):
  ```ocaml
  X . ( module {%ext|s|} : functor ( ) -> X )
                           ^^^^^^^
  ```
- Derivation (1 occurrence):
  ```
  simple_expr: LPAREN MODULE ext list(attribute) module_expr COLON . module_type RPAREN
    module_type: . FUNCTOR list(attribute) reversed_nonempty_llist(functor_arg) MINUSGREATER module_type
  ```
  Sample sentence (implementation):
  ```ocaml
  ( module {%ext|s|} : functor ( ) -> X )
                       ^^^^^^^
  ```
- Derivation (1 occurrence):
  ```
  paren_module_expr: LPAREN VAL list(attribute) STACK FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case) COLONGREATER . module_type RPAREN
    module_type: . FUNCTOR list(attribute) reversed_nonempty_llist(functor_arg) MINUSGREATER module_type
  ```
  Sample sentence (implementation):
  ```ocaml
  include ( val stack_ function false -> X :> functor ( ) -> X )
                                              ^^^^^^^
  ```
- Derivation (1 occurrence):
  ```
  paren_module_expr: LPAREN VAL list(attribute) FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case) COLONGREATER . module_type RPAREN
    module_type: . FUNCTOR list(attribute) reversed_nonempty_llist(functor_arg) MINUSGREATER module_type
  ```
  Sample sentence (implementation):
  ```ocaml
  include ( val function false -> X :> functor ( ) -> X )
                                       ^^^^^^^
  ```
- Derivation (1 occurrence):
  ```
  paren_module_expr: LPAREN VAL list(attribute) fun_expr COLONGREATER . module_type RPAREN
    module_type: . FUNCTOR list(attribute) reversed_nonempty_llist(functor_arg) MINUSGREATER module_type
  ```
  Sample sentence (implementation):
  ```ocaml
  include ( val X :> functor ( ) -> X )
                     ^^^^^^^
  ```
- Derivation (1 occurrence):
  ```
  paren_module_expr: LPAREN VAL list(attribute) STACK FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case) COLON module_type COLONGREATER . module_type RPAREN
    module_type: . FUNCTOR list(attribute) reversed_nonempty_llist(functor_arg) MINUSGREATER module_type
  ```
  Sample sentence (implementation):
  ```ocaml
  include ( val stack_ function false -> X : {%ext|s|} :> functor ( ) -> X )
                                                          ^^^^^^^
  ```
- Derivation (1 occurrence):
  ```
  paren_module_expr: LPAREN VAL list(attribute) FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case) COLON module_type COLONGREATER . module_type RPAREN
    module_type: . FUNCTOR list(attribute) reversed_nonempty_llist(functor_arg) MINUSGREATER module_type
  ```
  Sample sentence (implementation):
  ```ocaml
  include ( val function false -> X : {%ext|s|} :> functor ( ) -> X )
                                                   ^^^^^^^
  ```
- Derivation (1 occurrence):
  ```
  paren_module_expr: LPAREN VAL list(attribute) fun_expr COLON module_type COLONGREATER . module_type RPAREN
    module_type: . FUNCTOR list(attribute) reversed_nonempty_llist(functor_arg) MINUSGREATER module_type
  ```
  Sample sentence (implementation):
  ```ocaml
  include ( val X : {%ext|s|} :> functor ( ) -> X )
                                 ^^^^^^^
  ```
- Derivation (1 occurrence):
  ```
  paren_module_expr: LPAREN VAL list(attribute) STACK FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case) COLON . module_type RPAREN
    module_type: . FUNCTOR list(attribute) reversed_nonempty_llist(functor_arg) MINUSGREATER module_type
  ```
  Sample sentence (implementation):
  ```ocaml
  include ( val stack_ function false -> X : functor ( ) -> X )
                                             ^^^^^^^
  ```
- Derivation (1 occurrence):
  ```
  paren_module_expr: LPAREN VAL list(attribute) FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case) COLON . module_type RPAREN
    module_type: . FUNCTOR list(attribute) reversed_nonempty_llist(functor_arg) MINUSGREATER module_type
  ```
  Sample sentence (implementation):
  ```ocaml
  include ( val function false -> X : functor ( ) -> X )
                                      ^^^^^^^
  ```
- Derivation (1 occurrence):
  ```
  paren_module_expr: LPAREN VAL list(attribute) fun_expr COLON . module_type RPAREN
    module_type: . FUNCTOR list(attribute) reversed_nonempty_llist(functor_arg) MINUSGREATER module_type
  ```
  Sample sentence (implementation):
  ```ocaml
  include ( val X : functor ( ) -> X )
                    ^^^^^^^
  ```
- Derivation (1 occurrence):
  ```
  delimited_type_supporting_local_open: LPAREN MODULE ext list(attribute) . module_type RPAREN
    module_type: . FUNCTOR list(attribute) reversed_nonempty_llist(functor_arg) MINUSGREATER module_type
  ```
  Sample sentence (implementation):
  ```ocaml
  exception false : ( module functor ( ) -> X )
                             ^^^^^^^
  ```


### Item `module_type: . FUNCTOR list(attribute) reversed_nonempty_llist(functor_arg) MINUSGREATER module_type_atomic at_mode_expr` (in 13 errors)

- Derivation (1 occurrence):
  ```
  simple_pattern_not_ident: LPAREN MODULE ext list(attribute) module_name COLON . module_type RPAREN
    module_type: . FUNCTOR list(attribute) reversed_nonempty_llist(functor_arg) MINUSGREATER module_type_atomic at_mode_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  function ( module X : functor ( ) -> X @ x ) -> .
                        ^^^^^^^
  ```
- Derivation (1 occurrence):
  ```
  simple_expr: mod_longident DOT LPAREN MODULE ext list(attribute) module_expr COLON . module_type RPAREN
    module_type: . FUNCTOR list(attribute) reversed_nonempty_llist(functor_arg) MINUSGREATER module_type_atomic at_mode_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  X . ( module {%ext|s|} : functor ( ) -> X @ x )
                           ^^^^^^^
  ```
- Derivation (1 occurrence):
  ```
  simple_expr: LPAREN MODULE ext list(attribute) module_expr COLON . module_type RPAREN
    module_type: . FUNCTOR list(attribute) reversed_nonempty_llist(functor_arg) MINUSGREATER module_type_atomic at_mode_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  ( module {%ext|s|} : functor ( ) -> X @ x )
                       ^^^^^^^
  ```
- Derivation (1 occurrence):
  ```
  paren_module_expr: LPAREN VAL list(attribute) STACK FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case) COLONGREATER . module_type RPAREN
    module_type: . FUNCTOR list(attribute) reversed_nonempty_llist(functor_arg) MINUSGREATER module_type_atomic at_mode_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  include ( val stack_ function false -> X :> functor ( ) -> X @ x )
                                              ^^^^^^^
  ```
- Derivation (1 occurrence):
  ```
  paren_module_expr: LPAREN VAL list(attribute) FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case) COLONGREATER . module_type RPAREN
    module_type: . FUNCTOR list(attribute) reversed_nonempty_llist(functor_arg) MINUSGREATER module_type_atomic at_mode_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  include ( val function false -> X :> functor ( ) -> X @ x )
                                       ^^^^^^^
  ```
- Derivation (1 occurrence):
  ```
  paren_module_expr: LPAREN VAL list(attribute) fun_expr COLONGREATER . module_type RPAREN
    module_type: . FUNCTOR list(attribute) reversed_nonempty_llist(functor_arg) MINUSGREATER module_type_atomic at_mode_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  include ( val X :> functor ( ) -> X @ x )
                     ^^^^^^^
  ```
- Derivation (1 occurrence):
  ```
  paren_module_expr: LPAREN VAL list(attribute) STACK FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case) COLON module_type COLONGREATER . module_type RPAREN
    module_type: . FUNCTOR list(attribute) reversed_nonempty_llist(functor_arg) MINUSGREATER module_type_atomic at_mode_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  include ( val stack_ function false -> X : {%ext|s|} :> functor ( ) -> X @ x )
                                                          ^^^^^^^
  ```
- Derivation (1 occurrence):
  ```
  paren_module_expr: LPAREN VAL list(attribute) FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case) COLON module_type COLONGREATER . module_type RPAREN
    module_type: . FUNCTOR list(attribute) reversed_nonempty_llist(functor_arg) MINUSGREATER module_type_atomic at_mode_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  include ( val function false -> X : {%ext|s|} :> functor ( ) -> X @ x )
                                                   ^^^^^^^
  ```
- Derivation (1 occurrence):
  ```
  paren_module_expr: LPAREN VAL list(attribute) fun_expr COLON module_type COLONGREATER . module_type RPAREN
    module_type: . FUNCTOR list(attribute) reversed_nonempty_llist(functor_arg) MINUSGREATER module_type_atomic at_mode_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  include ( val X : {%ext|s|} :> functor ( ) -> X @ x )
                                 ^^^^^^^
  ```
- Derivation (1 occurrence):
  ```
  paren_module_expr: LPAREN VAL list(attribute) STACK FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case) COLON . module_type RPAREN
    module_type: . FUNCTOR list(attribute) reversed_nonempty_llist(functor_arg) MINUSGREATER module_type_atomic at_mode_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  include ( val stack_ function false -> X : functor ( ) -> X @ x )
                                             ^^^^^^^
  ```
- Derivation (1 occurrence):
  ```
  paren_module_expr: LPAREN VAL list(attribute) FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case) COLON . module_type RPAREN
    module_type: . FUNCTOR list(attribute) reversed_nonempty_llist(functor_arg) MINUSGREATER module_type_atomic at_mode_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  include ( val function false -> X : functor ( ) -> X @ x )
                                      ^^^^^^^
  ```
- Derivation (1 occurrence):
  ```
  paren_module_expr: LPAREN VAL list(attribute) fun_expr COLON . module_type RPAREN
    module_type: . FUNCTOR list(attribute) reversed_nonempty_llist(functor_arg) MINUSGREATER module_type_atomic at_mode_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  include ( val X : functor ( ) -> X @ x )
                    ^^^^^^^
  ```
- Derivation (1 occurrence):
  ```
  delimited_type_supporting_local_open: LPAREN MODULE ext list(attribute) . module_type RPAREN
    module_type: . FUNCTOR list(attribute) reversed_nonempty_llist(functor_arg) MINUSGREATER module_type_atomic at_mode_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  exception false : ( module functor ( ) -> X @ x )
                             ^^^^^^^
  ```


### Item `module_type: . MODULE TYPE OF list(attribute) module_expr` (in 13 errors)

- Derivation (1 occurrence):
  ```
  simple_pattern_not_ident: LPAREN MODULE ext list(attribute) module_name COLON . module_type RPAREN
    module_type: . MODULE TYPE OF list(attribute) module_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  function ( module X : module type of {%ext|s|} ) -> .
                        ^^^^^^
  ```
- Derivation (1 occurrence):
  ```
  simple_expr: mod_longident DOT LPAREN MODULE ext list(attribute) module_expr COLON . module_type RPAREN
    module_type: . MODULE TYPE OF list(attribute) module_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  X . ( module {%ext|s|} : module type of {%ext|s|} )
                           ^^^^^^
  ```
- Derivation (1 occurrence):
  ```
  simple_expr: LPAREN MODULE ext list(attribute) module_expr COLON . module_type RPAREN
    module_type: . MODULE TYPE OF list(attribute) module_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  ( module {%ext|s|} : module type of {%ext|s|} )
                       ^^^^^^
  ```
- Derivation (1 occurrence):
  ```
  paren_module_expr: LPAREN VAL list(attribute) STACK FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case) COLONGREATER . module_type RPAREN
    module_type: . MODULE TYPE OF list(attribute) module_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  include ( val stack_ function false -> X :> module type of {%ext|s|} )
                                              ^^^^^^
  ```
- Derivation (1 occurrence):
  ```
  paren_module_expr: LPAREN VAL list(attribute) FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case) COLONGREATER . module_type RPAREN
    module_type: . MODULE TYPE OF list(attribute) module_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  include ( val function false -> X :> module type of {%ext|s|} )
                                       ^^^^^^
  ```
- Derivation (1 occurrence):
  ```
  paren_module_expr: LPAREN VAL list(attribute) fun_expr COLONGREATER . module_type RPAREN
    module_type: . MODULE TYPE OF list(attribute) module_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  include ( val X :> module type of {%ext|s|} )
                     ^^^^^^
  ```
- Derivation (1 occurrence):
  ```
  paren_module_expr: LPAREN VAL list(attribute) STACK FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case) COLON module_type COLONGREATER . module_type RPAREN
    module_type: . MODULE TYPE OF list(attribute) module_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  include ( val stack_ function false -> X : {%ext|s|} :> module type of {%ext|s|} )
                                                          ^^^^^^
  ```
- Derivation (1 occurrence):
  ```
  paren_module_expr: LPAREN VAL list(attribute) FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case) COLON module_type COLONGREATER . module_type RPAREN
    module_type: . MODULE TYPE OF list(attribute) module_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  include ( val function false -> X : {%ext|s|} :> module type of {%ext|s|} )
                                                   ^^^^^^
  ```
- Derivation (1 occurrence):
  ```
  paren_module_expr: LPAREN VAL list(attribute) fun_expr COLON module_type COLONGREATER . module_type RPAREN
    module_type: . MODULE TYPE OF list(attribute) module_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  include ( val X : {%ext|s|} :> module type of {%ext|s|} )
                                 ^^^^^^
  ```
- Derivation (1 occurrence):
  ```
  paren_module_expr: LPAREN VAL list(attribute) STACK FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case) COLON . module_type RPAREN
    module_type: . MODULE TYPE OF list(attribute) module_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  include ( val stack_ function false -> X : module type of {%ext|s|} )
                                             ^^^^^^
  ```
- Derivation (1 occurrence):
  ```
  paren_module_expr: LPAREN VAL list(attribute) FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case) COLON . module_type RPAREN
    module_type: . MODULE TYPE OF list(attribute) module_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  include ( val function false -> X : module type of {%ext|s|} )
                                      ^^^^^^
  ```
- Derivation (1 occurrence):
  ```
  paren_module_expr: LPAREN VAL list(attribute) fun_expr COLON . module_type RPAREN
    module_type: . MODULE TYPE OF list(attribute) module_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  include ( val X : module type of {%ext|s|} )
                    ^^^^^^
  ```
- Derivation (1 occurrence):
  ```
  delimited_type_supporting_local_open: LPAREN MODULE ext list(attribute) . module_type RPAREN
    module_type: . MODULE TYPE OF list(attribute) module_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  exception false : ( module module type of {%ext|s|} )
                             ^^^^^^
  ```

## Error: In this scoped type, variable 'x is reserved for the local type x.

### Item `alias_type: . function_type` (in 90 errors)

- Derivation (1 occurrence):
  ```
  method_: BANG list(attribute) private_flag LIDENT COLON TYPE newtypes DOT . core_type EQUAL seq_expr
    core_type: . alias_type
      alias_type: . function_type
        function_type: . strict_function_or_labeled_tuple_type
          strict_function_or_labeled_tuple_type: . LPAREN reversed_nonempty_llist(typevar) DOT core_type RPAREN at_mode_expr MINUSGREATER nonempty_list(mode_legacy) tuple_type at_mode_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  object method ! x : type x . ( ' x . {%ext|s|} ) @ x -> local_ {%ext|s|} @ x = X end
                               ^
  ```
- Derivation (1 occurrence):
  ```
  method_: list(attribute) private_flag LIDENT COLON TYPE newtypes DOT . core_type EQUAL seq_expr
    core_type: . alias_type
      alias_type: . function_type
        function_type: . strict_function_or_labeled_tuple_type
          strict_function_or_labeled_tuple_type: . LPAREN reversed_nonempty_llist(typevar) DOT core_type RPAREN at_mode_expr MINUSGREATER nonempty_list(mode_legacy) tuple_type at_mode_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  object method x : type x . ( ' x . {%ext|s|} ) @ x -> local_ {%ext|s|} @ x = X end
                             ^
  ```
- Derivation (1 occurrence):
  ```
  let_binding_body_no_punning: LPAREN val_ident at_mode_expr RPAREN COLON TYPE newtypes DOT . core_type EQUAL seq_expr
    core_type: . alias_type
      alias_type: . function_type
        function_type: . strict_function_or_labeled_tuple_type
          strict_function_or_labeled_tuple_type: . LPAREN reversed_nonempty_llist(typevar) DOT core_type RPAREN at_mode_expr MINUSGREATER nonempty_list(mode_legacy) tuple_type at_mode_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  let ( x @ x ) : type x . ( ' x . {%ext|s|} ) @ x -> local_ {%ext|s|} @ x = X
                           ^
  ```
- Derivation (1 occurrence):
  ```
  let_binding_body_no_punning: nonempty_list(mode_legacy) val_ident COLON TYPE newtypes DOT . core_type EQUAL seq_expr
    core_type: . alias_type
      alias_type: . function_type
        function_type: . strict_function_or_labeled_tuple_type
          strict_function_or_labeled_tuple_type: . LPAREN reversed_nonempty_llist(typevar) DOT core_type RPAREN at_mode_expr MINUSGREATER nonempty_list(mode_legacy) tuple_type at_mode_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  let local_ x : type x . ( ' x . {%ext|s|} ) @ x -> local_ {%ext|s|} @ x = X
                          ^
  ```
- Derivation (1 occurrence):
  ```
  let_binding_body_no_punning: val_ident COLON TYPE newtypes DOT . core_type EQUAL seq_expr
    core_type: . alias_type
      alias_type: . function_type
        function_type: . strict_function_or_labeled_tuple_type
          strict_function_or_labeled_tuple_type: . LPAREN reversed_nonempty_llist(typevar) DOT core_type RPAREN at_mode_expr MINUSGREATER nonempty_list(mode_legacy) tuple_type at_mode_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  let x : type x . ( ' x . {%ext|s|} ) @ x -> local_ {%ext|s|} @ x = X
                   ^
  ```
- Derivation (1 occurrence):
  ```
  method_: BANG list(attribute) private_flag LIDENT COLON TYPE newtypes DOT . core_type EQUAL seq_expr
    core_type: . alias_type
      alias_type: . function_type
        function_type: . strict_function_or_labeled_tuple_type
          strict_function_or_labeled_tuple_type: . LPAREN reversed_nonempty_llist(typevar) DOT core_type RPAREN at_mode_expr MINUSGREATER nonempty_list(mode_legacy) tuple_type
  ```
  Sample sentence (implementation):
  ```ocaml
  object method ! x : type x . ( ' x . {%ext|s|} ) @ x -> local_ {%ext|s|} = X end
                               ^
  ```
- Derivation (1 occurrence):
  ```
  method_: list(attribute) private_flag LIDENT COLON TYPE newtypes DOT . core_type EQUAL seq_expr
    core_type: . alias_type
      alias_type: . function_type
        function_type: . strict_function_or_labeled_tuple_type
          strict_function_or_labeled_tuple_type: . LPAREN reversed_nonempty_llist(typevar) DOT core_type RPAREN at_mode_expr MINUSGREATER nonempty_list(mode_legacy) tuple_type
  ```
  Sample sentence (implementation):
  ```ocaml
  object method x : type x . ( ' x . {%ext|s|} ) @ x -> local_ {%ext|s|} = X end
                             ^
  ```
- Derivation (1 occurrence):
  ```
  let_binding_body_no_punning: LPAREN val_ident at_mode_expr RPAREN COLON TYPE newtypes DOT . core_type EQUAL seq_expr
    core_type: . alias_type
      alias_type: . function_type
        function_type: . strict_function_or_labeled_tuple_type
          strict_function_or_labeled_tuple_type: . LPAREN reversed_nonempty_llist(typevar) DOT core_type RPAREN at_mode_expr MINUSGREATER nonempty_list(mode_legacy) tuple_type
  ```
  Sample sentence (implementation):
  ```ocaml
  let ( x @ x ) : type x . ( ' x . {%ext|s|} ) @ x -> local_ {%ext|s|} = X
                           ^
  ```
- Derivation (1 occurrence):
  ```
  let_binding_body_no_punning: nonempty_list(mode_legacy) val_ident COLON TYPE newtypes DOT . core_type EQUAL seq_expr
    core_type: . alias_type
      alias_type: . function_type
        function_type: . strict_function_or_labeled_tuple_type
          strict_function_or_labeled_tuple_type: . LPAREN reversed_nonempty_llist(typevar) DOT core_type RPAREN at_mode_expr MINUSGREATER nonempty_list(mode_legacy) tuple_type
  ```
  Sample sentence (implementation):
  ```ocaml
  let local_ x : type x . ( ' x . {%ext|s|} ) @ x -> local_ {%ext|s|} = X
                          ^
  ```
- Derivation (1 occurrence):
  ```
  let_binding_body_no_punning: val_ident COLON TYPE newtypes DOT . core_type EQUAL seq_expr
    core_type: . alias_type
      alias_type: . function_type
        function_type: . strict_function_or_labeled_tuple_type
          strict_function_or_labeled_tuple_type: . LPAREN reversed_nonempty_llist(typevar) DOT core_type RPAREN at_mode_expr MINUSGREATER nonempty_list(mode_legacy) tuple_type
  ```
  Sample sentence (implementation):
  ```ocaml
  let x : type x . ( ' x . {%ext|s|} ) @ x -> local_ {%ext|s|} = X
                   ^
  ```
- Derivation (1 occurrence):
  ```
  method_: BANG list(attribute) private_flag LIDENT COLON TYPE newtypes DOT . core_type EQUAL seq_expr
    core_type: . core_type attribute
      core_type: . alias_type
        alias_type: . function_type
          function_type: . strict_function_or_labeled_tuple_type
            strict_function_or_labeled_tuple_type: . LPAREN reversed_nonempty_llist(typevar) DOT core_type RPAREN at_mode_expr MINUSGREATER nonempty_list(mode_legacy) tuple_type
  ```
  Sample sentence (implementation):
  ```ocaml
  object method ! x : type x . ( ' x . {%ext|s|} ) @ x -> local_ {%ext|s|} [@ and ] = X end
                               ^
  ```
- Derivation (1 occurrence):
  ```
  method_: list(attribute) private_flag LIDENT COLON TYPE newtypes DOT . core_type EQUAL seq_expr
    core_type: . core_type attribute
      core_type: . alias_type
        alias_type: . function_type
          function_type: . strict_function_or_labeled_tuple_type
            strict_function_or_labeled_tuple_type: . LPAREN reversed_nonempty_llist(typevar) DOT core_type RPAREN at_mode_expr MINUSGREATER nonempty_list(mode_legacy) tuple_type
  ```
  Sample sentence (implementation):
  ```ocaml
  object method x : type x . ( ' x . {%ext|s|} ) @ x -> local_ {%ext|s|} [@ and ] = X end
                             ^
  ```
- Derivation (1 occurrence):
  ```
  let_binding_body_no_punning: LPAREN val_ident at_mode_expr RPAREN COLON TYPE newtypes DOT . core_type EQUAL seq_expr
    core_type: . core_type attribute
      core_type: . alias_type
        alias_type: . function_type
          function_type: . strict_function_or_labeled_tuple_type
            strict_function_or_labeled_tuple_type: . LPAREN reversed_nonempty_llist(typevar) DOT core_type RPAREN at_mode_expr MINUSGREATER nonempty_list(mode_legacy) tuple_type
  ```
  Sample sentence (implementation):
  ```ocaml
  let ( x @ x ) : type x . ( ' x . {%ext|s|} ) @ x -> local_ {%ext|s|} [@ and ] = X
                           ^
  ```
- Derivation (1 occurrence):
  ```
  let_binding_body_no_punning: nonempty_list(mode_legacy) val_ident COLON TYPE newtypes DOT . core_type EQUAL seq_expr
    core_type: . core_type attribute
      core_type: . alias_type
        alias_type: . function_type
          function_type: . strict_function_or_labeled_tuple_type
            strict_function_or_labeled_tuple_type: . LPAREN reversed_nonempty_llist(typevar) DOT core_type RPAREN at_mode_expr MINUSGREATER nonempty_list(mode_legacy) tuple_type
  ```
  Sample sentence (implementation):
  ```ocaml
  let local_ x : type x . ( ' x . {%ext|s|} ) @ x -> local_ {%ext|s|} [@ and ] = X
                          ^
  ```
- Derivation (1 occurrence):
  ```
  let_binding_body_no_punning: val_ident COLON TYPE newtypes DOT . core_type EQUAL seq_expr
    core_type: . core_type attribute
      core_type: . alias_type
        alias_type: . function_type
          function_type: . strict_function_or_labeled_tuple_type
            strict_function_or_labeled_tuple_type: . LPAREN reversed_nonempty_llist(typevar) DOT core_type RPAREN at_mode_expr MINUSGREATER nonempty_list(mode_legacy) tuple_type
  ```
  Sample sentence (implementation):
  ```ocaml
  let x : type x . ( ' x . {%ext|s|} ) @ x -> local_ {%ext|s|} [@ and ] = X
                   ^
  ```
- Derivation (1 occurrence):
  ```
  method_: BANG list(attribute) private_flag LIDENT COLON TYPE newtypes DOT . core_type EQUAL seq_expr
    core_type: . alias_type
      alias_type: . function_type
        function_type: . strict_function_or_labeled_tuple_type
          strict_function_or_labeled_tuple_type: . LPAREN reversed_nonempty_llist(typevar) DOT core_type RPAREN at_mode_expr MINUSGREATER tuple_type at_mode_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  object method ! x : type x . ( ' x . {%ext|s|} ) @ x -> {%ext|s|} @ x = X end
                               ^
  ```
- Derivation (1 occurrence):
  ```
  method_: list(attribute) private_flag LIDENT COLON TYPE newtypes DOT . core_type EQUAL seq_expr
    core_type: . alias_type
      alias_type: . function_type
        function_type: . strict_function_or_labeled_tuple_type
          strict_function_or_labeled_tuple_type: . LPAREN reversed_nonempty_llist(typevar) DOT core_type RPAREN at_mode_expr MINUSGREATER tuple_type at_mode_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  object method x : type x . ( ' x . {%ext|s|} ) @ x -> {%ext|s|} @ x = X end
                             ^
  ```
- Derivation (1 occurrence):
  ```
  let_binding_body_no_punning: LPAREN val_ident at_mode_expr RPAREN COLON TYPE newtypes DOT . core_type EQUAL seq_expr
    core_type: . alias_type
      alias_type: . function_type
        function_type: . strict_function_or_labeled_tuple_type
          strict_function_or_labeled_tuple_type: . LPAREN reversed_nonempty_llist(typevar) DOT core_type RPAREN at_mode_expr MINUSGREATER tuple_type at_mode_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  let ( x @ x ) : type x . ( ' x . {%ext|s|} ) @ x -> {%ext|s|} @ x = X
                           ^
  ```
- Derivation (1 occurrence):
  ```
  let_binding_body_no_punning: nonempty_list(mode_legacy) val_ident COLON TYPE newtypes DOT . core_type EQUAL seq_expr
    core_type: . alias_type
      alias_type: . function_type
        function_type: . strict_function_or_labeled_tuple_type
          strict_function_or_labeled_tuple_type: . LPAREN reversed_nonempty_llist(typevar) DOT core_type RPAREN at_mode_expr MINUSGREATER tuple_type at_mode_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  let local_ x : type x . ( ' x . {%ext|s|} ) @ x -> {%ext|s|} @ x = X
                          ^
  ```
- Derivation (1 occurrence):
  ```
  let_binding_body_no_punning: val_ident COLON TYPE newtypes DOT . core_type EQUAL seq_expr
    core_type: . alias_type
      alias_type: . function_type
        function_type: . strict_function_or_labeled_tuple_type
          strict_function_or_labeled_tuple_type: . LPAREN reversed_nonempty_llist(typevar) DOT core_type RPAREN at_mode_expr MINUSGREATER tuple_type at_mode_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  let x : type x . ( ' x . {%ext|s|} ) @ x -> {%ext|s|} @ x = X
                   ^
  ```
- Derivation (1 occurrence):
  ```
  method_: BANG list(attribute) private_flag LIDENT COLON TYPE newtypes DOT . core_type EQUAL seq_expr
    core_type: . alias_type
      alias_type: . function_type
        function_type: . strict_function_or_labeled_tuple_type
          strict_function_or_labeled_tuple_type: . LPAREN reversed_nonempty_llist(typevar) DOT core_type RPAREN at_mode_expr MINUSGREATER tuple_type
  ```
  Sample sentence (implementation):
  ```ocaml
  object method ! x : type x . ( ' x . {%ext|s|} ) @ x -> {%ext|s|} = X end
                               ^
  ```
- ...


### Item `strict_function_or_labeled_tuple_type: optlabel . LPAREN reversed_nonempty_llist(typevar) DOT core_type RPAREN MINUSGREATER strict_function_or_labeled_tuple_type` (in 10 errors)

- Derivation (10 occurrences):
  ```
  strict_function_or_labeled_tuple_type: optlabel . LPAREN reversed_nonempty_llist(typevar) DOT core_type RPAREN MINUSGREATER strict_function_or_labeled_tuple_type
  ```
  Sample sentence (implementation):
  ```ocaml
  let x : type x . ?label: ( ' x . {%ext|s|} ) -> {%ext|s|} -> {%ext|s|} = X
                           ^
  ```


### Item `strict_function_or_labeled_tuple_type: optlabel . LPAREN reversed_nonempty_llist(typevar) DOT core_type RPAREN at_mode_expr MINUSGREATER strict_function_or_labeled_tuple_type` (in 10 errors)

- Derivation (10 occurrences):
  ```
  strict_function_or_labeled_tuple_type: optlabel . LPAREN reversed_nonempty_llist(typevar) DOT core_type RPAREN at_mode_expr MINUSGREATER strict_function_or_labeled_tuple_type
  ```
  Sample sentence (implementation):
  ```ocaml
  let x : type x . ?label: ( ' x . {%ext|s|} ) @ x -> {%ext|s|} -> {%ext|s|} = X
                           ^
  ```


### Item `strict_function_or_labeled_tuple_type: optlabel nonempty_list(mode_legacy) . LPAREN reversed_nonempty_llist(typevar) DOT core_type RPAREN MINUSGREATER strict_function_or_labeled_tuple_type` (in 10 errors)

- Derivation (10 occurrences):
  ```
  strict_function_or_labeled_tuple_type: optlabel nonempty_list(mode_legacy) . LPAREN reversed_nonempty_llist(typevar) DOT core_type RPAREN MINUSGREATER strict_function_or_labeled_tuple_type
  ```
  Sample sentence (implementation):
  ```ocaml
  let x : type x . ?label: local_ ( ' x . {%ext|s|} ) -> {%ext|s|} -> {%ext|s|} = X
                                  ^
  ```


### Item `strict_function_or_labeled_tuple_type: optlabel nonempty_list(mode_legacy) . LPAREN reversed_nonempty_llist(typevar) DOT core_type RPAREN at_mode_expr MINUSGREATER strict_function_or_labeled_tuple_type` (in 10 errors)

- Derivation (10 occurrences):
  ```
  strict_function_or_labeled_tuple_type: optlabel nonempty_list(mode_legacy) . LPAREN reversed_nonempty_llist(typevar) DOT core_type RPAREN at_mode_expr MINUSGREATER strict_function_or_labeled_tuple_type
  ```
  Sample sentence (implementation):
  ```ocaml
  let x : type x . ?label: local_ ( ' x . {%ext|s|} ) @ x -> {%ext|s|} -> {%ext|s|} = X
                                  ^
  ```


### Item `strict_function_or_labeled_tuple_type: LIDENT COLON . LPAREN reversed_nonempty_llist(typevar) DOT core_type RPAREN MINUSGREATER strict_function_or_labeled_tuple_type` (in 10 errors)

- Derivation (10 occurrences):
  ```
  strict_function_or_labeled_tuple_type: LIDENT COLON . LPAREN reversed_nonempty_llist(typevar) DOT core_type RPAREN MINUSGREATER strict_function_or_labeled_tuple_type
  ```
  Sample sentence (implementation):
  ```ocaml
  let x : type x . x : ( ' x . {%ext|s|} ) -> {%ext|s|} -> {%ext|s|} = X
                       ^
  ```


### Item `strict_function_or_labeled_tuple_type: LIDENT COLON . LPAREN reversed_nonempty_llist(typevar) DOT core_type RPAREN at_mode_expr MINUSGREATER strict_function_or_labeled_tuple_type` (in 10 errors)

- Derivation (10 occurrences):
  ```
  strict_function_or_labeled_tuple_type: LIDENT COLON . LPAREN reversed_nonempty_llist(typevar) DOT core_type RPAREN at_mode_expr MINUSGREATER strict_function_or_labeled_tuple_type
  ```
  Sample sentence (implementation):
  ```ocaml
  let x : type x . x : ( ' x . {%ext|s|} ) @ x -> {%ext|s|} -> {%ext|s|} = X
                       ^
  ```


### Item `strict_function_or_labeled_tuple_type: LIDENT COLON nonempty_list(mode_legacy) . LPAREN reversed_nonempty_llist(typevar) DOT core_type RPAREN MINUSGREATER strict_function_or_labeled_tuple_type` (in 10 errors)

- Derivation (10 occurrences):
  ```
  strict_function_or_labeled_tuple_type: LIDENT COLON nonempty_list(mode_legacy) . LPAREN reversed_nonempty_llist(typevar) DOT core_type RPAREN MINUSGREATER strict_function_or_labeled_tuple_type
  ```
  Sample sentence (implementation):
  ```ocaml
  let x : type x . x : local_ ( ' x . {%ext|s|} ) -> {%ext|s|} -> {%ext|s|} = X
                              ^
  ```


### Item `strict_function_or_labeled_tuple_type: LIDENT COLON nonempty_list(mode_legacy) . LPAREN reversed_nonempty_llist(typevar) DOT core_type RPAREN at_mode_expr MINUSGREATER strict_function_or_labeled_tuple_type` (in 10 errors)

- Derivation (10 occurrences):
  ```
  strict_function_or_labeled_tuple_type: LIDENT COLON nonempty_list(mode_legacy) . LPAREN reversed_nonempty_llist(typevar) DOT core_type RPAREN at_mode_expr MINUSGREATER strict_function_or_labeled_tuple_type
  ```
  Sample sentence (implementation):
  ```ocaml
  let x : type x . x : local_ ( ' x . {%ext|s|} ) @ x -> {%ext|s|} -> {%ext|s|} = X
                              ^
  ```


### Item `strict_function_or_labeled_tuple_type: nonempty_list(mode_legacy) . LPAREN reversed_nonempty_llist(typevar) DOT core_type RPAREN MINUSGREATER strict_function_or_labeled_tuple_type` (in 10 errors)

- Derivation (10 occurrences):
  ```
  strict_function_or_labeled_tuple_type: nonempty_list(mode_legacy) . LPAREN reversed_nonempty_llist(typevar) DOT core_type RPAREN MINUSGREATER strict_function_or_labeled_tuple_type
  ```
  Sample sentence (implementation):
  ```ocaml
  let x : type x . local_ ( ' x . {%ext|s|} ) -> {%ext|s|} -> {%ext|s|} = X
                          ^
  ```


### Item `strict_function_or_labeled_tuple_type: nonempty_list(mode_legacy) . LPAREN reversed_nonempty_llist(typevar) DOT core_type RPAREN at_mode_expr MINUSGREATER strict_function_or_labeled_tuple_type` (in 10 errors)

- Derivation (10 occurrences):
  ```
  strict_function_or_labeled_tuple_type: nonempty_list(mode_legacy) . LPAREN reversed_nonempty_llist(typevar) DOT core_type RPAREN at_mode_expr MINUSGREATER strict_function_or_labeled_tuple_type
  ```
  Sample sentence (implementation):
  ```ocaml
  let x : type x . local_ ( ' x . {%ext|s|} ) @ x -> {%ext|s|} -> {%ext|s|} = X
                          ^
  ```


### Item `strict_function_or_labeled_tuple_type: optlabel . LPAREN reversed_nonempty_llist(typevar) DOT core_type RPAREN MINUSGREATER tuple_type` (in 10 errors)

- Derivation (10 occurrences):
  ```
  strict_function_or_labeled_tuple_type: optlabel . LPAREN reversed_nonempty_llist(typevar) DOT core_type RPAREN MINUSGREATER tuple_type
  ```
  Sample sentence (implementation):
  ```ocaml
  let x : type x . ?label: ( ' x . {%ext|s|} ) -> {%ext|s|} = X
                           ^
  ```


### Item `strict_function_or_labeled_tuple_type: optlabel . LPAREN reversed_nonempty_llist(typevar) DOT core_type RPAREN MINUSGREATER nonempty_list(mode_legacy) tuple_type` (in 10 errors)

- Derivation (10 occurrences):
  ```
  strict_function_or_labeled_tuple_type: optlabel . LPAREN reversed_nonempty_llist(typevar) DOT core_type RPAREN MINUSGREATER nonempty_list(mode_legacy) tuple_type
  ```
  Sample sentence (implementation):
  ```ocaml
  let x : type x . ?label: ( ' x . {%ext|s|} ) -> local_ {%ext|s|} = X
                           ^
  ```


### Item `strict_function_or_labeled_tuple_type: optlabel . LPAREN reversed_nonempty_llist(typevar) DOT core_type RPAREN at_mode_expr MINUSGREATER tuple_type` (in 10 errors)

- Derivation (10 occurrences):
  ```
  strict_function_or_labeled_tuple_type: optlabel . LPAREN reversed_nonempty_llist(typevar) DOT core_type RPAREN at_mode_expr MINUSGREATER tuple_type
  ```
  Sample sentence (implementation):
  ```ocaml
  let x : type x . ?label: ( ' x . {%ext|s|} ) @ x -> {%ext|s|} = X
                           ^
  ```


### Item `strict_function_or_labeled_tuple_type: optlabel . LPAREN reversed_nonempty_llist(typevar) DOT core_type RPAREN at_mode_expr MINUSGREATER nonempty_list(mode_legacy) tuple_type` (in 10 errors)

- Derivation (10 occurrences):
  ```
  strict_function_or_labeled_tuple_type: optlabel . LPAREN reversed_nonempty_llist(typevar) DOT core_type RPAREN at_mode_expr MINUSGREATER nonempty_list(mode_legacy) tuple_type
  ```
  Sample sentence (implementation):
  ```ocaml
  let x : type x . ?label: ( ' x . {%ext|s|} ) @ x -> local_ {%ext|s|} = X
                           ^
  ```


### Item `strict_function_or_labeled_tuple_type: optlabel nonempty_list(mode_legacy) . LPAREN reversed_nonempty_llist(typevar) DOT core_type RPAREN MINUSGREATER tuple_type` (in 10 errors)

- Derivation (10 occurrences):
  ```
  strict_function_or_labeled_tuple_type: optlabel nonempty_list(mode_legacy) . LPAREN reversed_nonempty_llist(typevar) DOT core_type RPAREN MINUSGREATER tuple_type
  ```
  Sample sentence (implementation):
  ```ocaml
  let x : type x . ?label: local_ ( ' x . {%ext|s|} ) -> {%ext|s|} = X
                                  ^
  ```


### Item `strict_function_or_labeled_tuple_type: optlabel nonempty_list(mode_legacy) . LPAREN reversed_nonempty_llist(typevar) DOT core_type RPAREN MINUSGREATER nonempty_list(mode_legacy) tuple_type` (in 10 errors)

- Derivation (10 occurrences):
  ```
  strict_function_or_labeled_tuple_type: optlabel nonempty_list(mode_legacy) . LPAREN reversed_nonempty_llist(typevar) DOT core_type RPAREN MINUSGREATER nonempty_list(mode_legacy) tuple_type
  ```
  Sample sentence (implementation):
  ```ocaml
  let x : type x . ?label: local_ ( ' x . {%ext|s|} ) -> local_ {%ext|s|} = X
                                  ^
  ```


### Item `strict_function_or_labeled_tuple_type: optlabel nonempty_list(mode_legacy) . LPAREN reversed_nonempty_llist(typevar) DOT core_type RPAREN at_mode_expr MINUSGREATER tuple_type` (in 10 errors)

- Derivation (10 occurrences):
  ```
  strict_function_or_labeled_tuple_type: optlabel nonempty_list(mode_legacy) . LPAREN reversed_nonempty_llist(typevar) DOT core_type RPAREN at_mode_expr MINUSGREATER tuple_type
  ```
  Sample sentence (implementation):
  ```ocaml
  let x : type x . ?label: local_ ( ' x . {%ext|s|} ) @ x -> {%ext|s|} = X
                                  ^
  ```


### Item `strict_function_or_labeled_tuple_type: optlabel nonempty_list(mode_legacy) . LPAREN reversed_nonempty_llist(typevar) DOT core_type RPAREN at_mode_expr MINUSGREATER nonempty_list(mode_legacy) tuple_type` (in 10 errors)

- Derivation (10 occurrences):
  ```
  strict_function_or_labeled_tuple_type: optlabel nonempty_list(mode_legacy) . LPAREN reversed_nonempty_llist(typevar) DOT core_type RPAREN at_mode_expr MINUSGREATER nonempty_list(mode_legacy) tuple_type
  ```
  Sample sentence (implementation):
  ```ocaml
  let x : type x . ?label: local_ ( ' x . {%ext|s|} ) @ x -> local_ {%ext|s|} = X
                                  ^
  ```


### Item `strict_function_or_labeled_tuple_type: LIDENT COLON . LPAREN reversed_nonempty_llist(typevar) DOT core_type RPAREN MINUSGREATER tuple_type` (in 10 errors)

- Derivation (10 occurrences):
  ```
  strict_function_or_labeled_tuple_type: LIDENT COLON . LPAREN reversed_nonempty_llist(typevar) DOT core_type RPAREN MINUSGREATER tuple_type
  ```
  Sample sentence (implementation):
  ```ocaml
  let x : type x . x : ( ' x . {%ext|s|} ) -> {%ext|s|} = X
                       ^
  ```


### Item `strict_function_or_labeled_tuple_type: LIDENT COLON . LPAREN reversed_nonempty_llist(typevar) DOT core_type RPAREN MINUSGREATER nonempty_list(mode_legacy) tuple_type` (in 10 errors)

- Derivation (10 occurrences):
  ```
  strict_function_or_labeled_tuple_type: LIDENT COLON . LPAREN reversed_nonempty_llist(typevar) DOT core_type RPAREN MINUSGREATER nonempty_list(mode_legacy) tuple_type
  ```
  Sample sentence (implementation):
  ```ocaml
  let x : type x . x : ( ' x . {%ext|s|} ) -> local_ {%ext|s|} = X
                       ^
  ```


### Item `strict_function_or_labeled_tuple_type: LIDENT COLON . LPAREN reversed_nonempty_llist(typevar) DOT core_type RPAREN at_mode_expr MINUSGREATER tuple_type` (in 10 errors)

- Derivation (10 occurrences):
  ```
  strict_function_or_labeled_tuple_type: LIDENT COLON . LPAREN reversed_nonempty_llist(typevar) DOT core_type RPAREN at_mode_expr MINUSGREATER tuple_type
  ```
  Sample sentence (implementation):
  ```ocaml
  let x : type x . x : ( ' x . {%ext|s|} ) @ x -> {%ext|s|} = X
                       ^
  ```


### Item `strict_function_or_labeled_tuple_type: LIDENT COLON . LPAREN reversed_nonempty_llist(typevar) DOT core_type RPAREN at_mode_expr MINUSGREATER nonempty_list(mode_legacy) tuple_type` (in 10 errors)

- Derivation (10 occurrences):
  ```
  strict_function_or_labeled_tuple_type: LIDENT COLON . LPAREN reversed_nonempty_llist(typevar) DOT core_type RPAREN at_mode_expr MINUSGREATER nonempty_list(mode_legacy) tuple_type
  ```
  Sample sentence (implementation):
  ```ocaml
  let x : type x . x : ( ' x . {%ext|s|} ) @ x -> local_ {%ext|s|} = X
                       ^
  ```


### Item `strict_function_or_labeled_tuple_type: LIDENT COLON nonempty_list(mode_legacy) . LPAREN reversed_nonempty_llist(typevar) DOT core_type RPAREN MINUSGREATER tuple_type` (in 10 errors)

- Derivation (10 occurrences):
  ```
  strict_function_or_labeled_tuple_type: LIDENT COLON nonempty_list(mode_legacy) . LPAREN reversed_nonempty_llist(typevar) DOT core_type RPAREN MINUSGREATER tuple_type
  ```
  Sample sentence (implementation):
  ```ocaml
  let x : type x . x : local_ ( ' x . {%ext|s|} ) -> {%ext|s|} = X
                              ^
  ```


### Item `strict_function_or_labeled_tuple_type: LIDENT COLON nonempty_list(mode_legacy) . LPAREN reversed_nonempty_llist(typevar) DOT core_type RPAREN MINUSGREATER nonempty_list(mode_legacy) tuple_type` (in 10 errors)

- Derivation (10 occurrences):
  ```
  strict_function_or_labeled_tuple_type: LIDENT COLON nonempty_list(mode_legacy) . LPAREN reversed_nonempty_llist(typevar) DOT core_type RPAREN MINUSGREATER nonempty_list(mode_legacy) tuple_type
  ```
  Sample sentence (implementation):
  ```ocaml
  let x : type x . x : local_ ( ' x . {%ext|s|} ) -> local_ {%ext|s|} = X
                              ^
  ```


### Item `strict_function_or_labeled_tuple_type: LIDENT COLON nonempty_list(mode_legacy) . LPAREN reversed_nonempty_llist(typevar) DOT core_type RPAREN at_mode_expr MINUSGREATER tuple_type` (in 10 errors)

- Derivation (10 occurrences):
  ```
  strict_function_or_labeled_tuple_type: LIDENT COLON nonempty_list(mode_legacy) . LPAREN reversed_nonempty_llist(typevar) DOT core_type RPAREN at_mode_expr MINUSGREATER tuple_type
  ```
  Sample sentence (implementation):
  ```ocaml
  let x : type x . x : local_ ( ' x . {%ext|s|} ) @ x -> {%ext|s|} = X
                              ^
  ```


### Item `strict_function_or_labeled_tuple_type: LIDENT COLON nonempty_list(mode_legacy) . LPAREN reversed_nonempty_llist(typevar) DOT core_type RPAREN at_mode_expr MINUSGREATER nonempty_list(mode_legacy) tuple_type` (in 10 errors)

- Derivation (10 occurrences):
  ```
  strict_function_or_labeled_tuple_type: LIDENT COLON nonempty_list(mode_legacy) . LPAREN reversed_nonempty_llist(typevar) DOT core_type RPAREN at_mode_expr MINUSGREATER nonempty_list(mode_legacy) tuple_type
  ```
  Sample sentence (implementation):
  ```ocaml
  let x : type x . x : local_ ( ' x . {%ext|s|} ) @ x -> local_ {%ext|s|} = X
                              ^
  ```


### Item `strict_function_or_labeled_tuple_type: nonempty_list(mode_legacy) . LPAREN reversed_nonempty_llist(typevar) DOT core_type RPAREN MINUSGREATER tuple_type` (in 10 errors)

- Derivation (10 occurrences):
  ```
  strict_function_or_labeled_tuple_type: nonempty_list(mode_legacy) . LPAREN reversed_nonempty_llist(typevar) DOT core_type RPAREN MINUSGREATER tuple_type
  ```
  Sample sentence (implementation):
  ```ocaml
  let x : type x . local_ ( ' x . {%ext|s|} ) -> {%ext|s|} = X
                          ^
  ```


### Item `strict_function_or_labeled_tuple_type: nonempty_list(mode_legacy) . LPAREN reversed_nonempty_llist(typevar) DOT core_type RPAREN MINUSGREATER nonempty_list(mode_legacy) tuple_type` (in 10 errors)

- Derivation (10 occurrences):
  ```
  strict_function_or_labeled_tuple_type: nonempty_list(mode_legacy) . LPAREN reversed_nonempty_llist(typevar) DOT core_type RPAREN MINUSGREATER nonempty_list(mode_legacy) tuple_type
  ```
  Sample sentence (implementation):
  ```ocaml
  let x : type x . local_ ( ' x . {%ext|s|} ) -> local_ {%ext|s|} = X
                          ^
  ```


### Item `strict_function_or_labeled_tuple_type: nonempty_list(mode_legacy) . LPAREN reversed_nonempty_llist(typevar) DOT core_type RPAREN at_mode_expr MINUSGREATER tuple_type` (in 10 errors)

- Derivation (10 occurrences):
  ```
  strict_function_or_labeled_tuple_type: nonempty_list(mode_legacy) . LPAREN reversed_nonempty_llist(typevar) DOT core_type RPAREN at_mode_expr MINUSGREATER tuple_type
  ```
  Sample sentence (implementation):
  ```ocaml
  let x : type x . local_ ( ' x . {%ext|s|} ) @ x -> {%ext|s|} = X
                          ^
  ```


### Item `strict_function_or_labeled_tuple_type: nonempty_list(mode_legacy) . LPAREN reversed_nonempty_llist(typevar) DOT core_type RPAREN at_mode_expr MINUSGREATER nonempty_list(mode_legacy) tuple_type` (in 10 errors)

- Derivation (10 occurrences):
  ```
  strict_function_or_labeled_tuple_type: nonempty_list(mode_legacy) . LPAREN reversed_nonempty_llist(typevar) DOT core_type RPAREN at_mode_expr MINUSGREATER nonempty_list(mode_legacy) tuple_type
  ```
  Sample sentence (implementation):
  ```ocaml
  let x : type x . local_ ( ' x . {%ext|s|} ) @ x -> local_ {%ext|s|} = X
                          ^
  ```


### Item `alias_type: alias_type AS LPAREN . QUOTE ident COLON jkind_annotation RPAREN` (in 5 errors)

- Derivation (5 occurrences):
  ```
  alias_type: alias_type AS LPAREN . QUOTE ident COLON jkind_annotation RPAREN
  ```
  Sample sentence (implementation):
  ```ocaml
  let x : type x . {%ext|s|} as ( ' x : x ) = X
                                  ^
  ```


### Item `strict_function_or_labeled_tuple_type: optlabel . LPAREN reversed_nonempty_llist(typevar) DOT core_type RPAREN MINUSGREATER tuple_type at_mode_expr` (in 5 errors)

- Derivation (5 occurrences):
  ```
  strict_function_or_labeled_tuple_type: optlabel . LPAREN reversed_nonempty_llist(typevar) DOT core_type RPAREN MINUSGREATER tuple_type at_mode_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  let x : type x . ?label: ( ' x . {%ext|s|} ) -> {%ext|s|} @ x = X
                           ^
  ```


### Item `strict_function_or_labeled_tuple_type: optlabel . LPAREN reversed_nonempty_llist(typevar) DOT core_type RPAREN MINUSGREATER nonempty_list(mode_legacy) tuple_type at_mode_expr` (in 5 errors)

- Derivation (5 occurrences):
  ```
  strict_function_or_labeled_tuple_type: optlabel . LPAREN reversed_nonempty_llist(typevar) DOT core_type RPAREN MINUSGREATER nonempty_list(mode_legacy) tuple_type at_mode_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  let x : type x . ?label: ( ' x . {%ext|s|} ) -> local_ {%ext|s|} @ x = X
                           ^
  ```


### Item `strict_function_or_labeled_tuple_type: optlabel . LPAREN reversed_nonempty_llist(typevar) DOT core_type RPAREN at_mode_expr MINUSGREATER tuple_type at_mode_expr` (in 5 errors)

- Derivation (5 occurrences):
  ```
  strict_function_or_labeled_tuple_type: optlabel . LPAREN reversed_nonempty_llist(typevar) DOT core_type RPAREN at_mode_expr MINUSGREATER tuple_type at_mode_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  let x : type x . ?label: ( ' x . {%ext|s|} ) @ x -> {%ext|s|} @ x = X
                           ^
  ```


### Item `strict_function_or_labeled_tuple_type: optlabel . LPAREN reversed_nonempty_llist(typevar) DOT core_type RPAREN at_mode_expr MINUSGREATER nonempty_list(mode_legacy) tuple_type at_mode_expr` (in 5 errors)

- Derivation (5 occurrences):
  ```
  strict_function_or_labeled_tuple_type: optlabel . LPAREN reversed_nonempty_llist(typevar) DOT core_type RPAREN at_mode_expr MINUSGREATER nonempty_list(mode_legacy) tuple_type at_mode_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  let x : type x . ?label: ( ' x . {%ext|s|} ) @ x -> local_ {%ext|s|} @ x = X
                           ^
  ```


### Item `strict_function_or_labeled_tuple_type: optlabel nonempty_list(mode_legacy) . LPAREN reversed_nonempty_llist(typevar) DOT core_type RPAREN MINUSGREATER tuple_type at_mode_expr` (in 5 errors)

- Derivation (5 occurrences):
  ```
  strict_function_or_labeled_tuple_type: optlabel nonempty_list(mode_legacy) . LPAREN reversed_nonempty_llist(typevar) DOT core_type RPAREN MINUSGREATER tuple_type at_mode_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  let x : type x . ?label: local_ ( ' x . {%ext|s|} ) -> {%ext|s|} @ x = X
                                  ^
  ```


### Item `strict_function_or_labeled_tuple_type: optlabel nonempty_list(mode_legacy) . LPAREN reversed_nonempty_llist(typevar) DOT core_type RPAREN MINUSGREATER nonempty_list(mode_legacy) tuple_type at_mode_expr` (in 5 errors)

- Derivation (5 occurrences):
  ```
  strict_function_or_labeled_tuple_type: optlabel nonempty_list(mode_legacy) . LPAREN reversed_nonempty_llist(typevar) DOT core_type RPAREN MINUSGREATER nonempty_list(mode_legacy) tuple_type at_mode_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  let x : type x . ?label: local_ ( ' x . {%ext|s|} ) -> local_ {%ext|s|} @ x = X
                                  ^
  ```


### Item `strict_function_or_labeled_tuple_type: optlabel nonempty_list(mode_legacy) . LPAREN reversed_nonempty_llist(typevar) DOT core_type RPAREN at_mode_expr MINUSGREATER tuple_type at_mode_expr` (in 5 errors)

- Derivation (5 occurrences):
  ```
  strict_function_or_labeled_tuple_type: optlabel nonempty_list(mode_legacy) . LPAREN reversed_nonempty_llist(typevar) DOT core_type RPAREN at_mode_expr MINUSGREATER tuple_type at_mode_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  let x : type x . ?label: local_ ( ' x . {%ext|s|} ) @ x -> {%ext|s|} @ x = X
                                  ^
  ```


### Item `strict_function_or_labeled_tuple_type: optlabel nonempty_list(mode_legacy) . LPAREN reversed_nonempty_llist(typevar) DOT core_type RPAREN at_mode_expr MINUSGREATER nonempty_list(mode_legacy) tuple_type at_mode_expr` (in 5 errors)

- Derivation (5 occurrences):
  ```
  strict_function_or_labeled_tuple_type: optlabel nonempty_list(mode_legacy) . LPAREN reversed_nonempty_llist(typevar) DOT core_type RPAREN at_mode_expr MINUSGREATER nonempty_list(mode_legacy) tuple_type at_mode_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  let x : type x . ?label: local_ ( ' x . {%ext|s|} ) @ x -> local_ {%ext|s|} @ x = X
                                  ^
  ```


### Item `strict_function_or_labeled_tuple_type: LIDENT COLON . LPAREN reversed_nonempty_llist(typevar) DOT core_type RPAREN MINUSGREATER tuple_type at_mode_expr` (in 5 errors)

- Derivation (5 occurrences):
  ```
  strict_function_or_labeled_tuple_type: LIDENT COLON . LPAREN reversed_nonempty_llist(typevar) DOT core_type RPAREN MINUSGREATER tuple_type at_mode_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  let x : type x . x : ( ' x . {%ext|s|} ) -> {%ext|s|} @ x = X
                       ^
  ```


### Item `strict_function_or_labeled_tuple_type: LIDENT COLON . LPAREN reversed_nonempty_llist(typevar) DOT core_type RPAREN MINUSGREATER nonempty_list(mode_legacy) tuple_type at_mode_expr` (in 5 errors)

- Derivation (5 occurrences):
  ```
  strict_function_or_labeled_tuple_type: LIDENT COLON . LPAREN reversed_nonempty_llist(typevar) DOT core_type RPAREN MINUSGREATER nonempty_list(mode_legacy) tuple_type at_mode_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  let x : type x . x : ( ' x . {%ext|s|} ) -> local_ {%ext|s|} @ x = X
                       ^
  ```


### Item `strict_function_or_labeled_tuple_type: LIDENT COLON . LPAREN reversed_nonempty_llist(typevar) DOT core_type RPAREN at_mode_expr MINUSGREATER tuple_type at_mode_expr` (in 5 errors)

- Derivation (5 occurrences):
  ```
  strict_function_or_labeled_tuple_type: LIDENT COLON . LPAREN reversed_nonempty_llist(typevar) DOT core_type RPAREN at_mode_expr MINUSGREATER tuple_type at_mode_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  let x : type x . x : ( ' x . {%ext|s|} ) @ x -> {%ext|s|} @ x = X
                       ^
  ```


### Item `strict_function_or_labeled_tuple_type: LIDENT COLON . LPAREN reversed_nonempty_llist(typevar) DOT core_type RPAREN at_mode_expr MINUSGREATER nonempty_list(mode_legacy) tuple_type at_mode_expr` (in 5 errors)

- Derivation (5 occurrences):
  ```
  strict_function_or_labeled_tuple_type: LIDENT COLON . LPAREN reversed_nonempty_llist(typevar) DOT core_type RPAREN at_mode_expr MINUSGREATER nonempty_list(mode_legacy) tuple_type at_mode_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  let x : type x . x : ( ' x . {%ext|s|} ) @ x -> local_ {%ext|s|} @ x = X
                       ^
  ```


### Item `strict_function_or_labeled_tuple_type: LIDENT COLON nonempty_list(mode_legacy) . LPAREN reversed_nonempty_llist(typevar) DOT core_type RPAREN MINUSGREATER tuple_type at_mode_expr` (in 5 errors)

- Derivation (5 occurrences):
  ```
  strict_function_or_labeled_tuple_type: LIDENT COLON nonempty_list(mode_legacy) . LPAREN reversed_nonempty_llist(typevar) DOT core_type RPAREN MINUSGREATER tuple_type at_mode_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  let x : type x . x : local_ ( ' x . {%ext|s|} ) -> {%ext|s|} @ x = X
                              ^
  ```


### Item `strict_function_or_labeled_tuple_type: LIDENT COLON nonempty_list(mode_legacy) . LPAREN reversed_nonempty_llist(typevar) DOT core_type RPAREN MINUSGREATER nonempty_list(mode_legacy) tuple_type at_mode_expr` (in 5 errors)

- Derivation (5 occurrences):
  ```
  strict_function_or_labeled_tuple_type: LIDENT COLON nonempty_list(mode_legacy) . LPAREN reversed_nonempty_llist(typevar) DOT core_type RPAREN MINUSGREATER nonempty_list(mode_legacy) tuple_type at_mode_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  let x : type x . x : local_ ( ' x . {%ext|s|} ) -> local_ {%ext|s|} @ x = X
                              ^
  ```


### Item `strict_function_or_labeled_tuple_type: LIDENT COLON nonempty_list(mode_legacy) . LPAREN reversed_nonempty_llist(typevar) DOT core_type RPAREN at_mode_expr MINUSGREATER tuple_type at_mode_expr` (in 5 errors)

- Derivation (5 occurrences):
  ```
  strict_function_or_labeled_tuple_type: LIDENT COLON nonempty_list(mode_legacy) . LPAREN reversed_nonempty_llist(typevar) DOT core_type RPAREN at_mode_expr MINUSGREATER tuple_type at_mode_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  let x : type x . x : local_ ( ' x . {%ext|s|} ) @ x -> {%ext|s|} @ x = X
                              ^
  ```


### Item `strict_function_or_labeled_tuple_type: LIDENT COLON nonempty_list(mode_legacy) . LPAREN reversed_nonempty_llist(typevar) DOT core_type RPAREN at_mode_expr MINUSGREATER nonempty_list(mode_legacy) tuple_type at_mode_expr` (in 5 errors)

- Derivation (5 occurrences):
  ```
  strict_function_or_labeled_tuple_type: LIDENT COLON nonempty_list(mode_legacy) . LPAREN reversed_nonempty_llist(typevar) DOT core_type RPAREN at_mode_expr MINUSGREATER nonempty_list(mode_legacy) tuple_type at_mode_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  let x : type x . x : local_ ( ' x . {%ext|s|} ) @ x -> local_ {%ext|s|} @ x = X
                              ^
  ```


### Item `strict_function_or_labeled_tuple_type: nonempty_list(mode_legacy) . LPAREN reversed_nonempty_llist(typevar) DOT core_type RPAREN MINUSGREATER tuple_type at_mode_expr` (in 5 errors)

- Derivation (5 occurrences):
  ```
  strict_function_or_labeled_tuple_type: nonempty_list(mode_legacy) . LPAREN reversed_nonempty_llist(typevar) DOT core_type RPAREN MINUSGREATER tuple_type at_mode_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  let x : type x . local_ ( ' x . {%ext|s|} ) -> {%ext|s|} @ x = X
                          ^
  ```


### Item `strict_function_or_labeled_tuple_type: nonempty_list(mode_legacy) . LPAREN reversed_nonempty_llist(typevar) DOT core_type RPAREN MINUSGREATER nonempty_list(mode_legacy) tuple_type at_mode_expr` (in 5 errors)

- Derivation (5 occurrences):
  ```
  strict_function_or_labeled_tuple_type: nonempty_list(mode_legacy) . LPAREN reversed_nonempty_llist(typevar) DOT core_type RPAREN MINUSGREATER nonempty_list(mode_legacy) tuple_type at_mode_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  let x : type x . local_ ( ' x . {%ext|s|} ) -> local_ {%ext|s|} @ x = X
                          ^
  ```


### Item `strict_function_or_labeled_tuple_type: nonempty_list(mode_legacy) . LPAREN reversed_nonempty_llist(typevar) DOT core_type RPAREN at_mode_expr MINUSGREATER tuple_type at_mode_expr` (in 5 errors)

- Derivation (5 occurrences):
  ```
  strict_function_or_labeled_tuple_type: nonempty_list(mode_legacy) . LPAREN reversed_nonempty_llist(typevar) DOT core_type RPAREN at_mode_expr MINUSGREATER tuple_type at_mode_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  let x : type x . local_ ( ' x . {%ext|s|} ) @ x -> {%ext|s|} @ x = X
                          ^
  ```


### Item `strict_function_or_labeled_tuple_type: nonempty_list(mode_legacy) . LPAREN reversed_nonempty_llist(typevar) DOT core_type RPAREN at_mode_expr MINUSGREATER nonempty_list(mode_legacy) tuple_type at_mode_expr` (in 5 errors)

- Derivation (5 occurrences):
  ```
  strict_function_or_labeled_tuple_type: nonempty_list(mode_legacy) . LPAREN reversed_nonempty_llist(typevar) DOT core_type RPAREN at_mode_expr MINUSGREATER nonempty_list(mode_legacy) tuple_type at_mode_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  let x : type x . local_ ( ' x . {%ext|s|} ) @ x -> local_ {%ext|s|} @ x = X
                          ^
  ```

## Error: Syntax error: mode annotations not expected.

### Item `fun_expr: . simple_expr` (in 350 errors)

- Derivation (2 occurrences):
  ```
  simple_expr: simple_expr DOT mod_longident DOTOP LBRACKET . separated_or_terminated_nonempty_list(SEMI,expr) RBRACKET
    separated_or_terminated_nonempty_list(SEMI,expr): . fun_expr
      fun_expr: . simple_expr
        simple_expr: . LPAREN seq_expr COLONGREATER tuple_type at_mode_expr RPAREN
  ```
  Sample sentence (implementation):
  ```ocaml
  false . X .+ [ ( X :> {%ext|s|} @ x ) ]
                 ^
  ```
- Derivation (2 occurrences):
  ```
  simple_expr: simple_expr DOTOP LBRACKET . separated_or_terminated_nonempty_list(SEMI,expr) RBRACKET
    separated_or_terminated_nonempty_list(SEMI,expr): . fun_expr
      fun_expr: . simple_expr
        simple_expr: . LPAREN seq_expr COLONGREATER tuple_type at_mode_expr RPAREN
  ```
  Sample sentence (implementation):
  ```ocaml
  X .+ [ ( X :> {%ext|s|} @ x ) ]
         ^
  ```
- Derivation (2 occurrences):
  ```
  simple_expr: simple_expr DOT mod_longident DOTOP LBRACE . separated_or_terminated_nonempty_list(SEMI,expr) RBRACE
    separated_or_terminated_nonempty_list(SEMI,expr): . fun_expr
      fun_expr: . simple_expr
        simple_expr: . LPAREN seq_expr COLONGREATER tuple_type at_mode_expr RPAREN
  ```
  Sample sentence (implementation):
  ```ocaml
  false . X .+ { ( X :> {%ext|s|} @ x ) }
                 ^
  ```
- Derivation (2 occurrences):
  ```
  simple_expr: simple_expr DOTOP LBRACE . separated_or_terminated_nonempty_list(SEMI,expr) RBRACE
    separated_or_terminated_nonempty_list(SEMI,expr): . fun_expr
      fun_expr: . simple_expr
        simple_expr: . LPAREN seq_expr COLONGREATER tuple_type at_mode_expr RPAREN
  ```
  Sample sentence (implementation):
  ```ocaml
  X .+ { ( X :> {%ext|s|} @ x ) }
         ^
  ```
- Derivation (2 occurrences):
  ```
  simple_expr: simple_expr DOT mod_longident DOTOP LPAREN . separated_or_terminated_nonempty_list(SEMI,expr) RPAREN
    separated_or_terminated_nonempty_list(SEMI,expr): . fun_expr
      fun_expr: . simple_expr
        simple_expr: . LPAREN seq_expr COLONGREATER tuple_type at_mode_expr RPAREN
  ```
  Sample sentence (implementation):
  ```ocaml
  false . X .+ ( ( X :> {%ext|s|} @ x ) )
                 ^
  ```
- Derivation (2 occurrences):
  ```
  simple_expr: simple_expr DOTOP LPAREN . separated_or_terminated_nonempty_list(SEMI,expr) RPAREN
    separated_or_terminated_nonempty_list(SEMI,expr): . fun_expr
      fun_expr: . simple_expr
        simple_expr: . LPAREN seq_expr COLONGREATER tuple_type at_mode_expr RPAREN
  ```
  Sample sentence (implementation):
  ```ocaml
  X .+ ( ( X :> {%ext|s|} @ x ) )
         ^
  ```
- Derivation (2 occurrences):
  ```
  implementation: . structure EOF
    structure: . seq_expr list(post_item_attribute) list(structure_element)
      seq_expr: . fun_seq_expr
        fun_seq_expr: . fun_expr
          fun_expr: . simple_expr
            simple_expr: . LPAREN seq_expr COLONGREATER tuple_type at_mode_expr RPAREN
  ```
  Sample sentence (implementation):
  ```ocaml
  ( X :> {%ext|s|} @ x )
  ^
  ```
- Derivation (2 occurrences):
  ```
  simple_expr: simple_expr DOT LBRACKET . seq_expr RBRACKET
    seq_expr: . fun_seq_expr
      fun_seq_expr: . fun_expr
        fun_expr: . simple_expr
          simple_expr: . LPAREN seq_expr COLONGREATER tuple_type at_mode_expr RPAREN
  ```
  Sample sentence (implementation):
  ```ocaml
  false . [ ( X :> {%ext|s|} @ x ) ]
            ^
  ```
- Derivation (2 occurrences):
  ```
  simple_expr: simple_expr DOT LBRACE . seq_expr RBRACE
    seq_expr: . fun_seq_expr
      fun_seq_expr: . fun_expr
        fun_expr: . simple_expr
          simple_expr: . LPAREN seq_expr COLONGREATER tuple_type at_mode_expr RPAREN
  ```
  Sample sentence (implementation):
  ```ocaml
  false . { ( X :> {%ext|s|} @ x ) }
            ^
  ```
- Derivation (2 occurrences):
  ```
  simple_expr: simple_expr DOT LPAREN . seq_expr RPAREN
    seq_expr: . fun_seq_expr
      fun_seq_expr: . fun_expr
        fun_expr: . simple_expr
          simple_expr: . LPAREN seq_expr COLONGREATER tuple_type at_mode_expr RPAREN
  ```
  Sample sentence (implementation):
  ```ocaml
  false . ( ( X :> {%ext|s|} @ x ) )
            ^
  ```
- Derivation (2 occurrences):
  ```
  simple_expr: simple_expr DOT mod_longident DOTOP LBRACKET . separated_or_terminated_nonempty_list(SEMI,expr) RBRACKET
    separated_or_terminated_nonempty_list(SEMI,expr): . fun_expr
      fun_expr: . simple_expr
        simple_expr: . LPAREN seq_expr COLON core_type COLONGREATER tuple_type at_mode_expr RPAREN
  ```
  Sample sentence (implementation):
  ```ocaml
  false . X .+ [ ( X : {%ext|s|} :> {%ext|s|} @ x ) ]
                 ^
  ```
- Derivation (2 occurrences):
  ```
  simple_expr: simple_expr DOTOP LBRACKET . separated_or_terminated_nonempty_list(SEMI,expr) RBRACKET
    separated_or_terminated_nonempty_list(SEMI,expr): . fun_expr
      fun_expr: . simple_expr
        simple_expr: . LPAREN seq_expr COLON core_type COLONGREATER tuple_type at_mode_expr RPAREN
  ```
  Sample sentence (implementation):
  ```ocaml
  X .+ [ ( X : {%ext|s|} :> {%ext|s|} @ x ) ]
         ^
  ```
- Derivation (2 occurrences):
  ```
  simple_expr: simple_expr DOT mod_longident DOTOP LBRACE . separated_or_terminated_nonempty_list(SEMI,expr) RBRACE
    separated_or_terminated_nonempty_list(SEMI,expr): . fun_expr
      fun_expr: . simple_expr
        simple_expr: . LPAREN seq_expr COLON core_type COLONGREATER tuple_type at_mode_expr RPAREN
  ```
  Sample sentence (implementation):
  ```ocaml
  false . X .+ { ( X : {%ext|s|} :> {%ext|s|} @ x ) }
                 ^
  ```
- Derivation (2 occurrences):
  ```
  simple_expr: simple_expr DOTOP LBRACE . separated_or_terminated_nonempty_list(SEMI,expr) RBRACE
    separated_or_terminated_nonempty_list(SEMI,expr): . fun_expr
      fun_expr: . simple_expr
        simple_expr: . LPAREN seq_expr COLON core_type COLONGREATER tuple_type at_mode_expr RPAREN
  ```
  Sample sentence (implementation):
  ```ocaml
  X .+ { ( X : {%ext|s|} :> {%ext|s|} @ x ) }
         ^
  ```
- Derivation (2 occurrences):
  ```
  simple_expr: simple_expr DOT mod_longident DOTOP LPAREN . separated_or_terminated_nonempty_list(SEMI,expr) RPAREN
    separated_or_terminated_nonempty_list(SEMI,expr): . fun_expr
      fun_expr: . simple_expr
        simple_expr: . LPAREN seq_expr COLON core_type COLONGREATER tuple_type at_mode_expr RPAREN
  ```
  Sample sentence (implementation):
  ```ocaml
  false . X .+ ( ( X : {%ext|s|} :> {%ext|s|} @ x ) )
                 ^
  ```
- Derivation (2 occurrences):
  ```
  simple_expr: simple_expr DOTOP LPAREN . separated_or_terminated_nonempty_list(SEMI,expr) RPAREN
    separated_or_terminated_nonempty_list(SEMI,expr): . fun_expr
      fun_expr: . simple_expr
        simple_expr: . LPAREN seq_expr COLON core_type COLONGREATER tuple_type at_mode_expr RPAREN
  ```
  Sample sentence (implementation):
  ```ocaml
  X .+ ( ( X : {%ext|s|} :> {%ext|s|} @ x ) )
         ^
  ```
- Derivation (2 occurrences):
  ```
  implementation: . structure EOF
    structure: . seq_expr list(post_item_attribute) list(structure_element)
      seq_expr: . fun_seq_expr
        fun_seq_expr: . fun_expr
          fun_expr: . simple_expr
            simple_expr: . LPAREN seq_expr COLON core_type COLONGREATER tuple_type at_mode_expr RPAREN
  ```
  Sample sentence (implementation):
  ```ocaml
  ( X : {%ext|s|} :> {%ext|s|} @ x )
  ^
  ```
- Derivation (2 occurrences):
  ```
  simple_expr: simple_expr DOT LBRACKET . seq_expr RBRACKET
    seq_expr: . fun_seq_expr
      fun_seq_expr: . fun_expr
        fun_expr: . simple_expr
          simple_expr: . LPAREN seq_expr COLON core_type COLONGREATER tuple_type at_mode_expr RPAREN
  ```
  Sample sentence (implementation):
  ```ocaml
  false . [ ( X : {%ext|s|} :> {%ext|s|} @ x ) ]
            ^
  ```
- Derivation (2 occurrences):
  ```
  simple_expr: simple_expr DOT LBRACE . seq_expr RBRACE
    seq_expr: . fun_seq_expr
      fun_seq_expr: . fun_expr
        fun_expr: . simple_expr
          simple_expr: . LPAREN seq_expr COLON core_type COLONGREATER tuple_type at_mode_expr RPAREN
  ```
  Sample sentence (implementation):
  ```ocaml
  false . { ( X : {%ext|s|} :> {%ext|s|} @ x ) }
            ^
  ```
- Derivation (2 occurrences):
  ```
  simple_expr: simple_expr DOT LPAREN . seq_expr RPAREN
    seq_expr: . fun_seq_expr
      fun_seq_expr: . fun_expr
        fun_expr: . simple_expr
          simple_expr: . LPAREN seq_expr COLON core_type COLONGREATER tuple_type at_mode_expr RPAREN
  ```
  Sample sentence (implementation):
  ```ocaml
  false . ( ( X : {%ext|s|} :> {%ext|s|} @ x ) )
            ^
  ```
- Derivation (1 occurrence):
  ```
  simple_expr: mod_longident DOT LBRACKETCOLON . separated_or_terminated_nonempty_list(SEMI,expr) COLONRBRACKET
    separated_or_terminated_nonempty_list(SEMI,expr): . fun_expr
      fun_expr: . simple_expr
        simple_expr: . LPAREN seq_expr COLONGREATER tuple_type at_mode_expr RPAREN
  ```
  Sample sentence (implementation):
  ```ocaml
  X . [: ( X :> {%ext|s|} @ x ) :]
         ^
  ```
- ...


### Item `fun_expr: STACK . simple_expr` (in 130 errors)

- Derivation (65 occurrences):
  ```
  fun_expr: STACK . simple_expr
    simple_expr: . LPAREN seq_expr COLONGREATER tuple_type at_mode_expr RPAREN
  ```
  Sample sentence (implementation):
  ```ocaml
  stack_ ( X :> {%ext|s|} @ x )
         ^
  ```
- Derivation (65 occurrences):
  ```
  fun_expr: STACK . simple_expr
    simple_expr: . LPAREN seq_expr COLON core_type COLONGREATER tuple_type at_mode_expr RPAREN
  ```
  Sample sentence (implementation):
  ```ocaml
  stack_ ( X : {%ext|s|} :> {%ext|s|} @ x )
         ^
  ```


### Item `simple_expr: . LPAREN seq_expr COLON core_type COLONGREATER tuple_type at_mode_expr RPAREN` (in 27 errors)

- Derivation (2 occurrences):
  ```
  simple_expr: BANG . simple_expr
    simple_expr: . LPAREN seq_expr COLON core_type COLONGREATER tuple_type at_mode_expr RPAREN
  ```
  Sample sentence (implementation):
  ```ocaml
  ! ( X : {%ext|s|} :> {%ext|s|} @ x )
    ^
  ```
- Derivation (2 occurrences):
  ```
  simple_expr: PREFIXOP . simple_expr
    simple_expr: . LPAREN seq_expr COLON core_type COLONGREATER tuple_type at_mode_expr RPAREN
  ```
  Sample sentence (implementation):
  ```ocaml
  !+ ( X : {%ext|s|} :> {%ext|s|} @ x )
     ^
  ```
- Derivation (2 occurrences):
  ```
  reversed_nonempty_llist(labeled_simple_expr): reversed_nonempty_llist(labeled_simple_expr) . labeled_simple_expr
    labeled_simple_expr: . simple_expr
      simple_expr: . LPAREN seq_expr COLON core_type COLONGREATER tuple_type at_mode_expr RPAREN
  ```
  Sample sentence (implementation):
  ```ocaml
  #1.0 #1.0 ( X : {%ext|s|} :> {%ext|s|} @ x )
            ^
  ```
- Derivation (1 occurrence):
  ```
  simple_expr: simple_expr HASHOP . simple_expr
    simple_expr: . LPAREN seq_expr COLON core_type COLONGREATER tuple_type at_mode_expr RPAREN
  ```
  Sample sentence (implementation):
  ```ocaml
  X ## ( X : {%ext|s|} :> {%ext|s|} @ x )
       ^
  ```
- Derivation (1 occurrence):
  ```
  reversed_labeled_tuple_body: TILDE LPAREN LIDENT type_constraint RPAREN COMMA LABEL . simple_expr
    simple_expr: . LPAREN seq_expr COLON core_type COLONGREATER tuple_type at_mode_expr RPAREN
  ```
  Sample sentence (implementation):
  ```ocaml
  ~ ( x : {%ext|s|} ) , ~label: ( X : {%ext|s|} :> {%ext|s|} @ x )
                                ^
  ```
- Derivation (1 occurrence):
  ```
  reversed_labeled_tuple_body: TILDE LIDENT COMMA LABEL . simple_expr
    simple_expr: . LPAREN seq_expr COLON core_type COLONGREATER tuple_type at_mode_expr RPAREN
  ```
  Sample sentence (implementation):
  ```ocaml
  ~ x , ~label: ( X : {%ext|s|} :> {%ext|s|} @ x )
                ^
  ```
- Derivation (1 occurrence):
  ```
  reversed_labeled_tuple_body: LABEL simple_expr COMMA LABEL . simple_expr
    simple_expr: . LPAREN seq_expr COLON core_type COLONGREATER tuple_type at_mode_expr RPAREN
  ```
  Sample sentence (implementation):
  ```ocaml
  ~label: #1.0 , ~label: ( X : {%ext|s|} :> {%ext|s|} @ x )
                         ^
  ```
- Derivation (1 occurrence):
  ```
  reversed_labeled_tuple_body: LABEL . simple_expr COMMA fun_expr
    simple_expr: . LPAREN seq_expr COLON core_type COLONGREATER tuple_type at_mode_expr RPAREN
  ```
  Sample sentence (implementation):
  ```ocaml
  ~label: ( X : {%ext|s|} :> {%ext|s|} @ x ) , X
          ^
  ```
- Derivation (1 occurrence):
  ```
  reversed_labeled_tuple_body: STACK FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case) COMMA LABEL . simple_expr
    simple_expr: . LPAREN seq_expr COLON core_type COLONGREATER tuple_type at_mode_expr RPAREN
  ```
  Sample sentence (implementation):
  ```ocaml
  stack_ function false -> . , ~label: ( X : {%ext|s|} :> {%ext|s|} @ x )
                                       ^
  ```
- Derivation (1 occurrence):
  ```
  reversed_labeled_tuple_body: FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case) COMMA LABEL . simple_expr
    simple_expr: . LPAREN seq_expr COLON core_type COLONGREATER tuple_type at_mode_expr RPAREN
  ```
  Sample sentence (implementation):
  ```ocaml
  function false -> . , ~label: ( X : {%ext|s|} :> {%ext|s|} @ x )
                                ^
  ```
- Derivation (1 occurrence):
  ```
  reversed_labeled_tuple_body: fun_expr COMMA LABEL . simple_expr
    simple_expr: . LPAREN seq_expr COLON core_type COLONGREATER tuple_type at_mode_expr RPAREN
  ```
  Sample sentence (implementation):
  ```ocaml
  X , ~label: ( X : {%ext|s|} :> {%ext|s|} @ x )
              ^
  ```
- Derivation (1 occurrence):
  ```
  reversed_labeled_tuple_body: reversed_labeled_tuple_body COMMA LABEL . simple_expr
    simple_expr: . LPAREN seq_expr COLON core_type COLONGREATER tuple_type at_mode_expr RPAREN
  ```
  Sample sentence (implementation):
  ```ocaml
  X , X , ~label: ( X : {%ext|s|} :> {%ext|s|} @ x )
                  ^
  ```
- Derivation (1 occurrence):
  ```
  simple_expr: mod_longident DOT LBRACE . record_expr_content RBRACE
    record_expr_content: . simple_expr WITH separated_or_terminated_nonempty_list(SEMI,record_expr_field)
      simple_expr: . LPAREN seq_expr COLON core_type COLONGREATER tuple_type at_mode_expr RPAREN
  ```
  Sample sentence (implementation):
  ```ocaml
  X . { ( X : {%ext|s|} :> {%ext|s|} @ x ) with x }
        ^
  ```
- Derivation (1 occurrence):
  ```
  simple_expr: HASHLBRACE . record_expr_content RBRACE
    record_expr_content: . simple_expr WITH separated_or_terminated_nonempty_list(SEMI,record_expr_field)
      simple_expr: . LPAREN seq_expr COLON core_type COLONGREATER tuple_type at_mode_expr RPAREN
  ```
  Sample sentence (implementation):
  ```ocaml
  #{ ( X : {%ext|s|} :> {%ext|s|} @ x ) with x }
     ^
  ```
- Derivation (1 occurrence):
  ```
  simple_expr: LBRACE . record_expr_content RBRACE
    record_expr_content: . simple_expr WITH separated_or_terminated_nonempty_list(SEMI,record_expr_field)
      simple_expr: . LPAREN seq_expr COLON core_type COLONGREATER tuple_type at_mode_expr RPAREN
  ```
  Sample sentence (implementation):
  ```ocaml
  { ( X : {%ext|s|} :> {%ext|s|} @ x ) with x }
    ^
  ```
- Derivation (1 occurrence):
  ```
  labeled_simple_expr: OPTLABEL . simple_expr
    simple_expr: . LPAREN seq_expr COLON core_type COLONGREATER tuple_type at_mode_expr RPAREN
  ```
  Sample sentence (implementation):
  ```ocaml
  X ?label: ( X : {%ext|s|} :> {%ext|s|} @ x )
            ^
  ```
- Derivation (1 occurrence):
  ```
  labeled_simple_expr: LABEL . simple_expr
    simple_expr: . LPAREN seq_expr COLON core_type COLONGREATER tuple_type at_mode_expr RPAREN
  ```
  Sample sentence (implementation):
  ```ocaml
  X ~label: ( X : {%ext|s|} :> {%ext|s|} @ x )
            ^
  ```
- Derivation (1 occurrence):
  ```
  fun_expr: simple_expr . reversed_nonempty_llist(labeled_simple_expr)
    reversed_nonempty_llist(labeled_simple_expr): . labeled_simple_expr
      labeled_simple_expr: . simple_expr
        simple_expr: . LPAREN seq_expr COLON core_type COLONGREATER tuple_type at_mode_expr RPAREN
  ```
  Sample sentence (implementation):
  ```ocaml
  #1.0 ( X : {%ext|s|} :> {%ext|s|} @ x )
       ^
  ```
- Derivation (1 occurrence):
  ```
  class_expr: class_simple_expr . reversed_nonempty_llist(labeled_simple_expr)
    reversed_nonempty_llist(labeled_simple_expr): . labeled_simple_expr
      labeled_simple_expr: . simple_expr
        simple_expr: . LPAREN seq_expr COLON core_type COLONGREATER tuple_type at_mode_expr RPAREN
  ```
  Sample sentence (implementation):
  ```ocaml
  class x = x ( X : {%ext|s|} :> {%ext|s|} @ x )
              ^
  ```
- Derivation (1 occurrence):
  ```
  fun_expr: name_tag . simple_expr
    simple_expr: . LPAREN seq_expr COLON core_type COLONGREATER tuple_type at_mode_expr RPAREN
  ```
  Sample sentence (implementation):
  ```ocaml
  ` x ( X : {%ext|s|} :> {%ext|s|} @ x )
      ^
  ```
- Derivation (1 occurrence):
  ```
  fun_expr: STACK constr_longident . simple_expr
    simple_expr: . LPAREN seq_expr COLON core_type COLONGREATER tuple_type at_mode_expr RPAREN
  ```
  Sample sentence (implementation):
  ```ocaml
  stack_ X ( X : {%ext|s|} :> {%ext|s|} @ x )
           ^
  ```
- ...


### Item `simple_expr: . LPAREN seq_expr COLONGREATER tuple_type at_mode_expr RPAREN` (in 27 errors)

- Derivation (2 occurrences):
  ```
  simple_expr: BANG . simple_expr
    simple_expr: . LPAREN seq_expr COLONGREATER tuple_type at_mode_expr RPAREN
  ```
  Sample sentence (implementation):
  ```ocaml
  ! ( X :> {%ext|s|} @ x )
    ^
  ```
- Derivation (2 occurrences):
  ```
  simple_expr: PREFIXOP . simple_expr
    simple_expr: . LPAREN seq_expr COLONGREATER tuple_type at_mode_expr RPAREN
  ```
  Sample sentence (implementation):
  ```ocaml
  !+ ( X :> {%ext|s|} @ x )
     ^
  ```
- Derivation (2 occurrences):
  ```
  reversed_nonempty_llist(labeled_simple_expr): reversed_nonempty_llist(labeled_simple_expr) . labeled_simple_expr
    labeled_simple_expr: . simple_expr
      simple_expr: . LPAREN seq_expr COLONGREATER tuple_type at_mode_expr RPAREN
  ```
  Sample sentence (implementation):
  ```ocaml
  #1.0 #1.0 ( X :> {%ext|s|} @ x )
            ^
  ```
- Derivation (1 occurrence):
  ```
  simple_expr: simple_expr HASHOP . simple_expr
    simple_expr: . LPAREN seq_expr COLONGREATER tuple_type at_mode_expr RPAREN
  ```
  Sample sentence (implementation):
  ```ocaml
  X ## ( X :> {%ext|s|} @ x )
       ^
  ```
- Derivation (1 occurrence):
  ```
  reversed_labeled_tuple_body: TILDE LPAREN LIDENT type_constraint RPAREN COMMA LABEL . simple_expr
    simple_expr: . LPAREN seq_expr COLONGREATER tuple_type at_mode_expr RPAREN
  ```
  Sample sentence (implementation):
  ```ocaml
  ~ ( x : {%ext|s|} ) , ~label: ( X :> {%ext|s|} @ x )
                                ^
  ```
- Derivation (1 occurrence):
  ```
  reversed_labeled_tuple_body: TILDE LIDENT COMMA LABEL . simple_expr
    simple_expr: . LPAREN seq_expr COLONGREATER tuple_type at_mode_expr RPAREN
  ```
  Sample sentence (implementation):
  ```ocaml
  ~ x , ~label: ( X :> {%ext|s|} @ x )
                ^
  ```
- Derivation (1 occurrence):
  ```
  reversed_labeled_tuple_body: LABEL simple_expr COMMA LABEL . simple_expr
    simple_expr: . LPAREN seq_expr COLONGREATER tuple_type at_mode_expr RPAREN
  ```
  Sample sentence (implementation):
  ```ocaml
  ~label: #1.0 , ~label: ( X :> {%ext|s|} @ x )
                         ^
  ```
- Derivation (1 occurrence):
  ```
  reversed_labeled_tuple_body: LABEL . simple_expr COMMA fun_expr
    simple_expr: . LPAREN seq_expr COLONGREATER tuple_type at_mode_expr RPAREN
  ```
  Sample sentence (implementation):
  ```ocaml
  ~label: ( X :> {%ext|s|} @ x ) , X
          ^
  ```
- Derivation (1 occurrence):
  ```
  reversed_labeled_tuple_body: STACK FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case) COMMA LABEL . simple_expr
    simple_expr: . LPAREN seq_expr COLONGREATER tuple_type at_mode_expr RPAREN
  ```
  Sample sentence (implementation):
  ```ocaml
  stack_ function false -> . , ~label: ( X :> {%ext|s|} @ x )
                                       ^
  ```
- Derivation (1 occurrence):
  ```
  reversed_labeled_tuple_body: FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case) COMMA LABEL . simple_expr
    simple_expr: . LPAREN seq_expr COLONGREATER tuple_type at_mode_expr RPAREN
  ```
  Sample sentence (implementation):
  ```ocaml
  function false -> . , ~label: ( X :> {%ext|s|} @ x )
                                ^
  ```
- Derivation (1 occurrence):
  ```
  reversed_labeled_tuple_body: fun_expr COMMA LABEL . simple_expr
    simple_expr: . LPAREN seq_expr COLONGREATER tuple_type at_mode_expr RPAREN
  ```
  Sample sentence (implementation):
  ```ocaml
  X , ~label: ( X :> {%ext|s|} @ x )
              ^
  ```
- Derivation (1 occurrence):
  ```
  reversed_labeled_tuple_body: reversed_labeled_tuple_body COMMA LABEL . simple_expr
    simple_expr: . LPAREN seq_expr COLONGREATER tuple_type at_mode_expr RPAREN
  ```
  Sample sentence (implementation):
  ```ocaml
  X , X , ~label: ( X :> {%ext|s|} @ x )
                  ^
  ```
- Derivation (1 occurrence):
  ```
  simple_expr: mod_longident DOT LBRACE . record_expr_content RBRACE
    record_expr_content: . simple_expr WITH separated_or_terminated_nonempty_list(SEMI,record_expr_field)
      simple_expr: . LPAREN seq_expr COLONGREATER tuple_type at_mode_expr RPAREN
  ```
  Sample sentence (implementation):
  ```ocaml
  X . { ( X :> {%ext|s|} @ x ) with x }
        ^
  ```
- Derivation (1 occurrence):
  ```
  simple_expr: HASHLBRACE . record_expr_content RBRACE
    record_expr_content: . simple_expr WITH separated_or_terminated_nonempty_list(SEMI,record_expr_field)
      simple_expr: . LPAREN seq_expr COLONGREATER tuple_type at_mode_expr RPAREN
  ```
  Sample sentence (implementation):
  ```ocaml
  #{ ( X :> {%ext|s|} @ x ) with x }
     ^
  ```
- Derivation (1 occurrence):
  ```
  simple_expr: LBRACE . record_expr_content RBRACE
    record_expr_content: . simple_expr WITH separated_or_terminated_nonempty_list(SEMI,record_expr_field)
      simple_expr: . LPAREN seq_expr COLONGREATER tuple_type at_mode_expr RPAREN
  ```
  Sample sentence (implementation):
  ```ocaml
  { ( X :> {%ext|s|} @ x ) with x }
    ^
  ```
- Derivation (1 occurrence):
  ```
  labeled_simple_expr: OPTLABEL . simple_expr
    simple_expr: . LPAREN seq_expr COLONGREATER tuple_type at_mode_expr RPAREN
  ```
  Sample sentence (implementation):
  ```ocaml
  X ?label: ( X :> {%ext|s|} @ x )
            ^
  ```
- Derivation (1 occurrence):
  ```
  labeled_simple_expr: LABEL . simple_expr
    simple_expr: . LPAREN seq_expr COLONGREATER tuple_type at_mode_expr RPAREN
  ```
  Sample sentence (implementation):
  ```ocaml
  X ~label: ( X :> {%ext|s|} @ x )
            ^
  ```
- Derivation (1 occurrence):
  ```
  fun_expr: simple_expr . reversed_nonempty_llist(labeled_simple_expr)
    reversed_nonempty_llist(labeled_simple_expr): . labeled_simple_expr
      labeled_simple_expr: . simple_expr
        simple_expr: . LPAREN seq_expr COLONGREATER tuple_type at_mode_expr RPAREN
  ```
  Sample sentence (implementation):
  ```ocaml
  #1.0 ( X :> {%ext|s|} @ x )
       ^
  ```
- Derivation (1 occurrence):
  ```
  class_expr: class_simple_expr . reversed_nonempty_llist(labeled_simple_expr)
    reversed_nonempty_llist(labeled_simple_expr): . labeled_simple_expr
      labeled_simple_expr: . simple_expr
        simple_expr: . LPAREN seq_expr COLONGREATER tuple_type at_mode_expr RPAREN
  ```
  Sample sentence (implementation):
  ```ocaml
  class x = x ( X :> {%ext|s|} @ x )
              ^
  ```
- Derivation (1 occurrence):
  ```
  fun_expr: name_tag . simple_expr
    simple_expr: . LPAREN seq_expr COLONGREATER tuple_type at_mode_expr RPAREN
  ```
  Sample sentence (implementation):
  ```ocaml
  ` x ( X :> {%ext|s|} @ x )
      ^
  ```
- Derivation (1 occurrence):
  ```
  fun_expr: STACK constr_longident . simple_expr
    simple_expr: . LPAREN seq_expr COLONGREATER tuple_type at_mode_expr RPAREN
  ```
  Sample sentence (implementation):
  ```ocaml
  stack_ X ( X :> {%ext|s|} @ x )
           ^
  ```
- ...


### Item `strict_binding_modes: fun_params . option(constraint_) EQUAL fun_body` (in 4 errors)

- Derivation (2 occurrences):
  ```
  strict_binding_modes: fun_params . option(constraint_) EQUAL fun_body
    option(constraint_): . COLONGREATER tuple_type at_mode_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  let x false :> {%ext|s|} @ x = X
              ^^
  ```
- Derivation (2 occurrences):
  ```
  strict_binding_modes: fun_params . option(constraint_) EQUAL fun_body
    option(constraint_): . COLON core_type COLONGREATER tuple_type at_mode_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  let x false : {%ext|s|} :> {%ext|s|} @ x = X
              ^
  ```

## Error: Syntax error: extension not expected.

### Item `let_bindings(no_ext): LET . PERCENT attr_id list(attribute) mutable_flag rec_flag let_binding_body list(post_item_attribute)` (in 215 errors)

- Derivation (215 occurrences):
  ```
  let_bindings(no_ext): LET . PERCENT attr_id list(attribute) mutable_flag rec_flag let_binding_body list(post_item_attribute)
  ```
  Sample sentence (implementation):
  ```ocaml
  class x = let % and x in x
                ^
  ```

## Error: Syntax error: 'done' expected

### Item `seq_expr: . fun_seq_expr` (in 100 errors)

- Derivation (1 occurrence):
  ```
  fun_expr: FOR ext list(attribute) pattern EQUAL seq_expr direction_flag seq_expr DO . seq_expr DONE
    seq_expr: . fun_seq_expr
      fun_seq_expr: . fun_expr
        fun_expr: . reversed_labeled_tuple_body
          reversed_labeled_tuple_body: . fun_expr COMMA fun_expr
            fun_expr: . ONCE seq_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  for false = X downto X do once_ X ; , X done
                            ^^^^^
  ```
- Derivation (1 occurrence):
  ```
  fun_expr: WHILE ext list(attribute) seq_expr DO . seq_expr DONE
    seq_expr: . fun_seq_expr
      fun_seq_expr: . fun_expr
        fun_expr: . reversed_labeled_tuple_body
          reversed_labeled_tuple_body: . fun_expr COMMA fun_expr
            fun_expr: . ONCE seq_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  while X do once_ X ; , X done
             ^^^^^
  ```
- Derivation (1 occurrence):
  ```
  fun_expr: FOR ext list(attribute) pattern EQUAL seq_expr direction_flag seq_expr DO . seq_expr DONE
    seq_expr: . fun_seq_expr
      fun_seq_expr: . fun_expr SEMI
        fun_expr: . ONCE seq_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  for false = X downto X do once_ X ; ; done
                            ^^^^^
  ```
- Derivation (1 occurrence):
  ```
  fun_expr: WHILE ext list(attribute) seq_expr DO . seq_expr DONE
    seq_expr: . fun_seq_expr
      fun_seq_expr: . fun_expr SEMI
        fun_expr: . ONCE seq_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  while X do once_ X ; ; done
             ^^^^^
  ```
- Derivation (1 occurrence):
  ```
  fun_expr: FOR ext list(attribute) pattern EQUAL seq_expr direction_flag seq_expr DO . seq_expr DONE
    seq_expr: . fun_seq_expr
      fun_seq_expr: . fun_expr
        fun_expr: . fun_expr COLONCOLON fun_expr
          fun_expr: . ONCE seq_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  for false = X downto X do once_ X ; :: X done
                            ^^^^^
  ```
- Derivation (1 occurrence):
  ```
  fun_expr: WHILE ext list(attribute) seq_expr DO . seq_expr DONE
    seq_expr: . fun_seq_expr
      fun_seq_expr: . fun_expr
        fun_expr: . fun_expr COLONCOLON fun_expr
          fun_expr: . ONCE seq_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  while X do once_ X ; :: X done
             ^^^^^
  ```
- Derivation (1 occurrence):
  ```
  fun_expr: FOR ext list(attribute) pattern EQUAL seq_expr direction_flag seq_expr DO . seq_expr DONE
    seq_expr: . fun_seq_expr
      fun_seq_expr: . fun_expr
        fun_expr: . fun_expr COLONEQUAL fun_expr
          fun_expr: . ONCE seq_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  for false = X downto X do once_ X ; := X done
                            ^^^^^
  ```
- Derivation (1 occurrence):
  ```
  fun_expr: WHILE ext list(attribute) seq_expr DO . seq_expr DONE
    seq_expr: . fun_seq_expr
      fun_seq_expr: . fun_expr
        fun_expr: . fun_expr COLONEQUAL fun_expr
          fun_expr: . ONCE seq_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  while X do once_ X ; := X done
             ^^^^^
  ```
- Derivation (1 occurrence):
  ```
  fun_expr: FOR ext list(attribute) pattern EQUAL seq_expr direction_flag seq_expr DO . seq_expr DONE
    seq_expr: . fun_seq_expr
      fun_seq_expr: . fun_expr
        fun_expr: . fun_expr AMPERAMPER fun_expr
          fun_expr: . ONCE seq_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  for false = X downto X do once_ X ; && X done
                            ^^^^^
  ```
- Derivation (1 occurrence):
  ```
  fun_expr: WHILE ext list(attribute) seq_expr DO . seq_expr DONE
    seq_expr: . fun_seq_expr
      fun_seq_expr: . fun_expr
        fun_expr: . fun_expr AMPERAMPER fun_expr
          fun_expr: . ONCE seq_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  while X do once_ X ; && X done
             ^^^^^
  ```
- Derivation (1 occurrence):
  ```
  fun_expr: FOR ext list(attribute) pattern EQUAL seq_expr direction_flag seq_expr DO . seq_expr DONE
    seq_expr: . fun_seq_expr
      fun_seq_expr: . fun_expr
        fun_expr: . fun_expr BARBAR fun_expr
          fun_expr: . ONCE seq_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  for false = X downto X do once_ X ; || X done
                            ^^^^^
  ```
- Derivation (1 occurrence):
  ```
  fun_expr: WHILE ext list(attribute) seq_expr DO . seq_expr DONE
    seq_expr: . fun_seq_expr
      fun_seq_expr: . fun_expr
        fun_expr: . fun_expr BARBAR fun_expr
          fun_expr: . ONCE seq_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  while X do once_ X ; || X done
             ^^^^^
  ```
- Derivation (1 occurrence):
  ```
  fun_expr: FOR ext list(attribute) pattern EQUAL seq_expr direction_flag seq_expr DO . seq_expr DONE
    seq_expr: . fun_seq_expr
      fun_seq_expr: . fun_expr
        fun_expr: . fun_expr EQUAL fun_expr
          fun_expr: . ONCE seq_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  for false = X downto X do once_ X ; = X done
                            ^^^^^
  ```
- Derivation (1 occurrence):
  ```
  fun_expr: WHILE ext list(attribute) seq_expr DO . seq_expr DONE
    seq_expr: . fun_seq_expr
      fun_seq_expr: . fun_expr
        fun_expr: . fun_expr EQUAL fun_expr
          fun_expr: . ONCE seq_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  while X do once_ X ; = X done
             ^^^^^
  ```
- Derivation (1 occurrence):
  ```
  fun_expr: FOR ext list(attribute) pattern EQUAL seq_expr direction_flag seq_expr DO . seq_expr DONE
    seq_expr: . fun_seq_expr
      fun_seq_expr: . fun_expr
        fun_expr: . fun_expr PERCENT fun_expr
          fun_expr: . ONCE seq_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  for false = X downto X do once_ function false -> . % X done
                            ^^^^^
  ```
- Derivation (1 occurrence):
  ```
  fun_expr: WHILE ext list(attribute) seq_expr DO . seq_expr DONE
    seq_expr: . fun_seq_expr
      fun_seq_expr: . fun_expr
        fun_expr: . fun_expr PERCENT fun_expr
          fun_expr: . ONCE seq_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  while X do once_ function false -> . % X done
             ^^^^^
  ```
- Derivation (1 occurrence):
  ```
  fun_expr: FOR ext list(attribute) pattern EQUAL seq_expr direction_flag seq_expr DO . seq_expr DONE
    seq_expr: . fun_seq_expr
      fun_seq_expr: . fun_expr
        fun_expr: . fun_expr MINUS fun_expr
          fun_expr: . ONCE seq_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  for false = X downto X do once_ function false -> . - X done
                            ^^^^^
  ```
- Derivation (1 occurrence):
  ```
  fun_expr: WHILE ext list(attribute) seq_expr DO . seq_expr DONE
    seq_expr: . fun_seq_expr
      fun_seq_expr: . fun_expr
        fun_expr: . fun_expr MINUS fun_expr
          fun_expr: . ONCE seq_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  while X do once_ function false -> . - X done
             ^^^^^
  ```
- Derivation (1 occurrence):
  ```
  fun_expr: FOR ext list(attribute) pattern EQUAL seq_expr direction_flag seq_expr DO . seq_expr DONE
    seq_expr: . fun_seq_expr
      fun_seq_expr: . fun_expr
        fun_expr: . fun_expr INFIXOP4 fun_expr
          fun_expr: . ONCE seq_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  for false = X downto X do once_ X ; ** X done
                            ^^^^^
  ```
- Derivation (1 occurrence):
  ```
  fun_expr: WHILE ext list(attribute) seq_expr DO . seq_expr DONE
    seq_expr: . fun_seq_expr
      fun_seq_expr: . fun_expr
        fun_expr: . fun_expr INFIXOP4 fun_expr
          fun_expr: . ONCE seq_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  while X do once_ X ; ** X done
             ^^^^^
  ```
- Derivation (1 occurrence):
  ```
  fun_expr: FOR ext list(attribute) pattern EQUAL seq_expr direction_flag seq_expr DO . seq_expr DONE
    seq_expr: . fun_seq_expr
      fun_seq_expr: . fun_expr
        fun_expr: . fun_expr INFIXOP3 fun_expr
          fun_expr: . ONCE seq_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  for false = X downto X do once_ X ; land X done
                            ^^^^^
  ```
- ...


# Internal errors

When OCamlformat fails with an internal error, the exact location of the problem cannot be determined.
The location is guessed by examining the syntactic constructions that appear most frequently in the failing code.

## BUG: formatting did not stabilize after 10 iterations. (11113 errors)

### Item `reversed_preceded_or_separated_nonempty_llist(BAR,match_case): . match_case` (in 7914 errors)

- Derivation (1738 occurrences):
  ```
  fun_expr: fun_expr MOD STACK FUNCTION ext list(attribute) . reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
    reversed_preceded_or_separated_nonempty_llist(BAR,match_case): . match_case
      match_case: . pattern MINUSGREATER DOT
        pattern: . pattern_gen
          pattern_gen: . simple_pattern
            simple_pattern: . simple_pattern_not_ident
              simple_pattern_not_ident: . constr_longident
                constr_longident: . constr_extra_nonprefix_ident
                  constr_extra_nonprefix_ident: . FALSE
  ```
  Sample sentence (implementation):
  ```ocaml
  X mod stack_ function false -> . ;
  ```
- Derivation (1724 occurrences):
  ```
  fun_expr: fun_expr OR STACK FUNCTION ext list(attribute) . reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
    reversed_preceded_or_separated_nonempty_llist(BAR,match_case): . match_case
  ```
  Sample sentence (implementation):
  ```ocaml
  X or stack_ function false -> X
  ```
- Derivation (864 occurrences):
  ```
  fun_expr: fun_expr OR FUNCTION ext list(attribute) . reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
    reversed_preceded_or_separated_nonempty_llist(BAR,match_case): . match_case
  ```
  Sample sentence (implementation):
  ```ocaml
  X or function false -> . land X
  ```
- Derivation (357 occurrences):
  ```
  fun_expr: fun_expr MOD STACK FUNCTION ext list(attribute) . reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
    reversed_preceded_or_separated_nonempty_llist(BAR,match_case): . match_case
      match_case: . pattern MINUSGREATER seq_expr
        pattern: . pattern_gen
          pattern_gen: . simple_pattern
            simple_pattern: . simple_pattern_not_ident
              simple_pattern_not_ident: . constr_longident
                constr_longident: . constr_extra_nonprefix_ident
                  constr_extra_nonprefix_ident: . FALSE
  ```
  Sample sentence (implementation):
  ```ocaml
  X mod stack_ function false -> X
  ```
- Derivation (266 occurrences):
  ```
  fun_expr: fun_expr OR FUNCTION ext list(attribute) . reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
    reversed_preceded_or_separated_nonempty_llist(BAR,match_case): . match_case
      match_case: . pattern MINUSGREATER DOT
        pattern: . pattern_gen
          pattern_gen: . simple_pattern
            simple_pattern: . simple_pattern_not_ident
              simple_pattern_not_ident: . constr_longident
                constr_longident: . constr_extra_nonprefix_ident
                  constr_extra_nonprefix_ident: . FALSE
  ```
  Sample sentence (implementation):
  ```ocaml
  X or function false -> . - X
  ```
- Derivation (160 occurrences):
  ```
  fun_expr: fun_expr MOD FUNCTION ext list(attribute) . reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
    reversed_preceded_or_separated_nonempty_llist(BAR,match_case): . match_case
  ```
  Sample sentence (implementation):
  ```ocaml
  X mod function false -> . ** X
  ```
- Derivation (53 occurrences):
  ```
  fun_expr: fun_expr MOD FUNCTION ext list(attribute) . reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
    reversed_preceded_or_separated_nonempty_llist(BAR,match_case): . match_case
      match_case: . pattern MINUSGREATER DOT
        pattern: . pattern_gen
          pattern_gen: . simple_pattern
            simple_pattern: . simple_pattern_not_ident
              simple_pattern_not_ident: . constr_longident
                constr_longident: . constr_extra_nonprefix_ident
                  constr_extra_nonprefix_ident: . FALSE
  ```
  Sample sentence (implementation):
  ```ocaml
  X or X mod function false -> . ;
  ```
- Derivation (42 occurrences):
  ```
  seq_expr: FUNCTION ext list(attribute) . reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
    reversed_preceded_or_separated_nonempty_llist(BAR,match_case): . reversed_preceded_or_separated_nonempty_llist(BAR,match_case) BAR match_case
      reversed_preceded_or_separated_nonempty_llist(BAR,match_case): . match_case
        match_case: . pattern MINUSGREATER seq_expr
          pattern: . pattern_gen
            pattern_gen: . simple_pattern
              simple_pattern: . simple_pattern_not_ident
                simple_pattern_not_ident: . constr_longident
                  constr_longident: . constr_extra_nonprefix_ident
                    constr_extra_nonprefix_ident: . FALSE
  ```
  Sample sentence (implementation):
  ```ocaml
  function false -> X | false | false -> .
  ```
- Derivation (39 occurrences):
  ```
  fun_expr: IF ext list(attribute) seq_expr THEN FUNCTION ext list(attribute) . reversed_preceded_or_separated_nonempty_llist(BAR,match_case) ELSE fun_expr
    reversed_preceded_or_separated_nonempty_llist(BAR,match_case): . match_case
      match_case: . pattern MINUSGREATER seq_expr
        pattern: . pattern_gen
          pattern_gen: . simple_pattern
            simple_pattern: . simple_pattern_not_ident
              simple_pattern_not_ident: . constr_longident
                constr_longident: . constr_extra_nonprefix_ident
                  constr_extra_nonprefix_ident: . FALSE
  ```
  Sample sentence (implementation):
  ```ocaml
  X mod if X then function false -> X else X
  ```
- Derivation (33 occurrences):
  ```
  fun_expr: IF ext list(attribute) seq_expr THEN STACK FUNCTION ext list(attribute) . reversed_preceded_or_separated_nonempty_llist(BAR,match_case) ELSE STACK FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
    reversed_preceded_or_separated_nonempty_llist(BAR,match_case): . match_case
      match_case: . pattern MINUSGREATER seq_expr
        pattern: . pattern_gen
          pattern_gen: . simple_pattern
            simple_pattern: . simple_pattern_not_ident
              simple_pattern_not_ident: . constr_longident
                constr_longident: . constr_extra_nonprefix_ident
                  constr_extra_nonprefix_ident: . FALSE
  ```
  Sample sentence (implementation):
  ```ocaml
  X mod if X then stack_ function false -> X else stack_ function false -> X
  ```
- Derivation (33 occurrences):
  ```
  fun_expr: IF ext list(attribute) seq_expr THEN STACK FUNCTION ext list(attribute) . reversed_preceded_or_separated_nonempty_llist(BAR,match_case) ELSE FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
    reversed_preceded_or_separated_nonempty_llist(BAR,match_case): . match_case
      match_case: . pattern MINUSGREATER seq_expr
        pattern: . pattern_gen
          pattern_gen: . simple_pattern
            simple_pattern: . simple_pattern_not_ident
              simple_pattern_not_ident: . constr_longident
                constr_longident: . constr_extra_nonprefix_ident
                  constr_extra_nonprefix_ident: . FALSE
  ```
  Sample sentence (implementation):
  ```ocaml
  X mod if X then stack_ function false -> X else function false -> X
  ```
- Derivation (33 occurrences):
  ```
  fun_expr: IF ext list(attribute) seq_expr THEN FUNCTION ext list(attribute) . reversed_preceded_or_separated_nonempty_llist(BAR,match_case) ELSE STACK FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
    reversed_preceded_or_separated_nonempty_llist(BAR,match_case): . match_case
      match_case: . pattern MINUSGREATER seq_expr
        pattern: . pattern_gen
          pattern_gen: . simple_pattern
            simple_pattern: . simple_pattern_not_ident
              simple_pattern_not_ident: . constr_longident
                constr_longident: . constr_extra_nonprefix_ident
                  constr_extra_nonprefix_ident: . FALSE
  ```
  Sample sentence (implementation):
  ```ocaml
  X mod if X then function false -> X else stack_ function false -> X
  ```
- Derivation (33 occurrences):
  ```
  fun_expr: IF ext list(attribute) seq_expr THEN FUNCTION ext list(attribute) . reversed_preceded_or_separated_nonempty_llist(BAR,match_case) ELSE FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
    reversed_preceded_or_separated_nonempty_llist(BAR,match_case): . match_case
      match_case: . pattern MINUSGREATER seq_expr
        pattern: . pattern_gen
          pattern_gen: . simple_pattern
            simple_pattern: . simple_pattern_not_ident
              simple_pattern_not_ident: . constr_longident
                constr_longident: . constr_extra_nonprefix_ident
                  constr_extra_nonprefix_ident: . FALSE
  ```
  Sample sentence (implementation):
  ```ocaml
  X mod if X then function false -> X else function false -> X
  ```
- Derivation (30 occurrences):
  ```
  fun_expr: IF ext list(attribute) seq_expr THEN STACK FUNCTION ext list(attribute) . reversed_preceded_or_separated_nonempty_llist(BAR,match_case) ELSE fun_expr
    reversed_preceded_or_separated_nonempty_llist(BAR,match_case): . match_case
      match_case: . pattern MINUSGREATER seq_expr
        pattern: . pattern_gen
          pattern_gen: . simple_pattern
            simple_pattern: . simple_pattern_not_ident
              simple_pattern_not_ident: . constr_longident
                constr_longident: . constr_extra_nonprefix_ident
                  constr_extra_nonprefix_ident: . FALSE
  ```
  Sample sentence (implementation):
  ```ocaml
  X mod if X then stack_ function false -> X else X
  ```
- Derivation (23 occurrences):
  ```
  fun_expr: additive STACK FUNCTION ext list(attribute) . reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
    reversed_preceded_or_separated_nonempty_llist(BAR,match_case): . match_case
      match_case: . pattern MINUSGREATER DOT
        pattern: . pattern_gen
          pattern_gen: . simple_pattern
            simple_pattern: . simple_pattern_not_ident
              simple_pattern_not_ident: . constr_longident
                constr_longident: . constr_extra_nonprefix_ident
                  constr_extra_nonprefix_ident: . FALSE
  ```
  Sample sentence (implementation):
  ```ocaml
  X or + stack_ function false -> . ;
  ```
- Derivation (23 occurrences):
  ```
  fun_expr: additive FUNCTION ext list(attribute) . reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
    reversed_preceded_or_separated_nonempty_llist(BAR,match_case): . match_case
      match_case: . pattern MINUSGREATER DOT
        pattern: . pattern_gen
          pattern_gen: . simple_pattern
            simple_pattern: . simple_pattern_not_ident
              simple_pattern_not_ident: . constr_longident
                constr_longident: . constr_extra_nonprefix_ident
                  constr_extra_nonprefix_ident: . FALSE
  ```
  Sample sentence (implementation):
  ```ocaml
  X or + function false -> . ;
  ```
- Derivation (23 occurrences):
  ```
  fun_expr: subtractive STACK FUNCTION ext list(attribute) . reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
    reversed_preceded_or_separated_nonempty_llist(BAR,match_case): . match_case
      match_case: . pattern MINUSGREATER DOT
        pattern: . pattern_gen
          pattern_gen: . simple_pattern
            simple_pattern: . simple_pattern_not_ident
              simple_pattern_not_ident: . constr_longident
                constr_longident: . constr_extra_nonprefix_ident
                  constr_extra_nonprefix_ident: . FALSE
  ```
  Sample sentence (implementation):
  ```ocaml
  X or - stack_ function false -> . ;
  ```
- Derivation (23 occurrences):
  ```
  fun_expr: subtractive FUNCTION ext list(attribute) . reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
    reversed_preceded_or_separated_nonempty_llist(BAR,match_case): . match_case
      match_case: . pattern MINUSGREATER DOT
        pattern: . pattern_gen
          pattern_gen: . simple_pattern
            simple_pattern: . simple_pattern_not_ident
              simple_pattern_not_ident: . constr_longident
                constr_longident: . constr_extra_nonprefix_ident
                  constr_extra_nonprefix_ident: . FALSE
  ```
  Sample sentence (implementation):
  ```ocaml
  X or - function false -> . ;
  ```
- Derivation (22 occurrences):
  ```
  reversed_labeled_tuple_body: TILDE LPAREN LIDENT type_constraint RPAREN COMMA STACK FUNCTION ext list(attribute) . reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
    reversed_preceded_or_separated_nonempty_llist(BAR,match_case): . match_case
      match_case: . pattern MINUSGREATER DOT
        pattern: . pattern_gen
          pattern_gen: . simple_pattern
            simple_pattern: . simple_pattern_not_ident
              simple_pattern_not_ident: . constr_longident
                constr_longident: . constr_extra_nonprefix_ident
                  constr_extra_nonprefix_ident: . FALSE
  ```
  Sample sentence (implementation):
  ```ocaml
  X or ~ ( x : {%ext|s|} ) , stack_ function false -> . ;
  ```
- Derivation (22 occurrences):
  ```
  reversed_labeled_tuple_body: TILDE LPAREN LIDENT type_constraint RPAREN COMMA FUNCTION ext list(attribute) . reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
    reversed_preceded_or_separated_nonempty_llist(BAR,match_case): . match_case
      match_case: . pattern MINUSGREATER DOT
        pattern: . pattern_gen
          pattern_gen: . simple_pattern
            simple_pattern: . simple_pattern_not_ident
              simple_pattern_not_ident: . constr_longident
                constr_longident: . constr_extra_nonprefix_ident
                  constr_extra_nonprefix_ident: . FALSE
  ```
  Sample sentence (implementation):
  ```ocaml
  X or ~ ( x : {%ext|s|} ) , function false -> . ;
  ```
- Derivation (22 occurrences):
  ```
  reversed_labeled_tuple_body: TILDE LIDENT COMMA STACK FUNCTION ext list(attribute) . reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
    reversed_preceded_or_separated_nonempty_llist(BAR,match_case): . match_case
      match_case: . pattern MINUSGREATER DOT
        pattern: . pattern_gen
          pattern_gen: . simple_pattern
            simple_pattern: . simple_pattern_not_ident
              simple_pattern_not_ident: . constr_longident
                constr_longident: . constr_extra_nonprefix_ident
                  constr_extra_nonprefix_ident: . FALSE
  ```
  Sample sentence (implementation):
  ```ocaml
  X or ~ x , stack_ function false -> . ;
  ```
- ...


### Item `alias_type: . function_type` (in 2030 errors)

- Derivation (255 occurrences):
  ```
  atomic_type: LPAREN . reversed_separated_nontrivial_llist(COMMA,one_type_parameter_of_several) RPAREN type_longident
    reversed_separated_nontrivial_llist(COMMA,one_type_parameter_of_several): . core_type COMMA core_type
      core_type: . alias_type
        alias_type: . function_type
          function_type: . strict_function_or_labeled_tuple_type
  ```
  Sample sentence (implementation):
  ```ocaml
  val x : ?label: ( {%ext|s|} -> {%ext|s|} , _ ) x -> {%ext|s|}
  ```
- Derivation (85 occurrences):
  ```
  optional_poly_type_and_modes: COLON . possibly_poly(core_type)
    possibly_poly(core_type): . core_type
      core_type: . alias_type
        alias_type: . alias_type AS QUOTE ident
          alias_type: . function_type
            function_type: . strict_function_or_labeled_tuple_type
  ```
  Sample sentence (implementation):
  ```ocaml
  fun ~ ( x : {%ext|s|} -> {%ext|s|} as ' x ) -> X
  ```
- Derivation (85 occurrences):
  ```
  method_: BANG list(attribute) private_flag LIDENT COLON . possibly_poly(core_type) EQUAL seq_expr
    possibly_poly(core_type): . core_type
      core_type: . alias_type
        alias_type: . alias_type AS QUOTE ident
          alias_type: . function_type
            function_type: . strict_function_or_labeled_tuple_type
  ```
  Sample sentence (implementation):
  ```ocaml
  object method ! x : {%ext|s|} -> {%ext|s|} as ' x = X end
  ```
- Derivation (85 occurrences):
  ```
  method_: list(attribute) private_flag LIDENT COLON . possibly_poly(core_type) EQUAL seq_expr
    possibly_poly(core_type): . core_type
      core_type: . alias_type
        alias_type: . alias_type AS QUOTE ident
          alias_type: . function_type
            function_type: . strict_function_or_labeled_tuple_type
  ```
  Sample sentence (implementation):
  ```ocaml
  object method x : {%ext|s|} -> {%ext|s|} as ' x = X end
  ```
- Derivation (85 occurrences):
  ```
  option(constraint_): COLONGREATER . core_type
    core_type: . alias_type
      alias_type: . alias_type AS QUOTE ident
        alias_type: . function_type
          function_type: . strict_function_or_labeled_tuple_type
  ```
  Sample sentence (implementation):
  ```ocaml
  let x false :> {%ext|s|} -> {%ext|s|} as ' x = X
  ```
- Derivation (85 occurrences):
  ```
  option(constraint_): COLON core_type COLONGREATER . core_type
    core_type: . alias_type
      alias_type: . alias_type AS QUOTE ident
        alias_type: . function_type
          function_type: . strict_function_or_labeled_tuple_type
  ```
  Sample sentence (implementation):
  ```ocaml
  let x false : {%ext|s|} :> {%ext|s|} -> {%ext|s|} as ' x = X
  ```
- Derivation (85 occurrences):
  ```
  let_binding_body_no_punning: simple_pattern_not_ident COLON . core_type EQUAL seq_expr
    core_type: . alias_type
      alias_type: . alias_type AS QUOTE ident
        alias_type: . function_type
          function_type: . strict_function_or_labeled_tuple_type
  ```
  Sample sentence (implementation):
  ```ocaml
  let false : {%ext|s|} -> {%ext|s|} as ' x = X
  ```
- Derivation (85 occurrences):
  ```
  let_binding_body_no_punning: nonempty_list(mode_legacy) val_ident COLONGREATER . core_type EQUAL seq_expr
    core_type: . alias_type
      alias_type: . alias_type AS QUOTE ident
        alias_type: . function_type
          function_type: . strict_function_or_labeled_tuple_type
  ```
  Sample sentence (implementation):
  ```ocaml
  let local_ x :> {%ext|s|} -> {%ext|s|} as ' x = X
  ```
- Derivation (85 occurrences):
  ```
  let_binding_body_no_punning: nonempty_list(mode_legacy) val_ident COLON core_type COLONGREATER . core_type EQUAL seq_expr
    core_type: . alias_type
      alias_type: . alias_type AS QUOTE ident
        alias_type: . function_type
          function_type: . strict_function_or_labeled_tuple_type
  ```
  Sample sentence (implementation):
  ```ocaml
  let local_ x : {%ext|s|} :> {%ext|s|} -> {%ext|s|} as ' x = X
  ```
- Derivation (85 occurrences):
  ```
  let_binding_body_no_punning: val_ident COLONGREATER . core_type EQUAL seq_expr
    core_type: . alias_type
      alias_type: . alias_type AS QUOTE ident
        alias_type: . function_type
          function_type: . strict_function_or_labeled_tuple_type
  ```
  Sample sentence (implementation):
  ```ocaml
  let x :> {%ext|s|} -> {%ext|s|} as ' x = X
  ```
- Derivation (85 occurrences):
  ```
  let_binding_body_no_punning: val_ident COLON core_type COLONGREATER . core_type EQUAL seq_expr
    core_type: . alias_type
      alias_type: . alias_type AS QUOTE ident
        alias_type: . function_type
          function_type: . strict_function_or_labeled_tuple_type
  ```
  Sample sentence (implementation):
  ```ocaml
  let x : {%ext|s|} :> {%ext|s|} -> {%ext|s|} as ' x = X
  ```
- Derivation (84 occurrences):
  ```
  type_constraint: COLONGREATER . core_type
    core_type: . alias_type
      alias_type: . alias_type AS QUOTE ident
        alias_type: . function_type
          function_type: . strict_function_or_labeled_tuple_type
  ```
  Sample sentence (implementation):
  ```ocaml
  { x :> {%ext|s|} -> {%ext|s|} as ' x }
  ```
- Derivation (84 occurrences):
  ```
  type_constraint: COLON core_type COLONGREATER . core_type
    core_type: . alias_type
      alias_type: . alias_type AS QUOTE ident
        alias_type: . function_type
          function_type: . strict_function_or_labeled_tuple_type
  ```
  Sample sentence (implementation):
  ```ocaml
  { x : {%ext|s|} :> {%ext|s|} -> {%ext|s|} as ' x }
  ```
- Derivation (84 occurrences):
  ```
  type_constraint: COLON . core_type
    core_type: . alias_type
      alias_type: . alias_type AS QUOTE ident
        alias_type: . function_type
          function_type: . strict_function_or_labeled_tuple_type
  ```
  Sample sentence (implementation):
  ```ocaml
  { x : {%ext|s|} -> {%ext|s|} as ' x }
  ```
- Derivation (84 occurrences):
  ```
  primitive_declaration: EXTERNAL ext list(attribute) val_ident COLON . possibly_poly(core_type) optional_atat_modalities_expr EQUAL nonempty_list(raw_string) list(post_item_attribute)
    possibly_poly(core_type): . core_type
      core_type: . alias_type
        alias_type: . alias_type AS QUOTE ident
          alias_type: . function_type
            function_type: . strict_function_or_labeled_tuple_type
  ```
  Sample sentence (implementation):
  ```ocaml
  external x : {%ext|s|} -> {%ext|s|} as ' x = "s"
  ```
- Derivation (84 occurrences):
  ```
  option(preceded(COLON,core_type)): COLON . core_type
    core_type: . alias_type
      alias_type: . alias_type AS QUOTE ident
        alias_type: . function_type
          function_type: . strict_function_or_labeled_tuple_type
  ```
  Sample sentence (implementation):
  ```ocaml
  function { x : {%ext|s|} -> {%ext|s|} as ' x } -> .
  ```
- Derivation (84 occurrences):
  ```
  option(constraint_): COLON . core_type
    core_type: . alias_type
      alias_type: . alias_type AS QUOTE ident
        alias_type: . function_type
          function_type: . strict_function_or_labeled_tuple_type
  ```
  Sample sentence (implementation):
  ```ocaml
  let x false : {%ext|s|} -> {%ext|s|} as ' x = X
  ```
- Derivation (84 occurrences):
  ```
  let_binding_body_no_punning: nonempty_list(mode_legacy) val_ident COLON . core_type EQUAL seq_expr
    core_type: . alias_type
      alias_type: . alias_type AS QUOTE ident
        alias_type: . function_type
          function_type: . strict_function_or_labeled_tuple_type
  ```
  Sample sentence (implementation):
  ```ocaml
  let local_ x : {%ext|s|} -> {%ext|s|} as ' x = X
  ```
- Derivation (84 occurrences):
  ```
  let_binding_body_no_punning: val_ident COLON . core_type EQUAL seq_expr
    core_type: . alias_type
      alias_type: . alias_type AS QUOTE ident
        alias_type: . function_type
          function_type: . strict_function_or_labeled_tuple_type
  ```
  Sample sentence (implementation):
  ```ocaml
  let x : {%ext|s|} -> {%ext|s|} as ' x = X
  ```
- Derivation (30 occurrences):
  ```
  type_constraint: COLON . core_type
    core_type: . alias_type
      alias_type: . function_type
        function_type: . tuple_type
          tuple_type: . atomic_type
            atomic_type: . delimited_type
              delimited_type: . extension_type
                extension_type: . extension
                  extension: . QUOTED_STRING_EXPR
  ```
  Sample sentence (implementation):
  ```ocaml
  X mod ~ ( x : {%ext|s|} ) , X
  ```
- Derivation (15 occurrences):
  ```
  value_description: VAL ext list(attribute) val_ident COLON . possibly_poly(core_type) optional_atat_modalities_expr list(post_item_attribute)
    possibly_poly(core_type): . core_type
      core_type: . alias_type
        alias_type: . function_type
          function_type: . strict_function_or_labeled_tuple_type
            strict_function_or_labeled_tuple_type: . optlabel nonempty_list(mode_legacy) tuple_type MINUSGREATER tuple_type
              optlabel: . OPTLABEL
  ```
  Sample sentence (implementation):
  ```ocaml
  val x : ?label: local_ {%ext|s|} # x -> {%ext|s|}
  ```
- ...


### Item `fun_expr: . simple_expr` (in 517 errors)

- Derivation (122 occurrences):
  ```
  implementation: . structure EOF
    structure: . seq_expr list(post_item_attribute) list(structure_element)
      seq_expr: . fun_seq_expr
        fun_seq_expr: . fun_expr
          fun_expr: . fun_expr OR fun_expr
            fun_expr: . simple_expr
              simple_expr: . constr_longident
                constr_longident: . mod_longident
                  mod_longident: . mk_longident(mod_longident,UIDENT)
                    mk_longident(mod_longident,UIDENT): . UIDENT
  ```
  Sample sentence (implementation):
  ```ocaml
  X or begin X end
  ```
- Derivation (115 occurrences):
  ```
  fun_expr: IF ext list(attribute) . seq_expr THEN fun_expr ELSE fun_expr
    seq_expr: . fun_seq_expr
      fun_seq_expr: . fun_expr
        fun_expr: . simple_expr
          simple_expr: . constr_longident
            constr_longident: . mod_longident
              mod_longident: . mk_longident(mod_longident,UIDENT)
                mk_longident(mod_longident,UIDENT): . UIDENT
  ```
  Sample sentence (implementation):
  ```ocaml
  if X then X or let* x in X else X
  ```
- Derivation (70 occurrences):
  ```
  implementation: . structure EOF
    structure: . seq_expr list(post_item_attribute) list(structure_element)
      seq_expr: . fun_seq_expr
        fun_seq_expr: . fun_expr
          fun_expr: . fun_expr MOD fun_expr
            fun_expr: . simple_expr
              simple_expr: . constr_longident
                constr_longident: . mod_longident
                  mod_longident: . mk_longident(mod_longident,UIDENT)
                    mk_longident(mod_longident,UIDENT): . UIDENT
  ```
  Sample sentence (implementation):
  ```ocaml
  X mod begin X end
  ```
- Derivation (47 occurrences):
  ```
  implementation: . structure EOF
    structure: . seq_expr list(post_item_attribute) list(structure_element)
      seq_expr: . fun_seq_expr
        fun_seq_expr: . fun_expr
          fun_expr: . simple_expr
            simple_expr: . simple_expr DOTOP LBRACE separated_or_terminated_nonempty_list(SEMI,expr) RBRACE
              simple_expr: . constr_longident
                constr_longident: . mod_longident
                  mod_longident: . mk_longident(mod_longident,UIDENT)
                    mk_longident(mod_longident,UIDENT): . UIDENT
  ```
  Sample sentence (implementation):
  ```ocaml
  X .+ { X or ~label: #1.0 , X }
  ```
- Derivation (29 occurrences):
  ```
  implementation: . structure EOF
    structure: . seq_expr list(post_item_attribute) list(structure_element)
      seq_expr: . fun_seq_expr
        fun_seq_expr: . fun_expr
          fun_expr: . simple_expr
            simple_expr: . LPAREN seq_expr RPAREN
  ```
  Sample sentence (implementation):
  ```ocaml
  ( X or let* x in X )
  ```
- Derivation (15 occurrences):
  ```
  let_binding_body_no_punning: pattern_no_exn EQUAL . seq_expr
    seq_expr: . fun_seq_expr
      fun_seq_expr: . fun_expr
        fun_expr: . simple_expr
          simple_expr: . constr_longident
            constr_longident: . mod_longident
              mod_longident: . mk_longident(mod_longident,UIDENT)
                mk_longident(mod_longident,UIDENT): . UIDENT
  ```
  Sample sentence (implementation):
  ```ocaml
  let false | X = X
  ```
- Derivation (14 occurrences):
  ```
  implementation: . structure EOF
    structure: . seq_expr list(post_item_attribute) list(structure_element)
      seq_expr: . fun_seq_expr
        fun_seq_expr: . fun_expr SEMI
          fun_expr: . fun_expr OR fun_expr
            fun_expr: . simple_expr
              simple_expr: . constr_longident
                constr_longident: . mod_longident
                  mod_longident: . mk_longident(mod_longident,UIDENT)
                    mk_longident(mod_longident,UIDENT): . UIDENT
  ```
  Sample sentence (implementation):
  ```ocaml
  X or ~label: #1.0 , ~label: #1.0 ;
  ```
- Derivation (9 occurrences):
  ```
  implementation: . structure EOF
    structure: . seq_expr list(post_item_attribute) list(structure_element)
      seq_expr: . fun_seq_expr
        fun_seq_expr: . fun_expr
          fun_expr: . simple_expr
            simple_expr: . LBRACKETCOLON fun_expr reversed_nonempty_llist(comprehension_clause) COLONRBRACKET
  ```
  Sample sentence (implementation):
  ```ocaml
  [: X for false | false in X :]
  ```
- Derivation (9 occurrences):
  ```
  implementation: . structure EOF
    structure: . seq_expr list(post_item_attribute) list(structure_element)
      seq_expr: . fun_seq_expr
        fun_seq_expr: . fun_expr SEMI
          fun_expr: . fun_expr MOD fun_expr
            fun_expr: . simple_expr
              simple_expr: . constr_longident
                constr_longident: . mod_longident
                  mod_longident: . mk_longident(mod_longident,UIDENT)
                    mk_longident(mod_longident,UIDENT): . UIDENT
  ```
  Sample sentence (implementation):
  ```ocaml
  X mod ~label: #1.0 , ~label: #1.0 ;
  ```
- Derivation (7 occurrences):
  ```
  fun_expr: FOR ext list(attribute) pattern EQUAL . seq_expr direction_flag seq_expr DO seq_expr DONE
    seq_expr: . fun_seq_expr
      fun_seq_expr: . fun_expr
        fun_expr: . simple_expr
          simple_expr: . constr_longident
            constr_longident: . mod_longident
              mod_longident: . mk_longident(mod_longident,UIDENT)
                mk_longident(mod_longident,UIDENT): . UIDENT
  ```
  Sample sentence (implementation):
  ```ocaml
  for false | false = X downto X do X done
  ```
- Derivation (7 occurrences):
  ```
  fun_: FUN ext list(attribute) fun_params optional_atomic_constraint_ MINUSGREATER . fun_body
    fun_body: . fun_seq_expr
      fun_seq_expr: . fun_expr
        fun_expr: . simple_expr
          simple_expr: . constr_longident
            constr_longident: . mod_longident
              mod_longident: . mk_longident(mod_longident,UIDENT)
                mk_longident(mod_longident,UIDENT): . UIDENT
  ```
  Sample sentence (implementation):
  ```ocaml
  fun ( [: :] ) -> X
  ```
- Derivation (6 occurrences):
  ```
  implementation: . structure EOF
    structure: . seq_expr list(post_item_attribute) list(structure_element)
      seq_expr: . fun_seq_expr
        fun_seq_expr: . fun_expr
          fun_expr: . reversed_labeled_tuple_body
            reversed_labeled_tuple_body: . fun_expr COMMA fun_expr
              fun_expr: . fun_expr OR fun_expr
                fun_expr: . simple_expr
                  simple_expr: . constr_longident
                    constr_longident: . mod_longident
                      mod_longident: . mk_longident(mod_longident,UIDENT)
                        mk_longident(mod_longident,UIDENT): . UIDENT
  ```
  Sample sentence (implementation):
  ```ocaml
  X or let* x in X ; , X
  ```
- Derivation (6 occurrences):
  ```
  implementation: . structure EOF
    structure: . seq_expr list(post_item_attribute) list(structure_element)
      seq_expr: . fun_seq_expr
        fun_seq_expr: . fun_expr
          fun_expr: . fun_expr COLONEQUAL fun_expr
            fun_expr: . fun_expr OR fun_expr
              fun_expr: . simple_expr
                simple_expr: . constr_longident
                  constr_longident: . mod_longident
                    mod_longident: . mk_longident(mod_longident,UIDENT)
                      mk_longident(mod_longident,UIDENT): . UIDENT
  ```
  Sample sentence (implementation):
  ```ocaml
  X or let* x in X ; := X
  ```
- Derivation (2 occurrences):
  ```
  simple_expr: simple_expr DOT mod_longident DOTOP LBRACKET . separated_or_terminated_nonempty_list(SEMI,expr) RBRACKET
    separated_or_terminated_nonempty_list(SEMI,expr): . fun_expr
      fun_expr: . simple_expr
        simple_expr: . LBRACELESS GREATERRBRACE
  ```
  Sample sentence (implementation):
  ```ocaml
  false . X .+ [ {< >} ]
  ```
- Derivation (2 occurrences):
  ```
  simple_expr: simple_expr DOTOP LBRACKET . separated_or_terminated_nonempty_list(SEMI,expr) RBRACKET
    separated_or_terminated_nonempty_list(SEMI,expr): . fun_expr
      fun_expr: . simple_expr
        simple_expr: . LBRACELESS GREATERRBRACE
  ```
  Sample sentence (implementation):
  ```ocaml
  X .+ [ {< >} ]
  ```
- Derivation (2 occurrences):
  ```
  simple_expr: simple_expr DOT mod_longident DOTOP LBRACE . separated_or_terminated_nonempty_list(SEMI,expr) RBRACE
    separated_or_terminated_nonempty_list(SEMI,expr): . fun_expr
      fun_expr: . simple_expr
        simple_expr: . LBRACELESS GREATERRBRACE
  ```
  Sample sentence (implementation):
  ```ocaml
  false . X .+ { {< >} }
  ```
- Derivation (2 occurrences):
  ```
  simple_expr: simple_expr DOTOP LBRACE . separated_or_terminated_nonempty_list(SEMI,expr) RBRACE
    separated_or_terminated_nonempty_list(SEMI,expr): . fun_expr
      fun_expr: . simple_expr
        simple_expr: . LBRACELESS GREATERRBRACE
  ```
  Sample sentence (implementation):
  ```ocaml
  X .+ { {< >} }
  ```
- Derivation (2 occurrences):
  ```
  simple_expr: simple_expr DOT mod_longident DOTOP LPAREN . separated_or_terminated_nonempty_list(SEMI,expr) RPAREN
    separated_or_terminated_nonempty_list(SEMI,expr): . fun_expr
      fun_expr: . simple_expr
        simple_expr: . LBRACELESS GREATERRBRACE
  ```
  Sample sentence (implementation):
  ```ocaml
  false . X .+ ( {< >} )
  ```
- Derivation (2 occurrences):
  ```
  simple_expr: simple_expr DOTOP LPAREN . separated_or_terminated_nonempty_list(SEMI,expr) RPAREN
    separated_or_terminated_nonempty_list(SEMI,expr): . fun_expr
      fun_expr: . simple_expr
        simple_expr: . LBRACELESS GREATERRBRACE
  ```
  Sample sentence (implementation):
  ```ocaml
  X .+ ( {< >} )
  ```
- Derivation (2 occurrences):
  ```
  simple_expr: simple_expr DOT LBRACKET . seq_expr RBRACKET
    seq_expr: . fun_seq_expr
      fun_seq_expr: . fun_expr
        fun_expr: . simple_expr
          simple_expr: . LBRACELESS GREATERRBRACE
  ```
  Sample sentence (implementation):
  ```ocaml
  false . [ {< >} ]
  ```
- Derivation (2 occurrences):
  ```
  simple_expr: simple_expr DOT LBRACE . seq_expr RBRACE
    seq_expr: . fun_seq_expr
      fun_seq_expr: . fun_expr
        fun_expr: . simple_expr
          simple_expr: . LBRACELESS GREATERRBRACE
  ```
  Sample sentence (implementation):
  ```ocaml
  false . { {< >} }
  ```
- ...


### Item `fun_expr: fun_expr MOD . fun_expr` (in 227 errors)

- Derivation (16 occurrences):
  ```
  fun_expr: fun_expr MOD . fun_expr
    fun_expr: . LET OPEN BANG ext list(attribute) module_expr IN seq_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  X mod let open ! {%ext|s|} in X
  ```
- Derivation (16 occurrences):
  ```
  fun_expr: fun_expr MOD . fun_expr
    fun_expr: . LET OPEN ext list(attribute) module_expr IN seq_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  X mod let open {%ext|s|} in X
  ```
- Derivation (16 occurrences):
  ```
  fun_expr: fun_expr MOD . fun_expr
    fun_expr: . LET EXCEPTION ext list(attribute) constr_ident generalized_constructor_arguments list(attribute) IN seq_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  X mod let exception false in X
  ```
- Derivation (16 occurrences):
  ```
  fun_expr: fun_expr MOD . fun_expr
    fun_expr: . LET MODULE ext list(attribute) module_name_modal(at_mode_expr) module_binding_body IN seq_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  X mod let module X = {%ext|s|} in X
  ```
- Derivation (15 occurrences):
  ```
  fun_expr: fun_expr MOD . fun_expr
    fun_expr: . TRY ext list(attribute) seq_expr WITH reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
  ```
  Sample sentence (implementation):
  ```ocaml
  X mod try X with false -> X
  ```
- Derivation (15 occurrences):
  ```
  fun_expr: fun_expr MOD . fun_expr
    fun_expr: . MATCH ext list(attribute) seq_expr WITH reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
  ```
  Sample sentence (implementation):
  ```ocaml
  X mod match X with false -> X
  ```
- Derivation (14 occurrences):
  ```
  fun_expr: fun_expr MOD . fun_expr
    fun_expr: . simple_expr DOTOP LBRACKET separated_or_terminated_nonempty_list(SEMI,expr) RBRACKET LESSMINUS STACK FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
  ```
  Sample sentence (implementation):
  ```ocaml
  X mod X .+ [ X ] <- stack_ function false -> X
  ```
- Derivation (14 occurrences):
  ```
  fun_expr: fun_expr MOD . fun_expr
    fun_expr: . simple_expr DOTOP LBRACKET separated_or_terminated_nonempty_list(SEMI,expr) RBRACKET LESSMINUS FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
  ```
  Sample sentence (implementation):
  ```ocaml
  X mod X .+ [ X ] <- function false -> X
  ```
- Derivation (14 occurrences):
  ```
  fun_expr: fun_expr MOD . fun_expr
    fun_expr: . simple_expr DOTOP LBRACE separated_or_terminated_nonempty_list(SEMI,expr) RBRACE LESSMINUS STACK FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
  ```
  Sample sentence (implementation):
  ```ocaml
  X mod X .+ { X } <- stack_ function false -> X
  ```
- Derivation (14 occurrences):
  ```
  fun_expr: fun_expr MOD . fun_expr
    fun_expr: . simple_expr DOTOP LBRACE separated_or_terminated_nonempty_list(SEMI,expr) RBRACE LESSMINUS FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
  ```
  Sample sentence (implementation):
  ```ocaml
  X mod X .+ { X } <- function false -> X
  ```
- Derivation (14 occurrences):
  ```
  fun_expr: fun_expr MOD . fun_expr
    fun_expr: . simple_expr DOTOP LPAREN separated_or_terminated_nonempty_list(SEMI,expr) RPAREN LESSMINUS STACK FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
  ```
  Sample sentence (implementation):
  ```ocaml
  X mod X .+ ( X ) <- stack_ function false -> X
  ```
- Derivation (14 occurrences):
  ```
  fun_expr: fun_expr MOD . fun_expr
    fun_expr: . simple_expr DOTOP LPAREN separated_or_terminated_nonempty_list(SEMI,expr) RPAREN LESSMINUS FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
  ```
  Sample sentence (implementation):
  ```ocaml
  X mod X .+ ( X ) <- function false -> X
  ```
- Derivation (14 occurrences):
  ```
  fun_expr: fun_expr MOD . fun_expr
    fun_expr: . LETOP letop_bindings IN seq_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  X mod let* x in X
  ```
- Derivation (6 occurrences):
  ```
  fun_expr: fun_expr MOD . fun_expr
    fun_expr: . simple_expr DOTOP LBRACKET separated_or_terminated_nonempty_list(SEMI,expr) RBRACKET LESSMINUS fun_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  X mod X .+ [ X ] <- X
  ```
- Derivation (6 occurrences):
  ```
  fun_expr: fun_expr MOD . fun_expr
    fun_expr: . simple_expr DOTOP LBRACE separated_or_terminated_nonempty_list(SEMI,expr) RBRACE LESSMINUS fun_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  X mod X .+ { X } <- X
  ```
- Derivation (6 occurrences):
  ```
  fun_expr: fun_expr MOD . fun_expr
    fun_expr: . simple_expr DOTOP LPAREN separated_or_terminated_nonempty_list(SEMI,expr) RPAREN LESSMINUS fun_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  X mod X .+ ( X ) <- X
  ```
- Derivation (2 occurrences):
  ```
  fun_expr: fun_expr MOD . fun_expr
    fun_expr: . fun_expr INFIXOP4 fun_expr
      fun_expr: . fun_
  ```
  Sample sentence (implementation):
  ```ocaml
  X mod fun false -> X ; ** X
  ```
- Derivation (1 occurrence):
  ```
  fun_expr: fun_expr MOD . fun_expr
    fun_expr: . fun_expr INFIXOP4 fun_expr
      fun_expr: . simple_expr DOTOP LBRACKET separated_or_terminated_nonempty_list(SEMI,expr) RBRACKET LESSMINUS STACK FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
  ```
  Sample sentence (implementation):
  ```ocaml
  X mod X .+ [ X ] <- stack_ function false -> . ** X
  ```
- Derivation (1 occurrence):
  ```
  fun_expr: fun_expr MOD . fun_expr
    fun_expr: . fun_expr INFIXOP4 fun_expr
      fun_expr: . simple_expr DOTOP LBRACKET separated_or_terminated_nonempty_list(SEMI,expr) RBRACKET LESSMINUS FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
  ```
  Sample sentence (implementation):
  ```ocaml
  X mod X .+ [ X ] <- function false -> . ** X
  ```
- Derivation (1 occurrence):
  ```
  fun_expr: fun_expr MOD . fun_expr
    fun_expr: . fun_expr INFIXOP4 fun_expr
      fun_expr: . simple_expr DOTOP LBRACE separated_or_terminated_nonempty_list(SEMI,expr) RBRACE LESSMINUS STACK FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
  ```
  Sample sentence (implementation):
  ```ocaml
  X mod X .+ { X } <- stack_ function false -> . ** X
  ```
- Derivation (1 occurrence):
  ```
  fun_expr: fun_expr MOD . fun_expr
    fun_expr: . fun_expr INFIXOP4 fun_expr
      fun_expr: . simple_expr DOTOP LBRACE separated_or_terminated_nonempty_list(SEMI,expr) RBRACE LESSMINUS FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
  ```
  Sample sentence (implementation):
  ```ocaml
  X mod X .+ { X } <- function false -> . ** X
  ```
- ...


### Item `fun_expr: fun_expr OR . fun_expr` (in 122 errors)

- Derivation (6 occurrences):
  ```
  fun_expr: fun_expr OR . fun_expr
    fun_expr: . simple_expr DOTOP LBRACKET separated_or_terminated_nonempty_list(SEMI,expr) RBRACKET LESSMINUS STACK FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
  ```
  Sample sentence (implementation):
  ```ocaml
  X or X .+ [ X ] <- stack_ function false -> X
  ```
- Derivation (6 occurrences):
  ```
  fun_expr: fun_expr OR . fun_expr
    fun_expr: . simple_expr DOTOP LBRACKET separated_or_terminated_nonempty_list(SEMI,expr) RBRACKET LESSMINUS FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
  ```
  Sample sentence (implementation):
  ```ocaml
  X or X .+ [ X ] <- function false -> X
  ```
- Derivation (6 occurrences):
  ```
  fun_expr: fun_expr OR . fun_expr
    fun_expr: . simple_expr DOTOP LBRACKET separated_or_terminated_nonempty_list(SEMI,expr) RBRACKET LESSMINUS fun_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  X or X .+ [ X ] <- X
  ```
- Derivation (6 occurrences):
  ```
  fun_expr: fun_expr OR . fun_expr
    fun_expr: . simple_expr DOTOP LBRACE separated_or_terminated_nonempty_list(SEMI,expr) RBRACE LESSMINUS STACK FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
  ```
  Sample sentence (implementation):
  ```ocaml
  X or X .+ { X } <- stack_ function false -> X
  ```
- Derivation (6 occurrences):
  ```
  fun_expr: fun_expr OR . fun_expr
    fun_expr: . simple_expr DOTOP LBRACE separated_or_terminated_nonempty_list(SEMI,expr) RBRACE LESSMINUS FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
  ```
  Sample sentence (implementation):
  ```ocaml
  X or X .+ { X } <- function false -> X
  ```
- Derivation (6 occurrences):
  ```
  fun_expr: fun_expr OR . fun_expr
    fun_expr: . simple_expr DOTOP LBRACE separated_or_terminated_nonempty_list(SEMI,expr) RBRACE LESSMINUS fun_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  X or X .+ { X } <- X
  ```
- Derivation (6 occurrences):
  ```
  fun_expr: fun_expr OR . fun_expr
    fun_expr: . simple_expr DOTOP LPAREN separated_or_terminated_nonempty_list(SEMI,expr) RPAREN LESSMINUS STACK FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
  ```
  Sample sentence (implementation):
  ```ocaml
  X or X .+ ( X ) <- stack_ function false -> X
  ```
- Derivation (6 occurrences):
  ```
  fun_expr: fun_expr OR . fun_expr
    fun_expr: . simple_expr DOTOP LPAREN separated_or_terminated_nonempty_list(SEMI,expr) RPAREN LESSMINUS FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
  ```
  Sample sentence (implementation):
  ```ocaml
  X or X .+ ( X ) <- function false -> X
  ```
- Derivation (6 occurrences):
  ```
  fun_expr: fun_expr OR . fun_expr
    fun_expr: . simple_expr DOTOP LPAREN separated_or_terminated_nonempty_list(SEMI,expr) RPAREN LESSMINUS fun_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  X or X .+ ( X ) <- X
  ```
- Derivation (2 occurrences):
  ```
  fun_expr: fun_expr OR . fun_expr
    fun_expr: . fun_expr COLONCOLON fun_expr
      fun_expr: . fun_
  ```
  Sample sentence (implementation):
  ```ocaml
  X or fun false -> X ; :: X
  ```
- Derivation (2 occurrences):
  ```
  fun_expr: fun_expr OR . fun_expr
    fun_expr: . fun_expr AMPERAMPER fun_expr
      fun_expr: . fun_
  ```
  Sample sentence (implementation):
  ```ocaml
  X or fun false -> X ; && X
  ```
- Derivation (2 occurrences):
  ```
  fun_expr: fun_expr OR . fun_expr
    fun_expr: . fun_expr EQUAL fun_expr
      fun_expr: . fun_
  ```
  Sample sentence (implementation):
  ```ocaml
  X or fun false -> X ; = X
  ```
- Derivation (2 occurrences):
  ```
  fun_expr: fun_expr OR . fun_expr
    fun_expr: . fun_expr INFIXOP4 fun_expr
      fun_expr: . fun_
  ```
  Sample sentence (implementation):
  ```ocaml
  X or fun false -> X ; ** X
  ```
- Derivation (2 occurrences):
  ```
  fun_expr: fun_expr OR . fun_expr
    fun_expr: . fun_expr INFIXOP3 fun_expr
      fun_expr: . fun_
  ```
  Sample sentence (implementation):
  ```ocaml
  X or fun false -> X ; land X
  ```
- Derivation (2 occurrences):
  ```
  fun_expr: fun_expr OR . fun_expr
    fun_expr: . fun_expr AT fun_expr
      fun_expr: . fun_
  ```
  Sample sentence (implementation):
  ```ocaml
  X or fun false -> X ; @ X
  ```
- Derivation (1 occurrence):
  ```
  fun_expr: fun_expr OR . fun_expr
    fun_expr: . fun_expr COLONCOLON fun_expr
      fun_expr: . simple_expr DOTOP LBRACKET separated_or_terminated_nonempty_list(SEMI,expr) RBRACKET LESSMINUS STACK FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
  ```
  Sample sentence (implementation):
  ```ocaml
  X or X .+ [ X ] <- stack_ function false -> . :: X
  ```
- Derivation (1 occurrence):
  ```
  fun_expr: fun_expr OR . fun_expr
    fun_expr: . fun_expr AMPERAMPER fun_expr
      fun_expr: . simple_expr DOTOP LBRACKET separated_or_terminated_nonempty_list(SEMI,expr) RBRACKET LESSMINUS STACK FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
  ```
  Sample sentence (implementation):
  ```ocaml
  X or X .+ [ X ] <- stack_ function false -> . && X
  ```
- Derivation (1 occurrence):
  ```
  fun_expr: fun_expr OR . fun_expr
    fun_expr: . fun_expr BARBAR fun_expr
      fun_expr: . simple_expr DOTOP LBRACKET separated_or_terminated_nonempty_list(SEMI,expr) RBRACKET LESSMINUS STACK FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
  ```
  Sample sentence (implementation):
  ```ocaml
  X or X .+ [ X ] <- stack_ function false -> . || X
  ```
- Derivation (1 occurrence):
  ```
  fun_expr: fun_expr OR . fun_expr
    fun_expr: . fun_expr EQUAL fun_expr
      fun_expr: . simple_expr DOTOP LBRACKET separated_or_terminated_nonempty_list(SEMI,expr) RBRACKET LESSMINUS STACK FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
  ```
  Sample sentence (implementation):
  ```ocaml
  X or X .+ [ X ] <- stack_ function false -> . = X
  ```
- Derivation (1 occurrence):
  ```
  fun_expr: fun_expr OR . fun_expr
    fun_expr: . fun_expr PERCENT fun_expr
      fun_expr: . simple_expr DOTOP LBRACKET separated_or_terminated_nonempty_list(SEMI,expr) RBRACKET LESSMINUS STACK FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
  ```
  Sample sentence (implementation):
  ```ocaml
  X or X .+ [ X ] <- stack_ function false -> . % X
  ```
- Derivation (1 occurrence):
  ```
  fun_expr: fun_expr OR . fun_expr
    fun_expr: . fun_expr MINUS fun_expr
      fun_expr: . simple_expr DOTOP LBRACKET separated_or_terminated_nonempty_list(SEMI,expr) RBRACKET LESSMINUS STACK FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
  ```
  Sample sentence (implementation):
  ```ocaml
  X or X .+ [ X ] <- stack_ function false -> . - X
  ```
- ...


### Item `pattern: . pattern_gen` (in 68 errors)

- Derivation (7 occurrences):
  ```
  pattern_no_exn: pattern_no_exn BAR . pattern
    pattern: . pattern_gen
  ```
  Sample sentence (implementation):
  ```ocaml
  let false | false as x = X
  ```
- Derivation (7 occurrences):
  ```
  payload: QUESTION . pattern
    pattern: . pattern BAR pattern
      pattern: . pattern_gen
        pattern_gen: . simple_pattern
          simple_pattern: . simple_pattern_not_ident
            simple_pattern_not_ident: . constr_longident
              constr_longident: . constr_extra_nonprefix_ident
                constr_extra_nonprefix_ident: . FALSE
  ```
  Sample sentence (implementation):
  ```ocaml
  [%% and ? false | false ]
  ```
- Derivation (5 occurrences):
  ```
  pattern: pattern BAR . pattern
    pattern: . pattern_gen
      pattern_gen: . LAZY ext list(attribute) simple_pattern
  ```
  Sample sentence (implementation):
  ```ocaml
  function false | lazy false -> .
  ```
- Derivation (1 occurrence):
  ```
  pattern_no_exn: pattern_no_exn BAR . pattern
    pattern: . pattern_gen
      pattern_gen: . simple_pattern
        simple_pattern: . simple_pattern_not_ident
          simple_pattern_not_ident: . signed_constant
            signed_constant: . signed_value_constant
              signed_value_constant: . value_constant
                value_constant: . FLOAT
  ```
  Sample sentence (implementation):
  ```ocaml
  let false | 4.0 = X
  ```
- Derivation (1 occurrence):
  ```
  pattern: pattern BAR . pattern
    pattern: . pattern_gen
      pattern_gen: . simple_pattern
        simple_pattern: . simple_pattern_not_ident
          simple_pattern_not_ident: . signed_constant
            signed_constant: . signed_value_constant
              signed_value_constant: . value_constant
                value_constant: . FLOAT
  ```
  Sample sentence (implementation):
  ```ocaml
  function false | 4.0 -> .
  ```
- Derivation (1 occurrence):
  ```
  pattern_no_exn: pattern_no_exn BAR . pattern
    pattern: . pattern_gen
      pattern_gen: . simple_pattern
        simple_pattern: . simple_pattern_not_ident
          simple_pattern_not_ident: . signed_constant
            signed_constant: . signed_value_constant
              signed_value_constant: . value_constant
                value_constant: . STRING
  ```
  Sample sentence (implementation):
  ```ocaml
  let false | "s" = X
  ```
- Derivation (1 occurrence):
  ```
  pattern: pattern BAR . pattern
    pattern: . pattern_gen
      pattern_gen: . simple_pattern
        simple_pattern: . simple_pattern_not_ident
          simple_pattern_not_ident: . signed_constant
            signed_constant: . signed_value_constant
              signed_value_constant: . value_constant
                value_constant: . STRING
  ```
  Sample sentence (implementation):
  ```ocaml
  function false | "s" -> .
  ```
- Derivation (1 occurrence):
  ```
  pattern_no_exn: pattern_no_exn BAR . pattern
    pattern: . pattern_gen
      pattern_gen: . simple_pattern
        simple_pattern: . simple_pattern_not_ident
          simple_pattern_not_ident: . signed_value_constant DOTDOT signed_value_constant
            signed_value_constant: . value_constant
              value_constant: . CHAR
  ```
  Sample sentence (implementation):
  ```ocaml
  let false | 'a' .. 'a' = X
  ```
- Derivation (1 occurrence):
  ```
  pattern: pattern BAR . pattern
    pattern: . pattern_gen
      pattern_gen: . simple_pattern
        simple_pattern: . simple_pattern_not_ident
          simple_pattern_not_ident: . signed_value_constant DOTDOT signed_value_constant
            signed_value_constant: . value_constant
              value_constant: . CHAR
  ```
  Sample sentence (implementation):
  ```ocaml
  function false | 'a' .. 'a' -> .
  ```
- Derivation (1 occurrence):
  ```
  pattern_no_exn: pattern_no_exn BAR . pattern
    pattern: . pattern_gen
      pattern_gen: . simple_pattern
        simple_pattern: . simple_pattern_not_ident
          simple_pattern_not_ident: . signed_constant
            signed_constant: . signed_value_constant
              signed_value_constant: . value_constant
                value_constant: . CHAR
  ```
  Sample sentence (implementation):
  ```ocaml
  let false | 'a' = X
  ```
- Derivation (1 occurrence):
  ```
  pattern: pattern BAR . pattern
    pattern: . pattern_gen
      pattern_gen: . simple_pattern
        simple_pattern: . simple_pattern_not_ident
          simple_pattern_not_ident: . signed_constant
            signed_constant: . signed_value_constant
              signed_value_constant: . value_constant
                value_constant: . CHAR
  ```
  Sample sentence (implementation):
  ```ocaml
  function false | 'a' -> .
  ```
- Derivation (1 occurrence):
  ```
  pattern_no_exn: pattern_no_exn BAR . pattern
    pattern: . pattern_gen
      pattern_gen: . simple_pattern
        simple_pattern: . simple_pattern_not_ident
          simple_pattern_not_ident: . signed_constant
            signed_constant: . signed_value_constant
              signed_value_constant: . value_constant
                value_constant: . INT
  ```
  Sample sentence (implementation):
  ```ocaml
  let false | 4 = X
  ```
- Derivation (1 occurrence):
  ```
  pattern: pattern BAR . pattern
    pattern: . pattern_gen
      pattern_gen: . simple_pattern
        simple_pattern: . simple_pattern_not_ident
          simple_pattern_not_ident: . signed_constant
            signed_constant: . signed_value_constant
              signed_value_constant: . value_constant
                value_constant: . INT
  ```
  Sample sentence (implementation):
  ```ocaml
  function false | 4 -> .
  ```
- Derivation (1 occurrence):
  ```
  pattern_no_exn: pattern_no_exn BAR . pattern
    pattern: . pattern_gen
      pattern_gen: . simple_pattern
        simple_pattern: . val_ident
          val_ident: . LIDENT
  ```
  Sample sentence (implementation):
  ```ocaml
  let false | x = X
  ```
- Derivation (1 occurrence):
  ```
  pattern: pattern BAR . pattern
    pattern: . pattern_gen
      pattern_gen: . simple_pattern
        simple_pattern: . val_ident
          val_ident: . LIDENT
  ```
  Sample sentence (implementation):
  ```ocaml
  function false | x -> .
  ```
- Derivation (1 occurrence):
  ```
  pattern_no_exn: pattern_no_exn BAR . pattern
    pattern: . pattern_gen
      pattern_gen: . simple_pattern
        simple_pattern: . simple_pattern_not_ident
          simple_pattern_not_ident: . signed_constant
            signed_constant: . unboxed_constant
              unboxed_constant: . HASH_FLOAT
  ```
  Sample sentence (implementation):
  ```ocaml
  let false | #1.0 = X
  ```
- Derivation (1 occurrence):
  ```
  pattern: pattern BAR . pattern
    pattern: . pattern_gen
      pattern_gen: . simple_pattern
        simple_pattern: . simple_pattern_not_ident
          simple_pattern_not_ident: . signed_constant
            signed_constant: . unboxed_constant
              unboxed_constant: . HASH_FLOAT
  ```
  Sample sentence (implementation):
  ```ocaml
  function false | #1.0 -> .
  ```
- Derivation (1 occurrence):
  ```
  pattern_no_exn: pattern_no_exn BAR . pattern
    pattern: . pattern_gen
      pattern_gen: . simple_pattern
        simple_pattern: . simple_pattern_not_ident
          simple_pattern_not_ident: . signed_constant
            signed_constant: . unboxed_constant
              unboxed_constant: . HASH_INT
  ```
  Sample sentence (implementation):
  ```ocaml
  let false | #1l = X
  ```
- Derivation (1 occurrence):
  ```
  pattern: pattern BAR . pattern
    pattern: . pattern_gen
      pattern_gen: . simple_pattern
        simple_pattern: . simple_pattern_not_ident
          simple_pattern_not_ident: . signed_constant
            signed_constant: . unboxed_constant
              unboxed_constant: . HASH_INT
  ```
  Sample sentence (implementation):
  ```ocaml
  function false | #1l -> .
  ```
- Derivation (1 occurrence):
  ```
  pattern_no_exn: pattern_no_exn BAR . pattern
    pattern: . pattern_gen
      pattern_gen: . simple_pattern
        simple_pattern: . simple_pattern_not_ident
          simple_pattern_not_ident: . HASH_SUFFIX type_longident
  ```
  Sample sentence (implementation):
  ```ocaml
  let false |# x = X
  ```
- Derivation (1 occurrence):
  ```
  pattern_no_exn: pattern_no_exn BAR . pattern
    pattern: . pattern COLONCOLON pattern
      pattern: . pattern_gen
        pattern_gen: . simple_pattern
          simple_pattern: . simple_pattern_not_ident
            simple_pattern_not_ident: . HASH_SUFFIX type_longident
  ```
  Sample sentence (implementation):
  ```ocaml
  let false |# x :: false = X
  ```
- ...


### Item `atomic_type: LPAREN . reversed_separated_nontrivial_llist(COMMA,one_type_parameter_of_several) RPAREN type_longident` (in 42 errors)

- Derivation (27 occurrences):
  ```
  atomic_type: LPAREN . reversed_separated_nontrivial_llist(COMMA,one_type_parameter_of_several) RPAREN type_longident
    reversed_separated_nontrivial_llist(COMMA,one_type_parameter_of_several): . reversed_separated_nontrivial_llist(COMMA,one_type_parameter_of_several) COMMA core_type
  ```
  Sample sentence (implementation):
  ```ocaml
  val x : ?label: ( {%ext|s|} , _ , {%ext|s|} ) x -> {%ext|s|}
  ```
- Derivation (3 occurrences):
  ```
  atomic_type: LPAREN . reversed_separated_nontrivial_llist(COMMA,one_type_parameter_of_several) RPAREN type_longident
    reversed_separated_nontrivial_llist(COMMA,one_type_parameter_of_several): . reversed_separated_nontrivial_llist(COMMA,one_type_parameter_of_several) COMMA core_type
      reversed_separated_nontrivial_llist(COMMA,one_type_parameter_of_several): . reversed_separated_nontrivial_llist(COMMA,one_type_parameter_of_several) COMMA UNDERSCORE COLON jkind_annotation
  ```
  Sample sentence (implementation):
  ```ocaml
  val x : ?label: ( {%ext|s|} , _ , _ : x , {%ext|s|} ) x -> {%ext|s|}
  ```
- Derivation (3 occurrences):
  ```
  atomic_type: LPAREN . reversed_separated_nontrivial_llist(COMMA,one_type_parameter_of_several) RPAREN type_longident
    reversed_separated_nontrivial_llist(COMMA,one_type_parameter_of_several): . reversed_separated_nontrivial_llist(COMMA,one_type_parameter_of_several) COMMA UNDERSCORE COLON jkind_annotation
  ```
  Sample sentence (implementation):
  ```ocaml
  val x : ?label: ( {%ext|s|} , _ , _ : x ) x -> {%ext|s|}
  ```
- Derivation (3 occurrences):
  ```
  atomic_type: LPAREN . reversed_separated_nontrivial_llist(COMMA,one_type_parameter_of_several) RPAREN type_longident
    reversed_separated_nontrivial_llist(COMMA,one_type_parameter_of_several): . reversed_separated_nontrivial_llist(COMMA,one_type_parameter_of_several) COMMA core_type
      reversed_separated_nontrivial_llist(COMMA,one_type_parameter_of_several): . reversed_separated_nontrivial_llist(COMMA,one_type_parameter_of_several) COMMA QUOTE ident COLON jkind_annotation
  ```
  Sample sentence (implementation):
  ```ocaml
  val x : ?label: ( {%ext|s|} , _ , ' x : x , {%ext|s|} ) x -> {%ext|s|}
  ```
- Derivation (3 occurrences):
  ```
  atomic_type: LPAREN . reversed_separated_nontrivial_llist(COMMA,one_type_parameter_of_several) RPAREN type_longident
    reversed_separated_nontrivial_llist(COMMA,one_type_parameter_of_several): . reversed_separated_nontrivial_llist(COMMA,one_type_parameter_of_several) COMMA QUOTE ident COLON jkind_annotation
  ```
  Sample sentence (implementation):
  ```ocaml
  val x : ?label: ( {%ext|s|} , _ , ' x : x ) x -> {%ext|s|}
  ```
- Derivation (3 occurrences):
  ```
  atomic_type: LPAREN . reversed_separated_nontrivial_llist(COMMA,one_type_parameter_of_several) RPAREN type_longident
    reversed_separated_nontrivial_llist(COMMA,one_type_parameter_of_several): . reversed_separated_nontrivial_llist(COMMA,one_type_parameter_of_several) COMMA core_type
      reversed_separated_nontrivial_llist(COMMA,one_type_parameter_of_several): . reversed_separated_nontrivial_llist(COMMA,one_type_parameter_of_several) COMMA core_type
  ```
  Sample sentence (implementation):
  ```ocaml
  val x : ?label: ( {%ext|s|} , _ , {%ext|s|} , {%ext|s|} ) x -> {%ext|s|}
  ```


### Item `fun_expr: fun_expr OR STACK FUNCTION ext list(attribute) . reversed_preceded_or_separated_nonempty_llist(BAR,match_case)` (in 31 errors)

- Derivation (31 occurrences):
  ```
  fun_expr: fun_expr OR STACK FUNCTION ext list(attribute) . reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
  ```
  Sample sentence (implementation):
  ```ocaml
  X or stack_ function | false -> X
  ```


### Item `type_parameter: . type_variance UNDERSCORE list(attribute)` (in 22 errors)

- Derivation (3 occurrences):
  ```
  type_parameters: LPAREN . reversed_separated_nonempty_llist(COMMA,parenthesized_type_parameter) RPAREN
    reversed_separated_nonempty_llist(COMMA,parenthesized_type_parameter): . reversed_separated_nonempty_llist(COMMA,parenthesized_type_parameter) COMMA parenthesized_type_parameter
      reversed_separated_nonempty_llist(COMMA,parenthesized_type_parameter): . parenthesized_type_parameter
        parenthesized_type_parameter: . type_parameter
          type_parameter: . type_variance UNDERSCORE list(attribute)
  ```
  Sample sentence (implementation):
  ```ocaml
  type ( _ , ! _ ) x
  ```
- Derivation (2 occurrences):
  ```
  generic_type_declaration(nonrec_flag,type_kind): TYPE ext list(attribute) NONREC . type_parameters LIDENT option(jkind_constraint) type_kind reversed_llist(preceded(CONSTRAINT,constrain)) list(post_item_attribute)
    type_parameters: . type_parameter
      type_parameter: . type_variance UNDERSCORE list(attribute)
        type_variance: . PREFIXOP
  ```
  Sample sentence (interface):
  ```ocaml
  type nonrec !+ _ x
  ```
- Derivation (2 occurrences):
  ```
  generic_type_declaration(nonrec_flag,type_kind): TYPE ext list(attribute) NONREC . type_parameters LIDENT option(jkind_constraint) type_kind reversed_llist(preceded(CONSTRAINT,constrain)) list(post_item_attribute)
    type_parameters: . type_parameter
      type_parameter: . type_variance UNDERSCORE list(attribute)
        type_variance: . BANG MINUS
  ```
  Sample sentence (interface):
  ```ocaml
  type nonrec ! - _ x
  ```
- Derivation (2 occurrences):
  ```
  generic_type_declaration(nonrec_flag,type_kind): TYPE ext list(attribute) NONREC . type_parameters LIDENT option(jkind_constraint) type_kind reversed_llist(preceded(CONSTRAINT,constrain)) list(post_item_attribute)
    type_parameters: . type_parameter
      type_parameter: . type_variance UNDERSCORE list(attribute)
        type_variance: . MINUS BANG
  ```
  Sample sentence (interface):
  ```ocaml
  type nonrec - ! _ x
  ```
- Derivation (2 occurrences):
  ```
  generic_type_declaration(nonrec_flag,type_kind): TYPE ext list(attribute) NONREC . type_parameters LIDENT option(jkind_constraint) type_kind reversed_llist(preceded(CONSTRAINT,constrain)) list(post_item_attribute)
    type_parameters: . type_parameter
      type_parameter: . type_variance UNDERSCORE list(attribute)
        type_variance: . BANG PLUS
  ```
  Sample sentence (interface):
  ```ocaml
  type nonrec ! + _ x
  ```
- Derivation (2 occurrences):
  ```
  generic_type_declaration(nonrec_flag,type_kind): TYPE ext list(attribute) NONREC . type_parameters LIDENT option(jkind_constraint) type_kind reversed_llist(preceded(CONSTRAINT,constrain)) list(post_item_attribute)
    type_parameters: . type_parameter
      type_parameter: . type_variance UNDERSCORE list(attribute)
        type_variance: . PLUS BANG
  ```
  Sample sentence (interface):
  ```ocaml
  type nonrec + ! _ x
  ```
- Derivation (2 occurrences):
  ```
  generic_type_declaration(nonrec_flag,type_kind): TYPE ext list(attribute) NONREC . type_parameters LIDENT option(jkind_constraint) type_kind reversed_llist(preceded(CONSTRAINT,constrain)) list(post_item_attribute)
    type_parameters: . type_parameter
      type_parameter: . type_variance UNDERSCORE list(attribute)
        type_variance: . BANG
  ```
  Sample sentence (interface):
  ```ocaml
  type nonrec ! _ x
  ```
- Derivation (1 occurrence):
  ```
  reversed_separated_nonempty_llist(COMMA,parenthesized_type_parameter): reversed_separated_nonempty_llist(COMMA,parenthesized_type_parameter) COMMA . parenthesized_type_parameter
    parenthesized_type_parameter: . type_parameter
      type_parameter: . type_variance UNDERSCORE list(attribute)
        type_variance: . PREFIXOP
  ```
  Sample sentence (implementation):
  ```ocaml
  type ( _ , !+ _ ) x
  ```
- Derivation (1 occurrence):
  ```
  type_parameters: LPAREN . reversed_separated_nonempty_llist(COMMA,parenthesized_type_parameter) RPAREN
    reversed_separated_nonempty_llist(COMMA,parenthesized_type_parameter): . parenthesized_type_parameter
      parenthesized_type_parameter: . type_parameter
        type_parameter: . type_variance UNDERSCORE list(attribute)
          type_variance: . PREFIXOP
  ```
  Sample sentence (implementation):
  ```ocaml
  type ( !+ _ ) x
  ```
- Derivation (1 occurrence):
  ```
  type_parameters: LPAREN . reversed_separated_nonempty_llist(COMMA,parenthesized_type_parameter) RPAREN
    reversed_separated_nonempty_llist(COMMA,parenthesized_type_parameter): . parenthesized_type_parameter
      parenthesized_type_parameter: . type_parameter
        type_parameter: . type_variance UNDERSCORE list(attribute)
          type_variance: . BANG MINUS
  ```
  Sample sentence (implementation):
  ```ocaml
  type ( ! - _ ) x
  ```
- Derivation (1 occurrence):
  ```
  type_parameters: LPAREN . reversed_separated_nonempty_llist(COMMA,parenthesized_type_parameter) RPAREN
    reversed_separated_nonempty_llist(COMMA,parenthesized_type_parameter): . parenthesized_type_parameter
      parenthesized_type_parameter: . type_parameter
        type_parameter: . type_variance UNDERSCORE list(attribute)
          type_variance: . MINUS BANG
  ```
  Sample sentence (implementation):
  ```ocaml
  type ( - ! _ ) x
  ```
- Derivation (1 occurrence):
  ```
  type_parameters: LPAREN . reversed_separated_nonempty_llist(COMMA,parenthesized_type_parameter) RPAREN
    reversed_separated_nonempty_llist(COMMA,parenthesized_type_parameter): . parenthesized_type_parameter
      parenthesized_type_parameter: . type_parameter
        type_parameter: . type_variance UNDERSCORE list(attribute)
          type_variance: . BANG PLUS
  ```
  Sample sentence (implementation):
  ```ocaml
  type ( ! + _ ) x
  ```
- Derivation (1 occurrence):
  ```
  type_parameters: LPAREN . reversed_separated_nonempty_llist(COMMA,parenthesized_type_parameter) RPAREN
    reversed_separated_nonempty_llist(COMMA,parenthesized_type_parameter): . parenthesized_type_parameter
      parenthesized_type_parameter: . type_parameter
        type_parameter: . type_variance UNDERSCORE list(attribute)
          type_variance: . PLUS BANG
  ```
  Sample sentence (implementation):
  ```ocaml
  type ( + ! _ ) x
  ```
- Derivation (1 occurrence):
  ```
  type_parameters: LPAREN . reversed_separated_nonempty_llist(COMMA,parenthesized_type_parameter) RPAREN
    reversed_separated_nonempty_llist(COMMA,parenthesized_type_parameter): . parenthesized_type_parameter
      parenthesized_type_parameter: . type_parameter
        type_parameter: . type_variance UNDERSCORE list(attribute)
          type_variance: . BANG
  ```
  Sample sentence (implementation):
  ```ocaml
  type ( ! _ ) x
  ```


### Item `module_expr: FUNCTOR list(attribute) reversed_nonempty_llist(functor_arg) MINUSGREATER . module_expr` (in 18 errors)

- Derivation (7 occurrences):
  ```
  module_expr: FUNCTOR list(attribute) reversed_nonempty_llist(functor_arg) MINUSGREATER . module_expr
    module_expr: . module_expr paren_module_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  open functor ( ) -> {%ext|s|} ( {%ext|s|} )
  ```
- Derivation (1 occurrence):
  ```
  module_expr: FUNCTOR list(attribute) reversed_nonempty_llist(functor_arg) MINUSGREATER . module_expr
    module_expr: . paren_module_expr
      paren_module_expr: . LPAREN VAL list(attribute) STACK FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case) RPAREN
  ```
  Sample sentence (implementation):
  ```ocaml
  open functor ( ) -> ( val stack_ function false -> X )
  ```
- Derivation (1 occurrence):
  ```
  module_expr: FUNCTOR list(attribute) reversed_nonempty_llist(functor_arg) MINUSGREATER . module_expr
    module_expr: . paren_module_expr
      paren_module_expr: . LPAREN VAL list(attribute) FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case) RPAREN
  ```
  Sample sentence (implementation):
  ```ocaml
  open functor ( ) -> ( val function false -> X )
  ```
- Derivation (1 occurrence):
  ```
  module_expr: FUNCTOR list(attribute) reversed_nonempty_llist(functor_arg) MINUSGREATER . module_expr
    module_expr: . paren_module_expr
      paren_module_expr: . LPAREN VAL list(attribute) fun_expr RPAREN
  ```
  Sample sentence (implementation):
  ```ocaml
  open functor ( ) -> ( val X )
  ```
- Derivation (1 occurrence):
  ```
  module_expr: FUNCTOR list(attribute) reversed_nonempty_llist(functor_arg) MINUSGREATER . module_expr
    module_expr: . paren_module_expr
      paren_module_expr: . LPAREN module_expr RPAREN
  ```
  Sample sentence (implementation):
  ```ocaml
  open functor ( ) -> ( {%ext|s|} )
  ```
- Derivation (1 occurrence):
  ```
  module_expr: FUNCTOR list(attribute) reversed_nonempty_llist(functor_arg) MINUSGREATER . module_expr
    module_expr: . paren_module_expr
      paren_module_expr: . LPAREN module_expr at_mode_expr RPAREN
  ```
  Sample sentence (implementation):
  ```ocaml
  open functor ( ) -> ( {%ext|s|} @ x )
  ```
- Derivation (1 occurrence):
  ```
  module_expr: FUNCTOR list(attribute) reversed_nonempty_llist(functor_arg) MINUSGREATER . module_expr
    module_expr: . paren_module_expr
      paren_module_expr: . LPAREN module_expr COLON module_type_atomic at_mode_expr RPAREN
  ```
  Sample sentence (implementation):
  ```ocaml
  open functor ( ) -> ( {%ext|s|} : X @ x )
  ```
- Derivation (1 occurrence):
  ```
  module_expr: FUNCTOR list(attribute) reversed_nonempty_llist(functor_arg) MINUSGREATER . module_expr
    module_expr: . paren_module_expr
      paren_module_expr: . LPAREN module_expr COLON module_type RPAREN
  ```
  Sample sentence (implementation):
  ```ocaml
  open functor ( ) -> ( {%ext|s|} : X )
  ```
- Derivation (1 occurrence):
  ```
  module_expr: FUNCTOR list(attribute) reversed_nonempty_llist(functor_arg) MINUSGREATER . module_expr
    module_expr: . module_expr LPAREN RPAREN
  ```
  Sample sentence (implementation):
  ```ocaml
  open functor ( ) -> {%ext|s|} ( )
  ```
- Derivation (1 occurrence):
  ```
  module_expr: FUNCTOR list(attribute) reversed_nonempty_llist(functor_arg) MINUSGREATER . module_expr
    module_expr: . module_expr attribute
  ```
  Sample sentence (implementation):
  ```ocaml
  open functor ( ) -> {%ext|s|} [@ and ]
  ```
- Derivation (1 occurrence):
  ```
  module_expr: FUNCTOR list(attribute) reversed_nonempty_llist(functor_arg) MINUSGREATER . module_expr
    module_expr: . FUNCTOR list(attribute) reversed_nonempty_llist(functor_arg) MINUSGREATER module_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  open functor ( ) -> functor ( ) -> {%ext|s|}
  ```
- Derivation (1 occurrence):
  ```
  module_expr: FUNCTOR list(attribute) reversed_nonempty_llist(functor_arg) MINUSGREATER . module_expr
    module_expr: . STRUCT list(attribute) structure END
  ```
  Sample sentence (implementation):
  ```ocaml
  open functor ( ) -> struct end
  ```


### Item `reversed_preceded_or_separated_nonempty_llist(BAR,match_case): . BAR match_case` (in 17 errors)

- Derivation (15 occurrences):
  ```
  fun_expr: fun_expr MOD STACK FUNCTION ext list(attribute) . reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
    reversed_preceded_or_separated_nonempty_llist(BAR,match_case): . BAR match_case
  ```
  Sample sentence (implementation):
  ```ocaml
  X mod stack_ function | false -> X
  ```
- Derivation (1 occurrence):
  ```
  fun_expr: fun_expr MOD STACK FUNCTION ext list(attribute) . reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
    reversed_preceded_or_separated_nonempty_llist(BAR,match_case): . reversed_preceded_or_separated_nonempty_llist(BAR,match_case) BAR match_case
      reversed_preceded_or_separated_nonempty_llist(BAR,match_case): . BAR match_case
  ```
  Sample sentence (implementation):
  ```ocaml
  X mod stack_ function | false -> X | false -> X
  ```
- Derivation (1 occurrence):
  ```
  reversed_labeled_tuple_body: STACK FUNCTION ext list(attribute) . reversed_preceded_or_separated_nonempty_llist(BAR,match_case) COMMA fun_expr
    reversed_preceded_or_separated_nonempty_llist(BAR,match_case): . BAR match_case
  ```
  Sample sentence (implementation):
  ```ocaml
  X mod stack_ function | false -> . , X
  ```


### Item `fun_expr: fun_expr OR FUNCTION ext list(attribute) . reversed_preceded_or_separated_nonempty_llist(BAR,match_case)` (in 12 errors)

- Derivation (12 occurrences):
  ```
  fun_expr: fun_expr OR FUNCTION ext list(attribute) . reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
  ```
  Sample sentence (implementation):
  ```ocaml
  X or function | false -> . land X
  ```


### Item `module_type: FUNCTOR list(attribute) reversed_nonempty_llist(functor_arg) MINUSGREATER . module_type` (in 12 errors)

- Derivation (2 occurrences):
  ```
  module_type: FUNCTOR list(attribute) reversed_nonempty_llist(functor_arg) MINUSGREATER . module_type
    module_type: . module_type WITH reversed_separated_nonempty_llist(AND,with_constraint)
  ```
  Sample sentence (interface):
  ```ocaml
  include functor functor ( ) -> X with module X := X
  ```
- Derivation (1 occurrence):
  ```
  module_type: FUNCTOR list(attribute) reversed_nonempty_llist(functor_arg) MINUSGREATER . module_type
    module_type: . module_type_atomic
      module_type_atomic: . SIG list(attribute) signature END
  ```
  Sample sentence (interface):
  ```ocaml
  include functor functor ( ) -> sig end
  ```
- Derivation (1 occurrence):
  ```
  module_type: FUNCTOR list(attribute) reversed_nonempty_llist(functor_arg) MINUSGREATER . module_type
    module_type: . module_type attribute
      module_type: . module_type WITH reversed_separated_nonempty_llist(AND,with_constraint)
  ```
  Sample sentence (interface):
  ```ocaml
  include functor functor ( ) -> X with module X := X [@ and ]
  ```
- Derivation (1 occurrence):
  ```
  module_type: FUNCTOR list(attribute) reversed_nonempty_llist(functor_arg) MINUSGREATER . module_type
    module_type: . module_type attribute
  ```
  Sample sentence (interface):
  ```ocaml
  include functor functor ( ) -> X [@ and ]
  ```
- Derivation (1 occurrence):
  ```
  module_type: FUNCTOR list(attribute) reversed_nonempty_llist(functor_arg) MINUSGREATER . module_type
    module_type: . MODULE TYPE OF list(attribute) module_expr
  ```
  Sample sentence (interface):
  ```ocaml
  include functor functor ( ) -> module type of {%ext|s|}
  ```
- Derivation (1 occurrence):
  ```
  module_type: FUNCTOR list(attribute) reversed_nonempty_llist(functor_arg) MINUSGREATER . module_type
  ```
  Sample sentence (interface):
  ```ocaml
  module X : functor ( ) -> X @@ x
  ```
- Derivation (1 occurrence):
  ```
  module_type: FUNCTOR list(attribute) reversed_nonempty_llist(functor_arg) MINUSGREATER . module_type
    module_type: . module_type_atomic
      module_type_atomic: . mty_longident
        mty_longident: . mk_longident(mod_ext_longident,ident)
          mk_longident(mod_ext_longident,ident): . mod_ext_longident DOT ident
            mod_ext_longident: . mod_ext_longident LPAREN mod_ext_longident RPAREN
              mod_ext_longident: . mk_longident(mod_ext_longident,UIDENT)
  ```
  Sample sentence (interface):
  ```ocaml
  include functor functor ( ) -> X ( X ) . X
  ```
- Derivation (1 occurrence):
  ```
  module_type: FUNCTOR list(attribute) reversed_nonempty_llist(functor_arg) MINUSGREATER . module_type
    module_type: . module_type_atomic
      module_type_atomic: . mty_longident
        mty_longident: . mk_longident(mod_ext_longident,ident)
          mk_longident(mod_ext_longident,ident): . mod_ext_longident DOT ident
            mod_ext_longident: . mk_longident(mod_ext_longident,UIDENT)
  ```
  Sample sentence (interface):
  ```ocaml
  include functor functor ( ) -> X . X
  ```
- Derivation (1 occurrence):
  ```
  module_type: FUNCTOR list(attribute) reversed_nonempty_llist(functor_arg) MINUSGREATER . module_type
    module_type: . module_type_atomic
      module_type_atomic: . mty_longident
        mty_longident: . mk_longident(mod_ext_longident,ident)
          mk_longident(mod_ext_longident,ident): . mod_ext_longident DOT ident
            mod_ext_longident: . mk_longident(mod_ext_longident,UIDENT)
              mk_longident(mod_ext_longident,UIDENT): . mod_ext_longident DOT UIDENT
                mod_ext_longident: . mk_longident(mod_ext_longident,UIDENT)
  ```
  Sample sentence (interface):
  ```ocaml
  include functor functor ( ) -> X . X . X
  ```
- Derivation (1 occurrence):
  ```
  module_type: FUNCTOR list(attribute) reversed_nonempty_llist(functor_arg) MINUSGREATER . module_type
    module_type: . module_type_atomic
      module_type_atomic: . mty_longident
        mty_longident: . mk_longident(mod_ext_longident,ident)
          mk_longident(mod_ext_longident,ident): . ident
            ident: . LIDENT
  ```
  Sample sentence (interface):
  ```ocaml
  include functor functor ( ) -> x
  ```
- Derivation (1 occurrence):
  ```
  module_type: FUNCTOR list(attribute) reversed_nonempty_llist(functor_arg) MINUSGREATER . module_type
    module_type: . module_type_atomic
      module_type_atomic: . mty_longident
        mty_longident: . mk_longident(mod_ext_longident,ident)
          mk_longident(mod_ext_longident,ident): . ident
            ident: . UIDENT
  ```
  Sample sentence (interface):
  ```ocaml
  include functor functor ( ) -> X
  ```


### Item `attribute: . LBRACKETAT attr_id attr_payload RBRACKET` (in 9 errors)

- Derivation (2 occurrences):
  ```
  module_type_declaration: MODULE TYPE ext . list(attribute) ident option(preceded(EQUAL,module_type)) list(post_item_attribute)
    list(attribute): . attribute list(attribute)
      attribute: . LBRACKETAT attr_id attr_payload RBRACKET
  ```
  Sample sentence (interface):
  ```ocaml
  module type [@ and ] x
  ```
- Derivation (1 occurrence):
  ```
  structure_item: include_kind ext . list(attribute) module_expr list(post_item_attribute)
    list(attribute): . attribute list(attribute)
      attribute: . LBRACKETAT attr_id attr_payload RBRACKET
  ```
  Sample sentence (implementation):
  ```ocaml
  include [@ and ] [@ and ] {%ext|s|}
  ```
- Derivation (1 occurrence):
  ```
  open_description: OPEN BANG ext . list(attribute) mod_ext_longident list(post_item_attribute)
    list(attribute): . attribute list(attribute)
      attribute: . LBRACKETAT attr_id attr_payload RBRACKET
  ```
  Sample sentence (interface):
  ```ocaml
  open ! [@ and ] X
  ```
- Derivation (1 occurrence):
  ```
  open_description: OPEN ext . list(attribute) mod_ext_longident list(post_item_attribute)
    list(attribute): . attribute list(attribute)
      attribute: . LBRACKETAT attr_id attr_payload RBRACKET
  ```
  Sample sentence (interface):
  ```ocaml
  open [@ and ] X
  ```
- Derivation (1 occurrence):
  ```
  open_declaration: OPEN BANG ext . list(attribute) module_expr list(post_item_attribute)
    list(attribute): . attribute list(attribute)
      attribute: . LBRACKETAT attr_id attr_payload RBRACKET
  ```
  Sample sentence (implementation):
  ```ocaml
  open ! [@ and ] {%ext|s|}
  ```
- Derivation (1 occurrence):
  ```
  open_declaration: OPEN ext . list(attribute) module_expr list(post_item_attribute)
    list(attribute): . attribute list(attribute)
      attribute: . LBRACKETAT attr_id attr_payload RBRACKET
  ```
  Sample sentence (implementation):
  ```ocaml
  open [@ and ] {%ext|s|}
  ```
- Derivation (1 occurrence):
  ```
  module_type: FUNCTOR . list(attribute) reversed_nonempty_llist(functor_arg) MINUSGREATER module_type
    list(attribute): . attribute list(attribute)
      attribute: . LBRACKETAT attr_id attr_payload RBRACKET
  ```
  Sample sentence (interface):
  ```ocaml
  include functor functor [@ and ] ( ) -> X
  ```
- Derivation (1 occurrence):
  ```
  module_expr: FUNCTOR . list(attribute) reversed_nonempty_llist(functor_arg) MINUSGREATER module_expr
    list(attribute): . attribute list(attribute)
      attribute: . LBRACKETAT attr_id attr_payload RBRACKET
  ```
  Sample sentence (implementation):
  ```ocaml
  open functor [@ and ] ( ) -> {%ext|s|}
  ```


### Item `ext: . PERCENT attr_id` (in 9 errors)

- Derivation (2 occurrences):
  ```
  module_type_declaration: MODULE TYPE . ext list(attribute) ident option(preceded(EQUAL,module_type)) list(post_item_attribute)
    ext: . PERCENT attr_id
  ```
  Sample sentence (interface):
  ```ocaml
  module type % and x
  ```
- Derivation (1 occurrence):
  ```
  structure_item: MODULE . ext list(attribute) module_name_modal(at_mode_expr) module_binding_body list(post_item_attribute)
    ext: . PERCENT attr_id
  ```
  Sample sentence (implementation):
  ```ocaml
  module % and X = {%ext|s|}
  ```
- Derivation (1 occurrence):
  ```
  simple_pattern_not_ident: LPAREN MODULE . ext list(attribute) module_name RPAREN
    ext: . PERCENT attr_id
  ```
  Sample sentence (implementation):
  ```ocaml
  function ( module % and X ) -> .
  ```
- Derivation (1 occurrence):
  ```
  simple_expr: LPAREN MODULE . ext list(attribute) module_expr RPAREN
    ext: . PERCENT attr_id
  ```
  Sample sentence (implementation):
  ```ocaml
  ( module % and {%ext|s|} )
  ```
- Derivation (1 occurrence):
  ```
  signature_item: include_kind . ext list(attribute) module_type list(post_item_attribute) optional_atat_modalities_expr
    ext: . PERCENT attr_id
  ```
  Sample sentence (interface):
  ```ocaml
  include % and functor ( ) -> X
  ```
- Derivation (1 occurrence):
  ```
  fun_expr: fun_expr OR FUNCTION . ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
    ext: . PERCENT attr_id
  ```
  Sample sentence (implementation):
  ```ocaml
  X or function % and false -> X
  ```
- Derivation (1 occurrence):
  ```
  fun_expr: fun_expr MOD FUNCTION . ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
    ext: . PERCENT attr_id
  ```
  Sample sentence (implementation):
  ```ocaml
  X mod function % and false -> X
  ```
- Derivation (1 occurrence):
  ```
  fun_expr: LET MODULE . ext list(attribute) module_name_modal(at_mode_expr) module_binding_body IN seq_expr
    ext: . PERCENT attr_id
  ```
  Sample sentence (implementation):
  ```ocaml
  let module % and X = {%ext|s|} in X
  ```


### Item `extension: . QUOTED_STRING_EXPR` (in 8 errors)

- Derivation (2 occurrences):
  ```
  module_binding_body: EQUAL . module_expr
    module_expr: . extension
      extension: . QUOTED_STRING_EXPR
  ```
  Sample sentence (implementation):
  ```ocaml
  module rec X ( ) = {%ext|s|}
  ```
- Derivation (1 occurrence):
  ```
  signature_item: MODULE ext list(attribute) REC module_name COLON . module_type optional_atat_modalities_expr list(post_item_attribute) list(and_module_declaration)
    module_type: . module_type MINUSGREATER module_type
      module_type: . module_type WITH reversed_separated_nonempty_llist(AND,with_constraint)
        module_type: . extension
          extension: . QUOTED_STRING_EXPR
  ```
  Sample sentence (interface):
  ```ocaml
  module rec X : {%ext|s|} with module X := X -> X
  ```
- Derivation (1 occurrence):
  ```
  option(preceded(EQUAL,module_type)): EQUAL . module_type
    module_type: . module_type MINUSGREATER module_type
      module_type: . module_type WITH reversed_separated_nonempty_llist(AND,with_constraint)
        module_type: . extension
          extension: . QUOTED_STRING_EXPR
  ```
  Sample sentence (implementation):
  ```ocaml
  module type x = {%ext|s|} with module X := X -> X
  ```
- Derivation (1 occurrence):
  ```
  module_type_subst: MODULE TYPE ext list(attribute) ident COLONEQUAL . module_type list(post_item_attribute)
    module_type: . module_type MINUSGREATER module_type
      module_type: . module_type WITH reversed_separated_nonempty_llist(AND,with_constraint)
        module_type: . extension
          extension: . QUOTED_STRING_EXPR
  ```
  Sample sentence (interface):
  ```ocaml
  module type x := {%ext|s|} with module X := X -> X
  ```
- Derivation (1 occurrence):
  ```
  module_binding_body: COLON module_type EQUAL . module_expr
    module_expr: . extension
      extension: . QUOTED_STRING_EXPR
  ```
  Sample sentence (implementation):
  ```ocaml
  module X : X with module X := X = {%ext|s|}
  ```
- Derivation (1 occurrence):
  ```
  class_type: LIDENT COLON . tuple_type MINUSGREATER class_type
    tuple_type: . atomic_type
      atomic_type: . atomic_type HASH clty_longident
        atomic_type: . delimited_type
          delimited_type: . extension_type
            extension_type: . extension
              extension: . QUOTED_STRING_EXPR
  ```
  Sample sentence (interface):
  ```ocaml
  class x : x : {%ext|s|} # x -> {%ext|s|}
  ```
- Derivation (1 occurrence):
  ```
  class_type: optlabel . tuple_type MINUSGREATER class_type
    tuple_type: . atomic_type
      atomic_type: . atomic_type HASH clty_longident
        atomic_type: . delimited_type
          delimited_type: . extension_type
            extension_type: . extension
              extension: . QUOTED_STRING_EXPR
  ```
  Sample sentence (interface):
  ```ocaml
  class x : ?label: {%ext|s|} # x -> {%ext|s|}
  ```


### Item `fun_expr: STACK . simple_expr` (in 8 errors)

- Derivation (2 occurrences):
  ```
  fun_expr: STACK . simple_expr
    simple_expr: . NEW ext list(attribute) class_longident
  ```
  Sample sentence (implementation):
  ```ocaml
  X or stack_ new x
  ```
- Derivation (2 occurrences):
  ```
  fun_expr: STACK . simple_expr
    simple_expr: . simple_expr DOTOP LBRACKET separated_or_terminated_nonempty_list(SEMI,expr) RBRACKET
  ```
  Sample sentence (implementation):
  ```ocaml
  X or stack_ X .+ [ X ]
  ```
- Derivation (2 occurrences):
  ```
  fun_expr: STACK . simple_expr
    simple_expr: . simple_expr DOTOP LBRACE separated_or_terminated_nonempty_list(SEMI,expr) RBRACE
  ```
  Sample sentence (implementation):
  ```ocaml
  X or stack_ X .+ { X }
  ```
- Derivation (2 occurrences):
  ```
  fun_expr: STACK . simple_expr
    simple_expr: . simple_expr DOTOP LPAREN separated_or_terminated_nonempty_list(SEMI,expr) RPAREN
  ```
  Sample sentence (implementation):
  ```ocaml
  X or stack_ X .+ ( X )
  ```


### Item `class_signature: . OBJECT list(attribute) class_self_type list(text_csig(class_sig_field)) END` (in 6 errors)

- Derivation (1 occurrence):
  ```
  class_type_declarations: CLASS TYPE ext list(attribute) virtual_flag formal_class_parameters LIDENT EQUAL . class_signature list(post_item_attribute) list(and_class_type_declaration)
    class_signature: . OBJECT list(attribute) class_self_type list(text_csig(class_sig_field)) END
  ```
  Sample sentence (implementation):
  ```ocaml
  class type x = object end
  ```
- Derivation (1 occurrence):
  ```
  class_type: tuple_type MINUSGREATER . class_type
    class_type: . class_signature
      class_signature: . OBJECT list(attribute) class_self_type list(text_csig(class_sig_field)) END
  ```
  Sample sentence (interface):
  ```ocaml
  class x : {%ext|s|} -> object end
  ```
- Derivation (1 occurrence):
  ```
  class_type: LIDENT COLON tuple_type MINUSGREATER . class_type
    class_type: . class_signature
      class_signature: . OBJECT list(attribute) class_self_type list(text_csig(class_sig_field)) END
  ```
  Sample sentence (interface):
  ```ocaml
  class x : x : {%ext|s|} -> object end
  ```
- Derivation (1 occurrence):
  ```
  class_type: optlabel tuple_type MINUSGREATER . class_type
    class_type: . class_signature
      class_signature: . OBJECT list(attribute) class_self_type list(text_csig(class_sig_field)) END
  ```
  Sample sentence (interface):
  ```ocaml
  class x : ?label: {%ext|s|} -> object end
  ```
- Derivation (1 occurrence):
  ```
  class_signature: LET OPEN BANG list(attribute) mod_longident IN . class_signature
    class_signature: . OBJECT list(attribute) class_self_type list(text_csig(class_sig_field)) END
  ```
  Sample sentence (interface):
  ```ocaml
  class x : let open ! X in object end
  ```
- Derivation (1 occurrence):
  ```
  class_signature: LET OPEN list(attribute) mod_longident IN . class_signature
    class_signature: . OBJECT list(attribute) class_self_type list(text_csig(class_sig_field)) END
  ```
  Sample sentence (interface):
  ```ocaml
  class x : let open X in object end
  ```


### Item `module_type: . FUNCTOR list(attribute) reversed_nonempty_llist(functor_arg) MINUSGREATER module_type` (in 6 errors)

- Derivation (1 occurrence):
  ```
  with_constraint: MODULE TYPE mty_longident COLONEQUAL . module_type
    module_type: . FUNCTOR list(attribute) reversed_nonempty_llist(functor_arg) MINUSGREATER module_type
  ```
  Sample sentence (implementation):
  ```ocaml
  module X : X with module type X := functor ( ) -> X = {%ext|s|}
  ```
- Derivation (1 occurrence):
  ```
  with_constraint: MODULE TYPE mty_longident EQUAL . module_type
    module_type: . FUNCTOR list(attribute) reversed_nonempty_llist(functor_arg) MINUSGREATER module_type
  ```
  Sample sentence (implementation):
  ```ocaml
  module X : X with module type X = functor ( ) -> X = {%ext|s|}
  ```
- Derivation (1 occurrence):
  ```
  signature_item: MODULE ext list(attribute) REC module_name COLON . module_type optional_atat_modalities_expr list(post_item_attribute) list(and_module_declaration)
    module_type: . FUNCTOR list(attribute) reversed_nonempty_llist(functor_arg) MINUSGREATER module_type
  ```
  Sample sentence (interface):
  ```ocaml
  module rec X : functor ( ) -> X
  ```
- Derivation (1 occurrence):
  ```
  option(preceded(EQUAL,module_type)): EQUAL . module_type
    module_type: . FUNCTOR list(attribute) reversed_nonempty_llist(functor_arg) MINUSGREATER module_type
  ```
  Sample sentence (implementation):
  ```ocaml
  module type x = functor ( ) -> X
  ```
- Derivation (1 occurrence):
  ```
  module_type_subst: MODULE TYPE ext list(attribute) ident COLONEQUAL . module_type list(post_item_attribute)
    module_type: . FUNCTOR list(attribute) reversed_nonempty_llist(functor_arg) MINUSGREATER module_type
  ```
  Sample sentence (interface):
  ```ocaml
  module type x := functor ( ) -> X
  ```
- Derivation (1 occurrence):
  ```
  module_declaration_body(module_type_with_optional_modes): COLON . module_type
    module_type: . FUNCTOR list(attribute) reversed_nonempty_llist(functor_arg) MINUSGREATER module_type
  ```
  Sample sentence (interface):
  ```ocaml
  module X ( ) : functor ( ) -> X
  ```


### Item `pattern: pattern . BAR pattern` (in 6 errors)

- Derivation (6 occurrences):
  ```
  pattern: pattern . BAR pattern
  ```
  Sample sentence (implementation):
  ```ocaml
  [: X for local_ false | false in X :]
  ```


### Item `functor_arg: . LPAREN RPAREN` (in 4 errors)

- Derivation (2 occurrences):
  ```
  reversed_nonempty_llist(functor_arg): reversed_nonempty_llist(functor_arg) . functor_arg
    functor_arg: . LPAREN RPAREN
  ```
  Sample sentence (implementation):
  ```ocaml
  open functor ( ) ( ) -> {%ext|s|}
  ```
- Derivation (1 occurrence):
  ```
  module_declaration_body(module_type_with_optional_modes): functor_arg . module_declaration_body(module_type_with_optional_modes)
    module_declaration_body(module_type_with_optional_modes): . functor_arg module_declaration_body(module_type_with_optional_modes)
      functor_arg: . LPAREN RPAREN
  ```
  Sample sentence (interface):
  ```ocaml
  module X ( ) ( ) ( ) : X
  ```
- Derivation (1 occurrence):
  ```
  signature_item: MODULE ext list(attribute) module_name_modal(atat_modalities_expr) . module_declaration_body(__anonymous_8) list(post_item_attribute)
    module_declaration_body(__anonymous_8): . functor_arg module_declaration_body(module_type_with_optional_modes)
      functor_arg: . LPAREN RPAREN
  ```
  Sample sentence (interface):
  ```ocaml
  module X ( ) ( X : X ) : X
  ```


### Item `module_type: module_type WITH . reversed_separated_nonempty_llist(AND,with_constraint)` (in 4 errors)

- Derivation (4 occurrences):
  ```
  module_type: module_type WITH . reversed_separated_nonempty_llist(AND,with_constraint)
    reversed_separated_nonempty_llist(AND,with_constraint): . with_constraint
  ```
  Sample sentence (interface):
  ```ocaml
  module X : {%ext|s|} with module X := X -> X
  ```


### Item `nonempty_list(newtype): newtype . nonempty_list(newtype)` (in 4 errors)

- Derivation (4 occurrences):
  ```
  nonempty_list(newtype): newtype . nonempty_list(newtype)
  ```
  Sample sentence (implementation):
  ```ocaml
  let x : type x x . {%ext|s|} = X
  ```


### Item `functor_arg: . LPAREN module_name COLON module_type RPAREN` (in 3 errors)

- Derivation (2 occurrences):
  ```
  reversed_nonempty_llist(functor_arg): reversed_nonempty_llist(functor_arg) . functor_arg
    functor_arg: . LPAREN module_name COLON module_type RPAREN
  ```
  Sample sentence (implementation):
  ```ocaml
  open functor ( ) ( X : X ) -> {%ext|s|}
  ```
- Derivation (1 occurrence):
  ```
  module_declaration_body(module_type_with_optional_modes): functor_arg . module_declaration_body(module_type_with_optional_modes)
    module_declaration_body(module_type_with_optional_modes): . functor_arg module_declaration_body(module_type_with_optional_modes)
      functor_arg: . LPAREN module_name COLON module_type RPAREN
  ```
  Sample sentence (interface):
  ```ocaml
  module X ( ) ( ) ( X : X ) : X
  ```


### Item `pattern_no_exn: pattern_no_exn . BAR pattern` (in 3 errors)

- Derivation (3 occurrences):
  ```
  pattern_no_exn: pattern_no_exn . BAR pattern
  ```
  Sample sentence (implementation):
  ```ocaml
  let* x | false = X in X
  ```


### Item `atomic_type: atomic_type . HASH clty_longident` (in 2 errors)

- Derivation (2 occurrences):
  ```
  atomic_type: atomic_type . HASH clty_longident
  ```
  Sample sentence (implementation):
  ```ocaml
  fun false : {%ext|s|} # x -> X
  ```


### Item `fun_expr: fun_expr MOD FUNCTION ext list(attribute) . reversed_preceded_or_separated_nonempty_llist(BAR,match_case)` (in 2 errors)

- Derivation (2 occurrences):
  ```
  fun_expr: fun_expr MOD FUNCTION ext list(attribute) . reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
  ```
  Sample sentence (implementation):
  ```ocaml
  X mod function | false -> . ** X
  ```


### Item `include_kind: . INCLUDE FUNCTOR` (in 2 errors)

- Derivation (1 occurrence):
  ```
  list(signature_element): signature_item . list(signature_element)
    list(signature_element): . signature_item list(signature_element)
      signature_item: . include_kind ext list(attribute) module_type list(post_item_attribute) optional_atat_modalities_expr
        include_kind: . INCLUDE FUNCTOR
  ```
  Sample sentence (interface):
  ```ocaml
  {%%ext|s|} include functor functor ( ) -> X
  ```
- Derivation (1 occurrence):
  ```
  list(signature_element): SEMISEMI . list(signature_element)
    list(signature_element): . signature_item list(signature_element)
      signature_item: . include_kind ext list(attribute) module_type list(post_item_attribute) optional_atat_modalities_expr
        include_kind: . INCLUDE FUNCTOR
  ```
  Sample sentence (interface):
  ```ocaml
  ;; include functor functor ( ) -> X
  ```


### Item `reversed_labeled_tuple_body: STACK FUNCTION ext list(attribute) . reversed_preceded_or_separated_nonempty_llist(BAR,match_case) COMMA fun_expr` (in 2 errors)

- Derivation (2 occurrences):
  ```
  reversed_labeled_tuple_body: STACK FUNCTION ext list(attribute) . reversed_preceded_or_separated_nonempty_llist(BAR,match_case) COMMA fun_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  X or stack_ function | false -> . , X
  ```


### Item `module_declaration_body(module_type_with_optional_modes): COLON . module_type` (in 1 error)

- Derivation (1 occurrence):
  ```
  module_declaration_body(module_type_with_optional_modes): COLON . module_type
    module_type: . module_type MINUSGREATER module_type
  ```
  Sample sentence (interface):
  ```ocaml
  module X ( ) : X -> X
  ```


### Item `module_type: module_type MINUSGREATER . module_type` (in 1 error)

- Derivation (1 occurrence):
  ```
  module_type: module_type MINUSGREATER . module_type
    module_type: . module_type WITH reversed_separated_nonempty_llist(AND,with_constraint)
  ```
  Sample sentence (implementation):
  ```ocaml
  module X : X -> X with module X := X = {%ext|s|}
  ```


### Item `reversed_separated_nonempty_llist(AND,with_constraint): reversed_separated_nonempty_llist(AND,with_constraint) AND . with_constraint` (in 1 error)

- Derivation (1 occurrence):
  ```
  reversed_separated_nonempty_llist(AND,with_constraint): reversed_separated_nonempty_llist(AND,with_constraint) AND . with_constraint
    with_constraint: . MODULE mod_longident COLONEQUAL mod_ext_longident
  ```
  Sample sentence (implementation):
  ```ocaml
  module X : X with module X := X and module X := X = {%ext|s|}
  ```

## BUG: ast changed. (2093 errors)

### Item `seq_expr: . fun_seq_expr` (in 1476 errors)

- Derivation (662 occurrences):
  ```
  implementation: . structure EOF
    structure: . seq_expr list(post_item_attribute) list(structure_element)
      seq_expr: . fun_seq_expr
        fun_seq_expr: . fun_expr
          fun_expr: . LETOP letop_bindings IN seq_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  let* x in exclave_ X ; , X
  ```
- Derivation (36 occurrences):
  ```
  implementation: . structure EOF
    structure: . seq_expr list(post_item_attribute) list(structure_element)
      seq_expr: . fun_seq_expr
        fun_seq_expr: . fun_expr
          fun_expr: . STACK simple_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  stack_ X .+ ( local_ X ; :: X )
  ```
- Derivation (28 occurrences):
  ```
  implementation: . structure EOF
    structure: . seq_expr list(post_item_attribute) list(structure_element)
      seq_expr: . fun_seq_expr
        fun_seq_expr: . fun_expr
          fun_expr: . simple_expr
            simple_expr: . LBRACKETCOLON fun_expr reversed_nonempty_llist(comprehension_clause) COLONRBRACKET
  ```
  Sample sentence (implementation):
  ```ocaml
  [: X when local_ X ; :: X :]
  ```
- Derivation (20 occurrences):
  ```
  implementation: . structure EOF
    structure: . seq_expr list(post_item_attribute) list(structure_element)
      seq_expr: . fun_seq_expr
        fun_seq_expr: . fun_expr
          fun_expr: . simple_expr
            simple_expr: . OBJECT ext list(attribute) class_self_pattern list(text_cstr(class_field)) END
  ```
  Sample sentence (implementation):
  ```ocaml
  object initializer exclave_ X ; , X end
  ```
- Derivation (12 occurrences):
  ```
  implementation: . structure EOF
    structure: . seq_expr list(post_item_attribute) list(structure_element)
      seq_expr: . fun_seq_expr
        fun_seq_expr: . fun_expr
          fun_expr: . FOR ext list(attribute) pattern EQUAL seq_expr direction_flag seq_expr DO seq_expr DONE
  ```
  Sample sentence (implementation):
  ```ocaml
  for false = local_ X ; :: X downto X do X done
  ```
- Derivation (8 occurrences):
  ```
  implementation: . structure EOF
    structure: . seq_expr list(post_item_attribute) list(structure_element)
      seq_expr: . fun_seq_expr
        fun_seq_expr: . fun_expr
          fun_expr: . EXCLAVE seq_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  exclave_ unique_ X ; :: X
  ```
- Derivation (8 occurrences):
  ```
  implementation: . structure EOF
    structure: . seq_expr list(post_item_attribute) list(structure_element)
      seq_expr: . fun_seq_expr
        fun_seq_expr: . fun_expr
          fun_expr: . LOCAL seq_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  local_ unique_ X ; :: X
  ```
- Derivation (8 occurrences):
  ```
  implementation: . structure EOF
    structure: . seq_expr list(post_item_attribute) list(structure_element)
      seq_expr: . fun_seq_expr
        fun_seq_expr: . fun_expr
          fun_expr: . WHILE ext list(attribute) seq_expr DO seq_expr DONE
  ```
  Sample sentence (implementation):
  ```ocaml
  while local_ X ; :: X do X done
  ```
- Derivation (8 occurrences):
  ```
  implementation: . structure EOF
    structure: . seq_expr list(post_item_attribute) list(structure_element)
      seq_expr: . fun_seq_expr
        fun_seq_expr: . fun_expr
          fun_expr: . IF ext list(attribute) seq_expr THEN fun_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  if local_ X ; :: X then X
  ```
- Derivation (8 occurrences):
  ```
  implementation: . structure EOF
    structure: . seq_expr list(post_item_attribute) list(structure_element)
      seq_expr: . fun_seq_expr
        fun_seq_expr: . fun_expr
          fun_expr: . fun_
            fun_: . FUN ext list(attribute) fun_params optional_atomic_constraint_ MINUSGREATER fun_body
  ```
  Sample sentence (implementation):
  ```ocaml
  fun false -> exclave_ X ; , X
  ```
- Derivation (4 occurrences):
  ```
  implementation: . structure EOF
    structure: . seq_expr list(post_item_attribute) list(structure_element)
      seq_expr: . fun_seq_expr
        fun_seq_expr: . fun_expr
          fun_expr: . simple_expr
            simple_expr: . LBRACKETCOLON separated_or_terminated_nonempty_list(SEMI,expr) COLONRBRACKET
  ```
  Sample sentence (implementation):
  ```ocaml
  [: local_ X ; :: X :]
  ```
- Derivation (4 occurrences):
  ```
  implementation: . structure EOF
    structure: . seq_expr list(post_item_attribute) list(structure_element)
      seq_expr: . fun_seq_expr
        fun_seq_expr: . fun_expr
          fun_expr: . simple_expr
            simple_expr: . LBRACKET separated_or_terminated_nonempty_list(SEMI,expr) RBRACKET
  ```
  Sample sentence (implementation):
  ```ocaml
  [ local_ X ; :: X ]
  ```
- Derivation (4 occurrences):
  ```
  implementation: . structure EOF
    structure: . seq_expr list(post_item_attribute) list(structure_element)
      seq_expr: . fun_seq_expr
        fun_seq_expr: . fun_expr
          fun_expr: . simple_expr
            simple_expr: . LBRACKETBAR separated_or_terminated_nonempty_list(SEMI,expr) BARRBRACKET
  ```
  Sample sentence (implementation):
  ```ocaml
  [| local_ X ; :: X |]
  ```
- Derivation (4 occurrences):
  ```
  implementation: . structure EOF
    structure: . seq_expr list(post_item_attribute) list(structure_element)
      seq_expr: . fun_seq_expr
        fun_seq_expr: . fun_expr
          fun_expr: . simple_expr
            simple_expr: . LPAREN block_access reversed_llist(unboxed_access) RPAREN
  ```
  Sample sentence (implementation):
  ```ocaml
  ( . ( local_ X ; :: X ) )
  ```
- Derivation (4 occurrences):
  ```
  implementation: . structure EOF
    structure: . seq_expr list(post_item_attribute) list(structure_element)
      seq_expr: . fun_seq_expr
        fun_seq_expr: . fun_expr
          fun_expr: . simple_expr
            simple_expr: . LBRACELESS separated_or_terminated_nonempty_list(SEMI,object_expr_field) GREATERRBRACE
  ```
  Sample sentence (implementation):
  ```ocaml
  {< x = local_ X ; :: X >}
  ```
- Derivation (4 occurrences):
  ```
  implementation: . structure EOF
    structure: . seq_expr list(post_item_attribute) list(structure_element)
      seq_expr: . fun_seq_expr
        fun_seq_expr: . fun_expr
          fun_expr: . simple_expr
            simple_expr: . BEGIN ext list(attribute) seq_expr END
  ```
  Sample sentence (implementation):
  ```ocaml
  begin local_ X ; :: X end
  ```
- Derivation (4 occurrences):
  ```
  implementation: . structure EOF
    structure: . seq_expr list(post_item_attribute) list(structure_element)
      seq_expr: . fun_seq_expr
        fun_seq_expr: . fun_expr
          fun_expr: . simple_expr
            simple_expr: . LPAREN seq_expr RPAREN
  ```
  Sample sentence (implementation):
  ```ocaml
  ( local_ X ; :: X )
  ```
- Derivation (4 occurrences):
  ```
  fun_expr: LETOP letop_bindings IN . seq_expr
    seq_expr: . fun_seq_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  let* x in X ; function false -> . - X
  ```
- Derivation (4 occurrences):
  ```
  implementation: . structure EOF
    structure: . seq_expr list(post_item_attribute) list(structure_element)
      seq_expr: . fun_seq_expr
        fun_seq_expr: . fun_expr
          fun_expr: . simple_expr
            simple_expr: . mod_longident DOT LBRACKETCOLON separated_or_terminated_nonempty_list(SEMI,expr) COLONRBRACKET
              mod_longident: . mk_longident(mod_longident,UIDENT)
                mk_longident(mod_longident,UIDENT): . UIDENT
  ```
  Sample sentence (implementation):
  ```ocaml
  X . [: local_ X ; :: X :]
  ```
- Derivation (4 occurrences):
  ```
  implementation: . structure EOF
    structure: . seq_expr list(post_item_attribute) list(structure_element)
      seq_expr: . fun_seq_expr
        fun_seq_expr: . fun_expr
          fun_expr: . simple_expr
            simple_expr: . mod_longident DOT LBRACKET separated_or_terminated_nonempty_list(SEMI,expr) RBRACKET
              mod_longident: . mk_longident(mod_longident,UIDENT)
                mk_longident(mod_longident,UIDENT): . UIDENT
  ```
  Sample sentence (implementation):
  ```ocaml
  X . [ local_ X ; :: X ]
  ```
- Derivation (4 occurrences):
  ```
  implementation: . structure EOF
    structure: . seq_expr list(post_item_attribute) list(structure_element)
      seq_expr: . fun_seq_expr
        fun_seq_expr: . fun_expr
          fun_expr: . simple_expr
            simple_expr: . mod_longident DOT LBRACKETBAR separated_or_terminated_nonempty_list(SEMI,expr) BARRBRACKET
              mod_longident: . mk_longident(mod_longident,UIDENT)
                mk_longident(mod_longident,UIDENT): . UIDENT
  ```
  Sample sentence (implementation):
  ```ocaml
  X . [| local_ X ; :: X |]
  ```
- ...


### Item `fun_expr: LETOP letop_bindings IN . seq_expr` (in 326 errors)

- Derivation (326 occurrences):
  ```
  fun_expr: LETOP letop_bindings IN . seq_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  local_ let* x in function false -> . - X
  ```


### Item `at_mode_expr: . AT nonempty_list(mode)` (in 145 errors)

- Derivation (52 occurrences):
  ```
  module_type: module_type_atomic . at_mode_expr MINUSGREATER module_type
    at_mode_expr: . AT nonempty_list(mode)
  ```
  Sample sentence (interface):
  ```ocaml
  include X @ x -> {%ext|s|}
  ```
- Derivation (26 occurrences):
  ```
  functor_arg: LPAREN module_name COLON module_type_atomic . at_mode_expr RPAREN
    at_mode_expr: . AT nonempty_list(mode)
  ```
  Sample sentence (interface):
  ```ocaml
  include ( X : X @ x ) -> {%ext|s|}
  ```
- Derivation (24 occurrences):
  ```
  module_type: FUNCTOR list(attribute) reversed_nonempty_llist(functor_arg) MINUSGREATER module_type_atomic . at_mode_expr
    at_mode_expr: . AT nonempty_list(mode)
  ```
  Sample sentence (interface):
  ```ocaml
  include functor functor ( ) -> X @ x
  ```
- Derivation (14 occurrences):
  ```
  module_type: reversed_nonempty_llist(functor_arg) MINUSGREATER module_type_atomic . at_mode_expr
    at_mode_expr: . AT nonempty_list(mode)
  ```
  Sample sentence (interface):
  ```ocaml
  include ( ) -> X @ x
  ```
- Derivation (13 occurrences):
  ```
  module_type: module_type MINUSGREATER module_type_atomic . at_mode_expr
    at_mode_expr: . AT nonempty_list(mode)
  ```
  Sample sentence (interface):
  ```ocaml
  include {%ext|s|} -> X @ x
  ```
- Derivation (12 occurrences):
  ```
  module_type: module_type_atomic . at_mode_expr MINUSGREATER module_type_atomic at_mode_expr
    at_mode_expr: . AT nonempty_list(mode)
  ```
  Sample sentence (interface):
  ```ocaml
  include X @ x -> X @ x
  ```
- Derivation (2 occurrences):
  ```
  module_type: module_type_atomic at_mode_expr MINUSGREATER module_type_atomic . at_mode_expr
    at_mode_expr: . AT nonempty_list(mode)
  ```
  Sample sentence (implementation):
  ```ocaml
  module X : X @ x -> X @ x = {%ext|s|}
  ```
- Derivation (2 occurrences):
  ```
  module_declaration_body(module_type_with_optional_modes): COLON module_type_atomic . at_mode_expr
    at_mode_expr: . AT nonempty_list(mode)
  ```
  Sample sentence (interface):
  ```ocaml
  module X ( ) : X @ x
  ```


### Item `extension: . QUOTED_STRING_EXPR` (in 66 errors)

- Derivation (22 occurrences):
  ```
  module_type: reversed_nonempty_llist(functor_arg) MINUSGREATER . module_type
    module_type: . extension
      extension: . QUOTED_STRING_EXPR
  ```
  Sample sentence (interface):
  ```ocaml
  include ( ) -> {%ext|s|} @@ x
  ```
- Derivation (16 occurrences):
  ```
  signature_item: include_kind ext list(attribute) . module_type list(post_item_attribute) optional_atat_modalities_expr
    module_type: . module_type MINUSGREATER module_type
      module_type: . extension
        extension: . QUOTED_STRING_EXPR
  ```
  Sample sentence (interface):
  ```ocaml
  include {%ext|s|} -> {%ext|s|}
  ```
- Derivation (9 occurrences):
  ```
  signature_item: include_kind ext list(attribute) . module_type list(post_item_attribute) optional_atat_modalities_expr
    module_type: . module_type MINUSGREATER module_type
      module_type: . module_type WITH reversed_separated_nonempty_llist(AND,with_constraint)
        module_type: . extension
          extension: . QUOTED_STRING_EXPR
  ```
  Sample sentence (interface):
  ```ocaml
  include {%ext|s|} with module X := X -> X
  ```
- Derivation (3 occurrences):
  ```
  module_type: reversed_nonempty_llist(functor_arg) MINUSGREATER . module_type
    module_type: . module_type WITH reversed_separated_nonempty_llist(AND,with_constraint)
      module_type: . extension
        extension: . QUOTED_STRING_EXPR
  ```
  Sample sentence (interface):
  ```ocaml
  include ( ) -> {%ext|s|} with module X := X
  ```
- Derivation (2 occurrences):
  ```
  module_type_atomic: LPAREN . module_type RPAREN
    module_type: . extension
      extension: . QUOTED_STRING_EXPR
  ```
  Sample sentence (interface):
  ```ocaml
  include ( ) -> ( {%ext|s|} )
  ```
- Derivation (2 occurrences):
  ```
  module_type: module_type_atomic at_mode_expr MINUSGREATER . module_type
    module_type: . extension
      extension: . QUOTED_STRING_EXPR
  ```
  Sample sentence (implementation):
  ```ocaml
  module X : X @ x -> {%ext|s|} = {%ext|s|}
  ```
- Derivation (2 occurrences):
  ```
  module_type_atomic: LPAREN . module_type RPAREN
    module_type: . module_type MINUSGREATER module_type
      module_type: . extension
        extension: . QUOTED_STRING_EXPR
  ```
  Sample sentence (interface):
  ```ocaml
  include ( {%ext|s|} -> X )
  ```
- Derivation (2 occurrences):
  ```
  generalized_constructor_arguments: COLON reversed_nonempty_llist(typevar) DOT . atomic_type
    atomic_type: . delimited_type
      delimited_type: . extension_type
        extension_type: . extension
          extension: . QUOTED_STRING_EXPR
  ```
  Sample sentence (interface):
  ```ocaml
  type x += false : ' x . {%ext|s|} | false
  ```
- Derivation (1 occurrence):
  ```
  module_type: reversed_nonempty_llist(functor_arg) MINUSGREATER . module_type
    module_type: . module_type WITH mod_ext_longident
      module_type: . extension
        extension: . QUOTED_STRING_EXPR
  ```
  Sample sentence (interface):
  ```ocaml
  include ( ) -> {%ext|s|} with X
  ```
- Derivation (1 occurrence):
  ```
  module_type: reversed_nonempty_llist(functor_arg) MINUSGREATER . module_type
    module_type: . module_type WITH mod_ext_longident
      module_type: . module_type WITH reversed_separated_nonempty_llist(AND,with_constraint)
        module_type: . extension
          extension: . QUOTED_STRING_EXPR
  ```
  Sample sentence (interface):
  ```ocaml
  include ( ) -> {%ext|s|} with module X := X with X
  ```
- Derivation (1 occurrence):
  ```
  module_type: module_type_atomic at_mode_expr MINUSGREATER . module_type
    module_type: . module_type WITH reversed_separated_nonempty_llist(AND,with_constraint)
      module_type: . extension
        extension: . QUOTED_STRING_EXPR
  ```
  Sample sentence (implementation):
  ```ocaml
  module X : X @ x -> {%ext|s|} with module X := X = {%ext|s|}
  ```
- Derivation (1 occurrence):
  ```
  module_type_atomic: LPAREN . module_type RPAREN
    module_type: . module_type MINUSGREATER module_type
      module_type: . module_type WITH reversed_separated_nonempty_llist(AND,with_constraint)
        module_type: . extension
          extension: . QUOTED_STRING_EXPR
  ```
  Sample sentence (interface):
  ```ocaml
  include ( {%ext|s|} with module X := X -> X )
  ```
- Derivation (1 occurrence):
  ```
  module_type: reversed_nonempty_llist(functor_arg) MINUSGREATER . module_type
    module_type: . module_type attribute
      module_type: . module_type WITH reversed_separated_nonempty_llist(AND,with_constraint)
        module_type: . extension
          extension: . QUOTED_STRING_EXPR
  ```
  Sample sentence (interface):
  ```ocaml
  include ( ) -> {%ext|s|} with module X := X [@ and ]
  ```
- Derivation (1 occurrence):
  ```
  module_type: module_type_atomic at_mode_expr MINUSGREATER . module_type
    module_type: . module_type MINUSGREATER module_type
      module_type: . extension
        extension: . QUOTED_STRING_EXPR
  ```
  Sample sentence (implementation):
  ```ocaml
  module X : X @ x -> {%ext|s|} -> X = {%ext|s|}
  ```
- Derivation (1 occurrence):
  ```
  module_type: reversed_nonempty_llist(functor_arg) MINUSGREATER . module_type
    module_type: . module_type attribute
      module_type: . extension
        extension: . QUOTED_STRING_EXPR
  ```
  Sample sentence (interface):
  ```ocaml
  include ( ) -> {%ext|s|} [@ and ]
  ```
- Derivation (1 occurrence):
  ```
  functor_arg: LPAREN module_name COLON . module_type RPAREN
    module_type: . extension
      extension: . QUOTED_STRING_EXPR
  ```
  Sample sentence (interface):
  ```ocaml
  include ( X : {%ext|s|} ) -> {%ext|s|}
  ```


### Item `generalized_constructor_arguments: COLON reversed_nonempty_llist(typevar) DOT . atomic_type` (in 51 errors)

- Derivation (28 occurrences):
  ```
  generalized_constructor_arguments: COLON reversed_nonempty_llist(typevar) DOT . atomic_type
  ```
  Sample sentence (interface):
  ```ocaml
  exception false : ' x . {%ext|s|}
  ```
- Derivation (1 occurrence):
  ```
  generalized_constructor_arguments: COLON reversed_nonempty_llist(typevar) DOT . atomic_type
    atomic_type: . type_longident
      type_longident: . mk_longident(mod_ext_longident,type_trailing_no_hash)
  ```
  Sample sentence (implementation):
  ```ocaml
  let exception false : ' x . x in X
  ```
- Derivation (1 occurrence):
  ```
  generalized_constructor_arguments: COLON reversed_nonempty_llist(typevar) DOT . atomic_type
    atomic_type: . atomic_type type_longident
      atomic_type: . type_longident
        type_longident: . mk_longident(mod_ext_longident,type_trailing_no_hash)
  ```
  Sample sentence (implementation):
  ```ocaml
  exception false : ' x . x x
  ```
- Derivation (1 occurrence):
  ```
  generalized_constructor_arguments: COLON reversed_nonempty_llist(typevar) DOT . atomic_type
    atomic_type: . delimited_type
      delimited_type: . object_type
        object_type: . LESS GREATER
  ```
  Sample sentence (implementation):
  ```ocaml
  exception false : ' x . < >
  ```
- Derivation (1 occurrence):
  ```
  generalized_constructor_arguments: COLON reversed_nonempty_llist(typevar) DOT . atomic_type
    atomic_type: . delimited_type
      delimited_type: . object_type
        object_type: . LESS meth_list GREATER
  ```
  Sample sentence (implementation):
  ```ocaml
  exception false : ' x . < {%ext|s|} >
  ```
- Derivation (1 occurrence):
  ```
  generalized_constructor_arguments: COLON reversed_nonempty_llist(typevar) DOT . atomic_type
    atomic_type: . type_unboxed_longident
      type_unboxed_longident: . mk_longident(mod_ext_longident,type_trailing_hash)
        mk_longident(mod_ext_longident,type_trailing_hash): . type_trailing_hash
  ```
  Sample sentence (implementation):
  ```ocaml
  exception false : ' x . x#
  ```
- Derivation (1 occurrence):
  ```
  generalized_constructor_arguments: COLON reversed_nonempty_llist(typevar) DOT . atomic_type
    atomic_type: . type_longident
      type_longident: . mk_longident(mod_ext_longident,type_trailing_no_hash)
        mk_longident(mod_ext_longident,type_trailing_no_hash): . mod_ext_longident DOT type_trailing_no_hash
          mod_ext_longident: . mod_ext_longident LPAREN mod_ext_longident RPAREN
            mod_ext_longident: . mk_longident(mod_ext_longident,UIDENT)
              mk_longident(mod_ext_longident,UIDENT): . UIDENT
  ```
  Sample sentence (implementation):
  ```ocaml
  exception false : ' x . X ( X ) . x
  ```
- Derivation (1 occurrence):
  ```
  generalized_constructor_arguments: COLON reversed_nonempty_llist(typevar) DOT . atomic_type
    atomic_type: . type_longident
      type_longident: . mk_longident(mod_ext_longident,type_trailing_no_hash)
        mk_longident(mod_ext_longident,type_trailing_no_hash): . mod_ext_longident DOT type_trailing_no_hash
          mod_ext_longident: . mk_longident(mod_ext_longident,UIDENT)
            mk_longident(mod_ext_longident,UIDENT): . UIDENT
  ```
  Sample sentence (implementation):
  ```ocaml
  exception false : ' x . X . x
  ```
- Derivation (1 occurrence):
  ```
  generalized_constructor_arguments: COLON reversed_nonempty_llist(typevar) DOT . atomic_type
    atomic_type: . type_longident
      type_longident: . mk_longident(mod_ext_longident,type_trailing_no_hash)
        mk_longident(mod_ext_longident,type_trailing_no_hash): . mod_ext_longident DOT type_trailing_no_hash
          mod_ext_longident: . mk_longident(mod_ext_longident,UIDENT)
            mk_longident(mod_ext_longident,UIDENT): . mod_ext_longident DOT UIDENT
              mod_ext_longident: . mk_longident(mod_ext_longident,UIDENT)
                mk_longident(mod_ext_longident,UIDENT): . UIDENT
  ```
  Sample sentence (implementation):
  ```ocaml
  exception false : ' x . X . X . x
  ```
- Derivation (1 occurrence):
  ```
  generalized_constructor_arguments: COLON reversed_nonempty_llist(typevar) DOT . atomic_type
    atomic_type: . delimited_type
      delimited_type: . extension_type
        extension_type: . extension
          extension: . LBRACKETPERCENT attr_id payload RBRACKET
  ```
  Sample sentence (implementation):
  ```ocaml
  exception false : ' x . [% and ]
  ```
- Derivation (1 occurrence):
  ```
  generalized_constructor_arguments: COLON reversed_nonempty_llist(typevar) DOT . atomic_type
    atomic_type: . delimited_type
      delimited_type: . delimited_type_supporting_local_open
        delimited_type_supporting_local_open: . HASHLPAREN LIDENT COLON atomic_type STAR reversed_separated_nonempty_llist(STAR,labeled_tuple_typ_element) RPAREN
  ```
  Sample sentence (implementation):
  ```ocaml
  exception false : ' x . #( x : {%ext|s|} * {%ext|s|} )
  ```
- Derivation (1 occurrence):
  ```
  generalized_constructor_arguments: COLON reversed_nonempty_llist(typevar) DOT . atomic_type
    atomic_type: . delimited_type
      delimited_type: . delimited_type_supporting_local_open
        delimited_type_supporting_local_open: . HASHLPAREN atomic_type STAR reversed_separated_nonempty_llist(STAR,labeled_tuple_typ_element) RPAREN
  ```
  Sample sentence (implementation):
  ```ocaml
  exception false : ' x . #( {%ext|s|} * {%ext|s|} )
  ```
- Derivation (1 occurrence):
  ```
  generalized_constructor_arguments: COLON reversed_nonempty_llist(typevar) DOT . atomic_type
    atomic_type: . delimited_type
      delimited_type: . delimited_type_supporting_local_open
        delimited_type_supporting_local_open: . LBRACKETLESS option(BAR) reversed_separated_nonempty_llist(BAR,row_field) GREATER reversed_nonempty_llist(name_tag) RBRACKET
  ```
  Sample sentence (implementation):
  ```ocaml
  exception false : ' x . [< {%ext|s|} > ` x ]
  ```
- Derivation (1 occurrence):
  ```
  generalized_constructor_arguments: COLON reversed_nonempty_llist(typevar) DOT . atomic_type
    atomic_type: . delimited_type
      delimited_type: . delimited_type_supporting_local_open
        delimited_type_supporting_local_open: . LBRACKETLESS option(BAR) reversed_separated_nonempty_llist(BAR,row_field) RBRACKET
  ```
  Sample sentence (implementation):
  ```ocaml
  exception false : ' x . [< {%ext|s|} ]
  ```
- Derivation (1 occurrence):
  ```
  generalized_constructor_arguments: COLON reversed_nonempty_llist(typevar) DOT . atomic_type
    atomic_type: . delimited_type
      delimited_type: . delimited_type_supporting_local_open
        delimited_type_supporting_local_open: . LBRACKETGREATER RBRACKET
  ```
  Sample sentence (implementation):
  ```ocaml
  exception false : ' x . [> ]
  ```
- Derivation (1 occurrence):
  ```
  generalized_constructor_arguments: COLON reversed_nonempty_llist(typevar) DOT . atomic_type
    atomic_type: . delimited_type
      delimited_type: . delimited_type_supporting_local_open
        delimited_type_supporting_local_open: . LBRACKETGREATER option(BAR) reversed_separated_nonempty_llist(BAR,row_field) RBRACKET
  ```
  Sample sentence (implementation):
  ```ocaml
  exception false : ' x . [> {%ext|s|} ]
  ```
- Derivation (1 occurrence):
  ```
  generalized_constructor_arguments: COLON reversed_nonempty_llist(typevar) DOT . atomic_type
    atomic_type: . delimited_type
      delimited_type: . delimited_type_supporting_local_open
        delimited_type_supporting_local_open: . LBRACKET row_field BAR reversed_separated_nonempty_llist(BAR,row_field) RBRACKET
  ```
  Sample sentence (implementation):
  ```ocaml
  exception false : ' x . [ {%ext|s|} | {%ext|s|} ]
  ```
- Derivation (1 occurrence):
  ```
  generalized_constructor_arguments: COLON reversed_nonempty_llist(typevar) DOT . atomic_type
    atomic_type: . delimited_type
      delimited_type: . delimited_type_supporting_local_open
        delimited_type_supporting_local_open: . LBRACKET BAR reversed_separated_nonempty_llist(BAR,row_field) RBRACKET
  ```
  Sample sentence (implementation):
  ```ocaml
  exception false : ' x . [ | {%ext|s|} ]
  ```
- Derivation (1 occurrence):
  ```
  generalized_constructor_arguments: COLON reversed_nonempty_llist(typevar) DOT . atomic_type
    atomic_type: . delimited_type
      delimited_type: . delimited_type_supporting_local_open
        delimited_type_supporting_local_open: . LBRACKET tag_field RBRACKET
  ```
  Sample sentence (implementation):
  ```ocaml
  exception false : ' x . [ ` x ]
  ```
- Derivation (1 occurrence):
  ```
  generalized_constructor_arguments: COLON reversed_nonempty_llist(typevar) DOT . atomic_type
    atomic_type: . delimited_type
      delimited_type: . delimited_type_supporting_local_open
  ```
  Sample sentence (implementation):
  ```ocaml
  exception false : ' x . ( {%ext|s|} )
  ```
- Derivation (1 occurrence):
  ```
  generalized_constructor_arguments: COLON reversed_nonempty_llist(typevar) DOT . atomic_type
    atomic_type: . UNDERSCORE
  ```
  Sample sentence (implementation):
  ```ocaml
  exception false : ' x . _
  ```
- ...


### Item `reversed_preceded_or_separated_nonempty_llist(BAR,match_case): . match_case` (in 16 errors)

- Derivation (8 occurrences):
  ```
  fun_expr: fun_expr OR STACK FUNCTION ext list(attribute) . reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
    reversed_preceded_or_separated_nonempty_llist(BAR,match_case): . match_case
  ```
  Sample sentence (implementation):
  ```ocaml
  let* x in X or stack_ function false -> . = X
  ```
- Derivation (6 occurrences):
  ```
  fun_expr: fun_expr OR FUNCTION ext list(attribute) . reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
    reversed_preceded_or_separated_nonempty_llist(BAR,match_case): . match_case
  ```
  Sample sentence (implementation):
  ```ocaml
  let* x in X or function false -> . = X
  ```
- Derivation (1 occurrence):
  ```
  fun_expr: fun_expr MOD FUNCTION ext list(attribute) . reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
    reversed_preceded_or_separated_nonempty_llist(BAR,match_case): . match_case
  ```
  Sample sentence (implementation):
  ```ocaml
  let* x in X mod function false -> . ** X
  ```
- Derivation (1 occurrence):
  ```
  fun_expr: fun_expr MOD STACK FUNCTION ext list(attribute) . reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
    reversed_preceded_or_separated_nonempty_llist(BAR,match_case): . match_case
      match_case: . pattern MINUSGREATER DOT
        pattern: . pattern_gen
          pattern_gen: . simple_pattern
            simple_pattern: . simple_pattern_not_ident
              simple_pattern_not_ident: . constr_longident
                constr_longident: . constr_extra_nonprefix_ident
                  constr_extra_nonprefix_ident: . FALSE
  ```
  Sample sentence (implementation):
  ```ocaml
  let* x in X mod stack_ function false -> . ** X
  ```


### Item `functor_arg: LPAREN . RPAREN` (in 8 errors)

- Derivation (8 occurrences):
  ```
  functor_arg: LPAREN . RPAREN
  ```
  Sample sentence (interface):
  ```ocaml
  include ( ) -> X
  ```


### Item `module_type: . FUNCTOR list(attribute) reversed_nonempty_llist(functor_arg) MINUSGREATER module_type` (in 3 errors)

- Derivation (2 occurrences):
  ```
  module_type_atomic: LPAREN . module_type RPAREN
    module_type: . FUNCTOR list(attribute) reversed_nonempty_llist(functor_arg) MINUSGREATER module_type
  ```
  Sample sentence (interface):
  ```ocaml
  include ( functor ( ) -> X )
  ```
- Derivation (1 occurrence):
  ```
  module_type: module_type_atomic at_mode_expr MINUSGREATER . module_type
    module_type: . FUNCTOR list(attribute) reversed_nonempty_llist(functor_arg) MINUSGREATER module_type
  ```
  Sample sentence (implementation):
  ```ocaml
  module X : X @ x -> functor ( ) -> X = {%ext|s|}
  ```


### Item `attribute: . LBRACKETAT attr_id attr_payload RBRACKET` (in 2 errors)

- Derivation (1 occurrence):
  ```
  signature_item: include_kind ext . list(attribute) module_type list(post_item_attribute) optional_atat_modalities_expr
    list(attribute): . attribute list(attribute)
      attribute: . LBRACKETAT attr_id attr_payload RBRACKET
  ```
  Sample sentence (interface):
  ```ocaml
  include [@ and ] functor ( ) -> X
  ```
- Derivation (1 occurrence):
  ```
  module_type: MODULE TYPE OF . list(attribute) module_expr
    list(attribute): . attribute list(attribute)
      attribute: . LBRACKETAT attr_id attr_payload RBRACKET
  ```
  Sample sentence (interface):
  ```ocaml
  include module type of [@ and ] {%ext|s|}
  ```

## BUG: generating invalid ocaml syntax. (327 errors)

### Item `mk_longident(mod_ext_longident,type_trailing_hash): mod_ext_longident DOT . type_trailing_hash` (in 219 errors)

- Derivation (219 occurrences):
  ```
  mk_longident(mod_ext_longident,type_trailing_hash): mod_ext_longident DOT . type_trailing_hash
  ```
  Sample sentence (implementation):
  ```ocaml
  exception false : X . x#
  ```


### Item `extension: . QUOTED_STRING_EXPR` (in 62 errors)

- Derivation (15 occurrences):
  ```
  signature_item: include_kind ext list(attribute) . module_type list(post_item_attribute) optional_atat_modalities_expr
    module_type: . module_type MINUSGREATER module_type
      module_type: . extension
        extension: . QUOTED_STRING_EXPR
  ```
  Sample sentence (interface):
  ```ocaml
  include {%ext|s|} -> X -> X
  ```
- Derivation (12 occurrences):
  ```
  module_type: reversed_nonempty_llist(functor_arg) MINUSGREATER . module_type
    module_type: . extension
      extension: . QUOTED_STRING_EXPR
  ```
  Sample sentence (interface):
  ```ocaml
  include ( ) -> ( ) -> {%ext|s|}
  ```
- Derivation (9 occurrences):
  ```
  signature_item: MODULE ext list(attribute) REC module_name COLON . module_type optional_atat_modalities_expr list(post_item_attribute) list(and_module_declaration)
    module_type: . extension
      extension: . QUOTED_STRING_EXPR
  ```
  Sample sentence (interface):
  ```ocaml
  module rec X : {%ext|s|} @@ x
  ```
- Derivation (8 occurrences):
  ```
  module_type: module_type_atomic at_mode_expr MINUSGREATER . module_type
    module_type: . extension
      extension: . QUOTED_STRING_EXPR
  ```
  Sample sentence (interface):
  ```ocaml
  include ( ) -> X @ x -> {%ext|s|}
  ```
- Derivation (4 occurrences):
  ```
  module_type_atomic: LPAREN . module_type RPAREN
    module_type: . module_type MINUSGREATER module_type
      module_type: . extension
        extension: . QUOTED_STRING_EXPR
  ```
  Sample sentence (interface):
  ```ocaml
  include ( {%ext|s|} -> X -> X )
  ```
- Derivation (3 occurrences):
  ```
  module_type: module_type_atomic at_mode_expr MINUSGREATER . module_type
    module_type: . module_type MINUSGREATER module_type
      module_type: . extension
        extension: . QUOTED_STRING_EXPR
  ```
  Sample sentence (interface):
  ```ocaml
  include X @ x -> {%ext|s|} -> X
  ```
- Derivation (3 occurrences):
  ```
  module_type: reversed_nonempty_llist(functor_arg) MINUSGREATER . module_type
    module_type: . module_type MINUSGREATER module_type
      module_type: . extension
        extension: . QUOTED_STRING_EXPR
  ```
  Sample sentence (interface):
  ```ocaml
  include ( ) -> {%ext|s|} -> X
  ```
- Derivation (1 occurrence):
  ```
  signature_item: MODULE ext list(attribute) REC module_name COLON . module_type optional_atat_modalities_expr list(post_item_attribute) list(and_module_declaration)
    module_type: . module_type WITH reversed_separated_nonempty_llist(AND,with_constraint)
      module_type: . extension
        extension: . QUOTED_STRING_EXPR
  ```
  Sample sentence (interface):
  ```ocaml
  module rec X : {%ext|s|} with module X := X @@ x
  ```
- Derivation (1 occurrence):
  ```
  module_type: module_type_atomic at_mode_expr MINUSGREATER . module_type
    module_type: . module_type MINUSGREATER module_type
      module_type: . module_type WITH reversed_separated_nonempty_llist(AND,with_constraint)
        module_type: . extension
          extension: . QUOTED_STRING_EXPR
  ```
  Sample sentence (interface):
  ```ocaml
  include X @ x -> {%ext|s|} with module X := X -> X
  ```
- Derivation (1 occurrence):
  ```
  module_type: reversed_nonempty_llist(functor_arg) MINUSGREATER . module_type
    module_type: . module_type MINUSGREATER module_type
      module_type: . module_type WITH reversed_separated_nonempty_llist(AND,with_constraint)
        module_type: . extension
          extension: . QUOTED_STRING_EXPR
  ```
  Sample sentence (interface):
  ```ocaml
  include ( ) -> {%ext|s|} with module X := X -> X
  ```
- Derivation (1 occurrence):
  ```
  module_type: module_type_atomic at_mode_expr MINUSGREATER . module_type
    module_type: . module_type MINUSGREATER module_type_atomic at_mode_expr
      module_type: . extension
        extension: . QUOTED_STRING_EXPR
  ```
  Sample sentence (interface):
  ```ocaml
  include X @ x -> {%ext|s|} -> X @ x
  ```
- Derivation (1 occurrence):
  ```
  module_type: reversed_nonempty_llist(functor_arg) MINUSGREATER . module_type
    module_type: . module_type MINUSGREATER module_type_atomic at_mode_expr
      module_type: . extension
        extension: . QUOTED_STRING_EXPR
  ```
  Sample sentence (interface):
  ```ocaml
  include ( ) -> {%ext|s|} -> X @ x
  ```
- Derivation (1 occurrence):
  ```
  signature_item: MODULE ext list(attribute) REC module_name COLON . module_type optional_atat_modalities_expr list(post_item_attribute) list(and_module_declaration)
    module_type: . module_type MINUSGREATER module_type
      module_type: . extension
        extension: . QUOTED_STRING_EXPR
  ```
  Sample sentence (interface):
  ```ocaml
  module rec X : {%ext|s|} -> X @@ x
  ```
- Derivation (1 occurrence):
  ```
  optional_poly_type_and_modes: COLON reversed_nonempty_llist(typevar) DOT . tuple_type at_mode_expr
    tuple_type: . atomic_type
      atomic_type: . delimited_type
        delimited_type: . extension_type
          extension_type: . extension
            extension: . QUOTED_STRING_EXPR
  ```
  Sample sentence (implementation):
  ```ocaml
  fun ( local_ false : ' x . {%ext|s|} @ x ) -> X
  ```
- Derivation (1 occurrence):
  ```
  optional_poly_type_and_modes: COLON . tuple_type at_mode_expr
    tuple_type: . atomic_type
      atomic_type: . delimited_type
        delimited_type: . extension_type
          extension_type: . extension
            extension: . QUOTED_STRING_EXPR
  ```
  Sample sentence (implementation):
  ```ocaml
  fun ( local_ false : {%ext|s|} @ x ) -> X
  ```


### Item `at_mode_expr: . AT nonempty_list(mode)` (in 25 errors)

- Derivation (12 occurrences):
  ```
  pattern_with_modes_or_poly: nonempty_list(mode_legacy) pattern . optional_poly_type_and_modes
    optional_poly_type_and_modes: . at_mode_expr
      at_mode_expr: . AT nonempty_list(mode)
  ```
  Sample sentence (implementation):
  ```ocaml
  fun ( local_ false @ x ) -> X
  ```
- Derivation (6 occurrences):
  ```
  module_type: module_type_atomic . at_mode_expr MINUSGREATER module_type
    at_mode_expr: . AT nonempty_list(mode)
  ```
  Sample sentence (interface):
  ```ocaml
  include X @ x -> functor ( ) -> X
  ```
- Derivation (4 occurrences):
  ```
  let_binding_body_no_punning: nonempty_list(mode_legacy) val_ident . at_mode_expr EQUAL seq_expr
    at_mode_expr: . AT nonempty_list(mode)
  ```
  Sample sentence (implementation):
  ```ocaml
  let local_ x @ x = fun false -> X
  ```
- Derivation (1 occurrence):
  ```
  module_type: module_type_atomic . at_mode_expr MINUSGREATER module_type_atomic at_mode_expr
    at_mode_expr: . AT nonempty_list(mode)
  ```
  Sample sentence (interface):
  ```ocaml
  include ( ) -> X @ x -> X @ x
  ```
- Derivation (1 occurrence):
  ```
  module_type: reversed_nonempty_llist(functor_arg) MINUSGREATER module_type_atomic . at_mode_expr
    at_mode_expr: . AT nonempty_list(mode)
  ```
  Sample sentence (interface):
  ```ocaml
  include ( ) -> ( ) -> X @ x
  ```
- Derivation (1 occurrence):
  ```
  module_type: FUNCTOR list(attribute) reversed_nonempty_llist(functor_arg) MINUSGREATER module_type_atomic . at_mode_expr
    at_mode_expr: . AT nonempty_list(mode)
  ```
  Sample sentence (interface):
  ```ocaml
  include ( ) -> functor ( ) -> X @ x
  ```


### Item `implementation: . structure EOF` (in 9 errors)

- Derivation (4 occurrences):
  ```
  implementation: . structure EOF
    structure: . seq_expr list(post_item_attribute) list(structure_element)
      seq_expr: . fun_seq_expr
        fun_seq_expr: . fun_expr
          fun_expr: . simple_expr
            simple_expr: . HASHLPAREN reversed_labeled_tuple_body RPAREN
  ```
  Sample sentence (implementation):
  ```ocaml
  #( exclave_ X ; , X )
  ```
- Derivation (2 occurrences):
  ```
  implementation: . structure EOF
    structure: . list(structure_element)
      list(structure_element): . structure_item list(structure_element)
        structure_item: . TYPE ext list(attribute) type_parameters type_longident PLUSEQ private_flag reversed_bar_llist(extension_constructor) list(post_item_attribute)
  ```
  Sample sentence (implementation):
  ```ocaml
  type x += ( :: )
  ```
- Derivation (1 occurrence):
  ```
  implementation: . structure EOF
    structure: . seq_expr list(post_item_attribute) list(structure_element)
      seq_expr: . fun_seq_expr
        fun_seq_expr: . fun_expr
          fun_expr: . simple_expr
            simple_expr: . OBJECT ext list(attribute) class_self_pattern list(text_cstr(class_field)) END
  ```
  Sample sentence (implementation):
  ```ocaml
  object ( ( module X ) ) end
  ```
- Derivation (1 occurrence):
  ```
  implementation: . structure EOF
    structure: . list(structure_element)
      list(structure_element): . structure_item list(structure_element)
        structure_item: . str_exception_declaration
          str_exception_declaration: . sig_exception_declaration
            sig_exception_declaration: . EXCEPTION ext list(attribute) constr_ident generalized_constructor_arguments list(attribute) list(post_item_attribute)
  ```
  Sample sentence (implementation):
  ```ocaml
  exception ( :: )
  ```
- Derivation (1 occurrence):
  ```
  implementation: . structure EOF
    structure: . seq_expr list(post_item_attribute) list(structure_element)
      seq_expr: . fun_seq_expr
        fun_seq_expr: . fun_expr
          fun_expr: . LET EXCEPTION ext list(attribute) constr_ident generalized_constructor_arguments list(attribute) IN seq_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  let exception ( :: ) in X
  ```


### Item `module_type: . FUNCTOR list(attribute) reversed_nonempty_llist(functor_arg) MINUSGREATER module_type` (in 6 errors)

- Derivation (3 occurrences):
  ```
  module_type: reversed_nonempty_llist(functor_arg) MINUSGREATER . module_type
    module_type: . FUNCTOR list(attribute) reversed_nonempty_llist(functor_arg) MINUSGREATER module_type
  ```
  Sample sentence (interface):
  ```ocaml
  include ( ) -> functor ( ) -> X
  ```
- Derivation (2 occurrences):
  ```
  module_type_atomic: LPAREN . module_type RPAREN
    module_type: . FUNCTOR list(attribute) reversed_nonempty_llist(functor_arg) MINUSGREATER module_type
  ```
  Sample sentence (interface):
  ```ocaml
  include ( functor ( ) -> X -> X )
  ```
- Derivation (1 occurrence):
  ```
  signature_item: MODULE ext list(attribute) REC module_name COLON . module_type optional_atat_modalities_expr list(post_item_attribute) list(and_module_declaration)
    module_type: . FUNCTOR list(attribute) reversed_nonempty_llist(functor_arg) MINUSGREATER module_type
  ```
  Sample sentence (interface):
  ```ocaml
  module rec X : functor ( ) -> X @@ x
  ```


### Item `constr_ident: . LPAREN COLONCOLON RPAREN` (in 3 errors)

- Derivation (1 occurrence):
  ```
  sig_exception_declaration: EXCEPTION ext list(attribute) . constr_ident generalized_constructor_arguments list(attribute) list(post_item_attribute)
    constr_ident: . LPAREN COLONCOLON RPAREN
  ```
  Sample sentence (interface):
  ```ocaml
  exception ( :: )
  ```
- Derivation (1 occurrence):
  ```
  signature_item: TYPE ext list(attribute) type_parameters type_longident PLUSEQ private_flag . reversed_bar_llist(extension_constructor_declaration) list(post_item_attribute)
    reversed_bar_llist(extension_constructor_declaration): . generic_constructor_declaration(epsilon)
      generic_constructor_declaration(epsilon): . constr_ident generalized_constructor_arguments list(attribute)
        constr_ident: . LPAREN COLONCOLON RPAREN
  ```
  Sample sentence (interface):
  ```ocaml
  type x += ( :: )
  ```
- Derivation (1 occurrence):
  ```
  generic_constructor_declaration(BAR): BAR . constr_ident generalized_constructor_arguments list(attribute)
    constr_ident: . LPAREN COLONCOLON RPAREN
  ```
  Sample sentence (interface):
  ```ocaml
  type x += | ( :: )
  ```


### Item `attribute: . LBRACKETAT attr_id attr_payload RBRACKET` (in 1 error)

- Derivation (1 occurrence):
  ```
  structure_item: include_kind ext . list(attribute) module_expr list(post_item_attribute)
    list(attribute): . attribute list(attribute)
      attribute: . LBRACKETAT attr_id attr_payload RBRACKET
  ```
  Sample sentence (implementation):
  ```ocaml
  include [@ and ] functor ( ) -> {%ext|s|}
  ```


### Item `labeled_simple_pattern: OPTLABEL LPAREN . let_pattern option(preceded(EQUAL,seq_expr)) RPAREN` (in 1 error)

- Derivation (1 occurrence):
  ```
  labeled_simple_pattern: OPTLABEL LPAREN . let_pattern option(preceded(EQUAL,seq_expr)) RPAREN
    let_pattern: . pattern optional_poly_type_and_modes
      pattern: . pattern_gen
        pattern_gen: . simple_pattern
          simple_pattern: . val_ident
            val_ident: . val_extra_ident
  ```
  Sample sentence (implementation):
  ```ocaml
  fun ?label: ( ( - ) ) -> X
  ```


### Item `module_expr: . FUNCTOR list(attribute) reversed_nonempty_llist(functor_arg) MINUSGREATER module_expr` (in 1 error)

- Derivation (1 occurrence):
  ```
  paren_module_expr: LPAREN . module_expr RPAREN
    module_expr: . FUNCTOR list(attribute) reversed_nonempty_llist(functor_arg) MINUSGREATER module_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  include ( functor ( ) -> {%ext|s|} )
  ```


# Red herrings

Red herrings are errors for which OCamlformat reports an invalid location.
This can happen, for example, if the formatter succeeds on the first pass but fails on a subsequent one, causing the error to refer to a location in an intermediate file that is not visible to end users.
Note that, as with internal errors, the exact location of the problem cannot be determined.
The location is guessed by inspecting the syntactic constructions that appear most frequently in the failing code.

## Error: Syntax error (16166 errors)

### Item `implementation: . structure EOF` (in 14091 errors)

- Derivation (6282 occurrences):
  ```
  implementation: . structure EOF
    structure: . list(structure_element)
      list(structure_element): . structure_item list(structure_element)
        structure_item: . let_bindings(ext)
  ```
  Sample sentence (implementation):
  ```ocaml
  let false = + X let x
  ```
- Derivation (1051 occurrences):
  ```
  implementation: . structure EOF
    structure: . seq_expr list(post_item_attribute) list(structure_element)
      seq_expr: . fun_seq_expr
        fun_seq_expr: . fun_expr
          fun_expr: . reversed_labeled_tuple_body
  ```
  Sample sentence (implementation):
  ```ocaml
  X , X let x
  ```
- Derivation (324 occurrences):
  ```
  implementation: . structure EOF
    structure: . seq_expr list(post_item_attribute) list(structure_element)
      seq_expr: . fun_seq_expr
        fun_seq_expr: . fun_expr
          fun_expr: . fun_
  ```
  Sample sentence (implementation):
  ```ocaml
  fun false -> X let x
  ```
- Derivation (282 occurrences):
  ```
  implementation: . structure EOF
    structure: . list(structure_element)
      list(structure_element): . structure_item list(structure_element)
        structure_item: . generic_type_declaration(nonrec_flag,type_kind) list(generic_and_type_declaration(type_kind))
  ```
  Sample sentence (implementation):
  ```ocaml
  type x let x
  ```
- Derivation (179 occurrences):
  ```
  implementation: . structure EOF
    structure: . list(structure_element)
      list(structure_element): . structure_item list(structure_element)
        structure_item: . kind_abbreviation_decl
  ```
  Sample sentence (implementation):
  ```ocaml
  kind_abbrev_ x = x let x
  ```
- Derivation (175 occurrences):
  ```
  implementation: . structure EOF
    structure: . list(structure_element)
      list(structure_element): . structure_item list(structure_element)
        structure_item: . value_description
  ```
  Sample sentence (implementation):
  ```ocaml
  val x : {%ext|s|} let x
  ```
- Derivation (132 occurrences):
  ```
  implementation: . structure EOF
    structure: . seq_expr list(post_item_attribute) list(structure_element)
      seq_expr: . fun_seq_expr
        fun_seq_expr: . fun_expr
          fun_expr: . simple_expr DOTOP LBRACKET separated_or_terminated_nonempty_list(SEMI,expr) RBRACKET LESSMINUS fun_expr
            simple_expr: . constr_longident
              constr_longident: . mod_longident
                mod_longident: . mk_longident(mod_longident,UIDENT)
                  mk_longident(mod_longident,UIDENT): . UIDENT
  ```
  Sample sentence (implementation):
  ```ocaml
  X .+ [ X ] <- unique_ X let x
  ```
- Derivation (132 occurrences):
  ```
  implementation: . structure EOF
    structure: . seq_expr list(post_item_attribute) list(structure_element)
      seq_expr: . fun_seq_expr
        fun_seq_expr: . fun_expr
          fun_expr: . simple_expr DOTOP LBRACE separated_or_terminated_nonempty_list(SEMI,expr) RBRACE LESSMINUS fun_expr
            simple_expr: . constr_longident
              constr_longident: . mod_longident
                mod_longident: . mk_longident(mod_longident,UIDENT)
                  mk_longident(mod_longident,UIDENT): . UIDENT
  ```
  Sample sentence (implementation):
  ```ocaml
  X .+ { X } <- unique_ X let x
  ```
- Derivation (132 occurrences):
  ```
  implementation: . structure EOF
    structure: . seq_expr list(post_item_attribute) list(structure_element)
      seq_expr: . fun_seq_expr
        fun_seq_expr: . fun_expr
          fun_expr: . simple_expr DOTOP LPAREN separated_or_terminated_nonempty_list(SEMI,expr) RPAREN LESSMINUS fun_expr
            simple_expr: . constr_longident
              constr_longident: . mod_longident
                mod_longident: . mk_longident(mod_longident,UIDENT)
                  mk_longident(mod_longident,UIDENT): . UIDENT
  ```
  Sample sentence (implementation):
  ```ocaml
  X .+ ( X ) <- unique_ X let x
  ```
- Derivation (132 occurrences):
  ```
  implementation: . structure EOF
    structure: . seq_expr list(post_item_attribute) list(structure_element)
      seq_expr: . fun_seq_expr
        fun_seq_expr: . fun_expr
          fun_expr: . fun_expr COLONEQUAL fun_expr
            fun_expr: . simple_expr
              simple_expr: . constr_longident
                constr_longident: . mod_longident
                  mod_longident: . mk_longident(mod_longident,UIDENT)
                    mk_longident(mod_longident,UIDENT): . UIDENT
  ```
  Sample sentence (implementation):
  ```ocaml
  X := unique_ X let x
  ```
- Derivation (132 occurrences):
  ```
  implementation: . structure EOF
    structure: . seq_expr list(post_item_attribute) list(structure_element)
      seq_expr: . fun_seq_expr
        fun_seq_expr: . fun_expr
          fun_expr: . EXCLAVE seq_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  exclave_ unique_ X let x
  ```
- Derivation (132 occurrences):
  ```
  implementation: . structure EOF
    structure: . seq_expr list(post_item_attribute) list(structure_element)
      seq_expr: . fun_seq_expr
        fun_seq_expr: . fun_expr
          fun_expr: . LOCAL seq_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  local_ unique_ X let x
  ```
- Derivation (132 occurrences):
  ```
  implementation: . structure EOF
    structure: . seq_expr list(post_item_attribute) list(structure_element)
      seq_expr: . fun_seq_expr
        fun_seq_expr: . fun_expr
          fun_expr: . LIDENT LESSMINUS fun_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  x <- unique_ X let x
  ```
- Derivation (132 occurrences):
  ```
  implementation: . structure EOF
    structure: . seq_expr list(post_item_attribute) list(structure_element)
      seq_expr: . fun_seq_expr
        fun_seq_expr: . fun_expr
          fun_expr: . LETOP letop_bindings IN seq_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  let* x in unique_ X let x
  ```
- Derivation (132 occurrences):
  ```
  implementation: . structure EOF
    structure: . seq_expr list(post_item_attribute) list(structure_element)
      seq_expr: . fun_seq_expr
        fun_seq_expr: . fun_expr
          fun_expr: . IF ext list(attribute) seq_expr THEN fun_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  if X then unique_ X let x
  ```
- Derivation (132 occurrences):
  ```
  implementation: . structure EOF
    structure: . seq_expr list(post_item_attribute) list(structure_element)
      seq_expr: . fun_seq_expr
        fun_seq_expr: . fun_expr
          fun_expr: . IF ext list(attribute) seq_expr THEN STACK FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case) ELSE fun_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  if X then stack_ function false -> X else unique_ X let x
  ```
- Derivation (132 occurrences):
  ```
  implementation: . structure EOF
    structure: . seq_expr list(post_item_attribute) list(structure_element)
      seq_expr: . fun_seq_expr
        fun_seq_expr: . fun_expr
          fun_expr: . IF ext list(attribute) seq_expr THEN FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case) ELSE fun_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  if X then function false -> X else unique_ X let x
  ```
- Derivation (132 occurrences):
  ```
  implementation: . structure EOF
    structure: . seq_expr list(post_item_attribute) list(structure_element)
      seq_expr: . fun_seq_expr
        fun_seq_expr: . fun_expr
          fun_expr: . IF ext list(attribute) seq_expr THEN fun_expr ELSE fun_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  if X then X else unique_ X let x
  ```
- Derivation (132 occurrences):
  ```
  implementation: . structure EOF
    structure: . seq_expr list(post_item_attribute) list(structure_element)
      seq_expr: . fun_seq_expr
        fun_seq_expr: . fun_expr
          fun_expr: . LET OPEN BANG ext list(attribute) module_expr IN seq_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  let open ! {%ext|s|} in unique_ X let x
  ```
- Derivation (132 occurrences):
  ```
  implementation: . structure EOF
    structure: . seq_expr list(post_item_attribute) list(structure_element)
      seq_expr: . fun_seq_expr
        fun_seq_expr: . fun_expr
          fun_expr: . LET OPEN ext list(attribute) module_expr IN seq_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  let open {%ext|s|} in unique_ X let x
  ```
- Derivation (132 occurrences):
  ```
  implementation: . structure EOF
    structure: . seq_expr list(post_item_attribute) list(structure_element)
      seq_expr: . fun_seq_expr
        fun_seq_expr: . fun_expr
          fun_expr: . LET EXCEPTION ext list(attribute) constr_ident generalized_constructor_arguments list(attribute) IN seq_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  let exception false in unique_ X let x
  ```
- ...


### Item `fun_expr: . reversed_labeled_tuple_body` (in 1056 errors)

- Derivation (21 occurrences):
  ```
  match_case: pattern WHEN seq_expr MINUSGREATER . seq_expr
    seq_expr: . fun_seq_expr
      fun_seq_expr: . fun_expr
        fun_expr: . reversed_labeled_tuple_body
  ```
  Sample sentence (implementation):
  ```ocaml
  function false when X -> X , X let x
  ```
- Derivation (21 occurrences):
  ```
  match_case: pattern MINUSGREATER . seq_expr
    seq_expr: . fun_seq_expr
      fun_seq_expr: . fun_expr
        fun_expr: . reversed_labeled_tuple_body
  ```
  Sample sentence (implementation):
  ```ocaml
  function false -> X , X let x
  ```
- Derivation (21 occurrences):
  ```
  list(structure_element): SEMISEMI . seq_expr list(post_item_attribute) list(structure_element)
    seq_expr: . fun_seq_expr
      fun_seq_expr: . fun_expr
        fun_expr: . reversed_labeled_tuple_body
  ```
  Sample sentence (implementation):
  ```ocaml
  ;; X , X let x
  ```
- Derivation (21 occurrences):
  ```
  fun_seq_expr: fun_expr SEMI PERCENT attr_id . seq_expr
    seq_expr: . fun_seq_expr
      fun_seq_expr: . fun_expr
        fun_expr: . reversed_labeled_tuple_body
  ```
  Sample sentence (implementation):
  ```ocaml
  X ; % and X , X let x
  ```
- Derivation (21 occurrences):
  ```
  fun_seq_expr: fun_expr SEMI . seq_expr
    seq_expr: . fun_seq_expr
      fun_seq_expr: . fun_expr
        fun_expr: . reversed_labeled_tuple_body
  ```
  Sample sentence (implementation):
  ```ocaml
  X ; X , X let x
  ```
- Derivation (21 occurrences):
  ```
  fun_expr: EXCLAVE . seq_expr
    seq_expr: . fun_seq_expr
      fun_seq_expr: . fun_expr
        fun_expr: . reversed_labeled_tuple_body
  ```
  Sample sentence (implementation):
  ```ocaml
  exclave_ X , X let x
  ```
- Derivation (21 occurrences):
  ```
  fun_expr: LOCAL . seq_expr
    seq_expr: . fun_seq_expr
      fun_seq_expr: . fun_expr
        fun_expr: . reversed_labeled_tuple_body
  ```
  Sample sentence (implementation):
  ```ocaml
  local_ X , X let x
  ```
- Derivation (21 occurrences):
  ```
  fun_expr: LETOP letop_bindings IN . seq_expr
    seq_expr: . fun_seq_expr
      fun_seq_expr: . fun_expr
        fun_expr: . reversed_labeled_tuple_body
  ```
  Sample sentence (implementation):
  ```ocaml
  let* x in X , X let x
  ```
- Derivation (21 occurrences):
  ```
  fun_expr: LET OPEN BANG ext list(attribute) module_expr IN . seq_expr
    seq_expr: . fun_seq_expr
      fun_seq_expr: . fun_expr
        fun_expr: . reversed_labeled_tuple_body
  ```
  Sample sentence (implementation):
  ```ocaml
  let open ! {%ext|s|} in X , X let x
  ```
- Derivation (21 occurrences):
  ```
  fun_expr: LET OPEN ext list(attribute) module_expr IN . seq_expr
    seq_expr: . fun_seq_expr
      fun_seq_expr: . fun_expr
        fun_expr: . reversed_labeled_tuple_body
  ```
  Sample sentence (implementation):
  ```ocaml
  let open {%ext|s|} in X , X let x
  ```
- Derivation (21 occurrences):
  ```
  fun_expr: LET EXCEPTION ext list(attribute) constr_ident generalized_constructor_arguments list(attribute) IN . seq_expr
    seq_expr: . fun_seq_expr
      fun_seq_expr: . fun_expr
        fun_expr: . reversed_labeled_tuple_body
  ```
  Sample sentence (implementation):
  ```ocaml
  let exception false in X , X let x
  ```
- Derivation (21 occurrences):
  ```
  fun_expr: LET MODULE ext list(attribute) module_name_modal(at_mode_expr) module_binding_body IN . seq_expr
    seq_expr: . fun_seq_expr
      fun_seq_expr: . fun_expr
        fun_expr: . reversed_labeled_tuple_body
  ```
  Sample sentence (implementation):
  ```ocaml
  let module X = {%ext|s|} in X , X let x
  ```
- Derivation (21 occurrences):
  ```
  fun_expr: simple_expr DOT mod_longident DOTOP LBRACKET separated_or_terminated_nonempty_list(SEMI,expr) RBRACKET LESSMINUS . fun_expr
    fun_expr: . reversed_labeled_tuple_body
  ```
  Sample sentence (implementation):
  ```ocaml
  false . X .+ [ X ] <- X , X let x
  ```
- Derivation (21 occurrences):
  ```
  fun_expr: simple_expr DOTOP LBRACKET separated_or_terminated_nonempty_list(SEMI,expr) RBRACKET LESSMINUS . fun_expr
    fun_expr: . reversed_labeled_tuple_body
  ```
  Sample sentence (implementation):
  ```ocaml
  X .+ [ X ] <- X , X let x
  ```
- Derivation (21 occurrences):
  ```
  fun_expr: simple_expr DOT mod_longident DOTOP LBRACE separated_or_terminated_nonempty_list(SEMI,expr) RBRACE LESSMINUS . fun_expr
    fun_expr: . reversed_labeled_tuple_body
  ```
  Sample sentence (implementation):
  ```ocaml
  false . X .+ { X } <- X , X let x
  ```
- Derivation (21 occurrences):
  ```
  fun_expr: simple_expr DOTOP LBRACE separated_or_terminated_nonempty_list(SEMI,expr) RBRACE LESSMINUS . fun_expr
    fun_expr: . reversed_labeled_tuple_body
  ```
  Sample sentence (implementation):
  ```ocaml
  X .+ { X } <- X , X let x
  ```
- Derivation (21 occurrences):
  ```
  fun_expr: simple_expr DOT mod_longident DOTOP LPAREN separated_or_terminated_nonempty_list(SEMI,expr) RPAREN LESSMINUS . fun_expr
    fun_expr: . reversed_labeled_tuple_body
  ```
  Sample sentence (implementation):
  ```ocaml
  false . X .+ ( X ) <- X , X let x
  ```
- Derivation (21 occurrences):
  ```
  fun_expr: simple_expr DOTOP LPAREN separated_or_terminated_nonempty_list(SEMI,expr) RPAREN LESSMINUS . fun_expr
    fun_expr: . reversed_labeled_tuple_body
  ```
  Sample sentence (implementation):
  ```ocaml
  X .+ ( X ) <- X , X let x
  ```
- Derivation (21 occurrences):
  ```
  fun_expr: simple_expr DOT LBRACKET seq_expr RBRACKET LESSMINUS . fun_expr
    fun_expr: . reversed_labeled_tuple_body
  ```
  Sample sentence (implementation):
  ```ocaml
  false . [ X ] <- X , X let x
  ```
- Derivation (21 occurrences):
  ```
  fun_expr: simple_expr DOT LBRACE seq_expr RBRACE LESSMINUS . fun_expr
    fun_expr: . reversed_labeled_tuple_body
  ```
  Sample sentence (implementation):
  ```ocaml
  false . { X } <- X , X let x
  ```
- Derivation (21 occurrences):
  ```
  fun_expr: simple_expr DOT LPAREN seq_expr RPAREN LESSMINUS . fun_expr
    fun_expr: . reversed_labeled_tuple_body
  ```
  Sample sentence (implementation):
  ```ocaml
  false . ( X ) <- X , X let x
  ```
- ...


### Item `fun_seq_expr: . fun_expr` (in 456 errors)

- Derivation (148 occurrences):
  ```
  fun_seq_expr: fun_expr SEMI PERCENT attr_id . seq_expr
    seq_expr: . fun_seq_expr
      fun_seq_expr: . fun_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  unique_ X ; % and X let x
  ```
- Derivation (148 occurrences):
  ```
  fun_seq_expr: fun_expr SEMI . seq_expr
    seq_expr: . fun_seq_expr
      fun_seq_expr: . fun_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  unique_ X ; X let x
  ```
- Derivation (134 occurrences):
  ```
  list(structure_element): SEMISEMI . seq_expr list(post_item_attribute) list(structure_element)
    seq_expr: . fun_seq_expr
      fun_seq_expr: . fun_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  ;; unique_ X let x
  ```
- Derivation (2 occurrences):
  ```
  match_case: pattern WHEN seq_expr MINUSGREATER . seq_expr
    seq_expr: . fun_seq_expr
      fun_seq_expr: . fun_expr
        fun_expr: . fun_
  ```
  Sample sentence (implementation):
  ```ocaml
  function false when X -> fun false -> X let x
  ```
- Derivation (2 occurrences):
  ```
  match_case: pattern MINUSGREATER . seq_expr
    seq_expr: . fun_seq_expr
      fun_seq_expr: . fun_expr
        fun_expr: . fun_
  ```
  Sample sentence (implementation):
  ```ocaml
  function false -> fun false -> X let x
  ```
- Derivation (2 occurrences):
  ```
  list(structure_element): SEMISEMI . seq_expr list(post_item_attribute) list(structure_element)
    seq_expr: . fun_seq_expr
      fun_seq_expr: . fun_expr
        fun_expr: . fun_
  ```
  Sample sentence (implementation):
  ```ocaml
  ;; fun false -> X let x
  ```
- Derivation (2 occurrences):
  ```
  fun_seq_expr: fun_expr SEMI PERCENT attr_id . seq_expr
    seq_expr: . fun_seq_expr
      fun_seq_expr: . fun_expr
        fun_expr: . fun_
  ```
  Sample sentence (implementation):
  ```ocaml
  X ; % and fun false -> X let x
  ```
- Derivation (2 occurrences):
  ```
  fun_seq_expr: fun_expr SEMI . seq_expr
    seq_expr: . fun_seq_expr
      fun_seq_expr: . fun_expr
        fun_expr: . fun_
  ```
  Sample sentence (implementation):
  ```ocaml
  X ; fun false -> X let x
  ```
- Derivation (2 occurrences):
  ```
  fun_expr: EXCLAVE . seq_expr
    seq_expr: . fun_seq_expr
      fun_seq_expr: . fun_expr
        fun_expr: . fun_
  ```
  Sample sentence (implementation):
  ```ocaml
  exclave_ fun false -> X let x
  ```
- Derivation (2 occurrences):
  ```
  fun_expr: LOCAL . seq_expr
    seq_expr: . fun_seq_expr
      fun_seq_expr: . fun_expr
        fun_expr: . fun_
  ```
  Sample sentence (implementation):
  ```ocaml
  local_ fun false -> X let x
  ```
- Derivation (2 occurrences):
  ```
  fun_expr: LETOP letop_bindings IN . seq_expr
    seq_expr: . fun_seq_expr
      fun_seq_expr: . fun_expr
        fun_expr: . fun_
  ```
  Sample sentence (implementation):
  ```ocaml
  let* x in fun false -> X let x
  ```
- Derivation (2 occurrences):
  ```
  fun_expr: LET OPEN BANG ext list(attribute) module_expr IN . seq_expr
    seq_expr: . fun_seq_expr
      fun_seq_expr: . fun_expr
        fun_expr: . fun_
  ```
  Sample sentence (implementation):
  ```ocaml
  let open ! {%ext|s|} in fun false -> X let x
  ```
- Derivation (2 occurrences):
  ```
  fun_expr: LET OPEN ext list(attribute) module_expr IN . seq_expr
    seq_expr: . fun_seq_expr
      fun_seq_expr: . fun_expr
        fun_expr: . fun_
  ```
  Sample sentence (implementation):
  ```ocaml
  let open {%ext|s|} in fun false -> X let x
  ```
- Derivation (2 occurrences):
  ```
  fun_expr: LET EXCEPTION ext list(attribute) constr_ident generalized_constructor_arguments list(attribute) IN . seq_expr
    seq_expr: . fun_seq_expr
      fun_seq_expr: . fun_expr
        fun_expr: . fun_
  ```
  Sample sentence (implementation):
  ```ocaml
  let exception false in fun false -> X let x
  ```
- Derivation (2 occurrences):
  ```
  fun_expr: LET MODULE ext list(attribute) module_name_modal(at_mode_expr) module_binding_body IN . seq_expr
    seq_expr: . fun_seq_expr
      fun_seq_expr: . fun_expr
        fun_expr: . fun_
  ```
  Sample sentence (implementation):
  ```ocaml
  let module X = {%ext|s|} in fun false -> X let x
  ```
- Derivation (1 occurrence):
  ```
  fun_expr: ONCE . seq_expr
    seq_expr: . fun_seq_expr
      fun_seq_expr: . fun_expr
        fun_expr: . simple_expr
          simple_expr: . LESSLBRACKET separated_or_terminated_nonempty_list(SEMI,expr) RBRACKETGREATER
  ```
  Sample sentence (implementation):
  ```ocaml
  once_ <[ X ]>
  ```
- Derivation (1 occurrence):
  ```
  fun_expr: UNIQUE . seq_expr
    seq_expr: . fun_seq_expr
      fun_seq_expr: . fun_expr
        fun_expr: . simple_expr
          simple_expr: . LESSLBRACKET separated_or_terminated_nonempty_list(SEMI,expr) RBRACKETGREATER
  ```
  Sample sentence (implementation):
  ```ocaml
  unique_ <[ X ]>
  ```


### Item `reversed_preceded_or_separated_nonempty_llist(BAR,match_case): . match_case` (in 370 errors)

- Derivation (277 occurrences):
  ```
  seq_expr: FUNCTION ext list(attribute) . reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
    reversed_preceded_or_separated_nonempty_llist(BAR,match_case): . match_case
  ```
  Sample sentence (implementation):
  ```ocaml
  function false -> X let x
  ```
- Derivation (46 occurrences):
  ```
  fun_expr: fun_expr MOD STACK FUNCTION ext list(attribute) . reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
    reversed_preceded_or_separated_nonempty_llist(BAR,match_case): . match_case
      match_case: . pattern MINUSGREATER seq_expr
        pattern: . pattern_gen
          pattern_gen: . simple_pattern
            simple_pattern: . simple_pattern_not_ident
              simple_pattern_not_ident: . constr_longident
                constr_longident: . constr_extra_nonprefix_ident
                  constr_extra_nonprefix_ident: . FALSE
  ```
  Sample sentence (implementation):
  ```ocaml
  X mod stack_ function false -> X let x
  ```
- Derivation (31 occurrences):
  ```
  fun_expr: fun_expr OR STACK FUNCTION ext list(attribute) . reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
    reversed_preceded_or_separated_nonempty_llist(BAR,match_case): . match_case
  ```
  Sample sentence (implementation):
  ```ocaml
  X or stack_ function false -> X let x
  ```
- Derivation (14 occurrences):
  ```
  seq_expr: STACK FUNCTION ext list(attribute) . reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
    reversed_preceded_or_separated_nonempty_llist(BAR,match_case): . match_case
  ```
  Sample sentence (implementation):
  ```ocaml
  stack_ function false -> X let x
  ```
- Derivation (1 occurrence):
  ```
  fun_expr: fun_expr MOD STACK FUNCTION ext list(attribute) . reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
    reversed_preceded_or_separated_nonempty_llist(BAR,match_case): . match_case
      match_case: . pattern WHEN seq_expr MINUSGREATER seq_expr
        pattern: . pattern_gen
          pattern_gen: . simple_pattern
            simple_pattern: . simple_pattern_not_ident
              simple_pattern_not_ident: . constr_longident
                constr_longident: . constr_extra_nonprefix_ident
                  constr_extra_nonprefix_ident: . FALSE
  ```
  Sample sentence (implementation):
  ```ocaml
  X mod stack_ function false when X -> X let x
  ```
- Derivation (1 occurrence):
  ```
  fun_expr: fun_expr MOD STACK FUNCTION ext list(attribute) . reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
    reversed_preceded_or_separated_nonempty_llist(BAR,match_case): . reversed_preceded_or_separated_nonempty_llist(BAR,match_case) BAR match_case
      reversed_preceded_or_separated_nonempty_llist(BAR,match_case): . match_case
        match_case: . pattern MINUSGREATER seq_expr
          pattern: . pattern_gen
            pattern_gen: . simple_pattern
              simple_pattern: . simple_pattern_not_ident
                simple_pattern_not_ident: . constr_longident
                  constr_longident: . constr_extra_nonprefix_ident
                    constr_extra_nonprefix_ident: . FALSE
  ```
  Sample sentence (implementation):
  ```ocaml
  X mod stack_ function false -> X | false -> X let x
  ```


### Item `fun_expr: . fun_` (in 82 errors)

- Derivation (2 occurrences):
  ```
  fun_expr: simple_expr DOT mod_longident DOTOP LBRACKET separated_or_terminated_nonempty_list(SEMI,expr) RBRACKET LESSMINUS . fun_expr
    fun_expr: . fun_
  ```
  Sample sentence (implementation):
  ```ocaml
  false . X .+ [ X ] <- fun false -> X let x
  ```
- Derivation (2 occurrences):
  ```
  fun_expr: simple_expr DOTOP LBRACKET separated_or_terminated_nonempty_list(SEMI,expr) RBRACKET LESSMINUS . fun_expr
    fun_expr: . fun_
  ```
  Sample sentence (implementation):
  ```ocaml
  X .+ [ X ] <- fun false -> X let x
  ```
- Derivation (2 occurrences):
  ```
  fun_expr: simple_expr DOT mod_longident DOTOP LBRACE separated_or_terminated_nonempty_list(SEMI,expr) RBRACE LESSMINUS . fun_expr
    fun_expr: . fun_
  ```
  Sample sentence (implementation):
  ```ocaml
  false . X .+ { X } <- fun false -> X let x
  ```
- Derivation (2 occurrences):
  ```
  fun_expr: simple_expr DOTOP LBRACE separated_or_terminated_nonempty_list(SEMI,expr) RBRACE LESSMINUS . fun_expr
    fun_expr: . fun_
  ```
  Sample sentence (implementation):
  ```ocaml
  X .+ { X } <- fun false -> X let x
  ```
- Derivation (2 occurrences):
  ```
  fun_expr: simple_expr DOT mod_longident DOTOP LPAREN separated_or_terminated_nonempty_list(SEMI,expr) RPAREN LESSMINUS . fun_expr
    fun_expr: . fun_
  ```
  Sample sentence (implementation):
  ```ocaml
  false . X .+ ( X ) <- fun false -> X let x
  ```
- Derivation (2 occurrences):
  ```
  fun_expr: simple_expr DOTOP LPAREN separated_or_terminated_nonempty_list(SEMI,expr) RPAREN LESSMINUS . fun_expr
    fun_expr: . fun_
  ```
  Sample sentence (implementation):
  ```ocaml
  X .+ ( X ) <- fun false -> X let x
  ```
- Derivation (2 occurrences):
  ```
  fun_expr: simple_expr DOT LBRACKET seq_expr RBRACKET LESSMINUS . fun_expr
    fun_expr: . fun_
  ```
  Sample sentence (implementation):
  ```ocaml
  false . [ X ] <- fun false -> X let x
  ```
- Derivation (2 occurrences):
  ```
  fun_expr: simple_expr DOT LBRACE seq_expr RBRACE LESSMINUS . fun_expr
    fun_expr: . fun_
  ```
  Sample sentence (implementation):
  ```ocaml
  false . { X } <- fun false -> X let x
  ```
- Derivation (2 occurrences):
  ```
  fun_expr: simple_expr DOT LPAREN seq_expr RPAREN LESSMINUS . fun_expr
    fun_expr: . fun_
  ```
  Sample sentence (implementation):
  ```ocaml
  false . ( X ) <- fun false -> X let x
  ```
- Derivation (2 occurrences):
  ```
  fun_expr: simple_expr DOT label_longident LESSMINUS . fun_expr
    fun_expr: . fun_
  ```
  Sample sentence (implementation):
  ```ocaml
  false . x <- fun false -> X let x
  ```
- Derivation (2 occurrences):
  ```
  fun_expr: LIDENT LESSMINUS . fun_expr
    fun_expr: . fun_
  ```
  Sample sentence (implementation):
  ```ocaml
  x <- fun false -> X let x
  ```
- Derivation (2 occurrences):
  ```
  fun_expr: fun_expr COLONCOLON . fun_expr
    fun_expr: . fun_
  ```
  Sample sentence (implementation):
  ```ocaml
  X :: fun false -> X let x
  ```
- Derivation (2 occurrences):
  ```
  fun_expr: fun_expr COLONEQUAL . fun_expr
    fun_expr: . fun_
  ```
  Sample sentence (implementation):
  ```ocaml
  X := fun false -> X let x
  ```
- Derivation (2 occurrences):
  ```
  fun_expr: fun_expr AMPERAMPER . fun_expr
    fun_expr: . fun_
  ```
  Sample sentence (implementation):
  ```ocaml
  X && fun false -> X let x
  ```
- Derivation (2 occurrences):
  ```
  fun_expr: fun_expr AMPERSAND . fun_expr
    fun_expr: . fun_
  ```
  Sample sentence (implementation):
  ```ocaml
  X & fun false -> X let x
  ```
- Derivation (2 occurrences):
  ```
  fun_expr: fun_expr BARBAR . fun_expr
    fun_expr: . fun_
  ```
  Sample sentence (implementation):
  ```ocaml
  X || fun false -> X let x
  ```
- Derivation (2 occurrences):
  ```
  fun_expr: fun_expr OR . fun_expr
    fun_expr: . fun_
  ```
  Sample sentence (implementation):
  ```ocaml
  X or fun false -> X let x
  ```
- Derivation (2 occurrences):
  ```
  fun_expr: fun_expr GREATER . fun_expr
    fun_expr: . fun_
  ```
  Sample sentence (implementation):
  ```ocaml
  X > fun false -> X let x
  ```
- Derivation (2 occurrences):
  ```
  fun_expr: fun_expr LESS . fun_expr
    fun_expr: . fun_
  ```
  Sample sentence (implementation):
  ```ocaml
  X < fun false -> X let x
  ```
- Derivation (2 occurrences):
  ```
  fun_expr: fun_expr EQUAL . fun_expr
    fun_expr: . fun_
  ```
  Sample sentence (implementation):
  ```ocaml
  X = fun false -> X let x
  ```
- Derivation (2 occurrences):
  ```
  fun_expr: fun_expr PERCENT . fun_expr
    fun_expr: . fun_
  ```
  Sample sentence (implementation):
  ```ocaml
  X % fun false -> X let x
  ```
- ...


### Item `let_binding_body: . val_ident` (in 34 errors)

- Derivation (34 occurrences):
  ```
  let_bindings(ext): LET ext list(attribute) mutable_flag rec_flag . let_binding_body list(post_item_attribute)
    let_binding_body: . val_ident
      val_ident: . val_extra_ident
  ```
  Sample sentence (implementation):
  ```ocaml
  let ( && )
  ```


### Item `list(structure_element): . structure_item list(structure_element)` (in 34 errors)

- Derivation (2 occurrences):
  ```
  structure: seq_expr list(post_item_attribute) . list(structure_element)
    list(structure_element): . structure_item list(structure_element)
      structure_item: . generic_type_declaration(nonrec_flag,type_kind) list(generic_and_type_declaration(type_kind))
  ```
  Sample sentence (implementation):
  ```ocaml
  X type x let x
  ```
- Derivation (2 occurrences):
  ```
  list(structure_element): structure_item . list(structure_element)
    list(structure_element): . structure_item list(structure_element)
      structure_item: . generic_type_declaration(nonrec_flag,type_kind) list(generic_and_type_declaration(type_kind))
  ```
  Sample sentence (implementation):
  ```ocaml
  {%%ext|s|} type x let x
  ```
- Derivation (2 occurrences):
  ```
  list(structure_element): SEMISEMI seq_expr list(post_item_attribute) . list(structure_element)
    list(structure_element): . structure_item list(structure_element)
      structure_item: . generic_type_declaration(nonrec_flag,type_kind) list(generic_and_type_declaration(type_kind))
  ```
  Sample sentence (implementation):
  ```ocaml
  ;; X type x let x
  ```
- Derivation (2 occurrences):
  ```
  list(structure_element): SEMISEMI . list(structure_element)
    list(structure_element): . structure_item list(structure_element)
      structure_item: . generic_type_declaration(nonrec_flag,type_kind) list(generic_and_type_declaration(type_kind))
  ```
  Sample sentence (implementation):
  ```ocaml
  ;; type x let x
  ```
- Derivation (1 occurrence):
  ```
  structure: seq_expr list(post_item_attribute) . list(structure_element)
    list(structure_element): . structure_item list(structure_element)
      structure_item: . class_type_declarations
  ```
  Sample sentence (implementation):
  ```ocaml
  X class type x = x let x
  ```
- Derivation (1 occurrence):
  ```
  list(structure_element): structure_item . list(structure_element)
    list(structure_element): . structure_item list(structure_element)
      structure_item: . class_type_declarations
  ```
  Sample sentence (implementation):
  ```ocaml
  {%%ext|s|} class type x = x let x
  ```
- Derivation (1 occurrence):
  ```
  list(structure_element): SEMISEMI seq_expr list(post_item_attribute) . list(structure_element)
    list(structure_element): . structure_item list(structure_element)
      structure_item: . class_type_declarations
  ```
  Sample sentence (implementation):
  ```ocaml
  ;; X class type x = x let x
  ```
- Derivation (1 occurrence):
  ```
  list(structure_element): SEMISEMI . list(structure_element)
    list(structure_element): . structure_item list(structure_element)
      structure_item: . class_type_declarations
  ```
  Sample sentence (implementation):
  ```ocaml
  ;; class type x = x let x
  ```
- Derivation (1 occurrence):
  ```
  structure: seq_expr list(post_item_attribute) . list(structure_element)
    list(structure_element): . structure_item list(structure_element)
      structure_item: . module_type_declaration
  ```
  Sample sentence (implementation):
  ```ocaml
  X module type x let x
  ```
- Derivation (1 occurrence):
  ```
  list(structure_element): structure_item . list(structure_element)
    list(structure_element): . structure_item list(structure_element)
      structure_item: . module_type_declaration
  ```
  Sample sentence (implementation):
  ```ocaml
  {%%ext|s|} module type x let x
  ```
- Derivation (1 occurrence):
  ```
  list(structure_element): SEMISEMI seq_expr list(post_item_attribute) . list(structure_element)
    list(structure_element): . structure_item list(structure_element)
      structure_item: . module_type_declaration
  ```
  Sample sentence (implementation):
  ```ocaml
  ;; X module type x let x
  ```
- Derivation (1 occurrence):
  ```
  list(structure_element): SEMISEMI . list(structure_element)
    list(structure_element): . structure_item list(structure_element)
      structure_item: . module_type_declaration
  ```
  Sample sentence (implementation):
  ```ocaml
  ;; module type x let x
  ```
- Derivation (1 occurrence):
  ```
  structure: seq_expr list(post_item_attribute) . list(structure_element)
    list(structure_element): . structure_item list(structure_element)
      structure_item: . value_description
  ```
  Sample sentence (implementation):
  ```ocaml
  X val x : {%ext|s|} let x
  ```
- Derivation (1 occurrence):
  ```
  list(structure_element): structure_item . list(structure_element)
    list(structure_element): . structure_item list(structure_element)
      structure_item: . value_description
  ```
  Sample sentence (implementation):
  ```ocaml
  {%%ext|s|} val x : {%ext|s|} let x
  ```
- Derivation (1 occurrence):
  ```
  list(structure_element): SEMISEMI seq_expr list(post_item_attribute) . list(structure_element)
    list(structure_element): . structure_item list(structure_element)
      structure_item: . value_description
  ```
  Sample sentence (implementation):
  ```ocaml
  ;; X val x : {%ext|s|} let x
  ```
- Derivation (1 occurrence):
  ```
  list(structure_element): SEMISEMI . list(structure_element)
    list(structure_element): . structure_item list(structure_element)
      structure_item: . value_description
  ```
  Sample sentence (implementation):
  ```ocaml
  ;; val x : {%ext|s|} let x
  ```
- Derivation (1 occurrence):
  ```
  structure: seq_expr list(post_item_attribute) . list(structure_element)
    list(structure_element): . structure_item list(structure_element)
      structure_item: . kind_abbreviation_decl
  ```
  Sample sentence (implementation):
  ```ocaml
  X kind_abbrev_ x = x let x
  ```
- Derivation (1 occurrence):
  ```
  list(structure_element): structure_item . list(structure_element)
    list(structure_element): . structure_item list(structure_element)
      structure_item: . kind_abbreviation_decl
  ```
  Sample sentence (implementation):
  ```ocaml
  {%%ext|s|} kind_abbrev_ x = x let x
  ```
- Derivation (1 occurrence):
  ```
  list(structure_element): SEMISEMI seq_expr list(post_item_attribute) . list(structure_element)
    list(structure_element): . structure_item list(structure_element)
      structure_item: . kind_abbreviation_decl
  ```
  Sample sentence (implementation):
  ```ocaml
  ;; X kind_abbrev_ x = x let x
  ```
- Derivation (1 occurrence):
  ```
  list(structure_element): SEMISEMI . list(structure_element)
    list(structure_element): . structure_item list(structure_element)
      structure_item: . kind_abbreviation_decl
  ```
  Sample sentence (implementation):
  ```ocaml
  ;; kind_abbrev_ x = x let x
  ```
- Derivation (1 occurrence):
  ```
  list(structure_element): SEMISEMI . list(structure_element)
    list(structure_element): . structure_item list(structure_element)
      structure_item: . let_bindings(ext)
  ```
  Sample sentence (implementation):
  ```ocaml
  ;; let x
  ```
- ...


### Item `fun_expr: fun_expr MOD . fun_expr` (in 16 errors)

- Derivation (1 occurrence):
  ```
  fun_expr: fun_expr MOD . fun_expr
    fun_expr: . simple_expr DOTOP LBRACKET separated_or_terminated_nonempty_list(SEMI,expr) RBRACKET LESSMINUS STACK FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
  ```
  Sample sentence (implementation):
  ```ocaml
  X mod X .+ [ X ] <- stack_ function false -> X let x
  ```
- Derivation (1 occurrence):
  ```
  fun_expr: fun_expr MOD . fun_expr
    fun_expr: . simple_expr DOTOP LBRACKET separated_or_terminated_nonempty_list(SEMI,expr) RBRACKET LESSMINUS FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
  ```
  Sample sentence (implementation):
  ```ocaml
  X mod X .+ [ X ] <- function false -> X let x
  ```
- Derivation (1 occurrence):
  ```
  fun_expr: fun_expr MOD . fun_expr
    fun_expr: . simple_expr DOTOP LBRACKET separated_or_terminated_nonempty_list(SEMI,expr) RBRACKET LESSMINUS fun_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  X mod X .+ [ X ] <- X let x
  ```
- Derivation (1 occurrence):
  ```
  fun_expr: fun_expr MOD . fun_expr
    fun_expr: . simple_expr DOTOP LBRACE separated_or_terminated_nonempty_list(SEMI,expr) RBRACE LESSMINUS STACK FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
  ```
  Sample sentence (implementation):
  ```ocaml
  X mod X .+ { X } <- stack_ function false -> X let x
  ```
- Derivation (1 occurrence):
  ```
  fun_expr: fun_expr MOD . fun_expr
    fun_expr: . simple_expr DOTOP LBRACE separated_or_terminated_nonempty_list(SEMI,expr) RBRACE LESSMINUS FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
  ```
  Sample sentence (implementation):
  ```ocaml
  X mod X .+ { X } <- function false -> X let x
  ```
- Derivation (1 occurrence):
  ```
  fun_expr: fun_expr MOD . fun_expr
    fun_expr: . simple_expr DOTOP LBRACE separated_or_terminated_nonempty_list(SEMI,expr) RBRACE LESSMINUS fun_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  X mod X .+ { X } <- X let x
  ```
- Derivation (1 occurrence):
  ```
  fun_expr: fun_expr MOD . fun_expr
    fun_expr: . simple_expr DOTOP LPAREN separated_or_terminated_nonempty_list(SEMI,expr) RPAREN LESSMINUS STACK FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
  ```
  Sample sentence (implementation):
  ```ocaml
  X mod X .+ ( X ) <- stack_ function false -> X let x
  ```
- Derivation (1 occurrence):
  ```
  fun_expr: fun_expr MOD . fun_expr
    fun_expr: . simple_expr DOTOP LPAREN separated_or_terminated_nonempty_list(SEMI,expr) RPAREN LESSMINUS FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
  ```
  Sample sentence (implementation):
  ```ocaml
  X mod X .+ ( X ) <- function false -> X let x
  ```
- Derivation (1 occurrence):
  ```
  fun_expr: fun_expr MOD . fun_expr
    fun_expr: . simple_expr DOTOP LPAREN separated_or_terminated_nonempty_list(SEMI,expr) RPAREN LESSMINUS fun_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  X mod X .+ ( X ) <- X let x
  ```
- Derivation (1 occurrence):
  ```
  fun_expr: fun_expr MOD . fun_expr
    fun_expr: . LETOP letop_bindings IN seq_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  X mod let* x in X let x
  ```
- Derivation (1 occurrence):
  ```
  fun_expr: fun_expr MOD . fun_expr
    fun_expr: . TRY ext list(attribute) seq_expr WITH reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
  ```
  Sample sentence (implementation):
  ```ocaml
  X mod try X with false -> X let x
  ```
- Derivation (1 occurrence):
  ```
  fun_expr: fun_expr MOD . fun_expr
    fun_expr: . MATCH ext list(attribute) seq_expr WITH reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
  ```
  Sample sentence (implementation):
  ```ocaml
  X mod match X with false -> X let x
  ```
- Derivation (1 occurrence):
  ```
  fun_expr: fun_expr MOD . fun_expr
    fun_expr: . LET OPEN BANG ext list(attribute) module_expr IN seq_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  X mod let open ! {%ext|s|} in X let x
  ```
- Derivation (1 occurrence):
  ```
  fun_expr: fun_expr MOD . fun_expr
    fun_expr: . LET OPEN ext list(attribute) module_expr IN seq_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  X mod let open {%ext|s|} in X let x
  ```
- Derivation (1 occurrence):
  ```
  fun_expr: fun_expr MOD . fun_expr
    fun_expr: . LET EXCEPTION ext list(attribute) constr_ident generalized_constructor_arguments list(attribute) IN seq_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  X mod let exception false in X let x
  ```
- Derivation (1 occurrence):
  ```
  fun_expr: fun_expr MOD . fun_expr
    fun_expr: . LET MODULE ext list(attribute) module_name_modal(at_mode_expr) module_binding_body IN seq_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  X mod let module X = {%ext|s|} in X let x
  ```


### Item `fun_expr: fun_expr OR . fun_expr` (in 9 errors)

- Derivation (1 occurrence):
  ```
  fun_expr: fun_expr OR . fun_expr
    fun_expr: . simple_expr DOTOP LBRACKET separated_or_terminated_nonempty_list(SEMI,expr) RBRACKET LESSMINUS STACK FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
  ```
  Sample sentence (implementation):
  ```ocaml
  X or X .+ [ X ] <- stack_ function false -> X let x
  ```
- Derivation (1 occurrence):
  ```
  fun_expr: fun_expr OR . fun_expr
    fun_expr: . simple_expr DOTOP LBRACKET separated_or_terminated_nonempty_list(SEMI,expr) RBRACKET LESSMINUS FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
  ```
  Sample sentence (implementation):
  ```ocaml
  X or X .+ [ X ] <- function false -> X let x
  ```
- Derivation (1 occurrence):
  ```
  fun_expr: fun_expr OR . fun_expr
    fun_expr: . simple_expr DOTOP LBRACKET separated_or_terminated_nonempty_list(SEMI,expr) RBRACKET LESSMINUS fun_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  X or X .+ [ X ] <- X let x
  ```
- Derivation (1 occurrence):
  ```
  fun_expr: fun_expr OR . fun_expr
    fun_expr: . simple_expr DOTOP LBRACE separated_or_terminated_nonempty_list(SEMI,expr) RBRACE LESSMINUS STACK FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
  ```
  Sample sentence (implementation):
  ```ocaml
  X or X .+ { X } <- stack_ function false -> X let x
  ```
- Derivation (1 occurrence):
  ```
  fun_expr: fun_expr OR . fun_expr
    fun_expr: . simple_expr DOTOP LBRACE separated_or_terminated_nonempty_list(SEMI,expr) RBRACE LESSMINUS FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
  ```
  Sample sentence (implementation):
  ```ocaml
  X or X .+ { X } <- function false -> X let x
  ```
- Derivation (1 occurrence):
  ```
  fun_expr: fun_expr OR . fun_expr
    fun_expr: . simple_expr DOTOP LBRACE separated_or_terminated_nonempty_list(SEMI,expr) RBRACE LESSMINUS fun_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  X or X .+ { X } <- X let x
  ```
- Derivation (1 occurrence):
  ```
  fun_expr: fun_expr OR . fun_expr
    fun_expr: . simple_expr DOTOP LPAREN separated_or_terminated_nonempty_list(SEMI,expr) RPAREN LESSMINUS STACK FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
  ```
  Sample sentence (implementation):
  ```ocaml
  X or X .+ ( X ) <- stack_ function false -> X let x
  ```
- Derivation (1 occurrence):
  ```
  fun_expr: fun_expr OR . fun_expr
    fun_expr: . simple_expr DOTOP LPAREN separated_or_terminated_nonempty_list(SEMI,expr) RPAREN LESSMINUS FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
  ```
  Sample sentence (implementation):
  ```ocaml
  X or X .+ ( X ) <- function false -> X let x
  ```
- Derivation (1 occurrence):
  ```
  fun_expr: fun_expr OR . fun_expr
    fun_expr: . simple_expr DOTOP LPAREN separated_or_terminated_nonempty_list(SEMI,expr) RPAREN LESSMINUS fun_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  X or X .+ ( X ) <- X let x
  ```


### Item `constr_longident: . mod_longident` (in 5 errors)

- Derivation (5 occurrences):
  ```
  simple_expr: LESSLBRACKET . separated_or_terminated_nonempty_list(SEMI,expr) RBRACKETGREATER
    separated_or_terminated_nonempty_list(SEMI,expr): . fun_expr
      fun_expr: . simple_expr
        simple_expr: . constr_longident
          constr_longident: . mod_longident
            mod_longident: . mk_longident(mod_longident,UIDENT)
              mk_longident(mod_longident,UIDENT): . UIDENT
  ```
  Sample sentence (implementation):
  ```ocaml
  X <[ X ]>
  ```


### Item `seq_expr: FUNCTION ext list(attribute) . reversed_preceded_or_separated_nonempty_llist(BAR,match_case)` (in 4 errors)

- Derivation (4 occurrences):
  ```
  seq_expr: FUNCTION ext list(attribute) . reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
  ```
  Sample sentence (implementation):
  ```ocaml
  function | false -> X let x
  ```


### Item `fun_expr: fun_expr OR STACK FUNCTION ext list(attribute) . reversed_preceded_or_separated_nonempty_llist(BAR,match_case)` (in 2 errors)

- Derivation (2 occurrences):
  ```
  fun_expr: fun_expr OR STACK FUNCTION ext list(attribute) . reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
  ```
  Sample sentence (implementation):
  ```ocaml
  X or stack_ function | false -> X let x
  ```


### Item `seq_expr: STACK FUNCTION ext list(attribute) . reversed_preceded_or_separated_nonempty_llist(BAR,match_case)` (in 2 errors)

- Derivation (2 occurrences):
  ```
  seq_expr: STACK FUNCTION ext list(attribute) . reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
  ```
  Sample sentence (implementation):
  ```ocaml
  stack_ function | false -> X let x
  ```


### Item `attribute: . LBRACKETAT attr_id attr_payload RBRACKET` (in 1 error)

- Derivation (1 occurrence):
  ```
  let_bindings(ext): LET ext . list(attribute) mutable_flag rec_flag let_binding_body list(post_item_attribute)
    list(attribute): . attribute list(attribute)
      attribute: . LBRACKETAT attr_id attr_payload RBRACKET
  ```
  Sample sentence (implementation):
  ```ocaml
  let [@ and ] x
  ```


### Item `fun_expr: fun_expr MOD STACK . FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)` (in 1 error)

- Derivation (1 occurrence):
  ```
  fun_expr: fun_expr MOD STACK . FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
  ```
  Sample sentence (implementation):
  ```ocaml
  X mod stack_ function | false -> X let x
  ```


### Item `let_bindings(ext): LET ext list(attribute) . mutable_flag rec_flag let_binding_body list(post_item_attribute)` (in 1 error)

- Derivation (1 occurrence):
  ```
  let_bindings(ext): LET ext list(attribute) . mutable_flag rec_flag let_binding_body list(post_item_attribute)
    mutable_flag: . MUTABLE
  ```
  Sample sentence (implementation):
  ```ocaml
  let mutable x
  ```


### Item `let_bindings(ext): LET ext list(attribute) mutable_flag . rec_flag let_binding_body list(post_item_attribute)` (in 1 error)

- Derivation (1 occurrence):
  ```
  let_bindings(ext): LET ext list(attribute) mutable_flag . rec_flag let_binding_body list(post_item_attribute)
    rec_flag: . REC
  ```
  Sample sentence (implementation):
  ```ocaml
  let rec x
  ```


### Item `structure: seq_expr . list(post_item_attribute) list(structure_element)` (in 1 error)

- Derivation (1 occurrence):
  ```
  structure: seq_expr . list(post_item_attribute) list(structure_element)
  ```
  Sample sentence (implementation):
  ```ocaml
  X [@@ and ] let x
  ```

## Error: comment dropped. (3024 errors)

### Item `module_type: . module_type WITH reversed_separated_nonempty_llist(AND,with_constraint)` (in 3023 errors)

- Derivation (2280 occurrences):
  ```
  signature_item: include_kind ext list(attribute) . module_type list(post_item_attribute) optional_atat_modalities_expr
    module_type: . module_type WITH reversed_separated_nonempty_llist(AND,with_constraint)
      module_type: . extension
        extension: . QUOTED_STRING_EXPR
  ```
  Sample sentence (interface):
  ```ocaml
  include {%ext|s|} with module X := X
  ```
- Derivation (705 occurrences):
  ```
  module_type_atomic: LPAREN . module_type RPAREN
    module_type: . module_type WITH reversed_separated_nonempty_llist(AND,with_constraint)
      module_type: . extension
        extension: . QUOTED_STRING_EXPR
  ```
  Sample sentence (interface):
  ```ocaml
  include ( {%ext|s|} with module X := X )
  ```
- Derivation (14 occurrences):
  ```
  signature_item: include_kind ext list(attribute) . module_type list(post_item_attribute) optional_atat_modalities_expr
    module_type: . module_type attribute
      module_type: . module_type WITH reversed_separated_nonempty_llist(AND,with_constraint)
        module_type: . extension
          extension: . QUOTED_STRING_EXPR
  ```
  Sample sentence (interface):
  ```ocaml
  include {%ext|s|} with module X := X [@ and ]
  ```
- Derivation (4 occurrences):
  ```
  module_declaration_body(__anonymous_8): COLON . module_type optional_atat_modalities_expr
    module_type: . module_type WITH reversed_separated_nonempty_llist(AND,with_constraint)
  ```
  Sample sentence (interface):
  ```ocaml
  module X : {%ext|s|} with module X := X
  ```
- Derivation (3 occurrences):
  ```
  module_type_atomic: LPAREN . module_type RPAREN
    module_type: . module_type attribute
      module_type: . module_type WITH reversed_separated_nonempty_llist(AND,with_constraint)
        module_type: . extension
          extension: . QUOTED_STRING_EXPR
  ```
  Sample sentence (interface):
  ```ocaml
  include ( {%ext|s|} with module X := X [@ and ] )
  ```
- Derivation (2 occurrences):
  ```
  module_declaration_body(__anonymous_8): COLON . module_type optional_atat_modalities_expr
    module_type: . module_type attribute
      module_type: . module_type WITH reversed_separated_nonempty_llist(AND,with_constraint)
  ```
  Sample sentence (interface):
  ```ocaml
  module X : {%ext|s|} with module X := X [@ and ]
  ```
- Derivation (2 occurrences):
  ```
  signature_item: MODULE ext list(attribute) REC module_name COLON . module_type optional_atat_modalities_expr list(post_item_attribute) list(and_module_declaration)
    module_type: . module_type WITH reversed_separated_nonempty_llist(AND,with_constraint)
      module_type: . extension
        extension: . QUOTED_STRING_EXPR
  ```
  Sample sentence (interface):
  ```ocaml
  module rec X : {%ext|s|} with module X := X
  ```
- Derivation (2 occurrences):
  ```
  option(preceded(EQUAL,module_type)): EQUAL . module_type
    module_type: . module_type WITH reversed_separated_nonempty_llist(AND,with_constraint)
      module_type: . extension
        extension: . QUOTED_STRING_EXPR
  ```
  Sample sentence (implementation):
  ```ocaml
  module type x = {%ext|s|} with module X := X
  ```
- Derivation (2 occurrences):
  ```
  module_type_subst: MODULE TYPE ext list(attribute) ident COLONEQUAL . module_type list(post_item_attribute)
    module_type: . module_type WITH reversed_separated_nonempty_llist(AND,with_constraint)
      module_type: . extension
        extension: . QUOTED_STRING_EXPR
  ```
  Sample sentence (interface):
  ```ocaml
  module type x := {%ext|s|} with module X := X
  ```
- Derivation (2 occurrences):
  ```
  signature_item: MODULE ext list(attribute) REC module_name COLON . module_type optional_atat_modalities_expr list(post_item_attribute) list(and_module_declaration)
    module_type: . module_type attribute
      module_type: . module_type WITH reversed_separated_nonempty_llist(AND,with_constraint)
        module_type: . extension
          extension: . QUOTED_STRING_EXPR
  ```
  Sample sentence (interface):
  ```ocaml
  module rec X : {%ext|s|} with module X := X [@ and ]
  ```
- Derivation (2 occurrences):
  ```
  option(preceded(EQUAL,module_type)): EQUAL . module_type
    module_type: . module_type attribute
      module_type: . module_type WITH reversed_separated_nonempty_llist(AND,with_constraint)
        module_type: . extension
          extension: . QUOTED_STRING_EXPR
  ```
  Sample sentence (implementation):
  ```ocaml
  module type x = {%ext|s|} with module X := X [@ and ]
  ```
- Derivation (2 occurrences):
  ```
  module_type_subst: MODULE TYPE ext list(attribute) ident COLONEQUAL . module_type list(post_item_attribute)
    module_type: . module_type attribute
      module_type: . module_type WITH reversed_separated_nonempty_llist(AND,with_constraint)
        module_type: . extension
          extension: . QUOTED_STRING_EXPR
  ```
  Sample sentence (interface):
  ```ocaml
  module type x := {%ext|s|} with module X := X [@ and ]
  ```
- Derivation (2 occurrences):
  ```
  module_type: reversed_nonempty_llist(functor_arg) MINUSGREATER . module_type
    module_type: . module_type WITH reversed_separated_nonempty_llist(AND,with_constraint)
      module_type: . extension
        extension: . QUOTED_STRING_EXPR
  ```
  Sample sentence (implementation):
  ```ocaml
  module X : ( ) -> {%ext|s|} with module X := X = {%ext|s|}
  ```
- Derivation (1 occurrence):
  ```
  module_type: FUNCTOR list(attribute) reversed_nonempty_llist(functor_arg) MINUSGREATER . module_type
    module_type: . module_type WITH reversed_separated_nonempty_llist(AND,with_constraint)
  ```
  Sample sentence (interface):
  ```ocaml
  include functor functor ( ) -> X with module X := X @@ x
  ```


### Item `atat_modalities_expr: . ATAT nonempty_list(modality)` (in 1 error)

- Derivation (1 occurrence):
  ```
  signature_item: include_kind ext list(attribute) module_type list(post_item_attribute) . optional_atat_modalities_expr
    optional_atat_modalities_expr: . atat_modalities_expr
      atat_modalities_expr: . ATAT nonempty_list(modality)
  ```
  Sample sentence (interface):
  ```ocaml
  include functor functor ( ) -> X @@ x
  ```


