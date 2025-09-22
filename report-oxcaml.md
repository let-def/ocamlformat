# Parser errors

A parser error is reported when OCamlformat rejects an input on a specific token.
The error location is the token that caused the failure; 
it is usually the exact point where the parser could not continue.

## Error: Syntax error

### Item `seq_expr: . fun_seq_expr` (in 3476 errors)

- Derivation (9 occurrences):
  ```
  fun_expr: ONCE . seq_expr
    seq_expr: . fun_seq_expr
      fun_seq_expr: . fun_expr
        fun_expr: . LETOP letop_bindings IN seq_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  once_ let* lident in UIdent let false = UIdent
        ^^^^
  ```
- Derivation (9 occurrences):
  ```
  fun_expr: UNIQUE . seq_expr
    seq_expr: . fun_seq_expr
      fun_seq_expr: . fun_expr
        fun_expr: . LETOP letop_bindings IN seq_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  unique_ let* lident in UIdent let false = UIdent
          ^^^^
  ```
- Derivation (9 occurrences):
  ```
  fun_expr: ONCE . seq_expr
    seq_expr: . fun_seq_expr
      fun_seq_expr: . fun_expr
        fun_expr: . IF ext list(attribute) seq_expr THEN fun_expr ELSE fun_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  once_ if UIdent then UIdent else UIdent let false = UIdent
        ^^
  ```
- Derivation (9 occurrences):
  ```
  fun_expr: UNIQUE . seq_expr
    seq_expr: . fun_seq_expr
      fun_seq_expr: . fun_expr
        fun_expr: . IF ext list(attribute) seq_expr THEN fun_expr ELSE fun_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  unique_ if UIdent then UIdent else UIdent let false = UIdent
          ^^
  ```
- Derivation (8 occurrences):
  ```
  fun_expr: ONCE . seq_expr
    seq_expr: . fun_seq_expr
      fun_seq_expr: . fun_expr
        fun_expr: . reversed_labeled_tuple_body
          reversed_labeled_tuple_body: . STACK FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case) COMMA STACK FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
  ```
  Sample sentence (implementation):
  ```ocaml
  once_ stack_ function false -> . , stack_ function false -> UIdent let false = UIdent
        ^^^^^^
  ```
- Derivation (8 occurrences):
  ```
  fun_expr: UNIQUE . seq_expr
    seq_expr: . fun_seq_expr
      fun_seq_expr: . fun_expr
        fun_expr: . reversed_labeled_tuple_body
          reversed_labeled_tuple_body: . STACK FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case) COMMA STACK FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
  ```
  Sample sentence (implementation):
  ```ocaml
  unique_ stack_ function false -> . , stack_ function false -> UIdent let false = UIdent
          ^^^^^^
  ```
- Derivation (8 occurrences):
  ```
  fun_expr: ONCE . seq_expr
    seq_expr: . fun_seq_expr
      fun_seq_expr: . fun_expr
        fun_expr: . reversed_labeled_tuple_body
          reversed_labeled_tuple_body: . STACK FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case) COMMA FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
  ```
  Sample sentence (implementation):
  ```ocaml
  once_ stack_ function false -> . , function false -> UIdent let false = UIdent
        ^^^^^^
  ```
- Derivation (8 occurrences):
  ```
  fun_expr: UNIQUE . seq_expr
    seq_expr: . fun_seq_expr
      fun_seq_expr: . fun_expr
        fun_expr: . reversed_labeled_tuple_body
          reversed_labeled_tuple_body: . STACK FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case) COMMA FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
  ```
  Sample sentence (implementation):
  ```ocaml
  unique_ stack_ function false -> . , function false -> UIdent let false = UIdent
          ^^^^^^
  ```
- Derivation (8 occurrences):
  ```
  fun_expr: ONCE . seq_expr
    seq_expr: . fun_seq_expr
      fun_seq_expr: . fun_expr
        fun_expr: . reversed_labeled_tuple_body
          reversed_labeled_tuple_body: . STACK FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case) COMMA fun_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  once_ stack_ function false -> . , UIdent let false = UIdent
        ^^^^^^
  ```
- Derivation (8 occurrences):
  ```
  fun_expr: UNIQUE . seq_expr
    seq_expr: . fun_seq_expr
      fun_seq_expr: . fun_expr
        fun_expr: . reversed_labeled_tuple_body
          reversed_labeled_tuple_body: . STACK FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case) COMMA fun_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  unique_ stack_ function false -> . , UIdent let false = UIdent
          ^^^^^^
  ```
- Derivation (8 occurrences):
  ```
  fun_expr: ONCE . seq_expr
    seq_expr: . fun_seq_expr
      fun_seq_expr: . fun_expr
        fun_expr: . reversed_labeled_tuple_body
          reversed_labeled_tuple_body: . FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case) COMMA STACK FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
  ```
  Sample sentence (implementation):
  ```ocaml
  once_ function false -> . , stack_ function false -> UIdent let false = UIdent
        ^^^^^^^^
  ```
- Derivation (8 occurrences):
  ```
  fun_expr: UNIQUE . seq_expr
    seq_expr: . fun_seq_expr
      fun_seq_expr: . fun_expr
        fun_expr: . reversed_labeled_tuple_body
          reversed_labeled_tuple_body: . FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case) COMMA STACK FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
  ```
  Sample sentence (implementation):
  ```ocaml
  unique_ function false -> . , stack_ function false -> UIdent let false = UIdent
          ^^^^^^^^
  ```
- Derivation (8 occurrences):
  ```
  fun_expr: ONCE . seq_expr
    seq_expr: . fun_seq_expr
      fun_seq_expr: . fun_expr
        fun_expr: . reversed_labeled_tuple_body
          reversed_labeled_tuple_body: . FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case) COMMA FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
  ```
  Sample sentence (implementation):
  ```ocaml
  once_ function false -> . , function false -> UIdent let false = UIdent
        ^^^^^^^^
  ```
- Derivation (8 occurrences):
  ```
  fun_expr: UNIQUE . seq_expr
    seq_expr: . fun_seq_expr
      fun_seq_expr: . fun_expr
        fun_expr: . reversed_labeled_tuple_body
          reversed_labeled_tuple_body: . FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case) COMMA FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
  ```
  Sample sentence (implementation):
  ```ocaml
  unique_ function false -> . , function false -> UIdent let false = UIdent
          ^^^^^^^^
  ```
- Derivation (8 occurrences):
  ```
  fun_expr: ONCE . seq_expr
    seq_expr: . fun_seq_expr
      fun_seq_expr: . fun_expr
        fun_expr: . reversed_labeled_tuple_body
          reversed_labeled_tuple_body: . FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case) COMMA fun_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  once_ function false -> . , UIdent let false = UIdent
        ^^^^^^^^
  ```
- Derivation (8 occurrences):
  ```
  fun_expr: UNIQUE . seq_expr
    seq_expr: . fun_seq_expr
      fun_seq_expr: . fun_expr
        fun_expr: . reversed_labeled_tuple_body
          reversed_labeled_tuple_body: . FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case) COMMA fun_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  unique_ function false -> . , UIdent let false = UIdent
          ^^^^^^^^
  ```
- Derivation (8 occurrences):
  ```
  fun_expr: ONCE . seq_expr
    seq_expr: . fun_seq_expr
      fun_seq_expr: . fun_expr
        fun_expr: . EXCLAVE seq_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  once_ exclave_ UIdent let false = UIdent
        ^^^^^^^^
  ```
- Derivation (8 occurrences):
  ```
  fun_expr: UNIQUE . seq_expr
    seq_expr: . fun_seq_expr
      fun_seq_expr: . fun_expr
        fun_expr: . EXCLAVE seq_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  unique_ exclave_ UIdent let false = UIdent
          ^^^^^^^^
  ```
- Derivation (8 occurrences):
  ```
  fun_expr: ONCE . seq_expr
    seq_expr: . fun_seq_expr
      fun_seq_expr: . fun_expr
        fun_expr: . LOCAL seq_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  once_ local_ UIdent let false = UIdent
        ^^^^^^
  ```
- Derivation (8 occurrences):
  ```
  fun_expr: UNIQUE . seq_expr
    seq_expr: . fun_seq_expr
      fun_seq_expr: . fun_expr
        fun_expr: . LOCAL seq_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  unique_ local_ UIdent let false = UIdent
          ^^^^^^
  ```
- Derivation (8 occurrences):
  ```
  fun_expr: ONCE . seq_expr
    seq_expr: . fun_seq_expr
      fun_seq_expr: . fun_expr
        fun_expr: . IF ext list(attribute) seq_expr THEN STACK FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case) ELSE STACK FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
  ```
  Sample sentence (implementation):
  ```ocaml
  once_ if UIdent then stack_ function false -> UIdent else stack_ function false -> UIdent let false = UIdent
        ^^
  ```
- ...


### Item `atomic_type: mod_ext_longident DOT . delimited_type_supporting_local_open` (in 6069 errors)

- Derivation (2227 occurrences):
  ```
  atomic_type: mod_ext_longident DOT . delimited_type_supporting_local_open
    delimited_type_supporting_local_open: . LBRACKETGREATER RBRACKET
  ```
  Sample sentence (interface):
  ```ocaml
  exception false of UIdent . [> ]
                              ^^
  ```
- Derivation (1030 occurrences):
  ```
  atomic_type: mod_ext_longident DOT . delimited_type_supporting_local_open
    delimited_type_supporting_local_open: . LBRACKET row_field BAR reversed_separated_nonempty_llist(BAR,row_field) RBRACKET
  ```
  Sample sentence (interface):
  ```ocaml
  class lident : UIdent . [ {%hello|world|} | {%hello|world|} ] -> {%hello|world|}
                          ^
  ```
- Derivation (763 occurrences):
  ```
  atomic_type: mod_ext_longident DOT . delimited_type_supporting_local_open
    delimited_type_supporting_local_open: . LPAREN core_type RPAREN
  ```
  Sample sentence (interface):
  ```ocaml
  class lident : UIdent . ( {%hello|world|} ) -> {%hello|world|}
                          ^
  ```
- Derivation (569 occurrences):
  ```
  atomic_type: mod_ext_longident DOT . delimited_type_supporting_local_open
    delimited_type_supporting_local_open: . LBRACKET BAR reversed_separated_nonempty_llist(BAR,row_field) RBRACKET
  ```
  Sample sentence (interface):
  ```ocaml
  class lident : UIdent . [ | {%hello|world|} ] -> {%hello|world|}
                          ^
  ```
- Derivation (530 occurrences):
  ```
  atomic_type: mod_ext_longident DOT . delimited_type_supporting_local_open
    delimited_type_supporting_local_open: . LBRACKETGREATER option(BAR) reversed_separated_nonempty_llist(BAR,row_field) RBRACKET
  ```
  Sample sentence (interface):
  ```ocaml
  class lident : UIdent . [> {%hello|world|} ] -> {%hello|world|}
                          ^^
  ```
- Derivation (529 occurrences):
  ```
  atomic_type: mod_ext_longident DOT . delimited_type_supporting_local_open
    delimited_type_supporting_local_open: . LBRACKETLESS option(BAR) reversed_separated_nonempty_llist(BAR,row_field) RBRACKET
  ```
  Sample sentence (interface):
  ```ocaml
  class lident : UIdent . [< {%hello|world|} ] -> {%hello|world|}
                          ^^
  ```
- Derivation (148 occurrences):
  ```
  atomic_type: mod_ext_longident DOT . delimited_type_supporting_local_open
    delimited_type_supporting_local_open: . HASHLPAREN LIDENT COLON atomic_type STAR reversed_separated_nonempty_llist(STAR,labeled_tuple_typ_element) RPAREN
  ```
  Sample sentence (interface):
  ```ocaml
  class lident : UIdent . #( lident : {%hello|world|} * {%hello|world|} ) -> {%hello|world|}
                          ^^
  ```
- Derivation (146 occurrences):
  ```
  atomic_type: mod_ext_longident DOT . delimited_type_supporting_local_open
    delimited_type_supporting_local_open: . HASHLPAREN atomic_type STAR reversed_separated_nonempty_llist(STAR,labeled_tuple_typ_element) RPAREN
  ```
  Sample sentence (interface):
  ```ocaml
  class lident : UIdent . #( {%hello|world|} * {%hello|world|} ) -> {%hello|world|}
                          ^^
  ```
- Derivation (107 occurrences):
  ```
  atomic_type: mod_ext_longident DOT . delimited_type_supporting_local_open
    delimited_type_supporting_local_open: . LBRACKETLESS option(BAR) reversed_separated_nonempty_llist(BAR,row_field) GREATER reversed_nonempty_llist(name_tag) RBRACKET
  ```
  Sample sentence (interface):
  ```ocaml
  class lident : UIdent . [< {%hello|world|} > ` lident ] -> {%hello|world|}
                          ^^
  ```
- Derivation (12 occurrences):
  ```
  atomic_type: mod_ext_longident DOT . delimited_type_supporting_local_open
    delimited_type_supporting_local_open: . LBRACKET tag_field RBRACKET
  ```
  Sample sentence (interface):
  ```ocaml
  class lident : UIdent . [ ` lident ] -> {%hello|world|}
                          ^
  ```
- Derivation (8 occurrences):
  ```
  atomic_type: mod_ext_longident DOT . delimited_type_supporting_local_open
    delimited_type_supporting_local_open: . LPAREN MODULE ext list(attribute) module_type RPAREN
  ```
  Sample sentence (interface):
  ```ocaml
  class lident : UIdent . ( module {%hello|world|} ) -> {%hello|world|}
                          ^
  ```


### Item `pattern: . pattern_gen` (in 5710 errors)

- Derivation (2313 occurrences):
  ```
  comprehension_clause_binding: list(attribute) ONCE . pattern IN fun_expr
    pattern: . pattern_gen
      pattern_gen: . simple_pattern
        simple_pattern: . simple_pattern_not_ident
          simple_pattern_not_ident: . constr_longident
            constr_longident: . constr_extra_nonprefix_ident
              constr_extra_nonprefix_ident: . FALSE
  ```
  Sample sentence (implementation):
  ```ocaml
  [: UIdent for once_ false in UIdent :] let false = UIdent
                      ^^^^^
  ```
- Derivation (2313 occurrences):
  ```
  comprehension_clause_binding: list(attribute) UNIQUE . pattern IN fun_expr
    pattern: . pattern_gen
      pattern_gen: . simple_pattern
        simple_pattern: . simple_pattern_not_ident
          simple_pattern_not_ident: . constr_longident
            constr_longident: . constr_extra_nonprefix_ident
              constr_extra_nonprefix_ident: . FALSE
  ```
  Sample sentence (implementation):
  ```ocaml
  [: UIdent for unique_ false in UIdent :] let false = UIdent
                        ^^^^^
  ```
- Derivation (206 occurrences):
  ```
  comprehension_clause_binding: list(attribute) ONCE . pattern IN STACK FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
    pattern: . pattern_gen
      pattern_gen: . simple_pattern
        simple_pattern: . simple_pattern_not_ident
          simple_pattern_not_ident: . constr_longident
            constr_longident: . constr_extra_nonprefix_ident
              constr_extra_nonprefix_ident: . FALSE
  ```
  Sample sentence (implementation):
  ```ocaml
  [: UIdent for once_ false in stack_ function false -> UIdent :] let false = UIdent
                      ^^^^^
  ```
- Derivation (206 occurrences):
  ```
  comprehension_clause_binding: list(attribute) ONCE . pattern IN FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
    pattern: . pattern_gen
      pattern_gen: . simple_pattern
        simple_pattern: . simple_pattern_not_ident
          simple_pattern_not_ident: . constr_longident
            constr_longident: . constr_extra_nonprefix_ident
              constr_extra_nonprefix_ident: . FALSE
  ```
  Sample sentence (implementation):
  ```ocaml
  [: UIdent for once_ false in function false -> UIdent :] let false = UIdent
                      ^^^^^
  ```
- Derivation (206 occurrences):
  ```
  comprehension_clause_binding: list(attribute) UNIQUE . pattern IN STACK FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
    pattern: . pattern_gen
      pattern_gen: . simple_pattern
        simple_pattern: . simple_pattern_not_ident
          simple_pattern_not_ident: . constr_longident
            constr_longident: . constr_extra_nonprefix_ident
              constr_extra_nonprefix_ident: . FALSE
  ```
  Sample sentence (implementation):
  ```ocaml
  [: UIdent for unique_ false in stack_ function false -> UIdent :] let false = UIdent
                        ^^^^^
  ```
- Derivation (206 occurrences):
  ```
  comprehension_clause_binding: list(attribute) UNIQUE . pattern IN FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
    pattern: . pattern_gen
      pattern_gen: . simple_pattern
        simple_pattern: . simple_pattern_not_ident
          simple_pattern_not_ident: . constr_longident
            constr_longident: . constr_extra_nonprefix_ident
              constr_extra_nonprefix_ident: . FALSE
  ```
  Sample sentence (implementation):
  ```ocaml
  [: UIdent for unique_ false in function false -> UIdent :] let false = UIdent
                        ^^^^^
  ```
- Derivation (3 occurrences):
  ```
  comprehension_clause_binding: list(attribute) ONCE . pattern IN fun_expr
    pattern: . pattern_gen
      pattern_gen: . LAZY ext list(attribute) simple_pattern
  ```
  Sample sentence (implementation):
  ```ocaml
  [: UIdent for once_ lazy false in UIdent :] let false = UIdent
                      ^^^^
  ```
- Derivation (3 occurrences):
  ```
  comprehension_clause_binding: list(attribute) UNIQUE . pattern IN fun_expr
    pattern: . pattern_gen
      pattern_gen: . LAZY ext list(attribute) simple_pattern
  ```
  Sample sentence (implementation):
  ```ocaml
  [: UIdent for unique_ lazy false in UIdent :] let false = UIdent
                        ^^^^
  ```
- Derivation (3 occurrences):
  ```
  comprehension_clause_binding: list(attribute) ONCE . pattern IN fun_expr
    pattern: . pattern_gen
      pattern_gen: . simple_pattern
        simple_pattern: . simple_pattern_not_ident
          simple_pattern_not_ident: . mod_longident DOT LPAREN RPAREN
            mod_longident: . mk_longident(mod_longident,UIDENT)
              mk_longident(mod_longident,UIDENT): . UIDENT
  ```
  Sample sentence (implementation):
  ```ocaml
  [: UIdent for once_ UIdent . ( ) in UIdent :] let false = UIdent
                      ^^^^^^
  ```
- Derivation (3 occurrences):
  ```
  comprehension_clause_binding: list(attribute) UNIQUE . pattern IN fun_expr
    pattern: . pattern_gen
      pattern_gen: . simple_pattern
        simple_pattern: . simple_pattern_not_ident
          simple_pattern_not_ident: . mod_longident DOT LPAREN RPAREN
            mod_longident: . mk_longident(mod_longident,UIDENT)
              mk_longident(mod_longident,UIDENT): . UIDENT
  ```
  Sample sentence (implementation):
  ```ocaml
  [: UIdent for unique_ UIdent . ( ) in UIdent :] let false = UIdent
                        ^^^^^^
  ```
- Derivation (3 occurrences):
  ```
  comprehension_clause_binding: list(attribute) ONCE . pattern IN fun_expr
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
  [: UIdent for once_ false | false in UIdent :] let false = UIdent
                      ^^^^^
  ```
- Derivation (3 occurrences):
  ```
  comprehension_clause_binding: list(attribute) UNIQUE . pattern IN fun_expr
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
  [: UIdent for unique_ false | false in UIdent :] let false = UIdent
                        ^^^^^
  ```
- Derivation (3 occurrences):
  ```
  comprehension_clause_binding: list(attribute) ONCE . pattern IN fun_expr
    pattern: . pattern AS val_ident
      pattern: . pattern_gen
        pattern_gen: . simple_pattern
          simple_pattern: . simple_pattern_not_ident
            simple_pattern_not_ident: . constr_longident
              constr_longident: . constr_extra_nonprefix_ident
                constr_extra_nonprefix_ident: . FALSE
  ```
  Sample sentence (implementation):
  ```ocaml
  [: UIdent for once_ false as lident in UIdent :] let false = UIdent
                      ^^^^^
  ```
- Derivation (3 occurrences):
  ```
  comprehension_clause_binding: list(attribute) UNIQUE . pattern IN fun_expr
    pattern: . pattern AS val_ident
      pattern: . pattern_gen
        pattern_gen: . simple_pattern
          simple_pattern: . simple_pattern_not_ident
            simple_pattern_not_ident: . constr_longident
              constr_longident: . constr_extra_nonprefix_ident
                constr_extra_nonprefix_ident: . FALSE
  ```
  Sample sentence (implementation):
  ```ocaml
  [: UIdent for unique_ false as lident in UIdent :] let false = UIdent
                        ^^^^^
  ```
- Derivation (3 occurrences):
  ```
  comprehension_clause_binding: list(attribute) ONCE . pattern IN fun_expr
    pattern: . pattern attribute
      pattern: . pattern_gen
        pattern_gen: . simple_pattern
          simple_pattern: . simple_pattern_not_ident
            simple_pattern_not_ident: . constr_longident
              constr_longident: . constr_extra_nonprefix_ident
                constr_extra_nonprefix_ident: . FALSE
  ```
  Sample sentence (implementation):
  ```ocaml
  [: UIdent for once_ false [@ and ] in UIdent :] let false = UIdent
                      ^^^^^
  ```
- Derivation (3 occurrences):
  ```
  comprehension_clause_binding: list(attribute) UNIQUE . pattern IN fun_expr
    pattern: . pattern attribute
      pattern: . pattern_gen
        pattern_gen: . simple_pattern
          simple_pattern: . simple_pattern_not_ident
            simple_pattern_not_ident: . constr_longident
              constr_longident: . constr_extra_nonprefix_ident
                constr_extra_nonprefix_ident: . FALSE
  ```
  Sample sentence (implementation):
  ```ocaml
  [: UIdent for unique_ false [@ and ] in UIdent :] let false = UIdent
                        ^^^^^
  ```
- Derivation (3 occurrences):
  ```
  comprehension_clause_binding: list(attribute) ONCE . pattern IN fun_expr
    pattern: . pattern COLONCOLON pattern
      pattern: . pattern_gen
        pattern_gen: . simple_pattern
          simple_pattern: . simple_pattern_not_ident
            simple_pattern_not_ident: . constr_longident
              constr_longident: . constr_extra_nonprefix_ident
                constr_extra_nonprefix_ident: . FALSE
  ```
  Sample sentence (implementation):
  ```ocaml
  [: UIdent for once_ false :: false in UIdent :] let false = UIdent
                      ^^^^^
  ```
- Derivation (3 occurrences):
  ```
  comprehension_clause_binding: list(attribute) UNIQUE . pattern IN fun_expr
    pattern: . pattern COLONCOLON pattern
      pattern: . pattern_gen
        pattern_gen: . simple_pattern
          simple_pattern: . simple_pattern_not_ident
            simple_pattern_not_ident: . constr_longident
              constr_longident: . constr_extra_nonprefix_ident
                constr_extra_nonprefix_ident: . FALSE
  ```
  Sample sentence (implementation):
  ```ocaml
  [: UIdent for unique_ false :: false in UIdent :] let false = UIdent
                        ^^^^^
  ```
- Derivation (3 occurrences):
  ```
  comprehension_clause_binding: list(attribute) ONCE . pattern IN fun_expr
    pattern: . reversed_labeled_tuple_pattern(pattern)
      reversed_labeled_tuple_pattern(pattern): . labeled_tuple_pat_element_list(pattern) COMMA DOTDOT
        labeled_tuple_pat_element_list(pattern): . pattern COMMA pattern
          pattern: . pattern_gen
            pattern_gen: . simple_pattern
              simple_pattern: . simple_pattern_not_ident
                simple_pattern_not_ident: . constr_longident
                  constr_longident: . constr_extra_nonprefix_ident
                    constr_extra_nonprefix_ident: . FALSE
  ```
  Sample sentence (implementation):
  ```ocaml
  [: UIdent for once_ false , false , .. in UIdent :] let false = UIdent
                      ^^^^^
  ```
- Derivation (3 occurrences):
  ```
  comprehension_clause_binding: list(attribute) UNIQUE . pattern IN fun_expr
    pattern: . reversed_labeled_tuple_pattern(pattern)
      reversed_labeled_tuple_pattern(pattern): . labeled_tuple_pat_element_list(pattern) COMMA DOTDOT
        labeled_tuple_pat_element_list(pattern): . pattern COMMA pattern
          pattern: . pattern_gen
            pattern_gen: . simple_pattern
              simple_pattern: . simple_pattern_not_ident
                simple_pattern_not_ident: . constr_longident
                  constr_longident: . constr_extra_nonprefix_ident
                    constr_extra_nonprefix_ident: . FALSE
  ```
  Sample sentence (implementation):
  ```ocaml
  [: UIdent for unique_ false , false , .. in UIdent :] let false = UIdent
                        ^^^^^
  ```
- Derivation (3 occurrences):
  ```
  comprehension_clause_binding: list(attribute) ONCE . pattern IN fun_expr
    pattern: . pattern_gen
      pattern_gen: . constr_longident LPAREN TYPE newtypes RPAREN simple_pattern
        constr_longident: . constr_extra_nonprefix_ident
          constr_extra_nonprefix_ident: . FALSE
  ```
  Sample sentence (implementation):
  ```ocaml
  [: UIdent for once_ false ( type lident ) false in UIdent :] let false = UIdent
                      ^^^^^
  ```
- ...


### Item `fun_expr: OVERWRITE ext list(attribute) seq_expr . WITH fun_expr` (in 5143 errors)

- Derivation (5143 occurrences):
  ```
  fun_expr: OVERWRITE ext list(attribute) seq_expr . WITH fun_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  overwrite_ UIdent with UIdent let false = UIdent
                    ^^^^
  ```


### Item `fun_expr: OVERWRITE ext list(attribute) seq_expr . WITH STACK FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)` (in 2515 errors)

- Derivation (2515 occurrences):
  ```
  fun_expr: OVERWRITE ext list(attribute) seq_expr . WITH STACK FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
  ```
  Sample sentence (implementation):
  ```ocaml
  overwrite_ UIdent with stack_ function false -> UIdent let false = UIdent
                    ^^^^
  ```


### Item `fun_expr: OVERWRITE ext list(attribute) seq_expr . WITH FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)` (in 2511 errors)

- Derivation (2511 occurrences):
  ```
  fun_expr: OVERWRITE ext list(attribute) seq_expr . WITH FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
  ```
  Sample sentence (implementation):
  ```ocaml
  overwrite_ UIdent with function false -> UIdent let false = UIdent
                    ^^^^
  ```


### Item `block_access: DOTOP . ident LPAREN seq_expr RPAREN` (in 2153 errors)

- Derivation (2152 occurrences):
  ```
  block_access: DOTOP . ident LPAREN seq_expr RPAREN
    ident: . LIDENT
  ```
  Sample sentence (implementation):
  ```ocaml
  ( .+ lident ( UIdent ) ) let false = UIdent
       ^^^^^^
  ```
- Derivation (1 occurrence):
  ```
  block_access: DOTOP . ident LPAREN seq_expr RPAREN
    ident: . UIDENT
  ```
  Sample sentence (implementation):
  ```ocaml
  ( .+ UIdent ( UIdent ) ) let false = UIdent
       ^^^^^^
  ```


### Item `nonempty_list(mode_legacy): . LOCAL` (in 684 errors)

- Derivation (244 occurrences):
  ```
  nonempty_list(mode_legacy): LOCAL . nonempty_list(mode_legacy)
    nonempty_list(mode_legacy): . LOCAL
  ```
  Sample sentence (interface):
  ```ocaml
  type lident := private local_ local_ {%hello|world|} @ lident -> {%hello|world|}
                                ^^^^^^
  ```
- Derivation (220 occurrences):
  ```
  nonempty_list(mode_legacy): ONCE . nonempty_list(mode_legacy)
    nonempty_list(mode_legacy): . LOCAL
  ```
  Sample sentence (interface):
  ```ocaml
  type lident := private once_ local_ {%hello|world|} @ lident -> {%hello|world|}
                               ^^^^^^
  ```
- Derivation (220 occurrences):
  ```
  nonempty_list(mode_legacy): UNIQUE . nonempty_list(mode_legacy)
    nonempty_list(mode_legacy): . LOCAL
  ```
  Sample sentence (interface):
  ```ocaml
  type lident := private unique_ local_ {%hello|world|} @ lident -> {%hello|world|}
                                 ^^^^^^
  ```


### Item `seq_expr: . FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)` (in 603 errors)

- Derivation (297 occurrences):
  ```
  fun_expr: ONCE . seq_expr
    seq_expr: . FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
  ```
  Sample sentence (implementation):
  ```ocaml
  once_ function false -> UIdent let false = UIdent
        ^^^^^^^^
  ```
- Derivation (297 occurrences):
  ```
  fun_expr: UNIQUE . seq_expr
    seq_expr: . FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
  ```
  Sample sentence (implementation):
  ```ocaml
  unique_ function false -> UIdent let false = UIdent
          ^^^^^^^^
  ```
- Derivation (6 occurrences):
  ```
  block_access: DOTOP LPAREN . seq_expr RPAREN
    seq_expr: . FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
  ```
  Sample sentence (implementation):
  ```ocaml
  ( .+ ( function false -> UIdent ) ) let false = UIdent
         ^^^^^^^^
  ```
- Derivation (2 occurrences):
  ```
  fun_expr: OVERWRITE ext list(attribute) . seq_expr WITH fun_expr
    seq_expr: . FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
  ```
  Sample sentence (implementation):
  ```ocaml
  overwrite_ function false -> UIdent with UIdent [@@ and ] let false = UIdent
             ^^^^^^^^
  ```
- Derivation (1 occurrence):
  ```
  fun_seq_expr: fun_expr SEMI . seq_expr
    seq_expr: . FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
  ```
  Sample sentence (implementation):
  ```ocaml
  #{ lident = unique_ UIdent ; function false -> UIdent } let false = UIdent
                               ^^^^^^^^
  ```


### Item `simple_expr: HASHLPAREN reversed_labeled_tuple_body . RPAREN` (in 521 errors)

- Derivation (521 occurrences):
  ```
  simple_expr: HASHLPAREN reversed_labeled_tuple_body . RPAREN
  ```
  Sample sentence (implementation):
  ```ocaml
  #( UIdent , once_ UIdent := UIdent ) let false = UIdent
                                     ^
  ```


### Item `fun_expr: IF ext list(attribute) seq_expr THEN fun_expr . ELSE fun_expr` (in 425 errors)

- Derivation (425 occurrences):
  ```
  fun_expr: IF ext list(attribute) seq_expr THEN fun_expr . ELSE fun_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  if UIdent then once_ UIdent ; UIdent else UIdent [@@ and ] let false = UIdent
                                       ^^^^
  ```


### Item `fun_seq_expr: fun_expr . SEMI` (in 413 errors)

- Derivation (413 occurrences):
  ```
  fun_seq_expr: fun_expr . SEMI
  ```
  Sample sentence (implementation):
  ```ocaml
  unique_ UIdent ; ; [@@ and ] let false = UIdent
                   ^
  ```


### Item `atomic_type: . delimited_type` (in 402 errors)

- Derivation (282 occurrences):
  ```
  strict_function_or_labeled_tuple_type: nonempty_list(mode_legacy) . tuple_type at_mode_expr MINUSGREATER tuple_type
    tuple_type: . atomic_type
      atomic_type: . delimited_type
        delimited_type: . extension_type
          extension_type: . extension
            extension: . QUOTED_STRING_EXPR
  ```
  Sample sentence (interface):
  ```ocaml
  type lident := private unique_ {%hello|world|} @ lident -> {%hello|world|}
                                 ^^^^^^^^^^^^^^^
  ```
- Derivation (4 occurrences):
  ```
  strict_function_or_labeled_tuple_type: LIDENT COLON nonempty_list(mode_legacy) atomic_type STAR reversed_separated_nonempty_llist(STAR,labeled_tuple_typ_element) at_mode_expr MINUSGREATER nonempty_list(mode_legacy) . tuple_type
    tuple_type: . atomic_type
      atomic_type: . delimited_type
        delimited_type: . extension_type
          extension_type: . extension
            extension: . QUOTED_STRING_EXPR
  ```
  Sample sentence (implementation):
  ```ocaml
  val lident : lident : local_ {%hello|world|} * {%hello|world|} @ lident -> unique_ {%hello|world|} let false = UIdent
                                                                                     ^^^^^^^^^^^^^^^
  ```
- Derivation (4 occurrences):
  ```
  strict_function_or_labeled_tuple_type: LIDENT COLON nonempty_list(mode_legacy) atomic_type STAR reversed_separated_nonempty_llist(STAR,labeled_tuple_typ_element) MINUSGREATER nonempty_list(mode_legacy) . tuple_type
    tuple_type: . atomic_type
      atomic_type: . delimited_type
        delimited_type: . extension_type
          extension_type: . extension
            extension: . QUOTED_STRING_EXPR
  ```
  Sample sentence (implementation):
  ```ocaml
  val lident : lident : local_ {%hello|world|} * {%hello|world|} -> unique_ {%hello|world|} let false = UIdent
                                                                            ^^^^^^^^^^^^^^^
  ```
- Derivation (4 occurrences):
  ```
  strict_function_or_labeled_tuple_type: LIDENT COLON atomic_type STAR reversed_separated_nonempty_llist(STAR,labeled_tuple_typ_element) at_mode_expr MINUSGREATER nonempty_list(mode_legacy) . tuple_type
    tuple_type: . atomic_type
      atomic_type: . delimited_type
        delimited_type: . extension_type
          extension_type: . extension
            extension: . QUOTED_STRING_EXPR
  ```
  Sample sentence (implementation):
  ```ocaml
  val lident : lident : {%hello|world|} * {%hello|world|} @ lident -> unique_ {%hello|world|} let false = UIdent
                                                                              ^^^^^^^^^^^^^^^
  ```
- Derivation (4 occurrences):
  ```
  strict_function_or_labeled_tuple_type: LIDENT COLON atomic_type STAR reversed_separated_nonempty_llist(STAR,labeled_tuple_typ_element) MINUSGREATER nonempty_list(mode_legacy) . tuple_type
    tuple_type: . atomic_type
      atomic_type: . delimited_type
        delimited_type: . extension_type
          extension_type: . extension
            extension: . QUOTED_STRING_EXPR
  ```
  Sample sentence (implementation):
  ```ocaml
  val lident : lident : {%hello|world|} * {%hello|world|} -> unique_ {%hello|world|} let false = UIdent
                                                                     ^^^^^^^^^^^^^^^
  ```
- Derivation (4 occurrences):
  ```
  strict_function_or_labeled_tuple_type: nonempty_list(mode_legacy) tuple_type at_mode_expr MINUSGREATER nonempty_list(mode_legacy) . tuple_type
    tuple_type: . atomic_type
      atomic_type: . delimited_type
        delimited_type: . extension_type
          extension_type: . extension
            extension: . QUOTED_STRING_EXPR
  ```
  Sample sentence (implementation):
  ```ocaml
  val lident : local_ {%hello|world|} @ lident -> once_ {%hello|world|} let false = UIdent
                                                        ^^^^^^^^^^^^^^^
  ```
- Derivation (4 occurrences):
  ```
  strict_function_or_labeled_tuple_type: nonempty_list(mode_legacy) tuple_type MINUSGREATER nonempty_list(mode_legacy) . tuple_type
    tuple_type: . atomic_type
      atomic_type: . delimited_type
        delimited_type: . extension_type
          extension_type: . extension
            extension: . QUOTED_STRING_EXPR
  ```
  Sample sentence (implementation):
  ```ocaml
  val lident : local_ {%hello|world|} -> once_ {%hello|world|} let false = UIdent
                                               ^^^^^^^^^^^^^^^
  ```
- Derivation (4 occurrences):
  ```
  strict_function_or_labeled_tuple_type: nonempty_list(mode_legacy) LPAREN reversed_nonempty_llist(typevar) DOT core_type RPAREN at_mode_expr MINUSGREATER nonempty_list(mode_legacy) . tuple_type
    tuple_type: . atomic_type
      atomic_type: . delimited_type
        delimited_type: . extension_type
          extension_type: . extension
            extension: . QUOTED_STRING_EXPR
  ```
  Sample sentence (implementation):
  ```ocaml
  val lident : local_ ( ' lident . {%hello|world|} ) @ lident -> once_ {%hello|world|} let false = UIdent
                                                                       ^^^^^^^^^^^^^^^
  ```
- Derivation (4 occurrences):
  ```
  strict_function_or_labeled_tuple_type: nonempty_list(mode_legacy) LPAREN reversed_nonempty_llist(typevar) DOT core_type RPAREN MINUSGREATER nonempty_list(mode_legacy) . tuple_type
    tuple_type: . atomic_type
      atomic_type: . delimited_type
        delimited_type: . extension_type
          extension_type: . extension
            extension: . QUOTED_STRING_EXPR
  ```
  Sample sentence (implementation):
  ```ocaml
  val lident : local_ ( ' lident . {%hello|world|} ) -> once_ {%hello|world|} let false = UIdent
                                                              ^^^^^^^^^^^^^^^
  ```
- Derivation (4 occurrences):
  ```
  strict_function_or_labeled_tuple_type: tuple_type at_mode_expr MINUSGREATER nonempty_list(mode_legacy) . tuple_type
    tuple_type: . atomic_type
      atomic_type: . delimited_type
        delimited_type: . extension_type
          extension_type: . extension
            extension: . QUOTED_STRING_EXPR
  ```
  Sample sentence (implementation):
  ```ocaml
  val lident : {%hello|world|} @ lident -> once_ {%hello|world|} let false = UIdent
                                                 ^^^^^^^^^^^^^^^
  ```
- Derivation (4 occurrences):
  ```
  strict_function_or_labeled_tuple_type: tuple_type MINUSGREATER nonempty_list(mode_legacy) . tuple_type
    tuple_type: . atomic_type
      atomic_type: . delimited_type
        delimited_type: . extension_type
          extension_type: . extension
            extension: . QUOTED_STRING_EXPR
  ```
  Sample sentence (implementation):
  ```ocaml
  val lident : {%hello|world|} -> once_ {%hello|world|} let false = UIdent
                                        ^^^^^^^^^^^^^^^
  ```
- Derivation (4 occurrences):
  ```
  strict_function_or_labeled_tuple_type: LPAREN reversed_nonempty_llist(typevar) DOT core_type RPAREN at_mode_expr MINUSGREATER nonempty_list(mode_legacy) . tuple_type
    tuple_type: . atomic_type
      atomic_type: . delimited_type
        delimited_type: . extension_type
          extension_type: . extension
            extension: . QUOTED_STRING_EXPR
  ```
  Sample sentence (implementation):
  ```ocaml
  val lident : ( ' lident . {%hello|world|} ) @ lident -> once_ {%hello|world|} let false = UIdent
                                                                ^^^^^^^^^^^^^^^
  ```
- Derivation (4 occurrences):
  ```
  strict_function_or_labeled_tuple_type: LPAREN reversed_nonempty_llist(typevar) DOT core_type RPAREN MINUSGREATER nonempty_list(mode_legacy) . tuple_type
    tuple_type: . atomic_type
      atomic_type: . delimited_type
        delimited_type: . extension_type
          extension_type: . extension
            extension: . QUOTED_STRING_EXPR
  ```
  Sample sentence (implementation):
  ```ocaml
  val lident : ( ' lident . {%hello|world|} ) -> once_ {%hello|world|} let false = UIdent
                                                       ^^^^^^^^^^^^^^^
  ```
- Derivation (4 occurrences):
  ```
  strict_function_or_labeled_tuple_type: LIDENT COLON nonempty_list(mode_legacy) tuple_type at_mode_expr MINUSGREATER nonempty_list(mode_legacy) . tuple_type
    tuple_type: . atomic_type
      atomic_type: . delimited_type
        delimited_type: . extension_type
          extension_type: . extension
            extension: . QUOTED_STRING_EXPR
  ```
  Sample sentence (implementation):
  ```ocaml
  val lident : lident : local_ {%hello|world|} @ lident -> unique_ {%hello|world|} let false = UIdent
                                                                   ^^^^^^^^^^^^^^^
  ```
- Derivation (4 occurrences):
  ```
  strict_function_or_labeled_tuple_type: LIDENT COLON nonempty_list(mode_legacy) . tuple_type at_mode_expr MINUSGREATER tuple_type
    tuple_type: . atomic_type
      atomic_type: . delimited_type
        delimited_type: . extension_type
          extension_type: . extension
            extension: . QUOTED_STRING_EXPR
  ```
  Sample sentence (implementation):
  ```ocaml
  val lident : lident : once_ {%hello|world|} @ lident -> {%hello|world|} let false = UIdent
                              ^^^^^^^^^^^^^^^
  ```
- Derivation (4 occurrences):
  ```
  strict_function_or_labeled_tuple_type: LIDENT COLON nonempty_list(mode_legacy) tuple_type MINUSGREATER nonempty_list(mode_legacy) . tuple_type
    tuple_type: . atomic_type
      atomic_type: . delimited_type
        delimited_type: . extension_type
          extension_type: . extension
            extension: . QUOTED_STRING_EXPR
  ```
  Sample sentence (implementation):
  ```ocaml
  val lident : lident : local_ {%hello|world|} -> unique_ {%hello|world|} let false = UIdent
                                                          ^^^^^^^^^^^^^^^
  ```
- Derivation (4 occurrences):
  ```
  strict_function_or_labeled_tuple_type: LIDENT COLON nonempty_list(mode_legacy) LPAREN reversed_nonempty_llist(typevar) DOT core_type RPAREN at_mode_expr MINUSGREATER nonempty_list(mode_legacy) . tuple_type
    tuple_type: . atomic_type
      atomic_type: . delimited_type
        delimited_type: . extension_type
          extension_type: . extension
            extension: . QUOTED_STRING_EXPR
  ```
  Sample sentence (implementation):
  ```ocaml
  val lident : lident : local_ ( ' lident . {%hello|world|} ) @ lident -> unique_ {%hello|world|} let false = UIdent
                                                                                  ^^^^^^^^^^^^^^^
  ```
- Derivation (4 occurrences):
  ```
  strict_function_or_labeled_tuple_type: LIDENT COLON nonempty_list(mode_legacy) LPAREN reversed_nonempty_llist(typevar) DOT core_type RPAREN MINUSGREATER nonempty_list(mode_legacy) . tuple_type
    tuple_type: . atomic_type
      atomic_type: . delimited_type
        delimited_type: . extension_type
          extension_type: . extension
            extension: . QUOTED_STRING_EXPR
  ```
  Sample sentence (implementation):
  ```ocaml
  val lident : lident : local_ ( ' lident . {%hello|world|} ) -> unique_ {%hello|world|} let false = UIdent
                                                                         ^^^^^^^^^^^^^^^
  ```
- Derivation (4 occurrences):
  ```
  strict_function_or_labeled_tuple_type: LIDENT COLON tuple_type at_mode_expr MINUSGREATER nonempty_list(mode_legacy) . tuple_type
    tuple_type: . atomic_type
      atomic_type: . delimited_type
        delimited_type: . extension_type
          extension_type: . extension
            extension: . QUOTED_STRING_EXPR
  ```
  Sample sentence (implementation):
  ```ocaml
  val lident : lident : {%hello|world|} @ lident -> unique_ {%hello|world|} let false = UIdent
                                                            ^^^^^^^^^^^^^^^
  ```
- Derivation (4 occurrences):
  ```
  strict_function_or_labeled_tuple_type: LIDENT COLON tuple_type MINUSGREATER nonempty_list(mode_legacy) . tuple_type
    tuple_type: . atomic_type
      atomic_type: . delimited_type
        delimited_type: . extension_type
          extension_type: . extension
            extension: . QUOTED_STRING_EXPR
  ```
  Sample sentence (implementation):
  ```ocaml
  val lident : lident : {%hello|world|} -> unique_ {%hello|world|} let false = UIdent
                                                   ^^^^^^^^^^^^^^^
  ```
- Derivation (4 occurrences):
  ```
  strict_function_or_labeled_tuple_type: LIDENT COLON LPAREN reversed_nonempty_llist(typevar) DOT core_type RPAREN at_mode_expr MINUSGREATER nonempty_list(mode_legacy) . tuple_type
    tuple_type: . atomic_type
      atomic_type: . delimited_type
        delimited_type: . extension_type
          extension_type: . extension
            extension: . QUOTED_STRING_EXPR
  ```
  Sample sentence (implementation):
  ```ocaml
  val lident : lident : ( ' lident . {%hello|world|} ) @ lident -> unique_ {%hello|world|} let false = UIdent
                                                                           ^^^^^^^^^^^^^^^
  ```
- ...


### Item `fun_seq_expr: fun_expr . SEMI PERCENT attr_id seq_expr` (in 290 errors)

- Derivation (290 occurrences):
  ```
  fun_seq_expr: fun_expr . SEMI PERCENT attr_id seq_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  #( UIdent , once_ UIdent ; % and UIdent ) let false = UIdent
                           ^
  ```


### Item `fun_seq_expr: fun_expr SEMI . PERCENT attr_id seq_expr` (in 271 errors)

- Derivation (271 occurrences):
  ```
  fun_seq_expr: fun_expr SEMI . PERCENT attr_id seq_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  #{ lident = once_ UIdent ; % and UIdent } let false = UIdent
                             ^
  ```


### Item `attribute: . LBRACKETAT attr_id attr_payload RBRACKET` (in 267 errors)

- Derivation (267 occurrences):
  ```
  fun_expr: fun_expr . attribute
    attribute: . LBRACKETAT attr_id attr_payload RBRACKET
  ```
  Sample sentence (implementation):
  ```ocaml
  unique_ UIdent ; [@ and ] let false = UIdent
                   ^^
  ```


### Item `fun_expr: fun_expr . INFIXOP3 fun_expr` (in 257 errors)

- Derivation (257 occurrences):
  ```
  fun_expr: fun_expr . INFIXOP3 fun_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  UIdent , once_ UIdent ; land UIdent let false = UIdent
                          ^^^^
  ```


### Item `fun_expr: fun_expr . INFIXOP4 fun_expr` (in 257 errors)

- Derivation (257 occurrences):
  ```
  fun_expr: fun_expr . INFIXOP4 fun_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  UIdent , once_ UIdent ; ** UIdent let false = UIdent
                          ^^
  ```


### Item `fun_expr: fun_expr . EQUAL fun_expr` (in 257 errors)

- Derivation (257 occurrences):
  ```
  fun_expr: fun_expr . EQUAL fun_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  UIdent , once_ UIdent ; = UIdent let false = UIdent
                          ^
  ```


### Item `fun_expr: fun_expr . BARBAR fun_expr` (in 257 errors)

- Derivation (257 occurrences):
  ```
  fun_expr: fun_expr . BARBAR fun_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  UIdent , once_ UIdent ; || UIdent let false = UIdent
                          ^^
  ```


### Item `fun_expr: fun_expr . AMPERAMPER fun_expr` (in 257 errors)

- Derivation (257 occurrences):
  ```
  fun_expr: fun_expr . AMPERAMPER fun_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  UIdent , once_ UIdent ; && UIdent let false = UIdent
                          ^^
  ```


### Item `fun_expr: fun_expr . COLONEQUAL fun_expr` (in 257 errors)

- Derivation (257 occurrences):
  ```
  fun_expr: fun_expr . COLONEQUAL fun_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  UIdent ; once_ UIdent ; := UIdent let false = UIdent
                          ^^
  ```


### Item `fun_expr: fun_expr . COLONCOLON fun_expr` (in 256 errors)

- Derivation (256 occurrences):
  ```
  fun_expr: fun_expr . COLONCOLON fun_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  UIdent , once_ UIdent ; :: UIdent let false = UIdent
                          ^^
  ```


### Item `reversed_labeled_tuple_body: fun_expr . COMMA fun_expr` (in 213 errors)

- Derivation (213 occurrences):
  ```
  reversed_labeled_tuple_body: fun_expr . COMMA fun_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  unique_ UIdent ; , UIdent let false = UIdent
                   ^
  ```


### Item `fun_seq_expr: fun_expr . SEMI seq_expr` (in 186 errors)

- Derivation (186 occurrences):
  ```
  fun_seq_expr: fun_expr . SEMI seq_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  #( UIdent , once_ UIdent ; UIdent ) let false = UIdent
                           ^
  ```


### Item `fun_expr: OVERWRITE ext list(attribute) seq_expr WITH . FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)` (in 95 errors)

- Derivation (95 occurrences):
  ```
  fun_expr: OVERWRITE ext list(attribute) seq_expr WITH . FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
  ```
  Sample sentence (implementation):
  ```ocaml
  match overwrite_ UIdent with function false -> UIdent with false -> UIdent [@@ and ] let false = UIdent
                               ^^^^^^^^
  ```


### Item `fun_expr: OVERWRITE ext list(attribute) seq_expr WITH . STACK FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)` (in 95 errors)

- Derivation (95 occurrences):
  ```
  fun_expr: OVERWRITE ext list(attribute) seq_expr WITH . STACK FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
  ```
  Sample sentence (implementation):
  ```ocaml
  match overwrite_ UIdent with stack_ function false -> UIdent with false -> UIdent [@@ and ] let false = UIdent
                               ^^^^^^
  ```


### Item `pattern: . reversed_labeled_tuple_pattern(pattern)` (in 72 errors)

- Derivation (2 occurrences):
  ```
  comprehension_clause_binding: list(attribute) ONCE . pattern IN fun_expr
    pattern: . reversed_labeled_tuple_pattern(pattern)
      reversed_labeled_tuple_pattern(pattern): . TILDE LPAREN LIDENT COLON core_type RPAREN COMMA DOTDOT
  ```
  Sample sentence (implementation):
  ```ocaml
  [: UIdent for once_ ~ ( lident : {%hello|world|} ) , .. in UIdent :] let false = UIdent
                      ^
  ```
- Derivation (2 occurrences):
  ```
  comprehension_clause_binding: list(attribute) UNIQUE . pattern IN fun_expr
    pattern: . reversed_labeled_tuple_pattern(pattern)
      reversed_labeled_tuple_pattern(pattern): . TILDE LPAREN LIDENT COLON core_type RPAREN COMMA DOTDOT
  ```
  Sample sentence (implementation):
  ```ocaml
  [: UIdent for unique_ ~ ( lident : {%hello|world|} ) , .. in UIdent :] let false = UIdent
                        ^
  ```
- Derivation (2 occurrences):
  ```
  comprehension_clause_binding: list(attribute) ONCE . pattern IN fun_expr
    pattern: . reversed_labeled_tuple_pattern(pattern)
      reversed_labeled_tuple_pattern(pattern): . LABEL simple_pattern COMMA DOTDOT
  ```
  Sample sentence (implementation):
  ```ocaml
  [: UIdent for once_ ~label: false , .. in UIdent :] let false = UIdent
                      ^^^^^^^
  ```
- Derivation (2 occurrences):
  ```
  comprehension_clause_binding: list(attribute) UNIQUE . pattern IN fun_expr
    pattern: . reversed_labeled_tuple_pattern(pattern)
      reversed_labeled_tuple_pattern(pattern): . LABEL simple_pattern COMMA DOTDOT
  ```
  Sample sentence (implementation):
  ```ocaml
  [: UIdent for unique_ ~label: false , .. in UIdent :] let false = UIdent
                        ^^^^^^^
  ```
- Derivation (2 occurrences):
  ```
  comprehension_clause_binding: list(attribute) ONCE . pattern IN fun_expr
    pattern: . reversed_labeled_tuple_pattern(pattern)
      reversed_labeled_tuple_pattern(pattern): . labeled_tuple_pat_element_list(pattern)
        labeled_tuple_pat_element_list(pattern): . TILDE LPAREN LIDENT COLON core_type RPAREN COMMA LABEL simple_pattern
  ```
  Sample sentence (implementation):
  ```ocaml
  [: UIdent for once_ ~ ( lident : {%hello|world|} ) , ~label: false in UIdent :] let false = UIdent
                      ^
  ```
- Derivation (2 occurrences):
  ```
  comprehension_clause_binding: list(attribute) UNIQUE . pattern IN fun_expr
    pattern: . reversed_labeled_tuple_pattern(pattern)
      reversed_labeled_tuple_pattern(pattern): . labeled_tuple_pat_element_list(pattern)
        labeled_tuple_pat_element_list(pattern): . TILDE LPAREN LIDENT COLON core_type RPAREN COMMA LABEL simple_pattern
  ```
  Sample sentence (implementation):
  ```ocaml
  [: UIdent for unique_ ~ ( lident : {%hello|world|} ) , ~label: false in UIdent :] let false = UIdent
                        ^
  ```
- Derivation (2 occurrences):
  ```
  comprehension_clause_binding: list(attribute) ONCE . pattern IN fun_expr
    pattern: . reversed_labeled_tuple_pattern(pattern)
      reversed_labeled_tuple_pattern(pattern): . labeled_tuple_pat_element_list(pattern)
        labeled_tuple_pat_element_list(pattern): . TILDE LPAREN LIDENT COLON core_type RPAREN COMMA pattern
  ```
  Sample sentence (implementation):
  ```ocaml
  [: UIdent for once_ ~ ( lident : {%hello|world|} ) , false in UIdent :] let false = UIdent
                      ^
  ```
- Derivation (2 occurrences):
  ```
  comprehension_clause_binding: list(attribute) UNIQUE . pattern IN fun_expr
    pattern: . reversed_labeled_tuple_pattern(pattern)
      reversed_labeled_tuple_pattern(pattern): . labeled_tuple_pat_element_list(pattern)
        labeled_tuple_pat_element_list(pattern): . TILDE LPAREN LIDENT COLON core_type RPAREN COMMA pattern
  ```
  Sample sentence (implementation):
  ```ocaml
  [: UIdent for unique_ ~ ( lident : {%hello|world|} ) , false in UIdent :] let false = UIdent
                        ^
  ```
- Derivation (2 occurrences):
  ```
  comprehension_clause_binding: list(attribute) ONCE . pattern IN fun_expr
    pattern: . reversed_labeled_tuple_pattern(pattern)
      reversed_labeled_tuple_pattern(pattern): . labeled_tuple_pat_element_list(pattern)
        labeled_tuple_pat_element_list(pattern): . TILDE LIDENT COMMA LABEL simple_pattern
  ```
  Sample sentence (implementation):
  ```ocaml
  [: UIdent for once_ ~ lident , ~label: false in UIdent :] let false = UIdent
                      ^
  ```
- Derivation (2 occurrences):
  ```
  comprehension_clause_binding: list(attribute) UNIQUE . pattern IN fun_expr
    pattern: . reversed_labeled_tuple_pattern(pattern)
      reversed_labeled_tuple_pattern(pattern): . labeled_tuple_pat_element_list(pattern)
        labeled_tuple_pat_element_list(pattern): . TILDE LIDENT COMMA LABEL simple_pattern
  ```
  Sample sentence (implementation):
  ```ocaml
  [: UIdent for unique_ ~ lident , ~label: false in UIdent :] let false = UIdent
                        ^
  ```
- Derivation (2 occurrences):
  ```
  comprehension_clause_binding: list(attribute) ONCE . pattern IN fun_expr
    pattern: . reversed_labeled_tuple_pattern(pattern)
      reversed_labeled_tuple_pattern(pattern): . labeled_tuple_pat_element_list(pattern)
        labeled_tuple_pat_element_list(pattern): . TILDE LIDENT COMMA pattern
  ```
  Sample sentence (implementation):
  ```ocaml
  [: UIdent for once_ ~ lident , false in UIdent :] let false = UIdent
                      ^
  ```
- Derivation (2 occurrences):
  ```
  comprehension_clause_binding: list(attribute) UNIQUE . pattern IN fun_expr
    pattern: . reversed_labeled_tuple_pattern(pattern)
      reversed_labeled_tuple_pattern(pattern): . labeled_tuple_pat_element_list(pattern)
        labeled_tuple_pat_element_list(pattern): . TILDE LIDENT COMMA pattern
  ```
  Sample sentence (implementation):
  ```ocaml
  [: UIdent for unique_ ~ lident , false in UIdent :] let false = UIdent
                        ^
  ```
- Derivation (2 occurrences):
  ```
  comprehension_clause_binding: list(attribute) ONCE . pattern IN fun_expr
    pattern: . reversed_labeled_tuple_pattern(pattern)
      reversed_labeled_tuple_pattern(pattern): . labeled_tuple_pat_element_list(pattern)
        labeled_tuple_pat_element_list(pattern): . LABEL simple_pattern COMMA LABEL simple_pattern
  ```
  Sample sentence (implementation):
  ```ocaml
  [: UIdent for once_ ~label: false , ~label: false in UIdent :] let false = UIdent
                      ^^^^^^^
  ```
- Derivation (2 occurrences):
  ```
  comprehension_clause_binding: list(attribute) UNIQUE . pattern IN fun_expr
    pattern: . reversed_labeled_tuple_pattern(pattern)
      reversed_labeled_tuple_pattern(pattern): . labeled_tuple_pat_element_list(pattern)
        labeled_tuple_pat_element_list(pattern): . LABEL simple_pattern COMMA LABEL simple_pattern
  ```
  Sample sentence (implementation):
  ```ocaml
  [: UIdent for unique_ ~label: false , ~label: false in UIdent :] let false = UIdent
                        ^^^^^^^
  ```
- Derivation (2 occurrences):
  ```
  comprehension_clause_binding: list(attribute) ONCE . pattern IN fun_expr
    pattern: . reversed_labeled_tuple_pattern(pattern)
      reversed_labeled_tuple_pattern(pattern): . labeled_tuple_pat_element_list(pattern)
        labeled_tuple_pat_element_list(pattern): . LABEL simple_pattern COMMA pattern
  ```
  Sample sentence (implementation):
  ```ocaml
  [: UIdent for once_ ~label: false , false in UIdent :] let false = UIdent
                      ^^^^^^^
  ```
- Derivation (2 occurrences):
  ```
  comprehension_clause_binding: list(attribute) UNIQUE . pattern IN fun_expr
    pattern: . reversed_labeled_tuple_pattern(pattern)
      reversed_labeled_tuple_pattern(pattern): . labeled_tuple_pat_element_list(pattern)
        labeled_tuple_pat_element_list(pattern): . LABEL simple_pattern COMMA pattern
  ```
  Sample sentence (implementation):
  ```ocaml
  [: UIdent for unique_ ~label: false , false in UIdent :] let false = UIdent
                        ^^^^^^^
  ```
- Derivation (1 occurrence):
  ```
  comprehension_clause_binding: list(attribute) ONCE . pattern IN fun_expr
    pattern: . reversed_labeled_tuple_pattern(pattern)
      reversed_labeled_tuple_pattern(pattern): . TILDE LIDENT COMMA DOTDOT
  ```
  Sample sentence (implementation):
  ```ocaml
  [: UIdent for once_ ~ lident , .. in UIdent :] let false = UIdent
                      ^
  ```
- Derivation (1 occurrence):
  ```
  comprehension_clause_binding: list(attribute) UNIQUE . pattern IN fun_expr
    pattern: . reversed_labeled_tuple_pattern(pattern)
      reversed_labeled_tuple_pattern(pattern): . TILDE LIDENT COMMA DOTDOT
  ```
  Sample sentence (implementation):
  ```ocaml
  [: UIdent for unique_ ~ lident , .. in UIdent :] let false = UIdent
                        ^
  ```
- Derivation (1 occurrence):
  ```
  comprehension_clause_binding: list(attribute) ONCE . pattern IN fun_expr
    pattern: . reversed_labeled_tuple_pattern(pattern)
      reversed_labeled_tuple_pattern(pattern): . pattern COMMA DOTDOT
        pattern: . EXCEPTION ext list(attribute) pattern
  ```
  Sample sentence (implementation):
  ```ocaml
  [: UIdent for once_ exception false , .. in UIdent :] let false = UIdent
                      ^^^^^^^^^
  ```
- Derivation (1 occurrence):
  ```
  comprehension_clause_binding: list(attribute) UNIQUE . pattern IN fun_expr
    pattern: . reversed_labeled_tuple_pattern(pattern)
      reversed_labeled_tuple_pattern(pattern): . pattern COMMA DOTDOT
        pattern: . EXCEPTION ext list(attribute) pattern
  ```
  Sample sentence (implementation):
  ```ocaml
  [: UIdent for unique_ exception false , .. in UIdent :] let false = UIdent
                        ^^^^^^^^^
  ```
- Derivation (1 occurrence):
  ```
  comprehension_clause_binding: list(attribute) ONCE . pattern IN fun_expr
    pattern: . reversed_labeled_tuple_pattern(pattern)
      reversed_labeled_tuple_pattern(pattern): . labeled_tuple_pat_element_list(pattern)
        labeled_tuple_pat_element_list(pattern): . TILDE LPAREN LIDENT COLON core_type RPAREN COMMA TILDE LPAREN LIDENT COLON core_type RPAREN
  ```
  Sample sentence (implementation):
  ```ocaml
  [: UIdent for once_ ~ ( lident : {%hello|world|} ) , ~ ( lident : {%hello|world|} ) in UIdent :] let false = UIdent
                      ^
  ```
- ...


### Item `fun_expr: MATCH ext list(attribute) seq_expr . WITH reversed_preceded_or_separated_nonempty_llist(BAR,match_case)` (in 67 errors)

- Derivation (67 occurrences):
  ```
  fun_expr: MATCH ext list(attribute) seq_expr . WITH reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
  ```
  Sample sentence (implementation):
  ```ocaml
  match overwrite_ UIdent with UIdent with false -> UIdent [@@ and ] let false = UIdent
                                      ^^^^
  ```


### Item `reversed_nonempty_llist(functor_arg): reversed_nonempty_llist(functor_arg) . functor_arg` (in 63 errors)

- Derivation (59 occurrences):
  ```
  reversed_nonempty_llist(functor_arg): reversed_nonempty_llist(functor_arg) . functor_arg
    functor_arg: . LPAREN RPAREN
  ```
  Sample sentence (interface):
  ```ocaml
  module UIdent : ( ) ( ) -> {%hello|world|}
                      ^
  ```
- Derivation (2 occurrences):
  ```
  reversed_nonempty_llist(functor_arg): reversed_nonempty_llist(functor_arg) . functor_arg
    functor_arg: . LPAREN module_name COLON module_type_atomic at_mode_expr RPAREN
  ```
  Sample sentence (interface):
  ```ocaml
  include ( ) ( UIdent : UIdent @ lident ) -> UIdent @ lident [@@ and ] @@ lident
              ^
  ```
- Derivation (2 occurrences):
  ```
  reversed_nonempty_llist(functor_arg): reversed_nonempty_llist(functor_arg) . functor_arg
    functor_arg: . LPAREN module_name COLON module_type RPAREN
  ```
  Sample sentence (interface):
  ```ocaml
  include ( ) ( UIdent : UIdent ) -> UIdent @ lident [@@ and ] @@ lident
              ^
  ```


### Item `fun_expr: simple_expr DOT LPAREN seq_expr RPAREN . LESSMINUS STACK FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)` (in 55 errors)

- Derivation (55 occurrences):
  ```
  fun_expr: simple_expr DOT LPAREN seq_expr RPAREN . LESSMINUS STACK FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
  ```
  Sample sentence (implementation):
  ```ocaml
  once_ false . ( UIdent ) <- stack_ function false -> UIdent let false = UIdent
                           ^^
  ```


### Item `fun_expr: let_bindings(ext) . IN seq_expr` (in 54 errors)

- Derivation (54 occurrences):
  ```
  fun_expr: let_bindings(ext) . IN seq_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  once_ let false = UIdent in UIdent let false = UIdent
                           ^^
  ```


### Item `fun_expr: LIDENT . LESSMINUS FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)` (in 52 errors)

- Derivation (52 occurrences):
  ```
  fun_expr: LIDENT . LESSMINUS FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
  ```
  Sample sentence (implementation):
  ```ocaml
  once_ lident <- function false -> UIdent let false = UIdent
               ^^
  ```


### Item `fun_expr: LIDENT . LESSMINUS STACK FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)` (in 52 errors)

- Derivation (52 occurrences):
  ```
  fun_expr: LIDENT . LESSMINUS STACK FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
  ```
  Sample sentence (implementation):
  ```ocaml
  once_ lident <- stack_ function false -> UIdent let false = UIdent
               ^^
  ```


### Item `fun_expr: simple_expr DOTOP LPAREN separated_or_terminated_nonempty_list(SEMI,expr) RPAREN . LESSMINUS STACK FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)` (in 52 errors)

- Derivation (52 occurrences):
  ```
  fun_expr: simple_expr DOTOP LPAREN separated_or_terminated_nonempty_list(SEMI,expr) RPAREN . LESSMINUS STACK FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
  ```
  Sample sentence (implementation):
  ```ocaml
  once_ UIdent .+ ( UIdent ) <- stack_ function false -> UIdent let false = UIdent
                             ^^
  ```


### Item `fun_expr: simple_expr DOT label_longident . LESSMINUS FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)` (in 50 errors)

- Derivation (50 occurrences):
  ```
  fun_expr: simple_expr DOT label_longident . LESSMINUS FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
  ```
  Sample sentence (implementation):
  ```ocaml
  once_ false . lident <- function false -> UIdent let false = UIdent
                       ^^
  ```


### Item `fun_expr: simple_expr DOT label_longident . LESSMINUS STACK FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)` (in 50 errors)

- Derivation (50 occurrences):
  ```
  fun_expr: simple_expr DOT label_longident . LESSMINUS STACK FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
  ```
  Sample sentence (implementation):
  ```ocaml
  once_ false . lident <- stack_ function false -> UIdent let false = UIdent
                       ^^
  ```


### Item `fun_expr: simple_expr DOT LPAREN seq_expr RPAREN . LESSMINUS FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)` (in 50 errors)

- Derivation (50 occurrences):
  ```
  fun_expr: simple_expr DOT LPAREN seq_expr RPAREN . LESSMINUS FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
  ```
  Sample sentence (implementation):
  ```ocaml
  once_ false . ( UIdent ) <- function false -> UIdent let false = UIdent
                           ^^
  ```


### Item `fun_expr: simple_expr DOT LBRACE seq_expr RBRACE . LESSMINUS FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)` (in 50 errors)

- Derivation (50 occurrences):
  ```
  fun_expr: simple_expr DOT LBRACE seq_expr RBRACE . LESSMINUS FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
  ```
  Sample sentence (implementation):
  ```ocaml
  once_ false . { UIdent } <- function false -> UIdent let false = UIdent
                           ^^
  ```


### Item `fun_expr: simple_expr DOT LBRACE seq_expr RBRACE . LESSMINUS STACK FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)` (in 50 errors)

- Derivation (50 occurrences):
  ```
  fun_expr: simple_expr DOT LBRACE seq_expr RBRACE . LESSMINUS STACK FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
  ```
  Sample sentence (implementation):
  ```ocaml
  once_ false . { UIdent } <- stack_ function false -> UIdent let false = UIdent
                           ^^
  ```


### Item `fun_expr: simple_expr DOT LBRACKET seq_expr RBRACKET . LESSMINUS FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)` (in 50 errors)

- Derivation (50 occurrences):
  ```
  fun_expr: simple_expr DOT LBRACKET seq_expr RBRACKET . LESSMINUS FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
  ```
  Sample sentence (implementation):
  ```ocaml
  once_ false . [ UIdent ] <- function false -> UIdent let false = UIdent
                           ^^
  ```


### Item `fun_expr: simple_expr DOT LBRACKET seq_expr RBRACKET . LESSMINUS STACK FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)` (in 50 errors)

- Derivation (50 occurrences):
  ```
  fun_expr: simple_expr DOT LBRACKET seq_expr RBRACKET . LESSMINUS STACK FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
  ```
  Sample sentence (implementation):
  ```ocaml
  once_ false . [ UIdent ] <- stack_ function false -> UIdent let false = UIdent
                           ^^
  ```


### Item `fun_expr: simple_expr DOTOP LPAREN separated_or_terminated_nonempty_list(SEMI,expr) RPAREN . LESSMINUS FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)` (in 50 errors)

- Derivation (50 occurrences):
  ```
  fun_expr: simple_expr DOTOP LPAREN separated_or_terminated_nonempty_list(SEMI,expr) RPAREN . LESSMINUS FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
  ```
  Sample sentence (implementation):
  ```ocaml
  once_ UIdent .+ ( UIdent ) <- function false -> UIdent let false = UIdent
                             ^^
  ```


### Item `fun_expr: simple_expr DOT mod_longident DOTOP LPAREN separated_or_terminated_nonempty_list(SEMI,expr) RPAREN . LESSMINUS FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)` (in 50 errors)

- Derivation (50 occurrences):
  ```
  fun_expr: simple_expr DOT mod_longident DOTOP LPAREN separated_or_terminated_nonempty_list(SEMI,expr) RPAREN . LESSMINUS FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
  ```
  Sample sentence (implementation):
  ```ocaml
  once_ false . UIdent .+ ( UIdent ) <- function false -> UIdent let false = UIdent
                                     ^^
  ```


### Item `fun_expr: simple_expr DOT mod_longident DOTOP LPAREN separated_or_terminated_nonempty_list(SEMI,expr) RPAREN . LESSMINUS STACK FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)` (in 50 errors)

- Derivation (50 occurrences):
  ```
  fun_expr: simple_expr DOT mod_longident DOTOP LPAREN separated_or_terminated_nonempty_list(SEMI,expr) RPAREN . LESSMINUS STACK FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
  ```
  Sample sentence (implementation):
  ```ocaml
  once_ false . UIdent .+ ( UIdent ) <- stack_ function false -> UIdent let false = UIdent
                                     ^^
  ```


### Item `fun_expr: simple_expr DOTOP LBRACE separated_or_terminated_nonempty_list(SEMI,expr) RBRACE . LESSMINUS FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)` (in 50 errors)

- Derivation (50 occurrences):
  ```
  fun_expr: simple_expr DOTOP LBRACE separated_or_terminated_nonempty_list(SEMI,expr) RBRACE . LESSMINUS FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
  ```
  Sample sentence (implementation):
  ```ocaml
  once_ UIdent .+ { UIdent } <- function false -> UIdent let false = UIdent
                             ^^
  ```


### Item `fun_expr: simple_expr DOTOP LBRACE separated_or_terminated_nonempty_list(SEMI,expr) RBRACE . LESSMINUS STACK FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)` (in 50 errors)

- Derivation (50 occurrences):
  ```
  fun_expr: simple_expr DOTOP LBRACE separated_or_terminated_nonempty_list(SEMI,expr) RBRACE . LESSMINUS STACK FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
  ```
  Sample sentence (implementation):
  ```ocaml
  once_ UIdent .+ { UIdent } <- stack_ function false -> UIdent let false = UIdent
                             ^^
  ```


### Item `fun_expr: simple_expr DOT mod_longident DOTOP LBRACE separated_or_terminated_nonempty_list(SEMI,expr) RBRACE . LESSMINUS FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)` (in 50 errors)

- Derivation (50 occurrences):
  ```
  fun_expr: simple_expr DOT mod_longident DOTOP LBRACE separated_or_terminated_nonempty_list(SEMI,expr) RBRACE . LESSMINUS FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
  ```
  Sample sentence (implementation):
  ```ocaml
  once_ false . UIdent .+ { UIdent } <- function false -> UIdent let false = UIdent
                                     ^^
  ```


### Item `fun_expr: simple_expr DOT mod_longident DOTOP LBRACE separated_or_terminated_nonempty_list(SEMI,expr) RBRACE . LESSMINUS STACK FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)` (in 50 errors)

- Derivation (50 occurrences):
  ```
  fun_expr: simple_expr DOT mod_longident DOTOP LBRACE separated_or_terminated_nonempty_list(SEMI,expr) RBRACE . LESSMINUS STACK FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
  ```
  Sample sentence (implementation):
  ```ocaml
  once_ false . UIdent .+ { UIdent } <- stack_ function false -> UIdent let false = UIdent
                                     ^^
  ```


### Item `fun_expr: simple_expr DOTOP LBRACKET separated_or_terminated_nonempty_list(SEMI,expr) RBRACKET . LESSMINUS FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)` (in 50 errors)

- Derivation (50 occurrences):
  ```
  fun_expr: simple_expr DOTOP LBRACKET separated_or_terminated_nonempty_list(SEMI,expr) RBRACKET . LESSMINUS FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
  ```
  Sample sentence (implementation):
  ```ocaml
  once_ UIdent .+ [ UIdent ] <- function false -> UIdent let false = UIdent
                             ^^
  ```


### Item `fun_expr: simple_expr DOTOP LBRACKET separated_or_terminated_nonempty_list(SEMI,expr) RBRACKET . LESSMINUS STACK FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)` (in 50 errors)

- Derivation (50 occurrences):
  ```
  fun_expr: simple_expr DOTOP LBRACKET separated_or_terminated_nonempty_list(SEMI,expr) RBRACKET . LESSMINUS STACK FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
  ```
  Sample sentence (implementation):
  ```ocaml
  once_ UIdent .+ [ UIdent ] <- stack_ function false -> UIdent let false = UIdent
                             ^^
  ```


### Item `fun_expr: simple_expr DOT mod_longident DOTOP LBRACKET separated_or_terminated_nonempty_list(SEMI,expr) RBRACKET . LESSMINUS FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)` (in 50 errors)

- Derivation (50 occurrences):
  ```
  fun_expr: simple_expr DOT mod_longident DOTOP LBRACKET separated_or_terminated_nonempty_list(SEMI,expr) RBRACKET . LESSMINUS FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
  ```
  Sample sentence (implementation):
  ```ocaml
  once_ false . UIdent .+ [ UIdent ] <- function false -> UIdent let false = UIdent
                                     ^^
  ```


### Item `fun_expr: simple_expr DOT mod_longident DOTOP LBRACKET separated_or_terminated_nonempty_list(SEMI,expr) RBRACKET . LESSMINUS STACK FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)` (in 50 errors)

- Derivation (50 occurrences):
  ```
  fun_expr: simple_expr DOT mod_longident DOTOP LBRACKET separated_or_terminated_nonempty_list(SEMI,expr) RBRACKET . LESSMINUS STACK FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
  ```
  Sample sentence (implementation):
  ```ocaml
  once_ false . UIdent .+ [ UIdent ] <- stack_ function false -> UIdent let false = UIdent
                                     ^^
  ```


### Item `seq_expr: . STACK FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)` (in 49 errors)

- Derivation (20 occurrences):
  ```
  fun_expr: ONCE . seq_expr
    seq_expr: . STACK FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
  ```
  Sample sentence (implementation):
  ```ocaml
  once_ stack_ function false -> UIdent let false = UIdent
        ^^^^^^
  ```
- Derivation (20 occurrences):
  ```
  fun_expr: UNIQUE . seq_expr
    seq_expr: . STACK FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
  ```
  Sample sentence (implementation):
  ```ocaml
  unique_ stack_ function false -> UIdent let false = UIdent
          ^^^^^^
  ```
- Derivation (6 occurrences):
  ```
  block_access: DOTOP LPAREN . seq_expr RPAREN
    seq_expr: . STACK FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
  ```
  Sample sentence (implementation):
  ```ocaml
  ( .+ ( stack_ function false -> UIdent ) ) let false = UIdent
         ^^^^^^
  ```
- Derivation (2 occurrences):
  ```
  fun_expr: OVERWRITE ext list(attribute) . seq_expr WITH fun_expr
    seq_expr: . STACK FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
  ```
  Sample sentence (implementation):
  ```ocaml
  overwrite_ stack_ function false -> UIdent with UIdent [@@ and ] let false = UIdent
             ^^^^^^
  ```
- Derivation (1 occurrence):
  ```
  fun_seq_expr: fun_expr SEMI . seq_expr
    seq_expr: . STACK FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
  ```
  Sample sentence (implementation):
  ```ocaml
  #{ lident = unique_ UIdent ; stack_ function false -> UIdent } let false = UIdent
                               ^^^^^^
  ```


### Item `fun_expr: LET . MODULE ext list(attribute) module_name_modal(at_mode_expr) module_binding_body IN seq_expr` (in 48 errors)

- Derivation (48 occurrences):
  ```
  fun_expr: LET . MODULE ext list(attribute) module_name_modal(at_mode_expr) module_binding_body IN seq_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  once_ let module UIdent = {%hello|world|} in UIdent let false = UIdent
            ^^^^^^
  ```


### Item `fun_expr: LET . EXCEPTION ext list(attribute) constr_ident generalized_constructor_arguments list(attribute) IN seq_expr` (in 48 errors)

- Derivation (48 occurrences):
  ```
  fun_expr: LET . EXCEPTION ext list(attribute) constr_ident generalized_constructor_arguments list(attribute) IN seq_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  once_ let exception false in UIdent let false = UIdent
            ^^^^^^^^^
  ```


### Item `fun_expr: LET . OPEN ext list(attribute) module_expr IN seq_expr` (in 48 errors)

- Derivation (48 occurrences):
  ```
  fun_expr: LET . OPEN ext list(attribute) module_expr IN seq_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  once_ let open {%hello|world|} in UIdent let false = UIdent
            ^^^^
  ```


### Item `fun_expr: LET . OPEN BANG ext list(attribute) module_expr IN seq_expr` (in 48 errors)

- Derivation (48 occurrences):
  ```
  fun_expr: LET . OPEN BANG ext list(attribute) module_expr IN seq_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  once_ let open ! {%hello|world|} in UIdent let false = UIdent
            ^^^^
  ```


### Item `fun_expr: OVERWRITE ext list(attribute) seq_expr WITH . fun_expr` (in 35 errors)

- Derivation (1 occurrence):
  ```
  fun_expr: OVERWRITE ext list(attribute) seq_expr WITH . fun_expr
    fun_expr: . reversed_labeled_tuple_body
      reversed_labeled_tuple_body: . STACK FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case) COMMA LABEL simple_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  match overwrite_ UIdent with stack_ function false -> . , ~label: #1.0 with false -> UIdent [@@ and ] let false = UIdent
                               ^^^^^^
  ```
- Derivation (1 occurrence):
  ```
  fun_expr: OVERWRITE ext list(attribute) seq_expr WITH . fun_expr
    fun_expr: . reversed_labeled_tuple_body
      reversed_labeled_tuple_body: . STACK FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case) COMMA STACK FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
  ```
  Sample sentence (implementation):
  ```ocaml
  match overwrite_ UIdent with stack_ function false -> . , stack_ function false -> UIdent with false -> UIdent [@@ and ] let false = UIdent
                               ^^^^^^
  ```
- Derivation (1 occurrence):
  ```
  fun_expr: OVERWRITE ext list(attribute) seq_expr WITH . fun_expr
    fun_expr: . reversed_labeled_tuple_body
      reversed_labeled_tuple_body: . STACK FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case) COMMA FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
  ```
  Sample sentence (implementation):
  ```ocaml
  match overwrite_ UIdent with stack_ function false -> . , function false -> UIdent with false -> UIdent [@@ and ] let false = UIdent
                               ^^^^^^
  ```
- Derivation (1 occurrence):
  ```
  fun_expr: OVERWRITE ext list(attribute) seq_expr WITH . fun_expr
    fun_expr: . reversed_labeled_tuple_body
      reversed_labeled_tuple_body: . STACK FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case) COMMA fun_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  match overwrite_ UIdent with stack_ function false -> . , UIdent with false -> UIdent [@@ and ] let false = UIdent
                               ^^^^^^
  ```
- Derivation (1 occurrence):
  ```
  fun_expr: OVERWRITE ext list(attribute) seq_expr WITH . fun_expr
    fun_expr: . reversed_labeled_tuple_body
      reversed_labeled_tuple_body: . FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case) COMMA LABEL simple_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  match overwrite_ UIdent with function false -> . , ~label: #1.0 with false -> UIdent [@@ and ] let false = UIdent
                               ^^^^^^^^
  ```
- Derivation (1 occurrence):
  ```
  fun_expr: OVERWRITE ext list(attribute) seq_expr WITH . fun_expr
    fun_expr: . reversed_labeled_tuple_body
      reversed_labeled_tuple_body: . FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case) COMMA STACK FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
  ```
  Sample sentence (implementation):
  ```ocaml
  match overwrite_ UIdent with function false -> . , stack_ function false -> UIdent with false -> UIdent [@@ and ] let false = UIdent
                               ^^^^^^^^
  ```
- Derivation (1 occurrence):
  ```
  fun_expr: OVERWRITE ext list(attribute) seq_expr WITH . fun_expr
    fun_expr: . reversed_labeled_tuple_body
      reversed_labeled_tuple_body: . FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case) COMMA FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
  ```
  Sample sentence (implementation):
  ```ocaml
  match overwrite_ UIdent with function false -> . , function false -> UIdent with false -> UIdent [@@ and ] let false = UIdent
                               ^^^^^^^^
  ```
- Derivation (1 occurrence):
  ```
  fun_expr: OVERWRITE ext list(attribute) seq_expr WITH . fun_expr
    fun_expr: . reversed_labeled_tuple_body
      reversed_labeled_tuple_body: . FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case) COMMA fun_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  match overwrite_ UIdent with function false -> . , UIdent with false -> UIdent [@@ and ] let false = UIdent
                               ^^^^^^^^
  ```
- Derivation (1 occurrence):
  ```
  fun_expr: OVERWRITE ext list(attribute) seq_expr WITH . fun_expr
    fun_expr: . let_bindings(ext) IN seq_expr
      let_bindings(ext): . LET ext list(attribute) mutable_flag rec_flag let_binding_body list(post_item_attribute)
  ```
  Sample sentence (implementation):
  ```ocaml
  match overwrite_ UIdent with let false = UIdent in UIdent with false -> UIdent [@@ and ] let false = UIdent
                               ^^^
  ```
- Derivation (1 occurrence):
  ```
  fun_expr: OVERWRITE ext list(attribute) seq_expr WITH . fun_expr
    fun_expr: . EXCLAVE seq_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  match overwrite_ UIdent with exclave_ UIdent with false -> UIdent [@@ and ] let false = UIdent
                               ^^^^^^^^
  ```
- Derivation (1 occurrence):
  ```
  fun_expr: OVERWRITE ext list(attribute) seq_expr WITH . fun_expr
    fun_expr: . LOCAL seq_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  match overwrite_ UIdent with local_ UIdent with false -> UIdent [@@ and ] let false = UIdent
                               ^^^^^^
  ```
- Derivation (1 occurrence):
  ```
  fun_expr: OVERWRITE ext list(attribute) seq_expr WITH . fun_expr
    fun_expr: . LETOP letop_bindings IN seq_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  match overwrite_ UIdent with let* lident in UIdent with false -> UIdent [@@ and ] let false = UIdent
                               ^^^^
  ```
- Derivation (1 occurrence):
  ```
  fun_expr: OVERWRITE ext list(attribute) seq_expr WITH . fun_expr
    fun_expr: . STACK constr_longident simple_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  match overwrite_ UIdent with stack_ UIdent #1.0 with false -> UIdent [@@ and ] let false = UIdent
                               ^^^^^^
  ```
- Derivation (1 occurrence):
  ```
  fun_expr: OVERWRITE ext list(attribute) seq_expr WITH . fun_expr
    fun_expr: . STACK simple_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  match overwrite_ UIdent with stack_ UIdent with false -> UIdent [@@ and ] let false = UIdent
                               ^^^^^^
  ```
- Derivation (1 occurrence):
  ```
  fun_expr: OVERWRITE ext list(attribute) seq_expr WITH . fun_expr
    fun_expr: . ASSERT ext list(attribute) simple_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  match overwrite_ UIdent with assert #1.0 with false -> UIdent [@@ and ] let false = UIdent
                               ^^^^^^
  ```
- Derivation (1 occurrence):
  ```
  fun_expr: OVERWRITE ext list(attribute) seq_expr WITH . fun_expr
    fun_expr: . IF ext list(attribute) seq_expr THEN STACK FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
  ```
  Sample sentence (implementation):
  ```ocaml
  match overwrite_ UIdent with if UIdent then stack_ function false -> UIdent with false -> UIdent [@@ and ] let false = UIdent
                               ^^
  ```
- Derivation (1 occurrence):
  ```
  fun_expr: OVERWRITE ext list(attribute) seq_expr WITH . fun_expr
    fun_expr: . IF ext list(attribute) seq_expr THEN FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
  ```
  Sample sentence (implementation):
  ```ocaml
  match overwrite_ UIdent with if UIdent then function false -> UIdent with false -> UIdent [@@ and ] let false = UIdent
                               ^^
  ```
- Derivation (1 occurrence):
  ```
  fun_expr: OVERWRITE ext list(attribute) seq_expr WITH . fun_expr
    fun_expr: . IF ext list(attribute) seq_expr THEN fun_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  match overwrite_ UIdent with if UIdent then UIdent with false -> UIdent [@@ and ] let false = UIdent
                               ^^
  ```
- Derivation (1 occurrence):
  ```
  fun_expr: OVERWRITE ext list(attribute) seq_expr WITH . fun_expr
    fun_expr: . IF ext list(attribute) seq_expr THEN STACK FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case) ELSE STACK FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
  ```
  Sample sentence (implementation):
  ```ocaml
  match overwrite_ UIdent with if UIdent then stack_ function false -> UIdent else stack_ function false -> UIdent with false -> UIdent [@@ and ] let false = UIdent
                               ^^
  ```
- Derivation (1 occurrence):
  ```
  fun_expr: OVERWRITE ext list(attribute) seq_expr WITH . fun_expr
    fun_expr: . IF ext list(attribute) seq_expr THEN STACK FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case) ELSE FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
  ```
  Sample sentence (implementation):
  ```ocaml
  match overwrite_ UIdent with if UIdent then stack_ function false -> UIdent else function false -> UIdent with false -> UIdent [@@ and ] let false = UIdent
                               ^^
  ```
- Derivation (1 occurrence):
  ```
  fun_expr: OVERWRITE ext list(attribute) seq_expr WITH . fun_expr
    fun_expr: . IF ext list(attribute) seq_expr THEN STACK FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case) ELSE fun_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  match overwrite_ UIdent with if UIdent then stack_ function false -> UIdent else UIdent with false -> UIdent [@@ and ] let false = UIdent
                               ^^
  ```
- ...


### Item `reversed_labeled_tuple_body: fun_expr . COMMA TILDE LPAREN LIDENT type_constraint RPAREN` (in 34 errors)

- Derivation (34 occurrences):
  ```
  reversed_labeled_tuple_body: fun_expr . COMMA TILDE LPAREN LIDENT type_constraint RPAREN
  ```
  Sample sentence (implementation):
  ```ocaml
  while once_ UIdent ; , ~ ( lident :> {%hello|world|} ) do UIdent done let false = UIdent
                       ^
  ```


### Item `pattern: . EXCEPTION ext list(attribute) pattern` (in 28 errors)

- Derivation (19 occurrences):
  ```
  comprehension_clause_binding: list(attribute) UNIQUE . pattern IN fun_expr
    pattern: . EXCEPTION ext list(attribute) pattern
  ```
  Sample sentence (implementation):
  ```ocaml
  [: UIdent for unique_ exception false in UIdent :] let false = UIdent
                        ^^^^^^^^^
  ```
- Derivation (3 occurrences):
  ```
  comprehension_clause_binding: list(attribute) ONCE . pattern IN fun_expr
    pattern: . EXCEPTION ext list(attribute) pattern
  ```
  Sample sentence (implementation):
  ```ocaml
  [: UIdent for once_ exception false in UIdent :] let false = UIdent
                      ^^^^^^^^^
  ```
- Derivation (1 occurrence):
  ```
  comprehension_clause_binding: list(attribute) ONCE . pattern IN fun_expr
    pattern: . pattern AS val_ident
      pattern: . EXCEPTION ext list(attribute) pattern
  ```
  Sample sentence (implementation):
  ```ocaml
  [: UIdent for once_ exception false as lident in UIdent :] let false = UIdent
                      ^^^^^^^^^
  ```
- Derivation (1 occurrence):
  ```
  comprehension_clause_binding: list(attribute) UNIQUE . pattern IN fun_expr
    pattern: . pattern AS val_ident
      pattern: . EXCEPTION ext list(attribute) pattern
  ```
  Sample sentence (implementation):
  ```ocaml
  [: UIdent for unique_ exception false as lident in UIdent :] let false = UIdent
                        ^^^^^^^^^
  ```
- Derivation (1 occurrence):
  ```
  comprehension_clause_binding: list(attribute) ONCE . pattern IN fun_expr
    pattern: . pattern attribute
      pattern: . EXCEPTION ext list(attribute) pattern
  ```
  Sample sentence (implementation):
  ```ocaml
  [: UIdent for once_ exception false [@ and ] in UIdent :] let false = UIdent
                      ^^^^^^^^^
  ```
- Derivation (1 occurrence):
  ```
  comprehension_clause_binding: list(attribute) UNIQUE . pattern IN fun_expr
    pattern: . pattern attribute
      pattern: . EXCEPTION ext list(attribute) pattern
  ```
  Sample sentence (implementation):
  ```ocaml
  [: UIdent for unique_ exception false [@ and ] in UIdent :] let false = UIdent
                        ^^^^^^^^^
  ```
- Derivation (1 occurrence):
  ```
  comprehension_clause_binding: list(attribute) ONCE . pattern IN fun_expr
    pattern: . pattern COLONCOLON pattern
      pattern: . EXCEPTION ext list(attribute) pattern
  ```
  Sample sentence (implementation):
  ```ocaml
  [: UIdent for once_ exception false :: false in UIdent :] let false = UIdent
                      ^^^^^^^^^
  ```
- Derivation (1 occurrence):
  ```
  comprehension_clause_binding: list(attribute) UNIQUE . pattern IN fun_expr
    pattern: . pattern COLONCOLON pattern
      pattern: . EXCEPTION ext list(attribute) pattern
  ```
  Sample sentence (implementation):
  ```ocaml
  [: UIdent for unique_ exception false :: false in UIdent :] let false = UIdent
                        ^^^^^^^^^
  ```


### Item `fun_expr: LIDENT . LESSMINUS fun_expr` (in 23 errors)

- Derivation (23 occurrences):
  ```
  fun_expr: LIDENT . LESSMINUS fun_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  once_ lident <- UIdent let false = UIdent
               ^^
  ```


### Item `fun_expr: simple_expr DOT label_longident . LESSMINUS fun_expr` (in 21 errors)

- Derivation (21 occurrences):
  ```
  fun_expr: simple_expr DOT label_longident . LESSMINUS fun_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  once_ false . lident <- UIdent let false = UIdent
                       ^^
  ```


### Item `fun_expr: simple_expr DOT LPAREN seq_expr RPAREN . LESSMINUS fun_expr` (in 21 errors)

- Derivation (21 occurrences):
  ```
  fun_expr: simple_expr DOT LPAREN seq_expr RPAREN . LESSMINUS fun_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  once_ false . ( UIdent ) <- UIdent let false = UIdent
                           ^^
  ```


### Item `fun_expr: simple_expr DOT LBRACE seq_expr RBRACE . LESSMINUS fun_expr` (in 21 errors)

- Derivation (21 occurrences):
  ```
  fun_expr: simple_expr DOT LBRACE seq_expr RBRACE . LESSMINUS fun_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  once_ false . { UIdent } <- UIdent let false = UIdent
                           ^^
  ```


### Item `fun_expr: simple_expr DOT LBRACKET seq_expr RBRACKET . LESSMINUS fun_expr` (in 21 errors)

- Derivation (21 occurrences):
  ```
  fun_expr: simple_expr DOT LBRACKET seq_expr RBRACKET . LESSMINUS fun_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  once_ false . [ UIdent ] <- UIdent let false = UIdent
                           ^^
  ```


### Item `fun_expr: simple_expr DOTOP LPAREN separated_or_terminated_nonempty_list(SEMI,expr) RPAREN . LESSMINUS fun_expr` (in 21 errors)

- Derivation (21 occurrences):
  ```
  fun_expr: simple_expr DOTOP LPAREN separated_or_terminated_nonempty_list(SEMI,expr) RPAREN . LESSMINUS fun_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  once_ UIdent .+ ( UIdent ) <- UIdent let false = UIdent
                             ^^
  ```


### Item `fun_expr: simple_expr DOT mod_longident DOTOP LPAREN separated_or_terminated_nonempty_list(SEMI,expr) RPAREN . LESSMINUS fun_expr` (in 21 errors)

- Derivation (21 occurrences):
  ```
  fun_expr: simple_expr DOT mod_longident DOTOP LPAREN separated_or_terminated_nonempty_list(SEMI,expr) RPAREN . LESSMINUS fun_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  once_ false . UIdent .+ ( UIdent ) <- UIdent let false = UIdent
                                     ^^
  ```


### Item `fun_expr: simple_expr DOTOP LBRACE separated_or_terminated_nonempty_list(SEMI,expr) RBRACE . LESSMINUS fun_expr` (in 21 errors)

- Derivation (21 occurrences):
  ```
  fun_expr: simple_expr DOTOP LBRACE separated_or_terminated_nonempty_list(SEMI,expr) RBRACE . LESSMINUS fun_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  once_ UIdent .+ { UIdent } <- UIdent let false = UIdent
                             ^^
  ```


### Item `fun_expr: simple_expr DOT mod_longident DOTOP LBRACE separated_or_terminated_nonempty_list(SEMI,expr) RBRACE . LESSMINUS fun_expr` (in 21 errors)

- Derivation (21 occurrences):
  ```
  fun_expr: simple_expr DOT mod_longident DOTOP LBRACE separated_or_terminated_nonempty_list(SEMI,expr) RBRACE . LESSMINUS fun_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  once_ false . UIdent .+ { UIdent } <- UIdent let false = UIdent
                                     ^^
  ```


### Item `fun_expr: simple_expr DOTOP LBRACKET separated_or_terminated_nonempty_list(SEMI,expr) RBRACKET . LESSMINUS fun_expr` (in 21 errors)

- Derivation (21 occurrences):
  ```
  fun_expr: simple_expr DOTOP LBRACKET separated_or_terminated_nonempty_list(SEMI,expr) RBRACKET . LESSMINUS fun_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  once_ UIdent .+ [ UIdent ] <- UIdent let false = UIdent
                             ^^
  ```


### Item `fun_expr: simple_expr DOT mod_longident DOTOP LBRACKET separated_or_terminated_nonempty_list(SEMI,expr) RBRACKET . LESSMINUS fun_expr` (in 21 errors)

- Derivation (21 occurrences):
  ```
  fun_expr: simple_expr DOT mod_longident DOTOP LBRACKET separated_or_terminated_nonempty_list(SEMI,expr) RBRACKET . LESSMINUS fun_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  once_ false . UIdent .+ [ UIdent ] <- UIdent let false = UIdent
                                     ^^
  ```


### Item `fun_expr: fun_expr . PERCENT fun_expr` (in 16 errors)

- Derivation (16 occurrences):
  ```
  fun_expr: fun_expr . PERCENT fun_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  #{ lident = unique_ UIdent ; UIdent % UIdent } let false = UIdent
                                      ^
  ```


### Item `fun_expr: fun_expr . MINUS fun_expr` (in 15 errors)

- Derivation (15 occurrences):
  ```
  fun_expr: fun_expr . MINUS fun_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  #{ lident = unique_ UIdent ; UIdent - UIdent } let false = UIdent
                                      ^
  ```


### Item `comprehension_clause_binding: list(attribute) pattern . comprehension_iterator` (in 14 errors)

- Derivation (14 occurrences):
  ```
  comprehension_clause_binding: list(attribute) pattern . comprehension_iterator
    comprehension_iterator: . IN fun_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  [ unique_ <[ UIdent ]> for false in UIdent ] let false = UIdent
                                   ^^
  ```


### Item `fun_expr: fun_expr . INFIXOP3 STACK FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)` (in 14 errors)

- Derivation (14 occurrences):
  ```
  fun_expr: fun_expr . INFIXOP3 STACK FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
  ```
  Sample sentence (implementation):
  ```ocaml
  while once_ UIdent ; land stack_ function false -> UIdent do UIdent done let false = UIdent
                       ^^^^
  ```


### Item `fun_expr: fun_expr . INFIXOP4 STACK FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)` (in 14 errors)

- Derivation (14 occurrences):
  ```
  fun_expr: fun_expr . INFIXOP4 STACK FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
  ```
  Sample sentence (implementation):
  ```ocaml
  while once_ UIdent ; ** stack_ function false -> UIdent do UIdent done let false = UIdent
                       ^^
  ```


### Item `fun_expr: fun_expr . EQUAL STACK FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)` (in 14 errors)

- Derivation (14 occurrences):
  ```
  fun_expr: fun_expr . EQUAL STACK FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
  ```
  Sample sentence (implementation):
  ```ocaml
  while once_ UIdent ; = stack_ function false -> UIdent do UIdent done let false = UIdent
                       ^
  ```


### Item `fun_expr: fun_expr . BARBAR STACK FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)` (in 14 errors)

- Derivation (14 occurrences):
  ```
  fun_expr: fun_expr . BARBAR STACK FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
  ```
  Sample sentence (implementation):
  ```ocaml
  while once_ UIdent ; || stack_ function false -> UIdent do UIdent done let false = UIdent
                       ^^
  ```


### Item `fun_expr: fun_expr . AMPERAMPER STACK FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)` (in 14 errors)

- Derivation (14 occurrences):
  ```
  fun_expr: fun_expr . AMPERAMPER STACK FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
  ```
  Sample sentence (implementation):
  ```ocaml
  while once_ UIdent ; && stack_ function false -> UIdent do UIdent done let false = UIdent
                       ^^
  ```


### Item `fun_expr: fun_expr . COLONEQUAL STACK FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)` (in 14 errors)

- Derivation (14 occurrences):
  ```
  fun_expr: fun_expr . COLONEQUAL STACK FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
  ```
  Sample sentence (implementation):
  ```ocaml
  while once_ UIdent ; := stack_ function false -> UIdent do UIdent done let false = UIdent
                       ^^
  ```


### Item `reversed_labeled_tuple_body: reversed_labeled_tuple_body . COMMA fun_expr` (in 14 errors)

- Derivation (14 occurrences):
  ```
  reversed_labeled_tuple_body: reversed_labeled_tuple_body . COMMA fun_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  UIdent , once_ UIdent ; , UIdent let false = UIdent
                          ^
  ```


### Item `fun_expr: TRY ext list(attribute) seq_expr . WITH reversed_preceded_or_separated_nonempty_llist(BAR,match_case)` (in 13 errors)

- Derivation (13 occurrences):
  ```
  fun_expr: TRY ext list(attribute) seq_expr . WITH reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
  ```
  Sample sentence (implementation):
  ```ocaml
  try overwrite_ UIdent with UIdent with false -> UIdent [@@ and ] let false = UIdent
                                    ^^^^
  ```


### Item `fun_expr: fun_expr . COLONCOLON STACK FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)` (in 13 errors)

- Derivation (13 occurrences):
  ```
  fun_expr: fun_expr . COLONCOLON STACK FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
  ```
  Sample sentence (implementation):
  ```ocaml
  while once_ UIdent ; :: stack_ function false -> UIdent do UIdent done let false = UIdent
                       ^^
  ```


### Item `strict_function_or_labeled_tuple_type: nonempty_list(mode_legacy) . LPAREN reversed_nonempty_llist(typevar) DOT core_type RPAREN at_mode_expr MINUSGREATER tuple_type` (in 12 errors)

- Derivation (12 occurrences):
  ```
  strict_function_or_labeled_tuple_type: nonempty_list(mode_legacy) . LPAREN reversed_nonempty_llist(typevar) DOT core_type RPAREN at_mode_expr MINUSGREATER tuple_type
  ```
  Sample sentence (implementation):
  ```ocaml
  object constraint unique_ ( ' lident . {%hello|world|} ) @ lident -> {%hello|world|} = {%hello|world|} inherit lident end let false = UIdent
                            ^
  ```


### Item `simple_expr: HASHLBRACE record_expr_content . RBRACE` (in 5 errors)

- Derivation (5 occurrences):
  ```
  simple_expr: HASHLBRACE record_expr_content . RBRACE
  ```
  Sample sentence (implementation):
  ```ocaml
  #{ lident = unique_ UIdent ; UIdent } let false = UIdent
                                      ^
  ```


### Item `constr_longident: . mod_longident` (in 4 errors)

- Derivation (1 occurrence):
  ```
  fun_expr: fun_expr MINUS . fun_expr
    fun_expr: . simple_expr
      simple_expr: . constr_longident
        constr_longident: . mod_longident
          mod_longident: . mk_longident(mod_longident,UIDENT)
            mk_longident(mod_longident,UIDENT): . UIDENT
  ```
  Sample sentence (implementation):
  ```ocaml
  match overwrite_ UIdent with UIdent - UIdent with false -> UIdent [@@ and ] let false = UIdent
                                        ^^^^^^
  ```
- Derivation (1 occurrence):
  ```
  fun_expr: fun_expr PLUS . fun_expr
    fun_expr: . simple_expr
      simple_expr: . constr_longident
        constr_longident: . mod_longident
          mod_longident: . mk_longident(mod_longident,UIDENT)
            mk_longident(mod_longident,UIDENT): . UIDENT
  ```
  Sample sentence (implementation):
  ```ocaml
  match overwrite_ UIdent with UIdent + UIdent with false -> UIdent [@@ and ] let false = UIdent
                                        ^^^^^^
  ```
- Derivation (1 occurrence):
  ```
  fun_expr: additive . fun_expr
    fun_expr: . simple_expr
      simple_expr: . constr_longident
        constr_longident: . mod_longident
          mod_longident: . mk_longident(mod_longident,UIDENT)
            mk_longident(mod_longident,UIDENT): . UIDENT
  ```
  Sample sentence (implementation):
  ```ocaml
  match overwrite_ UIdent with + UIdent with false -> UIdent [@@ and ] let false = UIdent
                                 ^^^^^^
  ```
- Derivation (1 occurrence):
  ```
  fun_expr: subtractive . fun_expr
    fun_expr: . simple_expr
      simple_expr: . constr_longident
        constr_longident: . mod_longident
          mod_longident: . mk_longident(mod_longident,UIDENT)
            mk_longident(mod_longident,UIDENT): . UIDENT
  ```
  Sample sentence (implementation):
  ```ocaml
  match overwrite_ UIdent with - UIdent with false -> UIdent [@@ and ] let false = UIdent
                                 ^^^^^^
  ```


### Item `fun_expr: FOR ext list(attribute) pattern EQUAL seq_expr direction_flag seq_expr . DO seq_expr DONE` (in 4 errors)

- Derivation (4 occurrences):
  ```
  fun_expr: FOR ext list(attribute) pattern EQUAL seq_expr direction_flag seq_expr . DO seq_expr DONE
  ```
  Sample sentence (implementation):
  ```ocaml
  [ unique_ for false = UIdent downto UIdent do UIdent done for false in UIdent ] let false = UIdent
                                             ^^
  ```


### Item `label_let_pattern: nonempty_list(mode_legacy) . LIDENT optional_poly_type_and_modes` (in 4 errors)

- Derivation (4 occurrences):
  ```
  label_let_pattern: nonempty_list(mode_legacy) . LIDENT optional_poly_type_and_modes
  ```
  Sample sentence (implementation):
  ```ocaml
  class lident ~ ( once_ lident ) = lident let false = UIdent
                         ^^^^^^
  ```


### Item `type_constraint: . COLONGREATER core_type` (in 4 errors)

- Derivation (1 occurrence):
  ```
  reversed_labeled_tuple_body: TILDE LPAREN LIDENT . type_constraint RPAREN COMMA LABEL simple_expr
    type_constraint: . COLONGREATER core_type
  ```
  Sample sentence (implementation):
  ```ocaml
  match overwrite_ UIdent with ~ ( lident :> {%hello|world|} ) , ~label: #1.0 with false -> UIdent [@@ and ] let false = UIdent
                                          ^^
  ```
- Derivation (1 occurrence):
  ```
  reversed_labeled_tuple_body: TILDE LPAREN LIDENT . type_constraint RPAREN COMMA STACK FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
    type_constraint: . COLONGREATER core_type
  ```
  Sample sentence (implementation):
  ```ocaml
  match overwrite_ UIdent with ~ ( lident :> {%hello|world|} ) , stack_ function false -> UIdent with false -> UIdent [@@ and ] let false = UIdent
                                          ^^
  ```
- Derivation (1 occurrence):
  ```
  reversed_labeled_tuple_body: TILDE LPAREN LIDENT . type_constraint RPAREN COMMA FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
    type_constraint: . COLONGREATER core_type
  ```
  Sample sentence (implementation):
  ```ocaml
  match overwrite_ UIdent with ~ ( lident :> {%hello|world|} ) , function false -> UIdent with false -> UIdent [@@ and ] let false = UIdent
                                          ^^
  ```
- Derivation (1 occurrence):
  ```
  reversed_labeled_tuple_body: TILDE LPAREN LIDENT . type_constraint RPAREN COMMA fun_expr
    type_constraint: . COLONGREATER core_type
  ```
  Sample sentence (implementation):
  ```ocaml
  match overwrite_ UIdent with ~ ( lident :> {%hello|world|} ) , UIdent with false -> UIdent [@@ and ] let false = UIdent
                                          ^^
  ```


### Item `nonempty_list(mode_legacy): . LOCAL nonempty_list(mode_legacy)` (in 3 errors)

- Derivation (1 occurrence):
  ```
  nonempty_list(mode_legacy): ONCE . nonempty_list(mode_legacy)
    nonempty_list(mode_legacy): . LOCAL nonempty_list(mode_legacy)
  ```
  Sample sentence (implementation):
  ```ocaml
  let once_ local_ local_ lident @ lident = UIdent [@@ and ] let false = UIdent
            ^^^^^^
  ```
- Derivation (1 occurrence):
  ```
  nonempty_list(mode_legacy): UNIQUE . nonempty_list(mode_legacy)
    nonempty_list(mode_legacy): . LOCAL nonempty_list(mode_legacy)
  ```
  Sample sentence (implementation):
  ```ocaml
  let unique_ local_ local_ lident @ lident = UIdent [@@ and ] let false = UIdent
              ^^^^^^
  ```
- Derivation (1 occurrence):
  ```
  nonempty_list(mode_legacy): LOCAL . nonempty_list(mode_legacy)
    nonempty_list(mode_legacy): . LOCAL nonempty_list(mode_legacy)
  ```
  Sample sentence (implementation):
  ```ocaml
  let local_ local_ local_ lident @ lident = UIdent [@@ and ] let false = UIdent
             ^^^^^^
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
  overwrite_ % and UIdent with UIdent [@@ and ] let false = UIdent
               ^^^
  ```


### Item `fun_expr: fun_expr . INFIXOP0 fun_expr` (in 2 errors)

- Derivation (2 occurrences):
  ```
  fun_expr: fun_expr . INFIXOP0 fun_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  #{ lident = unique_ UIdent ; UIdent != UIdent } let false = UIdent
                                      ^^
  ```


### Item `fun_expr: fun_expr . INFIXOP0 FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)` (in 2 errors)

- Derivation (2 occurrences):
  ```
  fun_expr: fun_expr . INFIXOP0 FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
  ```
  Sample sentence (implementation):
  ```ocaml
  #{ lident = unique_ UIdent ; UIdent != function false -> UIdent } let false = UIdent
                                      ^^
  ```


### Item `fun_expr: fun_expr . INFIXOP0 STACK FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)` (in 2 errors)

- Derivation (2 occurrences):
  ```
  fun_expr: fun_expr . INFIXOP0 STACK FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
  ```
  Sample sentence (implementation):
  ```ocaml
  #{ lident = unique_ UIdent ; UIdent != stack_ function false -> UIdent } let false = UIdent
                                      ^^
  ```


### Item `fun_expr: fun_expr . AT fun_expr` (in 2 errors)

- Derivation (2 occurrences):
  ```
  fun_expr: fun_expr . AT fun_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  #{ lident = unique_ UIdent ; UIdent @ UIdent } let false = UIdent
                                      ^
  ```


### Item `fun_expr: fun_expr . AT FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)` (in 2 errors)

- Derivation (2 occurrences):
  ```
  fun_expr: fun_expr . AT FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
  ```
  Sample sentence (implementation):
  ```ocaml
  #{ lident = unique_ UIdent ; UIdent @ function false -> UIdent } let false = UIdent
                                      ^
  ```


### Item `fun_expr: fun_expr . AT STACK FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)` (in 2 errors)

- Derivation (2 occurrences):
  ```
  fun_expr: fun_expr . AT STACK FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
  ```
  Sample sentence (implementation):
  ```ocaml
  #{ lident = unique_ UIdent ; UIdent @ stack_ function false -> UIdent } let false = UIdent
                                      ^
  ```


### Item `fun_expr: fun_expr . ATAT fun_expr` (in 2 errors)

- Derivation (2 occurrences):
  ```
  fun_expr: fun_expr . ATAT fun_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  #{ lident = unique_ UIdent ; UIdent @@ UIdent } let false = UIdent
                                      ^^
  ```


### Item `fun_expr: fun_expr . ATAT FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)` (in 2 errors)

- Derivation (2 occurrences):
  ```
  fun_expr: fun_expr . ATAT FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
  ```
  Sample sentence (implementation):
  ```ocaml
  #{ lident = unique_ UIdent ; UIdent @@ function false -> UIdent } let false = UIdent
                                      ^^
  ```


### Item `fun_expr: fun_expr . ATAT STACK FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)` (in 2 errors)

- Derivation (2 occurrences):
  ```
  fun_expr: fun_expr . ATAT STACK FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
  ```
  Sample sentence (implementation):
  ```ocaml
  #{ lident = unique_ UIdent ; UIdent @@ stack_ function false -> UIdent } let false = UIdent
                                      ^^
  ```


### Item `fun_expr: fun_expr . INFIXOP1 fun_expr` (in 2 errors)

- Derivation (2 occurrences):
  ```
  fun_expr: fun_expr . INFIXOP1 fun_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  #{ lident = unique_ UIdent ; UIdent @ UIdent } let false = UIdent
                                      ^
  ```


### Item `fun_expr: fun_expr . INFIXOP1 FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)` (in 2 errors)

- Derivation (2 occurrences):
  ```
  fun_expr: fun_expr . INFIXOP1 FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
  ```
  Sample sentence (implementation):
  ```ocaml
  #{ lident = unique_ UIdent ; UIdent @ function false -> UIdent } let false = UIdent
                                      ^
  ```


### Item `fun_expr: fun_expr . INFIXOP1 STACK FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)` (in 2 errors)

- Derivation (2 occurrences):
  ```
  fun_expr: fun_expr . INFIXOP1 STACK FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
  ```
  Sample sentence (implementation):
  ```ocaml
  #{ lident = unique_ UIdent ; UIdent @ stack_ function false -> UIdent } let false = UIdent
                                      ^
  ```


### Item `fun_expr: fun_expr . INFIXOP2 fun_expr` (in 2 errors)

- Derivation (2 occurrences):
  ```
  fun_expr: fun_expr . INFIXOP2 fun_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  #{ lident = unique_ UIdent ; UIdent +! UIdent } let false = UIdent
                                      ^^
  ```


### Item `fun_expr: fun_expr . INFIXOP2 FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)` (in 2 errors)

- Derivation (2 occurrences):
  ```
  fun_expr: fun_expr . INFIXOP2 FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
  ```
  Sample sentence (implementation):
  ```ocaml
  #{ lident = unique_ UIdent ; UIdent +! function false -> UIdent } let false = UIdent
                                      ^^
  ```


### Item `fun_expr: fun_expr . INFIXOP2 STACK FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)` (in 2 errors)

- Derivation (2 occurrences):
  ```
  fun_expr: fun_expr . INFIXOP2 STACK FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
  ```
  Sample sentence (implementation):
  ```ocaml
  #{ lident = unique_ UIdent ; UIdent +! stack_ function false -> UIdent } let false = UIdent
                                      ^^
  ```


### Item `fun_expr: fun_expr . INFIXOP3 FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)` (in 2 errors)

- Derivation (2 occurrences):
  ```
  fun_expr: fun_expr . INFIXOP3 FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
  ```
  Sample sentence (implementation):
  ```ocaml
  #{ lident = unique_ UIdent ; UIdent land function false -> UIdent } let false = UIdent
                                      ^^^^
  ```


### Item `fun_expr: fun_expr . MOD fun_expr` (in 2 errors)

- Derivation (2 occurrences):
  ```
  fun_expr: fun_expr . MOD fun_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  #{ lident = unique_ UIdent ; UIdent mod UIdent } let false = UIdent
                                      ^^^
  ```


### Item `fun_expr: fun_expr . MOD FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)` (in 2 errors)

- Derivation (2 occurrences):
  ```
  fun_expr: fun_expr . MOD FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
  ```
  Sample sentence (implementation):
  ```ocaml
  #{ lident = unique_ UIdent ; UIdent mod function false -> UIdent } let false = UIdent
                                      ^^^
  ```


### Item `fun_expr: fun_expr . MOD STACK FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)` (in 2 errors)

- Derivation (2 occurrences):
  ```
  fun_expr: fun_expr . MOD STACK FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
  ```
  Sample sentence (implementation):
  ```ocaml
  #{ lident = unique_ UIdent ; UIdent mod stack_ function false -> UIdent } let false = UIdent
                                      ^^^
  ```


### Item `fun_expr: fun_expr . INFIXOP4 FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)` (in 2 errors)

- Derivation (2 occurrences):
  ```
  fun_expr: fun_expr . INFIXOP4 FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
  ```
  Sample sentence (implementation):
  ```ocaml
  #{ lident = unique_ UIdent ; UIdent ** function false -> UIdent } let false = UIdent
                                      ^^
  ```


### Item `fun_expr: fun_expr . PLUSDOT fun_expr` (in 2 errors)

- Derivation (2 occurrences):
  ```
  fun_expr: fun_expr . PLUSDOT fun_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  #{ lident = unique_ UIdent ; UIdent +. UIdent } let false = UIdent
                                      ^^
  ```


### Item `fun_expr: fun_expr . PLUSDOT FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)` (in 2 errors)

- Derivation (2 occurrences):
  ```
  fun_expr: fun_expr . PLUSDOT FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
  ```
  Sample sentence (implementation):
  ```ocaml
  #{ lident = unique_ UIdent ; UIdent +. function false -> UIdent } let false = UIdent
                                      ^^
  ```


### Item `fun_expr: fun_expr . PLUSDOT STACK FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)` (in 2 errors)

- Derivation (2 occurrences):
  ```
  fun_expr: fun_expr . PLUSDOT STACK FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
  ```
  Sample sentence (implementation):
  ```ocaml
  #{ lident = unique_ UIdent ; UIdent +. stack_ function false -> UIdent } let false = UIdent
                                      ^^
  ```


### Item `fun_expr: fun_expr . PLUSEQ fun_expr` (in 2 errors)

- Derivation (2 occurrences):
  ```
  fun_expr: fun_expr . PLUSEQ fun_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  #{ lident = unique_ UIdent ; UIdent += UIdent } let false = UIdent
                                      ^^
  ```


### Item `fun_expr: fun_expr . PLUSEQ FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)` (in 2 errors)

- Derivation (2 occurrences):
  ```
  fun_expr: fun_expr . PLUSEQ FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
  ```
  Sample sentence (implementation):
  ```ocaml
  #{ lident = unique_ UIdent ; UIdent += function false -> UIdent } let false = UIdent
                                      ^^
  ```


### Item `fun_expr: fun_expr . PLUSEQ STACK FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)` (in 2 errors)

- Derivation (2 occurrences):
  ```
  fun_expr: fun_expr . PLUSEQ STACK FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
  ```
  Sample sentence (implementation):
  ```ocaml
  #{ lident = unique_ UIdent ; UIdent += stack_ function false -> UIdent } let false = UIdent
                                      ^^
  ```


### Item `fun_expr: fun_expr . MINUSDOT fun_expr` (in 2 errors)

- Derivation (2 occurrences):
  ```
  fun_expr: fun_expr . MINUSDOT fun_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  #{ lident = unique_ UIdent ; UIdent -. UIdent } let false = UIdent
                                      ^^
  ```


### Item `fun_expr: fun_expr . MINUSDOT FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)` (in 2 errors)

- Derivation (2 occurrences):
  ```
  fun_expr: fun_expr . MINUSDOT FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
  ```
  Sample sentence (implementation):
  ```ocaml
  #{ lident = unique_ UIdent ; UIdent -. function false -> UIdent } let false = UIdent
                                      ^^
  ```


### Item `fun_expr: fun_expr . MINUSDOT STACK FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)` (in 2 errors)

- Derivation (2 occurrences):
  ```
  fun_expr: fun_expr . MINUSDOT STACK FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
  ```
  Sample sentence (implementation):
  ```ocaml
  #{ lident = unique_ UIdent ; UIdent -. stack_ function false -> UIdent } let false = UIdent
                                      ^^
  ```


### Item `fun_expr: fun_expr . STAR fun_expr` (in 2 errors)

- Derivation (2 occurrences):
  ```
  fun_expr: fun_expr . STAR fun_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  #{ lident = unique_ UIdent ; UIdent * UIdent } let false = UIdent
                                      ^
  ```


### Item `fun_expr: fun_expr . STAR FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)` (in 2 errors)

- Derivation (2 occurrences):
  ```
  fun_expr: fun_expr . STAR FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
  ```
  Sample sentence (implementation):
  ```ocaml
  #{ lident = unique_ UIdent ; UIdent * function false -> UIdent } let false = UIdent
                                      ^
  ```


### Item `fun_expr: fun_expr . STAR STACK FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)` (in 2 errors)

- Derivation (2 occurrences):
  ```
  fun_expr: fun_expr . STAR STACK FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
  ```
  Sample sentence (implementation):
  ```ocaml
  #{ lident = unique_ UIdent ; UIdent * stack_ function false -> UIdent } let false = UIdent
                                      ^
  ```


### Item `fun_expr: fun_expr . PERCENT FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)` (in 2 errors)

- Derivation (2 occurrences):
  ```
  fun_expr: fun_expr . PERCENT FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
  ```
  Sample sentence (implementation):
  ```ocaml
  #{ lident = unique_ UIdent ; UIdent % function false -> UIdent } let false = UIdent
                                      ^
  ```


### Item `fun_expr: fun_expr . PERCENT STACK FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)` (in 2 errors)

- Derivation (2 occurrences):
  ```
  fun_expr: fun_expr . PERCENT STACK FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
  ```
  Sample sentence (implementation):
  ```ocaml
  #{ lident = unique_ UIdent ; UIdent % stack_ function false -> UIdent } let false = UIdent
                                      ^
  ```


### Item `fun_expr: fun_expr . EQUAL FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)` (in 2 errors)

- Derivation (2 occurrences):
  ```
  fun_expr: fun_expr . EQUAL FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
  ```
  Sample sentence (implementation):
  ```ocaml
  #{ lident = unique_ UIdent ; UIdent = function false -> UIdent } let false = UIdent
                                      ^
  ```


### Item `fun_expr: fun_expr . LESS fun_expr` (in 2 errors)

- Derivation (2 occurrences):
  ```
  fun_expr: fun_expr . LESS fun_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  #{ lident = unique_ UIdent ; UIdent < UIdent } let false = UIdent
                                      ^
  ```


### Item `fun_expr: fun_expr . LESS FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)` (in 2 errors)

- Derivation (2 occurrences):
  ```
  fun_expr: fun_expr . LESS FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
  ```
  Sample sentence (implementation):
  ```ocaml
  #{ lident = unique_ UIdent ; UIdent < function false -> UIdent } let false = UIdent
                                      ^
  ```


### Item `fun_expr: fun_expr . LESS STACK FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)` (in 2 errors)

- Derivation (2 occurrences):
  ```
  fun_expr: fun_expr . LESS STACK FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
  ```
  Sample sentence (implementation):
  ```ocaml
  #{ lident = unique_ UIdent ; UIdent < stack_ function false -> UIdent } let false = UIdent
                                      ^
  ```


### Item `fun_expr: fun_expr . GREATER fun_expr` (in 2 errors)

- Derivation (2 occurrences):
  ```
  fun_expr: fun_expr . GREATER fun_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  #{ lident = unique_ UIdent ; UIdent > UIdent } let false = UIdent
                                      ^
  ```


### Item `fun_expr: fun_expr . GREATER FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)` (in 2 errors)

- Derivation (2 occurrences):
  ```
  fun_expr: fun_expr . GREATER FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
  ```
  Sample sentence (implementation):
  ```ocaml
  #{ lident = unique_ UIdent ; UIdent > function false -> UIdent } let false = UIdent
                                      ^
  ```


### Item `fun_expr: fun_expr . GREATER STACK FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)` (in 2 errors)

- Derivation (2 occurrences):
  ```
  fun_expr: fun_expr . GREATER STACK FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
  ```
  Sample sentence (implementation):
  ```ocaml
  #{ lident = unique_ UIdent ; UIdent > stack_ function false -> UIdent } let false = UIdent
                                      ^
  ```


### Item `fun_expr: fun_expr . OR fun_expr` (in 2 errors)

- Derivation (2 occurrences):
  ```
  fun_expr: fun_expr . OR fun_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  #{ lident = unique_ UIdent ; UIdent or UIdent } let false = UIdent
                                      ^^
  ```


### Item `fun_expr: fun_expr . OR FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)` (in 2 errors)

- Derivation (2 occurrences):
  ```
  fun_expr: fun_expr . OR FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
  ```
  Sample sentence (implementation):
  ```ocaml
  #{ lident = unique_ UIdent ; UIdent or function false -> UIdent } let false = UIdent
                                      ^^
  ```


### Item `fun_expr: fun_expr . OR STACK FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)` (in 2 errors)

- Derivation (2 occurrences):
  ```
  fun_expr: fun_expr . OR STACK FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
  ```
  Sample sentence (implementation):
  ```ocaml
  #{ lident = unique_ UIdent ; UIdent or stack_ function false -> UIdent } let false = UIdent
                                      ^^
  ```


### Item `fun_expr: fun_expr . BARBAR FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)` (in 2 errors)

- Derivation (2 occurrences):
  ```
  fun_expr: fun_expr . BARBAR FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
  ```
  Sample sentence (implementation):
  ```ocaml
  #{ lident = unique_ UIdent ; UIdent || function false -> UIdent } let false = UIdent
                                      ^^
  ```


### Item `fun_expr: fun_expr . AMPERSAND fun_expr` (in 2 errors)

- Derivation (2 occurrences):
  ```
  fun_expr: fun_expr . AMPERSAND fun_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  #{ lident = unique_ UIdent ; UIdent & UIdent } let false = UIdent
                                      ^
  ```


### Item `fun_expr: fun_expr . AMPERSAND FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)` (in 2 errors)

- Derivation (2 occurrences):
  ```
  fun_expr: fun_expr . AMPERSAND FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
  ```
  Sample sentence (implementation):
  ```ocaml
  #{ lident = unique_ UIdent ; UIdent & function false -> UIdent } let false = UIdent
                                      ^
  ```


### Item `fun_expr: fun_expr . AMPERSAND STACK FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)` (in 2 errors)

- Derivation (2 occurrences):
  ```
  fun_expr: fun_expr . AMPERSAND STACK FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
  ```
  Sample sentence (implementation):
  ```ocaml
  #{ lident = unique_ UIdent ; UIdent & stack_ function false -> UIdent } let false = UIdent
                                      ^
  ```


### Item `fun_expr: fun_expr . AMPERAMPER FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)` (in 2 errors)

- Derivation (2 occurrences):
  ```
  fun_expr: fun_expr . AMPERAMPER FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
  ```
  Sample sentence (implementation):
  ```ocaml
  #{ lident = unique_ UIdent ; UIdent && function false -> UIdent } let false = UIdent
                                      ^^
  ```


### Item `fun_expr: fun_expr . COLONEQUAL FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)` (in 2 errors)

- Derivation (2 occurrences):
  ```
  fun_expr: fun_expr . COLONEQUAL FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
  ```
  Sample sentence (implementation):
  ```ocaml
  #{ lident = unique_ UIdent ; UIdent := function false -> UIdent } let false = UIdent
                                      ^^
  ```


### Item `fun_expr: simple_expr . DOTOP LPAREN separated_or_terminated_nonempty_list(SEMI,expr) RPAREN LESSMINUS fun_expr` (in 2 errors)

- Derivation (2 occurrences):
  ```
  fun_expr: simple_expr . DOTOP LPAREN separated_or_terminated_nonempty_list(SEMI,expr) RPAREN LESSMINUS fun_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  #{ lident = unique_ UIdent ; UIdent .+ ( UIdent ) <- UIdent } let false = UIdent
                                      ^^
  ```


### Item `fun_expr: simple_expr . DOTOP LPAREN separated_or_terminated_nonempty_list(SEMI,expr) RPAREN LESSMINUS FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)` (in 2 errors)

- Derivation (2 occurrences):
  ```
  fun_expr: simple_expr . DOTOP LPAREN separated_or_terminated_nonempty_list(SEMI,expr) RPAREN LESSMINUS FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
  ```
  Sample sentence (implementation):
  ```ocaml
  #{ lident = unique_ UIdent ; UIdent .+ ( UIdent ) <- function false -> UIdent } let false = UIdent
                                      ^^
  ```


### Item `fun_expr: simple_expr . DOTOP LPAREN separated_or_terminated_nonempty_list(SEMI,expr) RPAREN LESSMINUS STACK FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)` (in 2 errors)

- Derivation (2 occurrences):
  ```
  fun_expr: simple_expr . DOTOP LPAREN separated_or_terminated_nonempty_list(SEMI,expr) RPAREN LESSMINUS STACK FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
  ```
  Sample sentence (implementation):
  ```ocaml
  #{ lident = unique_ UIdent ; UIdent .+ ( UIdent ) <- stack_ function false -> UIdent } let false = UIdent
                                      ^^
  ```


### Item `fun_expr: simple_expr . DOTOP LBRACE separated_or_terminated_nonempty_list(SEMI,expr) RBRACE LESSMINUS fun_expr` (in 2 errors)

- Derivation (2 occurrences):
  ```
  fun_expr: simple_expr . DOTOP LBRACE separated_or_terminated_nonempty_list(SEMI,expr) RBRACE LESSMINUS fun_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  #{ lident = unique_ UIdent ; UIdent .+ { UIdent } <- UIdent } let false = UIdent
                                      ^^
  ```


### Item `fun_expr: simple_expr . DOTOP LBRACE separated_or_terminated_nonempty_list(SEMI,expr) RBRACE LESSMINUS FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)` (in 2 errors)

- Derivation (2 occurrences):
  ```
  fun_expr: simple_expr . DOTOP LBRACE separated_or_terminated_nonempty_list(SEMI,expr) RBRACE LESSMINUS FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
  ```
  Sample sentence (implementation):
  ```ocaml
  #{ lident = unique_ UIdent ; UIdent .+ { UIdent } <- function false -> UIdent } let false = UIdent
                                      ^^
  ```


### Item `fun_expr: simple_expr . DOTOP LBRACE separated_or_terminated_nonempty_list(SEMI,expr) RBRACE LESSMINUS STACK FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)` (in 2 errors)

- Derivation (2 occurrences):
  ```
  fun_expr: simple_expr . DOTOP LBRACE separated_or_terminated_nonempty_list(SEMI,expr) RBRACE LESSMINUS STACK FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
  ```
  Sample sentence (implementation):
  ```ocaml
  #{ lident = unique_ UIdent ; UIdent .+ { UIdent } <- stack_ function false -> UIdent } let false = UIdent
                                      ^^
  ```


### Item `fun_expr: simple_expr . DOTOP LBRACKET separated_or_terminated_nonempty_list(SEMI,expr) RBRACKET LESSMINUS fun_expr` (in 2 errors)

- Derivation (2 occurrences):
  ```
  fun_expr: simple_expr . DOTOP LBRACKET separated_or_terminated_nonempty_list(SEMI,expr) RBRACKET LESSMINUS fun_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  #{ lident = unique_ UIdent ; UIdent .+ [ UIdent ] <- UIdent } let false = UIdent
                                      ^^
  ```


### Item `fun_expr: simple_expr . DOTOP LBRACKET separated_or_terminated_nonempty_list(SEMI,expr) RBRACKET LESSMINUS FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)` (in 2 errors)

- Derivation (2 occurrences):
  ```
  fun_expr: simple_expr . DOTOP LBRACKET separated_or_terminated_nonempty_list(SEMI,expr) RBRACKET LESSMINUS FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
  ```
  Sample sentence (implementation):
  ```ocaml
  #{ lident = unique_ UIdent ; UIdent .+ [ UIdent ] <- function false -> UIdent } let false = UIdent
                                      ^^
  ```


### Item `fun_expr: simple_expr . DOTOP LBRACKET separated_or_terminated_nonempty_list(SEMI,expr) RBRACKET LESSMINUS STACK FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)` (in 2 errors)

- Derivation (2 occurrences):
  ```
  fun_expr: simple_expr . DOTOP LBRACKET separated_or_terminated_nonempty_list(SEMI,expr) RBRACKET LESSMINUS STACK FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
  ```
  Sample sentence (implementation):
  ```ocaml
  #{ lident = unique_ UIdent ; UIdent .+ [ UIdent ] <- stack_ function false -> UIdent } let false = UIdent
                                      ^^
  ```


### Item `separated_or_terminated_nonempty_list(SEMI,record_expr_field): label_longident option(type_constraint) option(preceded(EQUAL,expr)) . SEMI` (in 2 errors)

- Derivation (2 occurrences):
  ```
  separated_or_terminated_nonempty_list(SEMI,record_expr_field): label_longident option(type_constraint) option(preceded(EQUAL,expr)) . SEMI
  ```
  Sample sentence (implementation):
  ```ocaml
  #{ lident = unique_ UIdent ; ; } let false = UIdent
                               ^
  ```


### Item `constant: . unboxed_constant` (in 1 error)

- Derivation (1 occurrence):
  ```
  fun_expr: simple_expr . reversed_nonempty_llist(labeled_simple_expr)
    reversed_nonempty_llist(labeled_simple_expr): . labeled_simple_expr
      labeled_simple_expr: . simple_expr
        simple_expr: . constant
          constant: . unboxed_constant
            unboxed_constant: . HASH_FLOAT
  ```
  Sample sentence (implementation):
  ```ocaml
  match overwrite_ UIdent with #1.0 #1.0 with false -> UIdent [@@ and ] let false = UIdent
                                    ^^^^
  ```


### Item `fun_expr: subtractive . FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)` (in 1 error)

- Derivation (1 occurrence):
  ```
  fun_expr: subtractive . FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
  ```
  Sample sentence (implementation):
  ```ocaml
  match overwrite_ UIdent with - function false -> UIdent with false -> UIdent [@@ and ] let false = UIdent
                                 ^^^^^^^^
  ```


### Item `fun_expr: subtractive . STACK FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)` (in 1 error)

- Derivation (1 occurrence):
  ```
  fun_expr: subtractive . STACK FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
  ```
  Sample sentence (implementation):
  ```ocaml
  match overwrite_ UIdent with - stack_ function false -> UIdent with false -> UIdent [@@ and ] let false = UIdent
                                 ^^^^^^
  ```


### Item `fun_expr: additive . FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)` (in 1 error)

- Derivation (1 occurrence):
  ```
  fun_expr: additive . FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
  ```
  Sample sentence (implementation):
  ```ocaml
  match overwrite_ UIdent with + function false -> UIdent with false -> UIdent [@@ and ] let false = UIdent
                                 ^^^^^^^^
  ```


### Item `fun_expr: additive . STACK FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)` (in 1 error)

- Derivation (1 occurrence):
  ```
  fun_expr: additive . STACK FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
  ```
  Sample sentence (implementation):
  ```ocaml
  match overwrite_ UIdent with + stack_ function false -> UIdent with false -> UIdent [@@ and ] let false = UIdent
                                 ^^^^^^
  ```


### Item `fun_expr: fun_expr . PLUS fun_expr` (in 1 error)

- Derivation (1 occurrence):
  ```
  fun_expr: fun_expr . PLUS fun_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  #{ lident = unique_ UIdent ; UIdent + UIdent } let false = UIdent
                                      ^
  ```


### Item `fun_expr: fun_expr . PLUS FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)` (in 1 error)

- Derivation (1 occurrence):
  ```
  fun_expr: fun_expr . PLUS FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
  ```
  Sample sentence (implementation):
  ```ocaml
  #{ lident = unique_ UIdent ; UIdent + function false -> UIdent } let false = UIdent
                                      ^
  ```


### Item `fun_expr: fun_expr PLUS . FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)` (in 1 error)

- Derivation (1 occurrence):
  ```
  fun_expr: fun_expr PLUS . FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
  ```
  Sample sentence (implementation):
  ```ocaml
  match overwrite_ UIdent with UIdent + function false -> UIdent with false -> UIdent [@@ and ] let false = UIdent
                                        ^^^^^^^^
  ```


### Item `fun_expr: fun_expr . PLUS STACK FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)` (in 1 error)

- Derivation (1 occurrence):
  ```
  fun_expr: fun_expr . PLUS STACK FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
  ```
  Sample sentence (implementation):
  ```ocaml
  #{ lident = unique_ UIdent ; UIdent + stack_ function false -> UIdent } let false = UIdent
                                      ^
  ```


### Item `fun_expr: fun_expr PLUS . STACK FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)` (in 1 error)

- Derivation (1 occurrence):
  ```
  fun_expr: fun_expr PLUS . STACK FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
  ```
  Sample sentence (implementation):
  ```ocaml
  match overwrite_ UIdent with UIdent + stack_ function false -> UIdent with false -> UIdent [@@ and ] let false = UIdent
                                        ^^^^^^
  ```


### Item `fun_expr: fun_expr . MINUS FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)` (in 1 error)

- Derivation (1 occurrence):
  ```
  fun_expr: fun_expr . MINUS FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
  ```
  Sample sentence (implementation):
  ```ocaml
  #{ lident = unique_ UIdent ; UIdent - function false -> UIdent } let false = UIdent
                                      ^
  ```


### Item `fun_expr: fun_expr MINUS . FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)` (in 1 error)

- Derivation (1 occurrence):
  ```
  fun_expr: fun_expr MINUS . FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
  ```
  Sample sentence (implementation):
  ```ocaml
  match overwrite_ UIdent with UIdent - function false -> UIdent with false -> UIdent [@@ and ] let false = UIdent
                                        ^^^^^^^^
  ```


### Item `fun_expr: fun_expr . MINUS STACK FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)` (in 1 error)

- Derivation (1 occurrence):
  ```
  fun_expr: fun_expr . MINUS STACK FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
  ```
  Sample sentence (implementation):
  ```ocaml
  #{ lident = unique_ UIdent ; UIdent - stack_ function false -> UIdent } let false = UIdent
                                      ^
  ```


### Item `fun_expr: fun_expr MINUS . STACK FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)` (in 1 error)

- Derivation (1 occurrence):
  ```
  fun_expr: fun_expr MINUS . STACK FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
  ```
  Sample sentence (implementation):
  ```ocaml
  match overwrite_ UIdent with UIdent - stack_ function false -> UIdent with false -> UIdent [@@ and ] let false = UIdent
                                        ^^^^^^
  ```


### Item `fun_expr: fun_expr . COLONCOLON FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)` (in 1 error)

- Derivation (1 occurrence):
  ```
  fun_expr: fun_expr . COLONCOLON FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
  ```
  Sample sentence (implementation):
  ```ocaml
  #{ lident = unique_ UIdent ; UIdent :: function false -> UIdent } let false = UIdent
                                      ^^
  ```


### Item `fun_expr: simple_expr . DOT label_longident LESSMINUS fun_expr` (in 1 error)

- Derivation (1 occurrence):
  ```
  fun_expr: simple_expr . DOT label_longident LESSMINUS fun_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  match overwrite_ UIdent with false . lident <- UIdent with false -> UIdent [@@ and ] let false = UIdent
                                     ^
  ```


### Item `fun_expr: simple_expr . DOT label_longident LESSMINUS FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)` (in 1 error)

- Derivation (1 occurrence):
  ```
  fun_expr: simple_expr . DOT label_longident LESSMINUS FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
  ```
  Sample sentence (implementation):
  ```ocaml
  match overwrite_ UIdent with false . lident <- function false -> UIdent with false -> UIdent [@@ and ] let false = UIdent
                                     ^
  ```


### Item `fun_expr: simple_expr . DOT label_longident LESSMINUS STACK FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)` (in 1 error)

- Derivation (1 occurrence):
  ```
  fun_expr: simple_expr . DOT label_longident LESSMINUS STACK FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
  ```
  Sample sentence (implementation):
  ```ocaml
  match overwrite_ UIdent with false . lident <- stack_ function false -> UIdent with false -> UIdent [@@ and ] let false = UIdent
                                     ^
  ```


### Item `fun_expr: simple_expr . DOT LPAREN seq_expr RPAREN LESSMINUS fun_expr` (in 1 error)

- Derivation (1 occurrence):
  ```
  fun_expr: simple_expr . DOT LPAREN seq_expr RPAREN LESSMINUS fun_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  match overwrite_ UIdent with false . ( UIdent ) <- UIdent with false -> UIdent [@@ and ] let false = UIdent
                                     ^
  ```


### Item `fun_expr: simple_expr . DOT LPAREN seq_expr RPAREN LESSMINUS FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)` (in 1 error)

- Derivation (1 occurrence):
  ```
  fun_expr: simple_expr . DOT LPAREN seq_expr RPAREN LESSMINUS FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
  ```
  Sample sentence (implementation):
  ```ocaml
  match overwrite_ UIdent with false . ( UIdent ) <- function false -> UIdent with false -> UIdent [@@ and ] let false = UIdent
                                     ^
  ```


### Item `fun_expr: simple_expr . DOT LPAREN seq_expr RPAREN LESSMINUS STACK FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)` (in 1 error)

- Derivation (1 occurrence):
  ```
  fun_expr: simple_expr . DOT LPAREN seq_expr RPAREN LESSMINUS STACK FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
  ```
  Sample sentence (implementation):
  ```ocaml
  match overwrite_ UIdent with false . ( UIdent ) <- stack_ function false -> UIdent with false -> UIdent [@@ and ] let false = UIdent
                                     ^
  ```


### Item `fun_expr: simple_expr . DOT LBRACE seq_expr RBRACE LESSMINUS fun_expr` (in 1 error)

- Derivation (1 occurrence):
  ```
  fun_expr: simple_expr . DOT LBRACE seq_expr RBRACE LESSMINUS fun_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  match overwrite_ UIdent with false . { UIdent } <- UIdent with false -> UIdent [@@ and ] let false = UIdent
                                     ^
  ```


### Item `fun_expr: simple_expr . DOT LBRACE seq_expr RBRACE LESSMINUS FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)` (in 1 error)

- Derivation (1 occurrence):
  ```
  fun_expr: simple_expr . DOT LBRACE seq_expr RBRACE LESSMINUS FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
  ```
  Sample sentence (implementation):
  ```ocaml
  match overwrite_ UIdent with false . { UIdent } <- function false -> UIdent with false -> UIdent [@@ and ] let false = UIdent
                                     ^
  ```


### Item `fun_expr: simple_expr . DOT LBRACE seq_expr RBRACE LESSMINUS STACK FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)` (in 1 error)

- Derivation (1 occurrence):
  ```
  fun_expr: simple_expr . DOT LBRACE seq_expr RBRACE LESSMINUS STACK FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
  ```
  Sample sentence (implementation):
  ```ocaml
  match overwrite_ UIdent with false . { UIdent } <- stack_ function false -> UIdent with false -> UIdent [@@ and ] let false = UIdent
                                     ^
  ```


### Item `fun_expr: simple_expr . DOT LBRACKET seq_expr RBRACKET LESSMINUS fun_expr` (in 1 error)

- Derivation (1 occurrence):
  ```
  fun_expr: simple_expr . DOT LBRACKET seq_expr RBRACKET LESSMINUS fun_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  match overwrite_ UIdent with false . [ UIdent ] <- UIdent with false -> UIdent [@@ and ] let false = UIdent
                                     ^
  ```


### Item `fun_expr: simple_expr . DOT LBRACKET seq_expr RBRACKET LESSMINUS FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)` (in 1 error)

- Derivation (1 occurrence):
  ```
  fun_expr: simple_expr . DOT LBRACKET seq_expr RBRACKET LESSMINUS FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
  ```
  Sample sentence (implementation):
  ```ocaml
  match overwrite_ UIdent with false . [ UIdent ] <- function false -> UIdent with false -> UIdent [@@ and ] let false = UIdent
                                     ^
  ```


### Item `fun_expr: simple_expr . DOT LBRACKET seq_expr RBRACKET LESSMINUS STACK FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)` (in 1 error)

- Derivation (1 occurrence):
  ```
  fun_expr: simple_expr . DOT LBRACKET seq_expr RBRACKET LESSMINUS STACK FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
  ```
  Sample sentence (implementation):
  ```ocaml
  match overwrite_ UIdent with false . [ UIdent ] <- stack_ function false -> UIdent with false -> UIdent [@@ and ] let false = UIdent
                                     ^
  ```


### Item `fun_expr: simple_expr . DOT mod_longident DOTOP LPAREN separated_or_terminated_nonempty_list(SEMI,expr) RPAREN LESSMINUS fun_expr` (in 1 error)

- Derivation (1 occurrence):
  ```
  fun_expr: simple_expr . DOT mod_longident DOTOP LPAREN separated_or_terminated_nonempty_list(SEMI,expr) RPAREN LESSMINUS fun_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  match overwrite_ UIdent with false . UIdent .+ ( UIdent ) <- UIdent with false -> UIdent [@@ and ] let false = UIdent
                                     ^
  ```


### Item `fun_expr: simple_expr . DOT mod_longident DOTOP LPAREN separated_or_terminated_nonempty_list(SEMI,expr) RPAREN LESSMINUS FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)` (in 1 error)

- Derivation (1 occurrence):
  ```
  fun_expr: simple_expr . DOT mod_longident DOTOP LPAREN separated_or_terminated_nonempty_list(SEMI,expr) RPAREN LESSMINUS FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
  ```
  Sample sentence (implementation):
  ```ocaml
  match overwrite_ UIdent with false . UIdent .+ ( UIdent ) <- function false -> UIdent with false -> UIdent [@@ and ] let false = UIdent
                                     ^
  ```


### Item `fun_expr: simple_expr . DOT mod_longident DOTOP LPAREN separated_or_terminated_nonempty_list(SEMI,expr) RPAREN LESSMINUS STACK FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)` (in 1 error)

- Derivation (1 occurrence):
  ```
  fun_expr: simple_expr . DOT mod_longident DOTOP LPAREN separated_or_terminated_nonempty_list(SEMI,expr) RPAREN LESSMINUS STACK FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
  ```
  Sample sentence (implementation):
  ```ocaml
  match overwrite_ UIdent with false . UIdent .+ ( UIdent ) <- stack_ function false -> UIdent with false -> UIdent [@@ and ] let false = UIdent
                                     ^
  ```


### Item `fun_expr: simple_expr . DOT mod_longident DOTOP LBRACE separated_or_terminated_nonempty_list(SEMI,expr) RBRACE LESSMINUS fun_expr` (in 1 error)

- Derivation (1 occurrence):
  ```
  fun_expr: simple_expr . DOT mod_longident DOTOP LBRACE separated_or_terminated_nonempty_list(SEMI,expr) RBRACE LESSMINUS fun_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  match overwrite_ UIdent with false . UIdent .+ { UIdent } <- UIdent with false -> UIdent [@@ and ] let false = UIdent
                                     ^
  ```


### Item `fun_expr: simple_expr . DOT mod_longident DOTOP LBRACE separated_or_terminated_nonempty_list(SEMI,expr) RBRACE LESSMINUS FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)` (in 1 error)

- Derivation (1 occurrence):
  ```
  fun_expr: simple_expr . DOT mod_longident DOTOP LBRACE separated_or_terminated_nonempty_list(SEMI,expr) RBRACE LESSMINUS FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
  ```
  Sample sentence (implementation):
  ```ocaml
  match overwrite_ UIdent with false . UIdent .+ { UIdent } <- function false -> UIdent with false -> UIdent [@@ and ] let false = UIdent
                                     ^
  ```


### Item `fun_expr: simple_expr . DOT mod_longident DOTOP LBRACE separated_or_terminated_nonempty_list(SEMI,expr) RBRACE LESSMINUS STACK FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)` (in 1 error)

- Derivation (1 occurrence):
  ```
  fun_expr: simple_expr . DOT mod_longident DOTOP LBRACE separated_or_terminated_nonempty_list(SEMI,expr) RBRACE LESSMINUS STACK FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
  ```
  Sample sentence (implementation):
  ```ocaml
  match overwrite_ UIdent with false . UIdent .+ { UIdent } <- stack_ function false -> UIdent with false -> UIdent [@@ and ] let false = UIdent
                                     ^
  ```


### Item `fun_expr: simple_expr . DOT mod_longident DOTOP LBRACKET separated_or_terminated_nonempty_list(SEMI,expr) RBRACKET LESSMINUS fun_expr` (in 1 error)

- Derivation (1 occurrence):
  ```
  fun_expr: simple_expr . DOT mod_longident DOTOP LBRACKET separated_or_terminated_nonempty_list(SEMI,expr) RBRACKET LESSMINUS fun_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  match overwrite_ UIdent with false . UIdent .+ [ UIdent ] <- UIdent with false -> UIdent [@@ and ] let false = UIdent
                                     ^
  ```


### Item `fun_expr: simple_expr . DOT mod_longident DOTOP LBRACKET separated_or_terminated_nonempty_list(SEMI,expr) RBRACKET LESSMINUS FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)` (in 1 error)

- Derivation (1 occurrence):
  ```
  fun_expr: simple_expr . DOT mod_longident DOTOP LBRACKET separated_or_terminated_nonempty_list(SEMI,expr) RBRACKET LESSMINUS FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
  ```
  Sample sentence (implementation):
  ```ocaml
  match overwrite_ UIdent with false . UIdent .+ [ UIdent ] <- function false -> UIdent with false -> UIdent [@@ and ] let false = UIdent
                                     ^
  ```


### Item `fun_expr: simple_expr . DOT mod_longident DOTOP LBRACKET separated_or_terminated_nonempty_list(SEMI,expr) RBRACKET LESSMINUS STACK FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)` (in 1 error)

- Derivation (1 occurrence):
  ```
  fun_expr: simple_expr . DOT mod_longident DOTOP LBRACKET separated_or_terminated_nonempty_list(SEMI,expr) RBRACKET LESSMINUS STACK FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
  ```
  Sample sentence (implementation):
  ```ocaml
  match overwrite_ UIdent with false . UIdent .+ [ UIdent ] <- stack_ function false -> UIdent with false -> UIdent [@@ and ] let false = UIdent
                                     ^
  ```


### Item `payload: QUESTION pattern . WHEN seq_expr` (in 1 error)

- Derivation (1 occurrence):
  ```
  payload: QUESTION pattern . WHEN seq_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  [@@@ and ?# lident when UIdent ] let false = UIdent
                     ^^^^
  ```


### Item `reversed_labeled_tuple_body: reversed_labeled_tuple_body COMMA . FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)` (in 1 error)

- Derivation (1 occurrence):
  ```
  reversed_labeled_tuple_body: reversed_labeled_tuple_body COMMA . FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
  ```
  Sample sentence (implementation):
  ```ocaml
  match overwrite_ UIdent with UIdent , UIdent , function false -> UIdent with false -> UIdent [@@ and ] let false = UIdent
                                                 ^^^^^^^^
  ```


### Item `reversed_labeled_tuple_body: reversed_labeled_tuple_body COMMA . STACK FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)` (in 1 error)

- Derivation (1 occurrence):
  ```
  reversed_labeled_tuple_body: reversed_labeled_tuple_body COMMA . STACK FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
  ```
  Sample sentence (implementation):
  ```ocaml
  match overwrite_ UIdent with UIdent , UIdent , stack_ function false -> UIdent with false -> UIdent [@@ and ] let false = UIdent
                                                 ^^^^^^
  ```


### Item `reversed_labeled_tuple_body: fun_expr . COMMA FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)` (in 1 error)

- Derivation (1 occurrence):
  ```
  reversed_labeled_tuple_body: fun_expr . COMMA FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
  ```
  Sample sentence (implementation):
  ```ocaml
  #{ lident = unique_ UIdent ; UIdent , function false -> UIdent } let false = UIdent
                                      ^
  ```


### Item `reversed_labeled_tuple_body: fun_expr . COMMA STACK FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)` (in 1 error)

- Derivation (1 occurrence):
  ```
  reversed_labeled_tuple_body: fun_expr . COMMA STACK FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
  ```
  Sample sentence (implementation):
  ```ocaml
  #{ lident = unique_ UIdent ; UIdent , stack_ function false -> UIdent } let false = UIdent
                                      ^
  ```


### Item `reversed_labeled_tuple_body: LABEL simple_expr COMMA . FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)` (in 1 error)

- Derivation (1 occurrence):
  ```
  reversed_labeled_tuple_body: LABEL simple_expr COMMA . FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
  ```
  Sample sentence (implementation):
  ```ocaml
  match overwrite_ UIdent with ~label: #1.0 , function false -> UIdent with false -> UIdent [@@ and ] let false = UIdent
                                              ^^^^^^^^
  ```


### Item `reversed_labeled_tuple_body: LABEL simple_expr COMMA . STACK FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)` (in 1 error)

- Derivation (1 occurrence):
  ```
  reversed_labeled_tuple_body: LABEL simple_expr COMMA . STACK FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
  ```
  Sample sentence (implementation):
  ```ocaml
  match overwrite_ UIdent with ~label: #1.0 , stack_ function false -> UIdent with false -> UIdent [@@ and ] let false = UIdent
                                              ^^^^^^
  ```


### Item `reversed_labeled_tuple_body: TILDE LIDENT COMMA . FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)` (in 1 error)

- Derivation (1 occurrence):
  ```
  reversed_labeled_tuple_body: TILDE LIDENT COMMA . FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
  ```
  Sample sentence (implementation):
  ```ocaml
  match overwrite_ UIdent with ~ lident , function false -> UIdent with false -> UIdent [@@ and ] let false = UIdent
                                          ^^^^^^^^
  ```


### Item `reversed_labeled_tuple_body: TILDE LIDENT COMMA . STACK FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)` (in 1 error)

- Derivation (1 occurrence):
  ```
  reversed_labeled_tuple_body: TILDE LIDENT COMMA . STACK FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
  ```
  Sample sentence (implementation):
  ```ocaml
  match overwrite_ UIdent with ~ lident , stack_ function false -> UIdent with false -> UIdent [@@ and ] let false = UIdent
                                          ^^^^^^
  ```

## Error: Syntax error: ']' expected

### Item `fun_expr: OVERWRITE ext list(attribute) seq_expr . WITH fun_expr` (in 2534 errors)

- Derivation (2534 occurrences):
  ```
  fun_expr: OVERWRITE ext list(attribute) seq_expr . WITH fun_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  [ overwrite_ UIdent with UIdent ] let false = UIdent
                      ^^^^
  ```


### Item `fun_expr: OVERWRITE ext list(attribute) seq_expr . WITH FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)` (in 988 errors)

- Derivation (988 occurrences):
  ```
  fun_expr: OVERWRITE ext list(attribute) seq_expr . WITH FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
  ```
  Sample sentence (implementation):
  ```ocaml
  [ overwrite_ UIdent with function false -> UIdent ] let false = UIdent
                      ^^^^
  ```


### Item `fun_expr: OVERWRITE ext list(attribute) seq_expr . WITH STACK FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)` (in 988 errors)

- Derivation (988 occurrences):
  ```
  fun_expr: OVERWRITE ext list(attribute) seq_expr . WITH STACK FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
  ```
  Sample sentence (implementation):
  ```ocaml
  [ overwrite_ UIdent with stack_ function false -> UIdent ] let false = UIdent
                      ^^^^
  ```


### Item `seq_expr: . fun_seq_expr` (in 828 errors)

- Derivation (4 occurrences):
  ```
  fun_expr: ONCE . seq_expr
    seq_expr: . fun_seq_expr
      fun_seq_expr: . fun_expr
        fun_expr: . reversed_labeled_tuple_body
          reversed_labeled_tuple_body: . STACK FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case) COMMA STACK FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
  ```
  Sample sentence (implementation):
  ```ocaml
  [ once_ stack_ function false -> . , stack_ function false -> UIdent ] let false = UIdent
          ^^^^^^
  ```
- Derivation (4 occurrences):
  ```
  fun_expr: UNIQUE . seq_expr
    seq_expr: . fun_seq_expr
      fun_seq_expr: . fun_expr
        fun_expr: . reversed_labeled_tuple_body
          reversed_labeled_tuple_body: . STACK FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case) COMMA STACK FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
  ```
  Sample sentence (implementation):
  ```ocaml
  [ unique_ stack_ function false -> . , stack_ function false -> UIdent ] let false = UIdent
            ^^^^^^
  ```
- Derivation (4 occurrences):
  ```
  fun_expr: ONCE . seq_expr
    seq_expr: . fun_seq_expr
      fun_seq_expr: . fun_expr
        fun_expr: . reversed_labeled_tuple_body
          reversed_labeled_tuple_body: . STACK FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case) COMMA FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
  ```
  Sample sentence (implementation):
  ```ocaml
  [ once_ stack_ function false -> . , function false -> UIdent ] let false = UIdent
          ^^^^^^
  ```
- Derivation (4 occurrences):
  ```
  fun_expr: UNIQUE . seq_expr
    seq_expr: . fun_seq_expr
      fun_seq_expr: . fun_expr
        fun_expr: . reversed_labeled_tuple_body
          reversed_labeled_tuple_body: . STACK FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case) COMMA FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
  ```
  Sample sentence (implementation):
  ```ocaml
  [ unique_ stack_ function false -> . , function false -> UIdent ] let false = UIdent
            ^^^^^^
  ```
- Derivation (4 occurrences):
  ```
  fun_expr: ONCE . seq_expr
    seq_expr: . fun_seq_expr
      fun_seq_expr: . fun_expr
        fun_expr: . reversed_labeled_tuple_body
          reversed_labeled_tuple_body: . FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case) COMMA STACK FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
  ```
  Sample sentence (implementation):
  ```ocaml
  [ once_ function false -> . , stack_ function false -> UIdent ] let false = UIdent
          ^^^^^^^^
  ```
- Derivation (4 occurrences):
  ```
  fun_expr: UNIQUE . seq_expr
    seq_expr: . fun_seq_expr
      fun_seq_expr: . fun_expr
        fun_expr: . reversed_labeled_tuple_body
          reversed_labeled_tuple_body: . FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case) COMMA STACK FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
  ```
  Sample sentence (implementation):
  ```ocaml
  [ unique_ function false -> . , stack_ function false -> UIdent ] let false = UIdent
            ^^^^^^^^
  ```
- Derivation (4 occurrences):
  ```
  fun_expr: ONCE . seq_expr
    seq_expr: . fun_seq_expr
      fun_seq_expr: . fun_expr
        fun_expr: . reversed_labeled_tuple_body
          reversed_labeled_tuple_body: . FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case) COMMA FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
  ```
  Sample sentence (implementation):
  ```ocaml
  [ once_ function false -> . , function false -> UIdent ] let false = UIdent
          ^^^^^^^^
  ```
- Derivation (4 occurrences):
  ```
  fun_expr: UNIQUE . seq_expr
    seq_expr: . fun_seq_expr
      fun_seq_expr: . fun_expr
        fun_expr: . reversed_labeled_tuple_body
          reversed_labeled_tuple_body: . FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case) COMMA FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
  ```
  Sample sentence (implementation):
  ```ocaml
  [ unique_ function false -> . , function false -> UIdent ] let false = UIdent
            ^^^^^^^^
  ```
- Derivation (4 occurrences):
  ```
  fun_expr: ONCE . seq_expr
    seq_expr: . fun_seq_expr
      fun_seq_expr: . fun_expr
        fun_expr: . let_bindings(ext) IN seq_expr
          let_bindings(ext): . LET ext list(attribute) mutable_flag rec_flag let_binding_body list(post_item_attribute)
  ```
  Sample sentence (implementation):
  ```ocaml
  [ once_ let false = UIdent in UIdent ] let false = UIdent
          ^^^
  ```
- Derivation (4 occurrences):
  ```
  fun_expr: UNIQUE . seq_expr
    seq_expr: . fun_seq_expr
      fun_seq_expr: . fun_expr
        fun_expr: . let_bindings(ext) IN seq_expr
          let_bindings(ext): . LET ext list(attribute) mutable_flag rec_flag let_binding_body list(post_item_attribute)
  ```
  Sample sentence (implementation):
  ```ocaml
  [ unique_ let false = UIdent in UIdent ] let false = UIdent
            ^^^
  ```
- Derivation (4 occurrences):
  ```
  fun_expr: ONCE . seq_expr
    seq_expr: . fun_seq_expr
      fun_seq_expr: . fun_expr
        fun_expr: . LETOP letop_bindings IN seq_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  [ once_ let* lident in UIdent ] let false = UIdent
          ^^^^
  ```
- Derivation (4 occurrences):
  ```
  fun_expr: UNIQUE . seq_expr
    seq_expr: . fun_seq_expr
      fun_seq_expr: . fun_expr
        fun_expr: . LETOP letop_bindings IN seq_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  [ unique_ let* lident in UIdent ] let false = UIdent
            ^^^^
  ```
- Derivation (4 occurrences):
  ```
  fun_expr: ONCE . seq_expr
    seq_expr: . fun_seq_expr
      fun_seq_expr: . fun_expr
        fun_expr: . IF ext list(attribute) seq_expr THEN STACK FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
  ```
  Sample sentence (implementation):
  ```ocaml
  [ once_ if UIdent then stack_ function false -> UIdent ] let false = UIdent
          ^^
  ```
- Derivation (4 occurrences):
  ```
  fun_expr: UNIQUE . seq_expr
    seq_expr: . fun_seq_expr
      fun_seq_expr: . fun_expr
        fun_expr: . IF ext list(attribute) seq_expr THEN STACK FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
  ```
  Sample sentence (implementation):
  ```ocaml
  [ unique_ if UIdent then stack_ function false -> UIdent ] let false = UIdent
            ^^
  ```
- Derivation (4 occurrences):
  ```
  fun_expr: ONCE . seq_expr
    seq_expr: . fun_seq_expr
      fun_seq_expr: . fun_expr
        fun_expr: . IF ext list(attribute) seq_expr THEN FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
  ```
  Sample sentence (implementation):
  ```ocaml
  [ once_ if UIdent then function false -> UIdent ] let false = UIdent
          ^^
  ```
- Derivation (4 occurrences):
  ```
  fun_expr: UNIQUE . seq_expr
    seq_expr: . fun_seq_expr
      fun_seq_expr: . fun_expr
        fun_expr: . IF ext list(attribute) seq_expr THEN FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
  ```
  Sample sentence (implementation):
  ```ocaml
  [ unique_ if UIdent then function false -> UIdent ] let false = UIdent
            ^^
  ```
- Derivation (4 occurrences):
  ```
  fun_expr: ONCE . seq_expr
    seq_expr: . fun_seq_expr
      fun_seq_expr: . fun_expr
        fun_expr: . IF ext list(attribute) seq_expr THEN STACK FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case) ELSE STACK FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
  ```
  Sample sentence (implementation):
  ```ocaml
  [ once_ if UIdent then stack_ function false -> UIdent else stack_ function false -> UIdent ] let false = UIdent
          ^^
  ```
- Derivation (4 occurrences):
  ```
  fun_expr: UNIQUE . seq_expr
    seq_expr: . fun_seq_expr
      fun_seq_expr: . fun_expr
        fun_expr: . IF ext list(attribute) seq_expr THEN STACK FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case) ELSE STACK FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
  ```
  Sample sentence (implementation):
  ```ocaml
  [ unique_ if UIdent then stack_ function false -> UIdent else stack_ function false -> UIdent ] let false = UIdent
            ^^
  ```
- Derivation (4 occurrences):
  ```
  fun_expr: ONCE . seq_expr
    seq_expr: . fun_seq_expr
      fun_seq_expr: . fun_expr
        fun_expr: . IF ext list(attribute) seq_expr THEN STACK FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case) ELSE FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
  ```
  Sample sentence (implementation):
  ```ocaml
  [ once_ if UIdent then stack_ function false -> UIdent else function false -> UIdent ] let false = UIdent
          ^^
  ```
- Derivation (4 occurrences):
  ```
  fun_expr: UNIQUE . seq_expr
    seq_expr: . fun_seq_expr
      fun_seq_expr: . fun_expr
        fun_expr: . IF ext list(attribute) seq_expr THEN STACK FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case) ELSE FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
  ```
  Sample sentence (implementation):
  ```ocaml
  [ unique_ if UIdent then stack_ function false -> UIdent else function false -> UIdent ] let false = UIdent
            ^^
  ```
- Derivation (4 occurrences):
  ```
  fun_expr: ONCE . seq_expr
    seq_expr: . fun_seq_expr
      fun_seq_expr: . fun_expr
        fun_expr: . IF ext list(attribute) seq_expr THEN FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case) ELSE STACK FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
  ```
  Sample sentence (implementation):
  ```ocaml
  [ once_ if UIdent then function false -> UIdent else stack_ function false -> UIdent ] let false = UIdent
          ^^
  ```
- ...


### Item `fun_seq_expr: fun_expr SEMI . PERCENT attr_id seq_expr` (in 250 errors)

- Derivation (250 occurrences):
  ```
  fun_seq_expr: fun_expr SEMI . PERCENT attr_id seq_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  [ once_ UIdent ; % and UIdent ] let false = UIdent
                   ^
  ```


### Item `seq_expr: . FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)` (in 222 errors)

- Derivation (111 occurrences):
  ```
  fun_expr: ONCE . seq_expr
    seq_expr: . FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
  ```
  Sample sentence (implementation):
  ```ocaml
  [ once_ function false -> UIdent ] let false = UIdent
          ^^^^^^^^
  ```
- Derivation (111 occurrences):
  ```
  fun_expr: UNIQUE . seq_expr
    seq_expr: . FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
  ```
  Sample sentence (implementation):
  ```ocaml
  [ unique_ function false -> UIdent ] let false = UIdent
            ^^^^^^^^
  ```


### Item `comprehension_clause: . FOR reversed_separated_nonempty_llist(AND,comprehension_clause_binding)` (in 168 errors)

- Derivation (168 occurrences):
  ```
  simple_expr: LBRACKET fun_expr . reversed_nonempty_llist(comprehension_clause) RBRACKET
    reversed_nonempty_llist(comprehension_clause): . comprehension_clause
      comprehension_clause: . FOR reversed_separated_nonempty_llist(AND,comprehension_clause_binding)
  ```
  Sample sentence (implementation):
  ```ocaml
  [ once_ UIdent ; UIdent for false in UIdent ] let false = UIdent
                          ^^^
  ```


### Item `attribute: . LBRACKETAT attr_id attr_payload RBRACKET` (in 121 errors)

- Derivation (121 occurrences):
  ```
  fun_expr: fun_expr . attribute
    attribute: . LBRACKETAT attr_id attr_payload RBRACKET
  ```
  Sample sentence (implementation):
  ```ocaml
  false . [ once_ UIdent ; [@ and ] ] let false = UIdent
                           ^^
  ```


### Item `fun_expr: fun_expr . INFIXOP4 fun_expr` (in 108 errors)

- Derivation (108 occurrences):
  ```
  fun_expr: fun_expr . INFIXOP4 fun_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  [ once_ UIdent ; ** UIdent ] let false = UIdent
                   ^^
  ```


### Item `reversed_labeled_tuple_body: fun_expr . COMMA fun_expr` (in 99 errors)

- Derivation (99 occurrences):
  ```
  reversed_labeled_tuple_body: fun_expr . COMMA fun_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  [ unique_ UIdent ; , UIdent for false in UIdent ] let false = UIdent
                     ^
  ```


### Item `fun_expr: fun_expr . INFIXOP3 fun_expr` (in 98 errors)

- Derivation (98 occurrences):
  ```
  fun_expr: fun_expr . INFIXOP3 fun_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  [ once_ UIdent ; land UIdent ] let false = UIdent
                   ^^^^
  ```


### Item `fun_expr: fun_expr . COLONCOLON fun_expr` (in 86 errors)

- Derivation (86 occurrences):
  ```
  fun_expr: fun_expr . COLONCOLON fun_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  [ once_ UIdent ; :: UIdent ] let false = UIdent
                   ^^
  ```


### Item `fun_expr: fun_expr . COLONEQUAL fun_expr` (in 76 errors)

- Derivation (76 occurrences):
  ```
  fun_expr: fun_expr . COLONEQUAL fun_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  [ once_ UIdent ; := UIdent ] let false = UIdent
                   ^^
  ```


### Item `fun_expr: fun_expr . EQUAL fun_expr` (in 70 errors)

- Derivation (70 occurrences):
  ```
  fun_expr: fun_expr . EQUAL fun_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  [ once_ UIdent ; = UIdent ] let false = UIdent
                   ^
  ```


### Item `fun_expr: fun_expr . AMPERAMPER fun_expr` (in 70 errors)

- Derivation (70 occurrences):
  ```
  fun_expr: fun_expr . AMPERAMPER fun_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  [ once_ UIdent ; && UIdent ] let false = UIdent
                   ^^
  ```


### Item `fun_expr: fun_expr . BARBAR fun_expr` (in 66 errors)

- Derivation (66 occurrences):
  ```
  fun_expr: fun_expr . BARBAR fun_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  [ once_ UIdent ; || UIdent ] let false = UIdent
                   ^^
  ```


### Item `fun_expr: LIDENT . LESSMINUS FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)` (in 30 errors)

- Derivation (30 occurrences):
  ```
  fun_expr: LIDENT . LESSMINUS FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
  ```
  Sample sentence (implementation):
  ```ocaml
  [ unique_ lident <- function false -> UIdent ] let false = UIdent
                   ^^
  ```


### Item `fun_expr: LIDENT . LESSMINUS STACK FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)` (in 30 errors)

- Derivation (30 occurrences):
  ```
  fun_expr: LIDENT . LESSMINUS STACK FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
  ```
  Sample sentence (implementation):
  ```ocaml
  [ unique_ lident <- stack_ function false -> UIdent ] let false = UIdent
                   ^^
  ```


### Item `fun_expr: simple_expr DOT label_longident . LESSMINUS FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)` (in 30 errors)

- Derivation (30 occurrences):
  ```
  fun_expr: simple_expr DOT label_longident . LESSMINUS FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
  ```
  Sample sentence (implementation):
  ```ocaml
  [ unique_ false . lident <- function false -> UIdent ] let false = UIdent
                           ^^
  ```


### Item `fun_expr: simple_expr DOT label_longident . LESSMINUS STACK FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)` (in 30 errors)

- Derivation (30 occurrences):
  ```
  fun_expr: simple_expr DOT label_longident . LESSMINUS STACK FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
  ```
  Sample sentence (implementation):
  ```ocaml
  [ unique_ false . lident <- stack_ function false -> UIdent ] let false = UIdent
                           ^^
  ```


### Item `fun_expr: simple_expr DOT LPAREN seq_expr RPAREN . LESSMINUS FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)` (in 30 errors)

- Derivation (30 occurrences):
  ```
  fun_expr: simple_expr DOT LPAREN seq_expr RPAREN . LESSMINUS FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
  ```
  Sample sentence (implementation):
  ```ocaml
  [ unique_ false . ( UIdent ) <- function false -> UIdent ] let false = UIdent
                               ^^
  ```


### Item `fun_expr: simple_expr DOT LPAREN seq_expr RPAREN . LESSMINUS STACK FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)` (in 30 errors)

- Derivation (30 occurrences):
  ```
  fun_expr: simple_expr DOT LPAREN seq_expr RPAREN . LESSMINUS STACK FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
  ```
  Sample sentence (implementation):
  ```ocaml
  [ unique_ false . ( UIdent ) <- stack_ function false -> UIdent ] let false = UIdent
                               ^^
  ```


### Item `fun_expr: simple_expr DOT LBRACE seq_expr RBRACE . LESSMINUS FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)` (in 30 errors)

- Derivation (30 occurrences):
  ```
  fun_expr: simple_expr DOT LBRACE seq_expr RBRACE . LESSMINUS FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
  ```
  Sample sentence (implementation):
  ```ocaml
  [ unique_ false . { UIdent } <- function false -> UIdent ] let false = UIdent
                               ^^
  ```


### Item `fun_expr: simple_expr DOT LBRACE seq_expr RBRACE . LESSMINUS STACK FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)` (in 30 errors)

- Derivation (30 occurrences):
  ```
  fun_expr: simple_expr DOT LBRACE seq_expr RBRACE . LESSMINUS STACK FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
  ```
  Sample sentence (implementation):
  ```ocaml
  [ unique_ false . { UIdent } <- stack_ function false -> UIdent ] let false = UIdent
                               ^^
  ```


### Item `fun_expr: simple_expr DOT LBRACKET seq_expr RBRACKET . LESSMINUS FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)` (in 30 errors)

- Derivation (30 occurrences):
  ```
  fun_expr: simple_expr DOT LBRACKET seq_expr RBRACKET . LESSMINUS FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
  ```
  Sample sentence (implementation):
  ```ocaml
  [ unique_ false . [ UIdent ] <- function false -> UIdent ] let false = UIdent
                               ^^
  ```


### Item `fun_expr: simple_expr DOT LBRACKET seq_expr RBRACKET . LESSMINUS STACK FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)` (in 30 errors)

- Derivation (30 occurrences):
  ```
  fun_expr: simple_expr DOT LBRACKET seq_expr RBRACKET . LESSMINUS STACK FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
  ```
  Sample sentence (implementation):
  ```ocaml
  [ unique_ false . [ UIdent ] <- stack_ function false -> UIdent ] let false = UIdent
                               ^^
  ```


### Item `fun_expr: simple_expr DOTOP LPAREN separated_or_terminated_nonempty_list(SEMI,expr) RPAREN . LESSMINUS FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)` (in 30 errors)

- Derivation (30 occurrences):
  ```
  fun_expr: simple_expr DOTOP LPAREN separated_or_terminated_nonempty_list(SEMI,expr) RPAREN . LESSMINUS FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
  ```
  Sample sentence (implementation):
  ```ocaml
  [ unique_ UIdent .+ ( UIdent ) <- function false -> UIdent ] let false = UIdent
                                 ^^
  ```


### Item `fun_expr: simple_expr DOTOP LPAREN separated_or_terminated_nonempty_list(SEMI,expr) RPAREN . LESSMINUS STACK FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)` (in 30 errors)

- Derivation (30 occurrences):
  ```
  fun_expr: simple_expr DOTOP LPAREN separated_or_terminated_nonempty_list(SEMI,expr) RPAREN . LESSMINUS STACK FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
  ```
  Sample sentence (implementation):
  ```ocaml
  [ unique_ UIdent .+ ( UIdent ) <- stack_ function false -> UIdent ] let false = UIdent
                                 ^^
  ```


### Item `fun_expr: simple_expr DOT mod_longident DOTOP LPAREN separated_or_terminated_nonempty_list(SEMI,expr) RPAREN . LESSMINUS FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)` (in 30 errors)

- Derivation (30 occurrences):
  ```
  fun_expr: simple_expr DOT mod_longident DOTOP LPAREN separated_or_terminated_nonempty_list(SEMI,expr) RPAREN . LESSMINUS FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
  ```
  Sample sentence (implementation):
  ```ocaml
  [ unique_ false . UIdent .+ ( UIdent ) <- function false -> UIdent ] let false = UIdent
                                         ^^
  ```


### Item `fun_expr: simple_expr DOT mod_longident DOTOP LPAREN separated_or_terminated_nonempty_list(SEMI,expr) RPAREN . LESSMINUS STACK FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)` (in 30 errors)

- Derivation (30 occurrences):
  ```
  fun_expr: simple_expr DOT mod_longident DOTOP LPAREN separated_or_terminated_nonempty_list(SEMI,expr) RPAREN . LESSMINUS STACK FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
  ```
  Sample sentence (implementation):
  ```ocaml
  [ unique_ false . UIdent .+ ( UIdent ) <- stack_ function false -> UIdent ] let false = UIdent
                                         ^^
  ```


### Item `fun_expr: simple_expr DOTOP LBRACE separated_or_terminated_nonempty_list(SEMI,expr) RBRACE . LESSMINUS FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)` (in 30 errors)

- Derivation (30 occurrences):
  ```
  fun_expr: simple_expr DOTOP LBRACE separated_or_terminated_nonempty_list(SEMI,expr) RBRACE . LESSMINUS FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
  ```
  Sample sentence (implementation):
  ```ocaml
  [ unique_ UIdent .+ { UIdent } <- function false -> UIdent ] let false = UIdent
                                 ^^
  ```


### Item `fun_expr: simple_expr DOTOP LBRACE separated_or_terminated_nonempty_list(SEMI,expr) RBRACE . LESSMINUS STACK FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)` (in 30 errors)

- Derivation (30 occurrences):
  ```
  fun_expr: simple_expr DOTOP LBRACE separated_or_terminated_nonempty_list(SEMI,expr) RBRACE . LESSMINUS STACK FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
  ```
  Sample sentence (implementation):
  ```ocaml
  [ unique_ UIdent .+ { UIdent } <- stack_ function false -> UIdent ] let false = UIdent
                                 ^^
  ```


### Item `fun_expr: simple_expr DOT mod_longident DOTOP LBRACE separated_or_terminated_nonempty_list(SEMI,expr) RBRACE . LESSMINUS FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)` (in 30 errors)

- Derivation (30 occurrences):
  ```
  fun_expr: simple_expr DOT mod_longident DOTOP LBRACE separated_or_terminated_nonempty_list(SEMI,expr) RBRACE . LESSMINUS FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
  ```
  Sample sentence (implementation):
  ```ocaml
  [ unique_ false . UIdent .+ { UIdent } <- function false -> UIdent ] let false = UIdent
                                         ^^
  ```


### Item `fun_expr: simple_expr DOT mod_longident DOTOP LBRACE separated_or_terminated_nonempty_list(SEMI,expr) RBRACE . LESSMINUS STACK FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)` (in 30 errors)

- Derivation (30 occurrences):
  ```
  fun_expr: simple_expr DOT mod_longident DOTOP LBRACE separated_or_terminated_nonempty_list(SEMI,expr) RBRACE . LESSMINUS STACK FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
  ```
  Sample sentence (implementation):
  ```ocaml
  [ unique_ false . UIdent .+ { UIdent } <- stack_ function false -> UIdent ] let false = UIdent
                                         ^^
  ```


### Item `fun_expr: simple_expr DOTOP LBRACKET separated_or_terminated_nonempty_list(SEMI,expr) RBRACKET . LESSMINUS FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)` (in 30 errors)

- Derivation (30 occurrences):
  ```
  fun_expr: simple_expr DOTOP LBRACKET separated_or_terminated_nonempty_list(SEMI,expr) RBRACKET . LESSMINUS FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
  ```
  Sample sentence (implementation):
  ```ocaml
  [ unique_ UIdent .+ [ UIdent ] <- function false -> UIdent ] let false = UIdent
                                 ^^
  ```


### Item `fun_expr: simple_expr DOTOP LBRACKET separated_or_terminated_nonempty_list(SEMI,expr) RBRACKET . LESSMINUS STACK FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)` (in 30 errors)

- Derivation (30 occurrences):
  ```
  fun_expr: simple_expr DOTOP LBRACKET separated_or_terminated_nonempty_list(SEMI,expr) RBRACKET . LESSMINUS STACK FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
  ```
  Sample sentence (implementation):
  ```ocaml
  [ unique_ UIdent .+ [ UIdent ] <- stack_ function false -> UIdent ] let false = UIdent
                                 ^^
  ```


### Item `fun_expr: simple_expr DOT mod_longident DOTOP LBRACKET separated_or_terminated_nonempty_list(SEMI,expr) RBRACKET . LESSMINUS FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)` (in 30 errors)

- Derivation (30 occurrences):
  ```
  fun_expr: simple_expr DOT mod_longident DOTOP LBRACKET separated_or_terminated_nonempty_list(SEMI,expr) RBRACKET . LESSMINUS FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
  ```
  Sample sentence (implementation):
  ```ocaml
  [ unique_ false . UIdent .+ [ UIdent ] <- function false -> UIdent ] let false = UIdent
                                         ^^
  ```


### Item `fun_expr: simple_expr DOT mod_longident DOTOP LBRACKET separated_or_terminated_nonempty_list(SEMI,expr) RBRACKET . LESSMINUS STACK FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)` (in 30 errors)

- Derivation (30 occurrences):
  ```
  fun_expr: simple_expr DOT mod_longident DOTOP LBRACKET separated_or_terminated_nonempty_list(SEMI,expr) RBRACKET . LESSMINUS STACK FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
  ```
  Sample sentence (implementation):
  ```ocaml
  [ unique_ false . UIdent .+ [ UIdent ] <- stack_ function false -> UIdent ] let false = UIdent
                                         ^^
  ```


### Item `separated_or_terminated_nonempty_list(SEMI,expr): fun_expr . SEMI` (in 30 errors)

- Derivation (30 occurrences):
  ```
  separated_or_terminated_nonempty_list(SEMI,expr): fun_expr . SEMI
  ```
  Sample sentence (implementation):
  ```ocaml
  [ once_ UIdent ; ; ] let false = UIdent
                   ^
  ```


### Item `reversed_labeled_tuple_body: fun_expr . COMMA TILDE LPAREN LIDENT type_constraint RPAREN` (in 18 errors)

- Derivation (18 occurrences):
  ```
  reversed_labeled_tuple_body: fun_expr . COMMA TILDE LPAREN LIDENT type_constraint RPAREN
  ```
  Sample sentence (implementation):
  ```ocaml
  false . [ once_ UIdent ; , ~ ( lident :> {%hello|world|} ) ] let false = UIdent
                           ^
  ```


### Item `reversed_labeled_tuple_body: reversed_labeled_tuple_body . COMMA fun_expr` (in 14 errors)

- Derivation (14 occurrences):
  ```
  reversed_labeled_tuple_body: reversed_labeled_tuple_body . COMMA fun_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  [ UIdent , once_ UIdent ; , UIdent for false in UIdent ] let false = UIdent
                            ^
  ```


### Item `seq_expr: . STACK FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)` (in 12 errors)

- Derivation (6 occurrences):
  ```
  fun_expr: ONCE . seq_expr
    seq_expr: . STACK FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
  ```
  Sample sentence (implementation):
  ```ocaml
  [ once_ stack_ function false -> UIdent ] let false = UIdent
          ^^^^^^
  ```
- Derivation (6 occurrences):
  ```
  fun_expr: UNIQUE . seq_expr
    seq_expr: . STACK FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
  ```
  Sample sentence (implementation):
  ```ocaml
  [ unique_ stack_ function false -> UIdent ] let false = UIdent
            ^^^^^^
  ```


### Item `fun_seq_expr: fun_expr . SEMI` (in 10 errors)

- Derivation (10 occurrences):
  ```
  fun_seq_expr: fun_expr . SEMI
  ```
  Sample sentence (implementation):
  ```ocaml
  [ unique_ unique_ UIdent ; ; ] let false = UIdent
                             ^
  ```


### Item `fun_expr: LIDENT . LESSMINUS fun_expr` (in 8 errors)

- Derivation (8 occurrences):
  ```
  fun_expr: LIDENT . LESSMINUS fun_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  [ unique_ lident <- UIdent ] let false = UIdent
                   ^^
  ```


### Item `fun_expr: simple_expr DOT label_longident . LESSMINUS fun_expr` (in 8 errors)

- Derivation (8 occurrences):
  ```
  fun_expr: simple_expr DOT label_longident . LESSMINUS fun_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  [ unique_ false . lident <- UIdent ] let false = UIdent
                           ^^
  ```


### Item `fun_expr: simple_expr DOT LPAREN seq_expr RPAREN . LESSMINUS fun_expr` (in 8 errors)

- Derivation (8 occurrences):
  ```
  fun_expr: simple_expr DOT LPAREN seq_expr RPAREN . LESSMINUS fun_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  [ unique_ false . ( UIdent ) <- UIdent ] let false = UIdent
                               ^^
  ```


### Item `fun_expr: simple_expr DOT LBRACE seq_expr RBRACE . LESSMINUS fun_expr` (in 8 errors)

- Derivation (8 occurrences):
  ```
  fun_expr: simple_expr DOT LBRACE seq_expr RBRACE . LESSMINUS fun_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  [ unique_ false . { UIdent } <- UIdent ] let false = UIdent
                               ^^
  ```


### Item `fun_expr: simple_expr DOT LBRACKET seq_expr RBRACKET . LESSMINUS fun_expr` (in 8 errors)

- Derivation (8 occurrences):
  ```
  fun_expr: simple_expr DOT LBRACKET seq_expr RBRACKET . LESSMINUS fun_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  [ unique_ false . [ UIdent ] <- UIdent ] let false = UIdent
                               ^^
  ```


### Item `fun_expr: simple_expr DOTOP LPAREN separated_or_terminated_nonempty_list(SEMI,expr) RPAREN . LESSMINUS fun_expr` (in 8 errors)

- Derivation (8 occurrences):
  ```
  fun_expr: simple_expr DOTOP LPAREN separated_or_terminated_nonempty_list(SEMI,expr) RPAREN . LESSMINUS fun_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  [ unique_ UIdent .+ ( UIdent ) <- UIdent ] let false = UIdent
                                 ^^
  ```


### Item `fun_expr: simple_expr DOT mod_longident DOTOP LPAREN separated_or_terminated_nonempty_list(SEMI,expr) RPAREN . LESSMINUS fun_expr` (in 8 errors)

- Derivation (8 occurrences):
  ```
  fun_expr: simple_expr DOT mod_longident DOTOP LPAREN separated_or_terminated_nonempty_list(SEMI,expr) RPAREN . LESSMINUS fun_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  [ unique_ false . UIdent .+ ( UIdent ) <- UIdent ] let false = UIdent
                                         ^^
  ```


### Item `fun_expr: simple_expr DOTOP LBRACE separated_or_terminated_nonempty_list(SEMI,expr) RBRACE . LESSMINUS fun_expr` (in 8 errors)

- Derivation (8 occurrences):
  ```
  fun_expr: simple_expr DOTOP LBRACE separated_or_terminated_nonempty_list(SEMI,expr) RBRACE . LESSMINUS fun_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  [ unique_ UIdent .+ { UIdent } <- UIdent ] let false = UIdent
                                 ^^
  ```


### Item `fun_expr: simple_expr DOT mod_longident DOTOP LBRACE separated_or_terminated_nonempty_list(SEMI,expr) RBRACE . LESSMINUS fun_expr` (in 8 errors)

- Derivation (8 occurrences):
  ```
  fun_expr: simple_expr DOT mod_longident DOTOP LBRACE separated_or_terminated_nonempty_list(SEMI,expr) RBRACE . LESSMINUS fun_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  [ unique_ false . UIdent .+ { UIdent } <- UIdent ] let false = UIdent
                                         ^^
  ```


### Item `fun_expr: simple_expr DOTOP LBRACKET separated_or_terminated_nonempty_list(SEMI,expr) RBRACKET . LESSMINUS fun_expr` (in 8 errors)

- Derivation (8 occurrences):
  ```
  fun_expr: simple_expr DOTOP LBRACKET separated_or_terminated_nonempty_list(SEMI,expr) RBRACKET . LESSMINUS fun_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  [ unique_ UIdent .+ [ UIdent ] <- UIdent ] let false = UIdent
                                 ^^
  ```


### Item `fun_expr: simple_expr DOT mod_longident DOTOP LBRACKET separated_or_terminated_nonempty_list(SEMI,expr) RBRACKET . LESSMINUS fun_expr` (in 8 errors)

- Derivation (8 occurrences):
  ```
  fun_expr: simple_expr DOT mod_longident DOTOP LBRACKET separated_or_terminated_nonempty_list(SEMI,expr) RBRACKET . LESSMINUS fun_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  [ unique_ false . UIdent .+ [ UIdent ] <- UIdent ] let false = UIdent
                                         ^^
  ```

## Error: Syntax error: operator expected.

### Item `simple_expr: LPAREN . block_access reversed_llist(unboxed_access) RPAREN` (in 4751 errors)

- Derivation (2155 occurrences):
  ```
  simple_expr: LPAREN . block_access reversed_llist(unboxed_access) RPAREN
    block_access: . DOT LPAREN seq_expr RPAREN
  ```
  Sample sentence (implementation):
  ```ocaml
  ( . ( UIdent ) ) let false = UIdent
    ^
  ```
- Derivation (2126 occurrences):
  ```
  simple_expr: LPAREN . block_access reversed_llist(unboxed_access) RPAREN
    block_access: . DOT ident LPAREN seq_expr RPAREN
  ```
  Sample sentence (implementation):
  ```ocaml
  ( . lident ( UIdent ) ) let false = UIdent
    ^
  ```
- Derivation (470 occurrences):
  ```
  simple_expr: LPAREN . block_access reversed_llist(unboxed_access) RPAREN
    block_access: . DOT label_longident
  ```
  Sample sentence (implementation):
  ```ocaml
  ( . lident ) let false = UIdent
    ^
  ```

## Error: Syntax error: 'end' expected

### Item `fun_expr: OVERWRITE ext list(attribute) seq_expr . WITH STACK FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)` (in 768 errors)

- Derivation (768 occurrences):
  ```
  fun_expr: OVERWRITE ext list(attribute) seq_expr . WITH STACK FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
  ```
  Sample sentence (implementation):
  ```ocaml
  begin overwrite_ UIdent with stack_ function false -> UIdent end let false = UIdent
                          ^^^^
  ```


### Item `fun_expr: OVERWRITE ext list(attribute) seq_expr . WITH FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)` (in 764 errors)

- Derivation (764 occurrences):
  ```
  fun_expr: OVERWRITE ext list(attribute) seq_expr . WITH FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
  ```
  Sample sentence (implementation):
  ```ocaml
  begin overwrite_ UIdent with function false -> UIdent end let false = UIdent
                          ^^^^
  ```


### Item `fun_expr: OVERWRITE ext list(attribute) seq_expr . WITH fun_expr` (in 246 errors)

- Derivation (246 occurrences):
  ```
  fun_expr: OVERWRITE ext list(attribute) seq_expr . WITH fun_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  begin overwrite_ UIdent with UIdent end let false = UIdent
                          ^^^^
  ```


### Item `seq_expr: . FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)` (in 208 errors)

- Derivation (104 occurrences):
  ```
  fun_expr: ONCE . seq_expr
    seq_expr: . FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
  ```
  Sample sentence (implementation):
  ```ocaml
  include struct let false = once_ function false -> . % UIdent end let false = UIdent
                                   ^^^^^^^^
  ```
- Derivation (104 occurrences):
  ```
  fun_expr: UNIQUE . seq_expr
    seq_expr: . FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
  ```
  Sample sentence (implementation):
  ```ocaml
  include struct let false = unique_ function false -> . % UIdent end let false = UIdent
                                     ^^^^^^^^
  ```


### Item `attribute: . LBRACKETAT attr_id attr_payload RBRACKET` (in 104 errors)

- Derivation (104 occurrences):
  ```
  fun_expr: fun_expr . attribute
    attribute: . LBRACKETAT attr_id attr_payload RBRACKET
  ```
  Sample sentence (implementation):
  ```ocaml
  begin once_ UIdent ; [@ and ] end let false = UIdent
                       ^^
  ```


### Item `fun_seq_expr: fun_expr . SEMI` (in 104 errors)

- Derivation (104 occurrences):
  ```
  fun_seq_expr: fun_expr . SEMI
  ```
  Sample sentence (implementation):
  ```ocaml
  begin once_ UIdent ; ; end let false = UIdent
                       ^
  ```


### Item `fun_expr: fun_expr . INFIXOP3 fun_expr` (in 96 errors)

- Derivation (96 occurrences):
  ```
  fun_expr: fun_expr . INFIXOP3 fun_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  include struct let false = once_ UIdent ; land UIdent end let false = UIdent
                                            ^^^^
  ```


### Item `fun_expr: fun_expr . INFIXOP4 fun_expr` (in 96 errors)

- Derivation (96 occurrences):
  ```
  fun_expr: fun_expr . INFIXOP4 fun_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  include struct let false = once_ UIdent ; ** UIdent end let false = UIdent
                                            ^^
  ```


### Item `fun_expr: fun_expr . EQUAL fun_expr` (in 96 errors)

- Derivation (96 occurrences):
  ```
  fun_expr: fun_expr . EQUAL fun_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  include struct let false = once_ UIdent ; = UIdent end let false = UIdent
                                            ^
  ```


### Item `fun_expr: fun_expr . BARBAR fun_expr` (in 96 errors)

- Derivation (96 occurrences):
  ```
  fun_expr: fun_expr . BARBAR fun_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  include struct let false = once_ UIdent ; || UIdent end let false = UIdent
                                            ^^
  ```


### Item `fun_expr: fun_expr . AMPERAMPER fun_expr` (in 96 errors)

- Derivation (96 occurrences):
  ```
  fun_expr: fun_expr . AMPERAMPER fun_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  include struct let false = once_ UIdent ; && UIdent end let false = UIdent
                                            ^^
  ```


### Item `fun_expr: fun_expr . COLONEQUAL fun_expr` (in 96 errors)

- Derivation (96 occurrences):
  ```
  fun_expr: fun_expr . COLONEQUAL fun_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  include struct let false = once_ UIdent ; := UIdent end let false = UIdent
                                            ^^
  ```


### Item `fun_expr: fun_expr . COLONCOLON fun_expr` (in 96 errors)

- Derivation (96 occurrences):
  ```
  fun_expr: fun_expr . COLONCOLON fun_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  include struct let false = once_ UIdent ; :: UIdent end let false = UIdent
                                            ^^
  ```


### Item `reversed_labeled_tuple_body: fun_expr . COMMA fun_expr` (in 76 errors)

- Derivation (76 occurrences):
  ```
  reversed_labeled_tuple_body: fun_expr . COMMA fun_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  include struct ;; unique_ UIdent ; , UIdent let false = UIdent end let false = UIdent
                                     ^
  ```


### Item `atomic_type: . delimited_type` (in 26 errors)

- Derivation (26 occurrences):
  ```
  strict_function_or_labeled_tuple_type: nonempty_list(mode_legacy) . tuple_type at_mode_expr MINUSGREATER tuple_type
    tuple_type: . atomic_type
      atomic_type: . delimited_type
        delimited_type: . extension_type
          extension_type: . extension
            extension: . QUOTED_STRING_EXPR
  ```
  Sample sentence (implementation):
  ```ocaml
  include struct val lident : once_ {%hello|world|} @ lident -> {%hello|world|} end let false = UIdent
                                    ^^^^^^^^^^^^^^^
  ```


### Item `nonempty_list(mode_legacy): . LOCAL` (in 26 errors)

- Derivation (13 occurrences):
  ```
  nonempty_list(mode_legacy): ONCE . nonempty_list(mode_legacy)
    nonempty_list(mode_legacy): . LOCAL
  ```
  Sample sentence (implementation):
  ```ocaml
  include struct val lident : once_ local_ {%hello|world|} @ lident -> {%hello|world|} end let false = UIdent
                                    ^^^^^^
  ```
- Derivation (13 occurrences):
  ```
  nonempty_list(mode_legacy): UNIQUE . nonempty_list(mode_legacy)
    nonempty_list(mode_legacy): . LOCAL
  ```
  Sample sentence (implementation):
  ```ocaml
  include struct val lident : unique_ local_ {%hello|world|} @ lident -> {%hello|world|} end let false = UIdent
                                      ^^^^^^
  ```


### Item `reversed_labeled_tuple_body: fun_expr . COMMA TILDE LPAREN LIDENT type_constraint RPAREN` (in 24 errors)

- Derivation (24 occurrences):
  ```
  reversed_labeled_tuple_body: fun_expr . COMMA TILDE LPAREN LIDENT type_constraint RPAREN
  ```
  Sample sentence (implementation):
  ```ocaml
  begin once_ UIdent ; , ~ ( lident :> {%hello|world|} ) end let false = UIdent
                       ^
  ```


### Item `fun_expr: fun_expr . INFIXOP3 STACK FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)` (in 8 errors)

- Derivation (8 occurrences):
  ```
  fun_expr: fun_expr . INFIXOP3 STACK FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
  ```
  Sample sentence (implementation):
  ```ocaml
  begin once_ UIdent ; land stack_ function false -> UIdent end let false = UIdent
                       ^^^^
  ```


### Item `fun_expr: fun_expr . INFIXOP4 STACK FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)` (in 8 errors)

- Derivation (8 occurrences):
  ```
  fun_expr: fun_expr . INFIXOP4 STACK FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
  ```
  Sample sentence (implementation):
  ```ocaml
  begin once_ UIdent ; ** stack_ function false -> UIdent end let false = UIdent
                       ^^
  ```


### Item `fun_expr: fun_expr . EQUAL STACK FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)` (in 8 errors)

- Derivation (8 occurrences):
  ```
  fun_expr: fun_expr . EQUAL STACK FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
  ```
  Sample sentence (implementation):
  ```ocaml
  begin once_ UIdent ; = stack_ function false -> UIdent end let false = UIdent
                       ^
  ```


### Item `fun_expr: fun_expr . BARBAR STACK FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)` (in 8 errors)

- Derivation (8 occurrences):
  ```
  fun_expr: fun_expr . BARBAR STACK FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
  ```
  Sample sentence (implementation):
  ```ocaml
  begin once_ UIdent ; || stack_ function false -> UIdent end let false = UIdent
                       ^^
  ```


### Item `fun_expr: fun_expr . AMPERAMPER STACK FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)` (in 8 errors)

- Derivation (8 occurrences):
  ```
  fun_expr: fun_expr . AMPERAMPER STACK FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
  ```
  Sample sentence (implementation):
  ```ocaml
  begin once_ UIdent ; && stack_ function false -> UIdent end let false = UIdent
                       ^^
  ```


### Item `fun_expr: fun_expr . COLONEQUAL STACK FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)` (in 8 errors)

- Derivation (8 occurrences):
  ```
  fun_expr: fun_expr . COLONEQUAL STACK FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
  ```
  Sample sentence (implementation):
  ```ocaml
  begin once_ UIdent ; := stack_ function false -> UIdent end let false = UIdent
                       ^^
  ```


### Item `fun_expr: fun_expr . COLONCOLON STACK FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)` (in 8 errors)

- Derivation (8 occurrences):
  ```
  fun_expr: fun_expr . COLONCOLON STACK FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
  ```
  Sample sentence (implementation):
  ```ocaml
  begin once_ UIdent ; :: stack_ function false -> UIdent end let false = UIdent
                       ^^
  ```


### Item `reversed_labeled_tuple_body: fun_expr . COMMA STACK FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)` (in 4 errors)

- Derivation (4 occurrences):
  ```
  reversed_labeled_tuple_body: fun_expr . COMMA STACK FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
  ```
  Sample sentence (implementation):
  ```ocaml
  include struct unique_ UIdent ; , stack_ function false -> UIdent let false = UIdent end let false = UIdent
                                  ^
  ```

## Error: Syntax error: nonrec flag not expected.

### Item `generic_type_declaration(no_nonrec_flag,type_subst_kind): TYPE ext list(attribute) . NONREC type_parameters LIDENT option(jkind_constraint) COLONEQUAL nonempty_type_kind reversed_llist(preceded(CONSTRAINT,constrain)) list(post_item_attribute)` (in 1953 errors)

- Derivation (1953 occurrences):
  ```
  generic_type_declaration(no_nonrec_flag,type_subst_kind): TYPE ext list(attribute) . NONREC type_parameters LIDENT option(jkind_constraint) COLONEQUAL nonempty_type_kind reversed_llist(preceded(CONSTRAINT,constrain)) list(post_item_attribute)
  ```
  Sample sentence (interface):
  ```ocaml
  type nonrec lident := false
       ^^^^^^
  ```


### Item `structure_item: TYPE ext list(attribute) . NONREC type_parameters type_longident PLUSEQ private_flag reversed_bar_llist(extension_constructor) list(post_item_attribute)` (in 514 errors)

- Derivation (514 occurrences):
  ```
  structure_item: TYPE ext list(attribute) . NONREC type_parameters type_longident PLUSEQ private_flag reversed_bar_llist(extension_constructor) list(post_item_attribute)
  ```
  Sample sentence (implementation):
  ```ocaml
  type nonrec lident += false
       ^^^^^^
  ```


### Item `signature_item: TYPE ext list(attribute) . NONREC type_parameters type_longident PLUSEQ private_flag reversed_bar_llist(extension_constructor_declaration) list(post_item_attribute)` (in 82 errors)

- Derivation (82 occurrences):
  ```
  signature_item: TYPE ext list(attribute) . NONREC type_parameters type_longident PLUSEQ private_flag reversed_bar_llist(extension_constructor_declaration) list(post_item_attribute)
  ```
  Sample sentence (interface):
  ```ocaml
  type nonrec lident += false
       ^^^^^^
  ```

## Error: In this scoped type, variable 'lident is reserved for the local type lident.

### Item `alias_type: alias_type AS QUOTE . ident` (in 706 errors)

- Derivation (706 occurrences):
  ```
  alias_type: alias_type AS QUOTE . ident
    ident: . LIDENT
  ```
  Sample sentence (implementation):
  ```ocaml
  include struct let lident : type lident . {%hello|world|} as ' lident = UIdent end let false = UIdent
                                                                 ^^^^^^
  ```

## Error: Syntax error: '}' expected

### Item `fun_expr: OVERWRITE ext list(attribute) seq_expr . WITH fun_expr` (in 276 errors)

- Derivation (276 occurrences):
  ```
  fun_expr: OVERWRITE ext list(attribute) seq_expr . WITH fun_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  false . { overwrite_ UIdent with UIdent } let false = UIdent
                              ^^^^
  ```


### Item `fun_expr: OVERWRITE ext list(attribute) seq_expr . WITH FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)` (in 196 errors)

- Derivation (196 occurrences):
  ```
  fun_expr: OVERWRITE ext list(attribute) seq_expr . WITH FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
  ```
  Sample sentence (implementation):
  ```ocaml
  UIdent .+ { overwrite_ UIdent with function false -> UIdent } let false = UIdent
                                ^^^^
  ```


### Item `fun_expr: OVERWRITE ext list(attribute) seq_expr . WITH STACK FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)` (in 196 errors)

- Derivation (196 occurrences):
  ```
  fun_expr: OVERWRITE ext list(attribute) seq_expr . WITH STACK FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
  ```
  Sample sentence (implementation):
  ```ocaml
  UIdent .+ { overwrite_ UIdent with stack_ function false -> UIdent } let false = UIdent
                                ^^^^
  ```


### Item `fun_seq_expr: . fun_expr` (in 68 errors)

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
  UIdent .+ { once_ stack_ function false -> . , stack_ function false -> UIdent } let false = UIdent
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
  UIdent .+ { unique_ stack_ function false -> . , stack_ function false -> UIdent } let false = UIdent
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
  UIdent .+ { once_ stack_ function false -> . , function false -> UIdent } let false = UIdent
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
  UIdent .+ { unique_ stack_ function false -> . , function false -> UIdent } let false = UIdent
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
  UIdent .+ { once_ stack_ function false -> . , UIdent } let false = UIdent
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
  UIdent .+ { unique_ stack_ function false -> . , UIdent } let false = UIdent
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
  UIdent .+ { once_ function false -> . , stack_ function false -> UIdent } let false = UIdent
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
  UIdent .+ { unique_ function false -> . , stack_ function false -> UIdent } let false = UIdent
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
  UIdent .+ { once_ function false -> . , function false -> UIdent } let false = UIdent
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
  UIdent .+ { unique_ function false -> . , function false -> UIdent } let false = UIdent
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
  UIdent .+ { once_ function false -> . , UIdent } let false = UIdent
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
  UIdent .+ { unique_ function false -> . , UIdent } let false = UIdent
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
  UIdent .+ { once_ let false = UIdent in UIdent } let false = UIdent
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
  UIdent .+ { unique_ let false = UIdent in UIdent } let false = UIdent
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
  UIdent .+ { once_ exclave_ UIdent } let false = UIdent
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
  UIdent .+ { unique_ exclave_ UIdent } let false = UIdent
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
  UIdent .+ { once_ local_ UIdent } let false = UIdent
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
  UIdent .+ { unique_ local_ UIdent } let false = UIdent
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
  UIdent .+ { once_ let* lident in UIdent } let false = UIdent
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
  UIdent .+ { unique_ let* lident in UIdent } let false = UIdent
                      ^^^^
  ```
- Derivation (1 occurrence):
  ```
  fun_expr: ONCE . seq_expr
    seq_expr: . fun_seq_expr
      fun_seq_expr: . fun_expr
        fun_expr: . STACK constr_longident simple_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  UIdent .+ { once_ stack_ UIdent UIdent } let false = UIdent
                    ^^^^^^
  ```
- ...


### Item `seq_expr: . FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)` (in 38 errors)

- Derivation (19 occurrences):
  ```
  fun_expr: ONCE . seq_expr
    seq_expr: . FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
  ```
  Sample sentence (implementation):
  ```ocaml
  UIdent .+ { once_ function false -> UIdent } let false = UIdent
                    ^^^^^^^^
  ```
- Derivation (19 occurrences):
  ```
  fun_expr: UNIQUE . seq_expr
    seq_expr: . FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
  ```
  Sample sentence (implementation):
  ```ocaml
  UIdent .+ { unique_ function false -> UIdent } let false = UIdent
                      ^^^^^^^^
  ```


### Item `attribute: . LBRACKETAT attr_id attr_payload RBRACKET` (in 18 errors)

- Derivation (18 occurrences):
  ```
  fun_expr: fun_expr . attribute
    attribute: . LBRACKETAT attr_id attr_payload RBRACKET
  ```
  Sample sentence (implementation):
  ```ocaml
  false . { once_ UIdent ; [@ and ] } let false = UIdent
                           ^^
  ```


### Item `fun_expr: fun_expr . INFIXOP3 fun_expr` (in 18 errors)

- Derivation (18 occurrences):
  ```
  fun_expr: fun_expr . INFIXOP3 fun_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  false . { once_ UIdent ; land UIdent } let false = UIdent
                           ^^^^
  ```


### Item `fun_expr: fun_expr . INFIXOP4 fun_expr` (in 18 errors)

- Derivation (18 occurrences):
  ```
  fun_expr: fun_expr . INFIXOP4 fun_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  false . { once_ UIdent ; ** UIdent } let false = UIdent
                           ^^
  ```


### Item `fun_expr: fun_expr . EQUAL fun_expr` (in 18 errors)

- Derivation (18 occurrences):
  ```
  fun_expr: fun_expr . EQUAL fun_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  false . { once_ UIdent ; = UIdent } let false = UIdent
                           ^
  ```


### Item `fun_expr: fun_expr . BARBAR fun_expr` (in 18 errors)

- Derivation (18 occurrences):
  ```
  fun_expr: fun_expr . BARBAR fun_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  false . { once_ UIdent ; || UIdent } let false = UIdent
                           ^^
  ```


### Item `fun_expr: fun_expr . AMPERAMPER fun_expr` (in 18 errors)

- Derivation (18 occurrences):
  ```
  fun_expr: fun_expr . AMPERAMPER fun_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  false . { once_ UIdent ; && UIdent } let false = UIdent
                           ^^
  ```


### Item `fun_expr: fun_expr . COLONEQUAL fun_expr` (in 18 errors)

- Derivation (18 occurrences):
  ```
  fun_expr: fun_expr . COLONEQUAL fun_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  false . { once_ UIdent ; := UIdent } let false = UIdent
                           ^^
  ```


### Item `fun_expr: fun_expr . COLONCOLON fun_expr` (in 18 errors)

- Derivation (18 occurrences):
  ```
  fun_expr: fun_expr . COLONCOLON fun_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  false . { once_ UIdent ; :: UIdent } let false = UIdent
                           ^^
  ```


### Item `reversed_labeled_tuple_body: fun_expr . COMMA TILDE LPAREN LIDENT type_constraint RPAREN` (in 18 errors)

- Derivation (18 occurrences):
  ```
  reversed_labeled_tuple_body: fun_expr . COMMA TILDE LPAREN LIDENT type_constraint RPAREN
  ```
  Sample sentence (implementation):
  ```ocaml
  false . { once_ UIdent ; , ~ ( lident :> {%hello|world|} ) } let false = UIdent
                           ^
  ```


### Item `separated_or_terminated_nonempty_list(SEMI,expr): fun_expr . SEMI` (in 12 errors)

- Derivation (12 occurrences):
  ```
  separated_or_terminated_nonempty_list(SEMI,expr): fun_expr . SEMI
  ```
  Sample sentence (implementation):
  ```ocaml
  UIdent .+ { once_ UIdent ; ; } let false = UIdent
                             ^
  ```


### Item `atomic_type: . delimited_type` (in 8 errors)

- Derivation (8 occurrences):
  ```
  strict_function_or_labeled_tuple_type: nonempty_list(mode_legacy) . tuple_type at_mode_expr MINUSGREATER tuple_type
    tuple_type: . atomic_type
      atomic_type: . delimited_type
        delimited_type: . extension_type
          extension_type: . extension
            extension: . QUOTED_STRING_EXPR
  ```
  Sample sentence (implementation):
  ```ocaml
  { lident : unique_ {%hello|world|} @ lident -> {%hello|world|} ; } let false = UIdent
                     ^^^^^^^^^^^^^^^
  ```


### Item `nonempty_list(mode_legacy): . LOCAL` (in 8 errors)

- Derivation (4 occurrences):
  ```
  nonempty_list(mode_legacy): ONCE . nonempty_list(mode_legacy)
    nonempty_list(mode_legacy): . LOCAL
  ```
  Sample sentence (implementation):
  ```ocaml
  { lident : once_ local_ {%hello|world|} @ lident -> {%hello|world|} ; } let false = UIdent
                   ^^^^^^
  ```
- Derivation (4 occurrences):
  ```
  nonempty_list(mode_legacy): UNIQUE . nonempty_list(mode_legacy)
    nonempty_list(mode_legacy): . LOCAL
  ```
  Sample sentence (implementation):
  ```ocaml
  { lident : unique_ local_ {%hello|world|} @ lident -> {%hello|world|} ; } let false = UIdent
                     ^^^^^^
  ```


### Item `fun_seq_expr: fun_expr . SEMI` (in 6 errors)

- Derivation (6 occurrences):
  ```
  fun_seq_expr: fun_expr . SEMI
  ```
  Sample sentence (implementation):
  ```ocaml
  false . { once_ UIdent ; ; } let false = UIdent
                           ^
  ```


### Item `fun_expr: LIDENT . LESSMINUS fun_expr` (in 2 errors)

- Derivation (2 occurrences):
  ```
  fun_expr: LIDENT . LESSMINUS fun_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  UIdent .+ { unique_ lident <- UIdent } let false = UIdent
                             ^^
  ```


### Item `fun_expr: LIDENT . LESSMINUS FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)` (in 2 errors)

- Derivation (2 occurrences):
  ```
  fun_expr: LIDENT . LESSMINUS FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
  ```
  Sample sentence (implementation):
  ```ocaml
  UIdent .+ { unique_ lident <- function false -> UIdent } let false = UIdent
                             ^^
  ```


### Item `fun_expr: LIDENT . LESSMINUS STACK FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)` (in 2 errors)

- Derivation (2 occurrences):
  ```
  fun_expr: LIDENT . LESSMINUS STACK FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
  ```
  Sample sentence (implementation):
  ```ocaml
  UIdent .+ { unique_ lident <- stack_ function false -> UIdent } let false = UIdent
                             ^^
  ```


### Item `fun_expr: simple_expr DOT label_longident . LESSMINUS fun_expr` (in 2 errors)

- Derivation (2 occurrences):
  ```
  fun_expr: simple_expr DOT label_longident . LESSMINUS fun_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  UIdent .+ { unique_ false . lident <- UIdent } let false = UIdent
                                     ^^
  ```


### Item `fun_expr: simple_expr DOT label_longident . LESSMINUS FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)` (in 2 errors)

- Derivation (2 occurrences):
  ```
  fun_expr: simple_expr DOT label_longident . LESSMINUS FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
  ```
  Sample sentence (implementation):
  ```ocaml
  UIdent .+ { unique_ false . lident <- function false -> UIdent } let false = UIdent
                                     ^^
  ```


### Item `fun_expr: simple_expr DOT label_longident . LESSMINUS STACK FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)` (in 2 errors)

- Derivation (2 occurrences):
  ```
  fun_expr: simple_expr DOT label_longident . LESSMINUS STACK FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
  ```
  Sample sentence (implementation):
  ```ocaml
  UIdent .+ { unique_ false . lident <- stack_ function false -> UIdent } let false = UIdent
                                     ^^
  ```


### Item `fun_expr: simple_expr DOT LPAREN seq_expr RPAREN . LESSMINUS fun_expr` (in 2 errors)

- Derivation (2 occurrences):
  ```
  fun_expr: simple_expr DOT LPAREN seq_expr RPAREN . LESSMINUS fun_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  UIdent .+ { unique_ false . ( UIdent ) <- UIdent } let false = UIdent
                                         ^^
  ```


### Item `fun_expr: simple_expr DOT LPAREN seq_expr RPAREN . LESSMINUS FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)` (in 2 errors)

- Derivation (2 occurrences):
  ```
  fun_expr: simple_expr DOT LPAREN seq_expr RPAREN . LESSMINUS FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
  ```
  Sample sentence (implementation):
  ```ocaml
  UIdent .+ { unique_ false . ( UIdent ) <- function false -> UIdent } let false = UIdent
                                         ^^
  ```


### Item `fun_expr: simple_expr DOT LPAREN seq_expr RPAREN . LESSMINUS STACK FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)` (in 2 errors)

- Derivation (2 occurrences):
  ```
  fun_expr: simple_expr DOT LPAREN seq_expr RPAREN . LESSMINUS STACK FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
  ```
  Sample sentence (implementation):
  ```ocaml
  UIdent .+ { unique_ false . ( UIdent ) <- stack_ function false -> UIdent } let false = UIdent
                                         ^^
  ```


### Item `fun_expr: simple_expr DOT LBRACE seq_expr RBRACE . LESSMINUS fun_expr` (in 2 errors)

- Derivation (2 occurrences):
  ```
  fun_expr: simple_expr DOT LBRACE seq_expr RBRACE . LESSMINUS fun_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  UIdent .+ { unique_ false . { UIdent } <- UIdent } let false = UIdent
                                         ^^
  ```


### Item `fun_expr: simple_expr DOT LBRACE seq_expr RBRACE . LESSMINUS FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)` (in 2 errors)

- Derivation (2 occurrences):
  ```
  fun_expr: simple_expr DOT LBRACE seq_expr RBRACE . LESSMINUS FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
  ```
  Sample sentence (implementation):
  ```ocaml
  UIdent .+ { unique_ false . { UIdent } <- function false -> UIdent } let false = UIdent
                                         ^^
  ```


### Item `fun_expr: simple_expr DOT LBRACE seq_expr RBRACE . LESSMINUS STACK FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)` (in 2 errors)

- Derivation (2 occurrences):
  ```
  fun_expr: simple_expr DOT LBRACE seq_expr RBRACE . LESSMINUS STACK FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
  ```
  Sample sentence (implementation):
  ```ocaml
  UIdent .+ { unique_ false . { UIdent } <- stack_ function false -> UIdent } let false = UIdent
                                         ^^
  ```


### Item `fun_expr: simple_expr DOT LBRACKET seq_expr RBRACKET . LESSMINUS fun_expr` (in 2 errors)

- Derivation (2 occurrences):
  ```
  fun_expr: simple_expr DOT LBRACKET seq_expr RBRACKET . LESSMINUS fun_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  UIdent .+ { unique_ false . [ UIdent ] <- UIdent } let false = UIdent
                                         ^^
  ```


### Item `fun_expr: simple_expr DOT LBRACKET seq_expr RBRACKET . LESSMINUS FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)` (in 2 errors)

- Derivation (2 occurrences):
  ```
  fun_expr: simple_expr DOT LBRACKET seq_expr RBRACKET . LESSMINUS FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
  ```
  Sample sentence (implementation):
  ```ocaml
  UIdent .+ { unique_ false . [ UIdent ] <- function false -> UIdent } let false = UIdent
                                         ^^
  ```


### Item `fun_expr: simple_expr DOT LBRACKET seq_expr RBRACKET . LESSMINUS STACK FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)` (in 2 errors)

- Derivation (2 occurrences):
  ```
  fun_expr: simple_expr DOT LBRACKET seq_expr RBRACKET . LESSMINUS STACK FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
  ```
  Sample sentence (implementation):
  ```ocaml
  UIdent .+ { unique_ false . [ UIdent ] <- stack_ function false -> UIdent } let false = UIdent
                                         ^^
  ```


### Item `fun_expr: simple_expr DOTOP LPAREN separated_or_terminated_nonempty_list(SEMI,expr) RPAREN . LESSMINUS fun_expr` (in 2 errors)

- Derivation (2 occurrences):
  ```
  fun_expr: simple_expr DOTOP LPAREN separated_or_terminated_nonempty_list(SEMI,expr) RPAREN . LESSMINUS fun_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  UIdent .+ { unique_ UIdent .+ ( UIdent ) <- UIdent } let false = UIdent
                                           ^^
  ```


### Item `fun_expr: simple_expr DOTOP LPAREN separated_or_terminated_nonempty_list(SEMI,expr) RPAREN . LESSMINUS FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)` (in 2 errors)

- Derivation (2 occurrences):
  ```
  fun_expr: simple_expr DOTOP LPAREN separated_or_terminated_nonempty_list(SEMI,expr) RPAREN . LESSMINUS FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
  ```
  Sample sentence (implementation):
  ```ocaml
  UIdent .+ { unique_ UIdent .+ ( UIdent ) <- function false -> UIdent } let false = UIdent
                                           ^^
  ```


### Item `fun_expr: simple_expr DOTOP LPAREN separated_or_terminated_nonempty_list(SEMI,expr) RPAREN . LESSMINUS STACK FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)` (in 2 errors)

- Derivation (2 occurrences):
  ```
  fun_expr: simple_expr DOTOP LPAREN separated_or_terminated_nonempty_list(SEMI,expr) RPAREN . LESSMINUS STACK FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
  ```
  Sample sentence (implementation):
  ```ocaml
  UIdent .+ { unique_ UIdent .+ ( UIdent ) <- stack_ function false -> UIdent } let false = UIdent
                                           ^^
  ```


### Item `fun_expr: simple_expr DOT mod_longident DOTOP LPAREN separated_or_terminated_nonempty_list(SEMI,expr) RPAREN . LESSMINUS fun_expr` (in 2 errors)

- Derivation (2 occurrences):
  ```
  fun_expr: simple_expr DOT mod_longident DOTOP LPAREN separated_or_terminated_nonempty_list(SEMI,expr) RPAREN . LESSMINUS fun_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  UIdent .+ { unique_ false . UIdent .+ ( UIdent ) <- UIdent } let false = UIdent
                                                   ^^
  ```


### Item `fun_expr: simple_expr DOT mod_longident DOTOP LPAREN separated_or_terminated_nonempty_list(SEMI,expr) RPAREN . LESSMINUS FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)` (in 2 errors)

- Derivation (2 occurrences):
  ```
  fun_expr: simple_expr DOT mod_longident DOTOP LPAREN separated_or_terminated_nonempty_list(SEMI,expr) RPAREN . LESSMINUS FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
  ```
  Sample sentence (implementation):
  ```ocaml
  UIdent .+ { unique_ false . UIdent .+ ( UIdent ) <- function false -> UIdent } let false = UIdent
                                                   ^^
  ```


### Item `fun_expr: simple_expr DOT mod_longident DOTOP LPAREN separated_or_terminated_nonempty_list(SEMI,expr) RPAREN . LESSMINUS STACK FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)` (in 2 errors)

- Derivation (2 occurrences):
  ```
  fun_expr: simple_expr DOT mod_longident DOTOP LPAREN separated_or_terminated_nonempty_list(SEMI,expr) RPAREN . LESSMINUS STACK FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
  ```
  Sample sentence (implementation):
  ```ocaml
  UIdent .+ { unique_ false . UIdent .+ ( UIdent ) <- stack_ function false -> UIdent } let false = UIdent
                                                   ^^
  ```


### Item `fun_expr: simple_expr DOTOP LBRACE separated_or_terminated_nonempty_list(SEMI,expr) RBRACE . LESSMINUS fun_expr` (in 2 errors)

- Derivation (2 occurrences):
  ```
  fun_expr: simple_expr DOTOP LBRACE separated_or_terminated_nonempty_list(SEMI,expr) RBRACE . LESSMINUS fun_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  UIdent .+ { unique_ UIdent .+ { UIdent } <- UIdent } let false = UIdent
                                           ^^
  ```


### Item `fun_expr: simple_expr DOTOP LBRACE separated_or_terminated_nonempty_list(SEMI,expr) RBRACE . LESSMINUS FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)` (in 2 errors)

- Derivation (2 occurrences):
  ```
  fun_expr: simple_expr DOTOP LBRACE separated_or_terminated_nonempty_list(SEMI,expr) RBRACE . LESSMINUS FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
  ```
  Sample sentence (implementation):
  ```ocaml
  UIdent .+ { unique_ UIdent .+ { UIdent } <- function false -> UIdent } let false = UIdent
                                           ^^
  ```


### Item `fun_expr: simple_expr DOTOP LBRACE separated_or_terminated_nonempty_list(SEMI,expr) RBRACE . LESSMINUS STACK FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)` (in 2 errors)

- Derivation (2 occurrences):
  ```
  fun_expr: simple_expr DOTOP LBRACE separated_or_terminated_nonempty_list(SEMI,expr) RBRACE . LESSMINUS STACK FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
  ```
  Sample sentence (implementation):
  ```ocaml
  UIdent .+ { unique_ UIdent .+ { UIdent } <- stack_ function false -> UIdent } let false = UIdent
                                           ^^
  ```


### Item `fun_expr: simple_expr DOT mod_longident DOTOP LBRACE separated_or_terminated_nonempty_list(SEMI,expr) RBRACE . LESSMINUS fun_expr` (in 2 errors)

- Derivation (2 occurrences):
  ```
  fun_expr: simple_expr DOT mod_longident DOTOP LBRACE separated_or_terminated_nonempty_list(SEMI,expr) RBRACE . LESSMINUS fun_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  UIdent .+ { unique_ false . UIdent .+ { UIdent } <- UIdent } let false = UIdent
                                                   ^^
  ```


### Item `fun_expr: simple_expr DOT mod_longident DOTOP LBRACE separated_or_terminated_nonempty_list(SEMI,expr) RBRACE . LESSMINUS FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)` (in 2 errors)

- Derivation (2 occurrences):
  ```
  fun_expr: simple_expr DOT mod_longident DOTOP LBRACE separated_or_terminated_nonempty_list(SEMI,expr) RBRACE . LESSMINUS FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
  ```
  Sample sentence (implementation):
  ```ocaml
  UIdent .+ { unique_ false . UIdent .+ { UIdent } <- function false -> UIdent } let false = UIdent
                                                   ^^
  ```


### Item `fun_expr: simple_expr DOT mod_longident DOTOP LBRACE separated_or_terminated_nonempty_list(SEMI,expr) RBRACE . LESSMINUS STACK FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)` (in 2 errors)

- Derivation (2 occurrences):
  ```
  fun_expr: simple_expr DOT mod_longident DOTOP LBRACE separated_or_terminated_nonempty_list(SEMI,expr) RBRACE . LESSMINUS STACK FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
  ```
  Sample sentence (implementation):
  ```ocaml
  UIdent .+ { unique_ false . UIdent .+ { UIdent } <- stack_ function false -> UIdent } let false = UIdent
                                                   ^^
  ```


### Item `fun_expr: simple_expr DOTOP LBRACKET separated_or_terminated_nonempty_list(SEMI,expr) RBRACKET . LESSMINUS fun_expr` (in 2 errors)

- Derivation (2 occurrences):
  ```
  fun_expr: simple_expr DOTOP LBRACKET separated_or_terminated_nonempty_list(SEMI,expr) RBRACKET . LESSMINUS fun_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  UIdent .+ { unique_ UIdent .+ [ UIdent ] <- UIdent } let false = UIdent
                                           ^^
  ```


### Item `fun_expr: simple_expr DOTOP LBRACKET separated_or_terminated_nonempty_list(SEMI,expr) RBRACKET . LESSMINUS FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)` (in 2 errors)

- Derivation (2 occurrences):
  ```
  fun_expr: simple_expr DOTOP LBRACKET separated_or_terminated_nonempty_list(SEMI,expr) RBRACKET . LESSMINUS FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
  ```
  Sample sentence (implementation):
  ```ocaml
  UIdent .+ { unique_ UIdent .+ [ UIdent ] <- function false -> UIdent } let false = UIdent
                                           ^^
  ```


### Item `fun_expr: simple_expr DOTOP LBRACKET separated_or_terminated_nonempty_list(SEMI,expr) RBRACKET . LESSMINUS STACK FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)` (in 2 errors)

- Derivation (2 occurrences):
  ```
  fun_expr: simple_expr DOTOP LBRACKET separated_or_terminated_nonempty_list(SEMI,expr) RBRACKET . LESSMINUS STACK FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
  ```
  Sample sentence (implementation):
  ```ocaml
  UIdent .+ { unique_ UIdent .+ [ UIdent ] <- stack_ function false -> UIdent } let false = UIdent
                                           ^^
  ```


### Item `fun_expr: simple_expr DOT mod_longident DOTOP LBRACKET separated_or_terminated_nonempty_list(SEMI,expr) RBRACKET . LESSMINUS fun_expr` (in 2 errors)

- Derivation (2 occurrences):
  ```
  fun_expr: simple_expr DOT mod_longident DOTOP LBRACKET separated_or_terminated_nonempty_list(SEMI,expr) RBRACKET . LESSMINUS fun_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  UIdent .+ { unique_ false . UIdent .+ [ UIdent ] <- UIdent } let false = UIdent
                                                   ^^
  ```


### Item `fun_expr: simple_expr DOT mod_longident DOTOP LBRACKET separated_or_terminated_nonempty_list(SEMI,expr) RBRACKET . LESSMINUS FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)` (in 2 errors)

- Derivation (2 occurrences):
  ```
  fun_expr: simple_expr DOT mod_longident DOTOP LBRACKET separated_or_terminated_nonempty_list(SEMI,expr) RBRACKET . LESSMINUS FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
  ```
  Sample sentence (implementation):
  ```ocaml
  UIdent .+ { unique_ false . UIdent .+ [ UIdent ] <- function false -> UIdent } let false = UIdent
                                                   ^^
  ```


### Item `fun_expr: simple_expr DOT mod_longident DOTOP LBRACKET separated_or_terminated_nonempty_list(SEMI,expr) RBRACKET . LESSMINUS STACK FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)` (in 2 errors)

- Derivation (2 occurrences):
  ```
  fun_expr: simple_expr DOT mod_longident DOTOP LBRACKET separated_or_terminated_nonempty_list(SEMI,expr) RBRACKET . LESSMINUS STACK FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
  ```
  Sample sentence (implementation):
  ```ocaml
  UIdent .+ { unique_ false . UIdent .+ [ UIdent ] <- stack_ function false -> UIdent } let false = UIdent
                                                   ^^
  ```


### Item `fun_seq_expr: fun_expr SEMI . PERCENT attr_id seq_expr` (in 2 errors)

- Derivation (2 occurrences):
  ```
  fun_seq_expr: fun_expr SEMI . PERCENT attr_id seq_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  UIdent .+ { unique_ UIdent ; % and UIdent } let false = UIdent
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
  UIdent .+ { once_ stack_ function false -> UIdent } let false = UIdent
                    ^^^^^^
  ```
- Derivation (1 occurrence):
  ```
  fun_expr: UNIQUE . seq_expr
    seq_expr: . STACK FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
  ```
  Sample sentence (implementation):
  ```ocaml
  UIdent .+ { unique_ stack_ function false -> UIdent } let false = UIdent
                      ^^^^^^
  ```

## Error: Syntax error: ')' expected

### Item `fun_expr: OVERWRITE ext list(attribute) seq_expr . WITH FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)` (in 194 errors)

- Derivation (194 occurrences):
  ```
  fun_expr: OVERWRITE ext list(attribute) seq_expr . WITH FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
  ```
  Sample sentence (implementation):
  ```ocaml
  ( overwrite_ UIdent with function false -> UIdent ) let false = UIdent
                      ^^^^
  ```


### Item `fun_expr: OVERWRITE ext list(attribute) seq_expr . WITH STACK FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)` (in 194 errors)

- Derivation (194 occurrences):
  ```
  fun_expr: OVERWRITE ext list(attribute) seq_expr . WITH STACK FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
  ```
  Sample sentence (implementation):
  ```ocaml
  ( overwrite_ UIdent with stack_ function false -> UIdent ) let false = UIdent
                      ^^^^
  ```


### Item `fun_expr: OVERWRITE ext list(attribute) seq_expr . WITH fun_expr` (in 183 errors)

- Derivation (183 occurrences):
  ```
  fun_expr: OVERWRITE ext list(attribute) seq_expr . WITH fun_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  ( overwrite_ UIdent with UIdent ) let false = UIdent
                      ^^^^
  ```


### Item `seq_expr: . FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)` (in 52 errors)

- Derivation (26 occurrences):
  ```
  fun_expr: ONCE . seq_expr
    seq_expr: . FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
  ```
  Sample sentence (implementation):
  ```ocaml
  ( once_ function false -> . - UIdent ) let false = UIdent
          ^^^^^^^^
  ```
- Derivation (26 occurrences):
  ```
  fun_expr: UNIQUE . seq_expr
    seq_expr: . FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
  ```
  Sample sentence (implementation):
  ```ocaml
  ( unique_ function false -> . - UIdent ) let false = UIdent
            ^^^^^^^^
  ```


### Item `fun_seq_expr: fun_expr . SEMI` (in 46 errors)

- Derivation (46 occurrences):
  ```
  fun_seq_expr: fun_expr . SEMI
  ```
  Sample sentence (implementation):
  ```ocaml
  ( unique_ UIdent ; ; ) let false = UIdent
                     ^
  ```


### Item `fun_seq_expr: . fun_expr` (in 32 errors)

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
  ( function false when UIdent -> once_ stack_ function false -> . , UIdent | false -> UIdent ) let false = UIdent
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
  ( function false when UIdent -> unique_ stack_ function false -> . , UIdent | false -> UIdent ) let false = UIdent
                                          ^^^^^^
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
  ( function false when UIdent -> once_ function false -> . , UIdent | false -> UIdent ) let false = UIdent
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
  ( function false when UIdent -> unique_ function false -> . , UIdent | false -> UIdent ) let false = UIdent
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
  ( function false when UIdent -> once_ let false = UIdent in UIdent | false -> UIdent ) let false = UIdent
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
  ( function false when UIdent -> unique_ let false = UIdent in UIdent | false -> UIdent ) let false = UIdent
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
  ( function false when UIdent -> once_ exclave_ UIdent | false -> UIdent ) let false = UIdent
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
  ( function false when UIdent -> unique_ exclave_ UIdent | false -> UIdent ) let false = UIdent
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
  ( function false when UIdent -> once_ local_ UIdent | false -> UIdent ) let false = UIdent
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
  ( function false when UIdent -> unique_ local_ UIdent | false -> UIdent ) let false = UIdent
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
  ( function false when UIdent -> once_ let* lident in UIdent | false -> UIdent ) let false = UIdent
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
  ( function false when UIdent -> unique_ let* lident in UIdent | false -> UIdent ) let false = UIdent
                                          ^^^^
  ```
- Derivation (1 occurrence):
  ```
  fun_expr: ONCE . seq_expr
    seq_expr: . fun_seq_expr
      fun_seq_expr: . fun_expr
        fun_expr: . IF ext list(attribute) seq_expr THEN fun_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  ( function false when UIdent -> once_ if UIdent then UIdent | false -> UIdent ) let false = UIdent
                                        ^^
  ```
- Derivation (1 occurrence):
  ```
  fun_expr: UNIQUE . seq_expr
    seq_expr: . fun_seq_expr
      fun_seq_expr: . fun_expr
        fun_expr: . IF ext list(attribute) seq_expr THEN fun_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  ( function false when UIdent -> unique_ if UIdent then UIdent | false -> UIdent ) let false = UIdent
                                          ^^
  ```
- Derivation (1 occurrence):
  ```
  fun_expr: ONCE . seq_expr
    seq_expr: . fun_seq_expr
      fun_seq_expr: . fun_expr
        fun_expr: . IF ext list(attribute) seq_expr THEN STACK FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case) ELSE fun_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  ( function false when UIdent -> once_ if UIdent then stack_ function false -> UIdent else UIdent | false -> UIdent ) let false = UIdent
                                        ^^
  ```
- Derivation (1 occurrence):
  ```
  fun_expr: UNIQUE . seq_expr
    seq_expr: . fun_seq_expr
      fun_seq_expr: . fun_expr
        fun_expr: . IF ext list(attribute) seq_expr THEN STACK FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case) ELSE fun_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  ( function false when UIdent -> unique_ if UIdent then stack_ function false -> UIdent else UIdent | false -> UIdent ) let false = UIdent
                                          ^^
  ```
- Derivation (1 occurrence):
  ```
  fun_expr: ONCE . seq_expr
    seq_expr: . fun_seq_expr
      fun_seq_expr: . fun_expr
        fun_expr: . IF ext list(attribute) seq_expr THEN FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case) ELSE fun_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  ( function false when UIdent -> once_ if UIdent then function false -> UIdent else UIdent | false -> UIdent ) let false = UIdent
                                        ^^
  ```
- Derivation (1 occurrence):
  ```
  fun_expr: UNIQUE . seq_expr
    seq_expr: . fun_seq_expr
      fun_seq_expr: . fun_expr
        fun_expr: . IF ext list(attribute) seq_expr THEN FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case) ELSE fun_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  ( function false when UIdent -> unique_ if UIdent then function false -> UIdent else UIdent | false -> UIdent ) let false = UIdent
                                          ^^
  ```
- Derivation (1 occurrence):
  ```
  fun_expr: ONCE . seq_expr
    seq_expr: . fun_seq_expr
      fun_seq_expr: . fun_expr
        fun_expr: . IF ext list(attribute) seq_expr THEN fun_expr ELSE fun_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  ( function false when UIdent -> once_ if UIdent then UIdent else UIdent | false -> UIdent ) let false = UIdent
                                        ^^
  ```
- Derivation (1 occurrence):
  ```
  fun_expr: UNIQUE . seq_expr
    seq_expr: . fun_seq_expr
      fun_seq_expr: . fun_expr
        fun_expr: . IF ext list(attribute) seq_expr THEN fun_expr ELSE fun_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  ( function false when UIdent -> unique_ if UIdent then UIdent else UIdent | false -> UIdent ) let false = UIdent
                                          ^^
  ```
- Derivation (1 occurrence):
  ```
  fun_expr: ONCE . seq_expr
    seq_expr: . fun_seq_expr
      fun_seq_expr: . fun_expr
        fun_expr: . LET OPEN BANG ext list(attribute) module_expr IN seq_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  ( function false when UIdent -> once_ let open ! {%hello|world|} in UIdent | false -> UIdent ) let false = UIdent
                                        ^^^
  ```
- ...


### Item `attribute: . LBRACKETAT attr_id attr_payload RBRACKET` (in 22 errors)

- Derivation (22 occurrences):
  ```
  fun_expr: fun_expr . attribute
    attribute: . LBRACKETAT attr_id attr_payload RBRACKET
  ```
  Sample sentence (implementation):
  ```ocaml
  ( unique_ UIdent ; [@ and ] ) let false = UIdent
                     ^^
  ```


### Item `fun_expr: fun_expr . INFIXOP3 fun_expr` (in 22 errors)

- Derivation (22 occurrences):
  ```
  fun_expr: fun_expr . INFIXOP3 fun_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  ( unique_ UIdent ; land UIdent ) let false = UIdent
                     ^^^^
  ```


### Item `fun_expr: fun_expr . INFIXOP4 fun_expr` (in 22 errors)

- Derivation (22 occurrences):
  ```
  fun_expr: fun_expr . INFIXOP4 fun_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  ( unique_ UIdent ; ** UIdent ) let false = UIdent
                     ^^
  ```


### Item `fun_expr: fun_expr . EQUAL fun_expr` (in 22 errors)

- Derivation (22 occurrences):
  ```
  fun_expr: fun_expr . EQUAL fun_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  ( unique_ UIdent ; = UIdent ) let false = UIdent
                     ^
  ```


### Item `fun_expr: fun_expr . BARBAR fun_expr` (in 22 errors)

- Derivation (22 occurrences):
  ```
  fun_expr: fun_expr . BARBAR fun_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  ( unique_ UIdent ; || UIdent ) let false = UIdent
                     ^^
  ```


### Item `fun_expr: fun_expr . AMPERAMPER fun_expr` (in 22 errors)

- Derivation (22 occurrences):
  ```
  fun_expr: fun_expr . AMPERAMPER fun_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  ( unique_ UIdent ; && UIdent ) let false = UIdent
                     ^^
  ```


### Item `fun_expr: fun_expr . COLONEQUAL fun_expr` (in 22 errors)

- Derivation (22 occurrences):
  ```
  fun_expr: fun_expr . COLONEQUAL fun_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  ( unique_ UIdent ; := UIdent ) let false = UIdent
                     ^^
  ```


### Item `fun_expr: fun_expr . COLONCOLON fun_expr` (in 22 errors)

- Derivation (22 occurrences):
  ```
  fun_expr: fun_expr . COLONCOLON fun_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  ( unique_ UIdent ; :: UIdent ) let false = UIdent
                     ^^
  ```


### Item `reversed_labeled_tuple_body: fun_expr . COMMA TILDE LPAREN LIDENT type_constraint RPAREN` (in 22 errors)

- Derivation (22 occurrences):
  ```
  reversed_labeled_tuple_body: fun_expr . COMMA TILDE LPAREN LIDENT type_constraint RPAREN
  ```
  Sample sentence (implementation):
  ```ocaml
  ( unique_ UIdent ; , ~ ( lident :> {%hello|world|} ) ) let false = UIdent
                     ^
  ```


### Item `nonempty_list(mode_legacy): . LOCAL` (in 16 errors)

- Derivation (8 occurrences):
  ```
  nonempty_list(mode_legacy): ONCE . nonempty_list(mode_legacy)
    nonempty_list(mode_legacy): . LOCAL
  ```
  Sample sentence (implementation):
  ```ocaml
  fun ( once_ local_ false ) : {%hello|world|} -> UIdent let false = UIdent
              ^^^^^^
  ```
- Derivation (8 occurrences):
  ```
  nonempty_list(mode_legacy): UNIQUE . nonempty_list(mode_legacy)
    nonempty_list(mode_legacy): . LOCAL
  ```
  Sample sentence (implementation):
  ```ocaml
  fun ( unique_ local_ false ) : {%hello|world|} -> UIdent let false = UIdent
                ^^^^^^
  ```


### Item `separated_or_terminated_nonempty_list(SEMI,expr): fun_expr . SEMI` (in 12 errors)

- Derivation (12 occurrences):
  ```
  separated_or_terminated_nonempty_list(SEMI,expr): fun_expr . SEMI
  ```
  Sample sentence (implementation):
  ```ocaml
  UIdent .+ ( once_ UIdent ; ; ) let false = UIdent
                             ^
  ```


### Item `atomic_type: . delimited_type` (in 10 errors)

- Derivation (10 occurrences):
  ```
  strict_function_or_labeled_tuple_type: nonempty_list(mode_legacy) . tuple_type at_mode_expr MINUSGREATER tuple_type
    tuple_type: . atomic_type
      atomic_type: . delimited_type
        delimited_type: . extension_type
          extension_type: . extension
            extension: . QUOTED_STRING_EXPR
  ```
  Sample sentence (implementation):
  ```ocaml
  class lident ( false : unique_ {%hello|world|} @ lident -> {%hello|world|} ) false = lident let false = UIdent
                                 ^^^^^^^^^^^^^^^
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
  fun ( once_ false ) : {%hello|world|} -> UIdent let false = UIdent
              ^^^^^
  ```


### Item `fun_expr: LIDENT . LESSMINUS fun_expr` (in 2 errors)

- Derivation (2 occurrences):
  ```
  fun_expr: LIDENT . LESSMINUS fun_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  ( function false when UIdent -> unique_ lident <- UIdent | false -> UIdent ) let false = UIdent
                                                 ^^
  ```


### Item `fun_expr: simple_expr DOT label_longident . LESSMINUS fun_expr` (in 2 errors)

- Derivation (2 occurrences):
  ```
  fun_expr: simple_expr DOT label_longident . LESSMINUS fun_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  ( function false when UIdent -> unique_ false . lident <- UIdent | false -> UIdent ) let false = UIdent
                                                         ^^
  ```


### Item `fun_expr: simple_expr DOT LPAREN seq_expr RPAREN . LESSMINUS fun_expr` (in 2 errors)

- Derivation (2 occurrences):
  ```
  fun_expr: simple_expr DOT LPAREN seq_expr RPAREN . LESSMINUS fun_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  ( function false when UIdent -> unique_ false . ( UIdent ) <- UIdent | false -> UIdent ) let false = UIdent
                                                             ^^
  ```


### Item `fun_expr: simple_expr DOT LBRACE seq_expr RBRACE . LESSMINUS fun_expr` (in 2 errors)

- Derivation (2 occurrences):
  ```
  fun_expr: simple_expr DOT LBRACE seq_expr RBRACE . LESSMINUS fun_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  ( function false when UIdent -> unique_ false . { UIdent } <- UIdent | false -> UIdent ) let false = UIdent
                                                             ^^
  ```


### Item `fun_expr: simple_expr DOT LBRACKET seq_expr RBRACKET . LESSMINUS fun_expr` (in 2 errors)

- Derivation (2 occurrences):
  ```
  fun_expr: simple_expr DOT LBRACKET seq_expr RBRACKET . LESSMINUS fun_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  ( function false when UIdent -> unique_ false . [ UIdent ] <- UIdent | false -> UIdent ) let false = UIdent
                                                             ^^
  ```


### Item `fun_expr: simple_expr DOTOP LPAREN separated_or_terminated_nonempty_list(SEMI,expr) RPAREN . LESSMINUS fun_expr` (in 2 errors)

- Derivation (2 occurrences):
  ```
  fun_expr: simple_expr DOTOP LPAREN separated_or_terminated_nonempty_list(SEMI,expr) RPAREN . LESSMINUS fun_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  ( function false when UIdent -> unique_ UIdent .+ ( UIdent ) <- UIdent | false -> UIdent ) let false = UIdent
                                                               ^^
  ```


### Item `fun_expr: simple_expr DOT mod_longident DOTOP LPAREN separated_or_terminated_nonempty_list(SEMI,expr) RPAREN . LESSMINUS fun_expr` (in 2 errors)

- Derivation (2 occurrences):
  ```
  fun_expr: simple_expr DOT mod_longident DOTOP LPAREN separated_or_terminated_nonempty_list(SEMI,expr) RPAREN . LESSMINUS fun_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  ( function false when UIdent -> unique_ false . UIdent .+ ( UIdent ) <- UIdent | false -> UIdent ) let false = UIdent
                                                                       ^^
  ```


### Item `fun_expr: simple_expr DOTOP LBRACE separated_or_terminated_nonempty_list(SEMI,expr) RBRACE . LESSMINUS fun_expr` (in 2 errors)

- Derivation (2 occurrences):
  ```
  fun_expr: simple_expr DOTOP LBRACE separated_or_terminated_nonempty_list(SEMI,expr) RBRACE . LESSMINUS fun_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  ( function false when UIdent -> unique_ UIdent .+ { UIdent } <- UIdent | false -> UIdent ) let false = UIdent
                                                               ^^
  ```


### Item `fun_expr: simple_expr DOT mod_longident DOTOP LBRACE separated_or_terminated_nonempty_list(SEMI,expr) RBRACE . LESSMINUS fun_expr` (in 2 errors)

- Derivation (2 occurrences):
  ```
  fun_expr: simple_expr DOT mod_longident DOTOP LBRACE separated_or_terminated_nonempty_list(SEMI,expr) RBRACE . LESSMINUS fun_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  ( function false when UIdent -> unique_ false . UIdent .+ { UIdent } <- UIdent | false -> UIdent ) let false = UIdent
                                                                       ^^
  ```


### Item `fun_expr: simple_expr DOTOP LBRACKET separated_or_terminated_nonempty_list(SEMI,expr) RBRACKET . LESSMINUS fun_expr` (in 2 errors)

- Derivation (2 occurrences):
  ```
  fun_expr: simple_expr DOTOP LBRACKET separated_or_terminated_nonempty_list(SEMI,expr) RBRACKET . LESSMINUS fun_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  ( function false when UIdent -> unique_ UIdent .+ [ UIdent ] <- UIdent | false -> UIdent ) let false = UIdent
                                                               ^^
  ```


### Item `fun_expr: simple_expr DOT mod_longident DOTOP LBRACKET separated_or_terminated_nonempty_list(SEMI,expr) RBRACKET . LESSMINUS fun_expr` (in 2 errors)

- Derivation (2 occurrences):
  ```
  fun_expr: simple_expr DOT mod_longident DOTOP LBRACKET separated_or_terminated_nonempty_list(SEMI,expr) RBRACKET . LESSMINUS fun_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  ( function false when UIdent -> unique_ false . UIdent .+ [ UIdent ] <- UIdent | false -> UIdent ) let false = UIdent
                                                                       ^^
  ```


### Item `strict_function_or_labeled_tuple_type: nonempty_list(mode_legacy) . LPAREN reversed_nonempty_llist(typevar) DOT core_type RPAREN at_mode_expr MINUSGREATER tuple_type` (in 2 errors)

- Derivation (2 occurrences):
  ```
  strict_function_or_labeled_tuple_type: nonempty_list(mode_legacy) . LPAREN reversed_nonempty_llist(typevar) DOT core_type RPAREN at_mode_expr MINUSGREATER tuple_type
  ```
  Sample sentence (implementation):
  ```ocaml
  include ( {%hello|world|} : UIdent with type lident = once_ ( ' lident . {%hello|world|} ) @ lident -> {%hello|world|} constraint {%hello|world|} = {%hello|world|} ) let false = UIdent
                                                              ^
  ```

## Error: Syntax error: ':]' expected

### Item `fun_expr: OVERWRITE ext list(attribute) seq_expr . WITH FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)` (in 50 errors)

- Derivation (50 occurrences):
  ```
  fun_expr: OVERWRITE ext list(attribute) seq_expr . WITH FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
  ```
  Sample sentence (implementation):
  ```ocaml
  [: overwrite_ UIdent with function false -> UIdent :] let false = UIdent
                       ^^^^
  ```


### Item `fun_expr: OVERWRITE ext list(attribute) seq_expr . WITH STACK FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)` (in 50 errors)

- Derivation (50 occurrences):
  ```
  fun_expr: OVERWRITE ext list(attribute) seq_expr . WITH STACK FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
  ```
  Sample sentence (implementation):
  ```ocaml
  [: overwrite_ UIdent with stack_ function false -> UIdent :] let false = UIdent
                       ^^^^
  ```


### Item `fun_expr: OVERWRITE ext list(attribute) seq_expr . WITH fun_expr` (in 21 errors)

- Derivation (21 occurrences):
  ```
  fun_expr: OVERWRITE ext list(attribute) seq_expr . WITH fun_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  [: overwrite_ UIdent with UIdent :] let false = UIdent
                       ^^^^
  ```


### Item `attribute: . LBRACKETAT attr_id attr_payload RBRACKET` (in 18 errors)

- Derivation (18 occurrences):
  ```
  fun_expr: fun_expr . attribute
    attribute: . LBRACKETAT attr_id attr_payload RBRACKET
  ```
  Sample sentence (implementation):
  ```ocaml
  [: once_ UIdent ; [@ and ] for false in UIdent :] let false = UIdent
                    ^^
  ```


### Item `seq_expr: . FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)` (in 8 errors)

- Derivation (4 occurrences):
  ```
  fun_expr: ONCE . seq_expr
    seq_expr: . FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
  ```
  Sample sentence (implementation):
  ```ocaml
  [: once_ function false -> . - UIdent :] let false = UIdent
           ^^^^^^^^
  ```
- Derivation (4 occurrences):
  ```
  fun_expr: UNIQUE . seq_expr
    seq_expr: . FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
  ```
  Sample sentence (implementation):
  ```ocaml
  [: unique_ function false -> . - UIdent :] let false = UIdent
             ^^^^^^^^
  ```


### Item `fun_expr: fun_expr . INFIXOP3 fun_expr` (in 4 errors)

- Derivation (4 occurrences):
  ```
  fun_expr: fun_expr . INFIXOP3 fun_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  [: unique_ UIdent ; land UIdent :] let false = UIdent
                      ^^^^
  ```


### Item `fun_expr: fun_expr . INFIXOP4 fun_expr` (in 4 errors)

- Derivation (4 occurrences):
  ```
  fun_expr: fun_expr . INFIXOP4 fun_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  [: unique_ UIdent ; ** UIdent :] let false = UIdent
                      ^^
  ```


### Item `fun_expr: fun_expr . EQUAL fun_expr` (in 4 errors)

- Derivation (4 occurrences):
  ```
  fun_expr: fun_expr . EQUAL fun_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  [: unique_ UIdent ; = UIdent :] let false = UIdent
                      ^
  ```


### Item `fun_expr: fun_expr . BARBAR fun_expr` (in 4 errors)

- Derivation (4 occurrences):
  ```
  fun_expr: fun_expr . BARBAR fun_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  [: unique_ UIdent ; || UIdent :] let false = UIdent
                      ^^
  ```


### Item `fun_expr: fun_expr . AMPERAMPER fun_expr` (in 4 errors)

- Derivation (4 occurrences):
  ```
  fun_expr: fun_expr . AMPERAMPER fun_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  [: unique_ UIdent ; && UIdent :] let false = UIdent
                      ^^
  ```


### Item `fun_expr: fun_expr . COLONEQUAL fun_expr` (in 4 errors)

- Derivation (4 occurrences):
  ```
  fun_expr: fun_expr . COLONEQUAL fun_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  [: unique_ UIdent ; := UIdent :] let false = UIdent
                      ^^
  ```


### Item `fun_expr: fun_expr . COLONCOLON fun_expr` (in 4 errors)

- Derivation (4 occurrences):
  ```
  fun_expr: fun_expr . COLONCOLON fun_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  [: unique_ UIdent ; :: UIdent :] let false = UIdent
                      ^^
  ```


### Item `reversed_labeled_tuple_body: fun_expr . COMMA fun_expr` (in 4 errors)

- Derivation (4 occurrences):
  ```
  reversed_labeled_tuple_body: fun_expr . COMMA fun_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  [: unique_ UIdent ; , UIdent for false in UIdent :] let false = UIdent
                      ^
  ```


### Item `separated_or_terminated_nonempty_list(SEMI,expr): fun_expr . SEMI` (in 4 errors)

- Derivation (4 occurrences):
  ```
  separated_or_terminated_nonempty_list(SEMI,expr): fun_expr . SEMI
  ```
  Sample sentence (implementation):
  ```ocaml
  [: unique_ UIdent ; ; :] let false = UIdent
                      ^
  ```

## Error: Syntax error: '|]' expected

### Item `fun_expr: OVERWRITE ext list(attribute) seq_expr . WITH FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)` (in 30 errors)

- Derivation (30 occurrences):
  ```
  fun_expr: OVERWRITE ext list(attribute) seq_expr . WITH FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
  ```
  Sample sentence (implementation):
  ```ocaml
  [| overwrite_ UIdent with function false -> UIdent |] let false = UIdent
                       ^^^^
  ```


### Item `fun_expr: OVERWRITE ext list(attribute) seq_expr . WITH STACK FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)` (in 30 errors)

- Derivation (30 occurrences):
  ```
  fun_expr: OVERWRITE ext list(attribute) seq_expr . WITH STACK FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
  ```
  Sample sentence (implementation):
  ```ocaml
  [| overwrite_ UIdent with stack_ function false -> UIdent |] let false = UIdent
                       ^^^^
  ```


### Item `fun_expr: OVERWRITE ext list(attribute) seq_expr . WITH fun_expr` (in 10 errors)

- Derivation (10 occurrences):
  ```
  fun_expr: OVERWRITE ext list(attribute) seq_expr . WITH fun_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  [| overwrite_ UIdent with UIdent |] let false = UIdent
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
  [| once_ function false -> . - UIdent |] let false = UIdent
           ^^^^^^^^
  ```
- Derivation (4 occurrences):
  ```
  fun_expr: UNIQUE . seq_expr
    seq_expr: . FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
  ```
  Sample sentence (implementation):
  ```ocaml
  [| unique_ function false -> . - UIdent |] let false = UIdent
             ^^^^^^^^
  ```


### Item `attribute: . LBRACKETAT attr_id attr_payload RBRACKET` (in 4 errors)

- Derivation (4 occurrences):
  ```
  fun_expr: fun_expr . attribute
    attribute: . LBRACKETAT attr_id attr_payload RBRACKET
  ```
  Sample sentence (implementation):
  ```ocaml
  [| unique_ UIdent ; [@ and ] for false in UIdent |] let false = UIdent
                      ^^
  ```


### Item `fun_expr: fun_expr . INFIXOP3 fun_expr` (in 4 errors)

- Derivation (4 occurrences):
  ```
  fun_expr: fun_expr . INFIXOP3 fun_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  [| unique_ UIdent ; land UIdent |] let false = UIdent
                      ^^^^
  ```


### Item `fun_expr: fun_expr . INFIXOP4 fun_expr` (in 4 errors)

- Derivation (4 occurrences):
  ```
  fun_expr: fun_expr . INFIXOP4 fun_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  [| unique_ UIdent ; ** UIdent |] let false = UIdent
                      ^^
  ```


### Item `fun_expr: fun_expr . EQUAL fun_expr` (in 4 errors)

- Derivation (4 occurrences):
  ```
  fun_expr: fun_expr . EQUAL fun_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  [| unique_ UIdent ; = UIdent |] let false = UIdent
                      ^
  ```


### Item `fun_expr: fun_expr . BARBAR fun_expr` (in 4 errors)

- Derivation (4 occurrences):
  ```
  fun_expr: fun_expr . BARBAR fun_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  [| unique_ UIdent ; || UIdent |] let false = UIdent
                      ^^
  ```


### Item `fun_expr: fun_expr . AMPERAMPER fun_expr` (in 4 errors)

- Derivation (4 occurrences):
  ```
  fun_expr: fun_expr . AMPERAMPER fun_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  [| unique_ UIdent ; && UIdent |] let false = UIdent
                      ^^
  ```


### Item `fun_expr: fun_expr . COLONEQUAL fun_expr` (in 4 errors)

- Derivation (4 occurrences):
  ```
  fun_expr: fun_expr . COLONEQUAL fun_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  [| unique_ UIdent ; := UIdent |] let false = UIdent
                      ^^
  ```


### Item `fun_expr: fun_expr . COLONCOLON fun_expr` (in 4 errors)

- Derivation (4 occurrences):
  ```
  fun_expr: fun_expr . COLONCOLON fun_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  [| unique_ UIdent ; :: UIdent |] let false = UIdent
                      ^^
  ```


### Item `reversed_labeled_tuple_body: fun_expr . COMMA fun_expr` (in 4 errors)

- Derivation (4 occurrences):
  ```
  reversed_labeled_tuple_body: fun_expr . COMMA fun_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  [| unique_ UIdent ; , UIdent for false in UIdent |] let false = UIdent
                      ^
  ```


### Item `separated_or_terminated_nonempty_list(SEMI,expr): fun_expr . SEMI` (in 4 errors)

- Derivation (4 occurrences):
  ```
  separated_or_terminated_nonempty_list(SEMI,expr): fun_expr . SEMI
  ```
  Sample sentence (implementation):
  ```ocaml
  [| unique_ UIdent ; ; |] let false = UIdent
                      ^
  ```

## Error: Syntax error: '>}' expected

### Item `fun_expr: OVERWRITE ext list(attribute) seq_expr . WITH FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)` (in 14 errors)

- Derivation (14 occurrences):
  ```
  fun_expr: OVERWRITE ext list(attribute) seq_expr . WITH FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
  ```
  Sample sentence (implementation):
  ```ocaml
  {< lident = overwrite_ UIdent with function false -> UIdent >} let false = UIdent
                                ^^^^
  ```


### Item `fun_expr: OVERWRITE ext list(attribute) seq_expr . WITH STACK FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)` (in 14 errors)

- Derivation (14 occurrences):
  ```
  fun_expr: OVERWRITE ext list(attribute) seq_expr . WITH STACK FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
  ```
  Sample sentence (implementation):
  ```ocaml
  {< lident = overwrite_ UIdent with stack_ function false -> UIdent >} let false = UIdent
                                ^^^^
  ```


### Item `fun_expr: OVERWRITE ext list(attribute) seq_expr . WITH fun_expr` (in 4 errors)

- Derivation (4 occurrences):
  ```
  fun_expr: OVERWRITE ext list(attribute) seq_expr . WITH fun_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  {< lident = overwrite_ UIdent with UIdent >} let false = UIdent
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
  {< lident = once_ function false -> . - UIdent >} let false = UIdent
                    ^^^^^^^^
  ```
- Derivation (2 occurrences):
  ```
  fun_expr: UNIQUE . seq_expr
    seq_expr: . FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
  ```
  Sample sentence (implementation):
  ```ocaml
  {< lident = unique_ function false -> . - UIdent >} let false = UIdent
                      ^^^^^^^^
  ```


### Item `attribute: . LBRACKETAT attr_id attr_payload RBRACKET` (in 2 errors)

- Derivation (2 occurrences):
  ```
  fun_expr: fun_expr . attribute
    attribute: . LBRACKETAT attr_id attr_payload RBRACKET
  ```
  Sample sentence (implementation):
  ```ocaml
  {< lident = unique_ UIdent ; [@ and ] >} let false = UIdent
                               ^^
  ```


### Item `fun_expr: fun_expr . INFIXOP3 fun_expr` (in 2 errors)

- Derivation (2 occurrences):
  ```
  fun_expr: fun_expr . INFIXOP3 fun_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  {< lident = unique_ UIdent ; land UIdent >} let false = UIdent
                               ^^^^
  ```


### Item `fun_expr: fun_expr . INFIXOP4 fun_expr` (in 2 errors)

- Derivation (2 occurrences):
  ```
  fun_expr: fun_expr . INFIXOP4 fun_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  {< lident = unique_ UIdent ; ** UIdent >} let false = UIdent
                               ^^
  ```


### Item `fun_expr: fun_expr . EQUAL fun_expr` (in 2 errors)

- Derivation (2 occurrences):
  ```
  fun_expr: fun_expr . EQUAL fun_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  {< lident = unique_ UIdent ; = UIdent >} let false = UIdent
                               ^
  ```


### Item `fun_expr: fun_expr . BARBAR fun_expr` (in 2 errors)

- Derivation (2 occurrences):
  ```
  fun_expr: fun_expr . BARBAR fun_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  {< lident = unique_ UIdent ; || UIdent >} let false = UIdent
                               ^^
  ```


### Item `fun_expr: fun_expr . AMPERAMPER fun_expr` (in 2 errors)

- Derivation (2 occurrences):
  ```
  fun_expr: fun_expr . AMPERAMPER fun_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  {< lident = unique_ UIdent ; && UIdent >} let false = UIdent
                               ^^
  ```


### Item `fun_expr: fun_expr . COLONEQUAL fun_expr` (in 2 errors)

- Derivation (2 occurrences):
  ```
  fun_expr: fun_expr . COLONEQUAL fun_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  {< lident = unique_ UIdent ; := UIdent >} let false = UIdent
                               ^^
  ```


### Item `fun_expr: fun_expr . COLONCOLON fun_expr` (in 2 errors)

- Derivation (2 occurrences):
  ```
  fun_expr: fun_expr . COLONCOLON fun_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  {< lident = unique_ UIdent ; :: UIdent >} let false = UIdent
                               ^^
  ```


### Item `reversed_labeled_tuple_body: fun_expr . COMMA TILDE LPAREN LIDENT type_constraint RPAREN` (in 2 errors)

- Derivation (2 occurrences):
  ```
  reversed_labeled_tuple_body: fun_expr . COMMA TILDE LPAREN LIDENT type_constraint RPAREN
  ```
  Sample sentence (implementation):
  ```ocaml
  {< lident = unique_ UIdent ; , ~ ( lident :> {%hello|world|} ) >} let false = UIdent
                               ^
  ```


### Item `separated_or_terminated_nonempty_list(SEMI,object_expr_field): LIDENT option(preceded(EQUAL,expr)) . SEMI` (in 2 errors)

- Derivation (2 occurrences):
  ```
  separated_or_terminated_nonempty_list(SEMI,object_expr_field): LIDENT option(preceded(EQUAL,expr)) . SEMI
  ```
  Sample sentence (implementation):
  ```ocaml
  {< lident = unique_ UIdent ; ; >} let false = UIdent
                               ^
  ```

## Error: Syntax error: pattern expected.

### Item `fun_expr: fun_expr COLONCOLON . FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)` (in 1 error)

- Derivation (1 occurrence):
  ```
  fun_expr: fun_expr COLONCOLON . FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
  ```
  Sample sentence (implementation):
  ```ocaml
  match overwrite_ UIdent with UIdent :: function false -> UIdent with false -> UIdent [@@ and ] let false = UIdent
                                         ^^^^^^^^
  ```


### Item `fun_expr: fun_expr COLONCOLON . STACK FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)` (in 1 error)

- Derivation (1 occurrence):
  ```
  fun_expr: fun_expr COLONCOLON . STACK FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
  ```
  Sample sentence (implementation):
  ```ocaml
  match overwrite_ UIdent with UIdent :: stack_ function false -> UIdent with false -> UIdent [@@ and ] let false = UIdent
                                         ^^^^^^
  ```


### Item `reversed_labeled_tuple_body: fun_expr COMMA . FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)` (in 1 error)

- Derivation (1 occurrence):
  ```
  reversed_labeled_tuple_body: fun_expr COMMA . FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
  ```
  Sample sentence (implementation):
  ```ocaml
  match overwrite_ UIdent with UIdent , function false -> UIdent with false -> UIdent [@@ and ] let false = UIdent
                                        ^^^^^^^^
  ```


### Item `reversed_labeled_tuple_body: fun_expr COMMA . STACK FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)` (in 1 error)

- Derivation (1 occurrence):
  ```
  reversed_labeled_tuple_body: fun_expr COMMA . STACK FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
  ```
  Sample sentence (implementation):
  ```ocaml
  match overwrite_ UIdent with UIdent , stack_ function false -> UIdent with false -> UIdent [@@ and ] let false = UIdent
                                        ^^^^^^
  ```


# Lexer errors

A lexer error is reported when OCamlformat rejected an input on a location that does not form a complete token for the fuzzer.
This usually indicates a mismatch between the lexical specification used by the fuzzer and the lexer implementation in OCamlformat.
The token at that spot is likely not properly recognized.

## Error: Syntax error

### Item `seq_expr: . fun_seq_expr` (in 114689 errors)

- Derivation (114390 occurrences):
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
  <[ UIdent ]> let false = UIdent
  ^^
  ```
- Derivation (6 occurrences):
  ```
  simple_expr: simple_expr DOT LBRACKET . seq_expr RBRACKET
    seq_expr: . fun_seq_expr
      fun_seq_expr: . fun_expr
        fun_expr: . simple_expr
          simple_expr: . LESSLBRACKET separated_or_terminated_nonempty_list(SEMI,expr) RBRACKETGREATER
  ```
  Sample sentence (implementation):
  ```ocaml
  false . [ <[ UIdent ]> ] let false = UIdent
            ^^
  ```
- Derivation (6 occurrences):
  ```
  simple_expr: simple_expr DOT LBRACE . seq_expr RBRACE
    seq_expr: . fun_seq_expr
      fun_seq_expr: . fun_expr
        fun_expr: . simple_expr
          simple_expr: . LESSLBRACKET separated_or_terminated_nonempty_list(SEMI,expr) RBRACKETGREATER
  ```
  Sample sentence (implementation):
  ```ocaml
  false . { <[ UIdent ]> } let false = UIdent
            ^^
  ```
- Derivation (6 occurrences):
  ```
  simple_expr: simple_expr DOT LPAREN . seq_expr RPAREN
    seq_expr: . fun_seq_expr
      fun_seq_expr: . fun_expr
        fun_expr: . simple_expr
          simple_expr: . LESSLBRACKET separated_or_terminated_nonempty_list(SEMI,expr) RBRACKETGREATER
  ```
  Sample sentence (implementation):
  ```ocaml
  false . ( <[ UIdent ]> ) let false = UIdent
            ^^
  ```
- Derivation (4 occurrences):
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
  [%% and <[ UIdent ]> let false = UIdent ] let false = UIdent
          ^^
  ```
- Derivation (4 occurrences):
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
  include [% and <[ UIdent ]> let false = UIdent ] let false = UIdent
                 ^^
  ```
- Derivation (4 occurrences):
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
  UIdent [@@ and <[ UIdent ]> let false = UIdent ]
                 ^^
  ```
- Derivation (4 occurrences):
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
  [@@@ and <[ UIdent ]> let false = UIdent ] let false = UIdent
           ^^
  ```
- Derivation (4 occurrences):
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
  UIdent [@ and <[ UIdent ]> let false = UIdent ] let false = UIdent
                ^^
  ```
- Derivation (4 occurrences):
  ```
  strict_binding_modes: EQUAL . seq_expr
    seq_expr: . fun_seq_expr
      fun_seq_expr: . fun_expr
        fun_expr: . simple_expr
          simple_expr: . LESSLBRACKET separated_or_terminated_nonempty_list(SEMI,expr) RBRACKETGREATER
  ```
  Sample sentence (implementation):
  ```ocaml
  let ( lident @ lident ) = <[ UIdent ]> let false = UIdent
                            ^^
  ```
- Derivation (4 occurrences):
  ```
  match_case: pattern WHEN seq_expr MINUSGREATER . seq_expr
    seq_expr: . fun_seq_expr
      fun_seq_expr: . fun_expr
        fun_expr: . simple_expr
          simple_expr: . LESSLBRACKET separated_or_terminated_nonempty_list(SEMI,expr) RBRACKETGREATER
  ```
  Sample sentence (implementation):
  ```ocaml
  [ function false when UIdent -> <[ UIdent ]> ] let false = UIdent
                                  ^^
  ```
- Derivation (4 occurrences):
  ```
  match_case: pattern WHEN . seq_expr MINUSGREATER seq_expr
    seq_expr: . fun_seq_expr
      fun_seq_expr: . fun_expr
        fun_expr: . simple_expr
          simple_expr: . LESSLBRACKET separated_or_terminated_nonempty_list(SEMI,expr) RBRACKETGREATER
  ```
  Sample sentence (implementation):
  ```ocaml
  function false when <[ UIdent ]> -> UIdent let false = UIdent
                      ^^
  ```
- Derivation (4 occurrences):
  ```
  match_case: pattern MINUSGREATER . seq_expr
    seq_expr: . fun_seq_expr
      fun_seq_expr: . fun_expr
        fun_expr: . simple_expr
          simple_expr: . LESSLBRACKET separated_or_terminated_nonempty_list(SEMI,expr) RBRACKETGREATER
  ```
  Sample sentence (implementation):
  ```ocaml
  [ function false -> <[ UIdent ]> ] let false = UIdent
                      ^^
  ```
- Derivation (4 occurrences):
  ```
  let_binding_body_no_punning: simple_pattern_not_ident COLON tuple_type at_mode_expr EQUAL . seq_expr
    seq_expr: . fun_seq_expr
      fun_seq_expr: . fun_expr
        fun_expr: . simple_expr
          simple_expr: . LESSLBRACKET separated_or_terminated_nonempty_list(SEMI,expr) RBRACKETGREATER
  ```
  Sample sentence (implementation):
  ```ocaml
  let false : {%hello|world|} @ lident = <[ UIdent ]> let false = UIdent
                                         ^^
  ```
- Derivation (4 occurrences):
  ```
  let_binding_body_no_punning: simple_pattern_not_ident COLON core_type EQUAL . seq_expr
    seq_expr: . fun_seq_expr
      fun_seq_expr: . fun_expr
        fun_expr: . simple_expr
          simple_expr: . LESSLBRACKET separated_or_terminated_nonempty_list(SEMI,expr) RBRACKETGREATER
  ```
  Sample sentence (implementation):
  ```ocaml
  let false : {%hello|world|} = <[ UIdent ]> let false = UIdent
                                ^^
  ```
- Derivation (4 occurrences):
  ```
  let_binding_body_no_punning: simple_pattern_not_ident at_mode_expr EQUAL . seq_expr
    seq_expr: . fun_seq_expr
      fun_seq_expr: . fun_expr
        fun_expr: . simple_expr
          simple_expr: . LESSLBRACKET separated_or_terminated_nonempty_list(SEMI,expr) RBRACKETGREATER
  ```
  Sample sentence (implementation):
  ```ocaml
  let false @ lident = <[ UIdent ]> let false = UIdent
                       ^^
  ```
- Derivation (4 occurrences):
  ```
  let_binding_body_no_punning: pattern_no_exn EQUAL . seq_expr
    seq_expr: . fun_seq_expr
      fun_seq_expr: . fun_expr
        fun_expr: . simple_expr
          simple_expr: . LESSLBRACKET separated_or_terminated_nonempty_list(SEMI,expr) RBRACKETGREATER
  ```
  Sample sentence (implementation):
  ```ocaml
  let false = <[ UIdent ]> let false = UIdent
              ^^
  ```
- Derivation (4 occurrences):
  ```
  let_binding_body_no_punning: LPAREN val_ident at_mode_expr RPAREN COLON TYPE newtypes DOT tuple_type at_mode_expr EQUAL . seq_expr
    seq_expr: . fun_seq_expr
      fun_seq_expr: . fun_expr
        fun_expr: . simple_expr
          simple_expr: . LESSLBRACKET separated_or_terminated_nonempty_list(SEMI,expr) RBRACKETGREATER
  ```
  Sample sentence (implementation):
  ```ocaml
  let ( lident @ lident ) : type lident . {%hello|world|} @ lident = <[ UIdent ]> let false = UIdent
                                                                     ^^
  ```
- Derivation (4 occurrences):
  ```
  let_binding_body_no_punning: nonempty_list(mode_legacy) val_ident COLON TYPE newtypes DOT tuple_type at_mode_expr EQUAL . seq_expr
    seq_expr: . fun_seq_expr
      fun_seq_expr: . fun_expr
        fun_expr: . simple_expr
          simple_expr: . LESSLBRACKET separated_or_terminated_nonempty_list(SEMI,expr) RBRACKETGREATER
  ```
  Sample sentence (implementation):
  ```ocaml
  let local_ lident : type lident . {%hello|world|} @ lident = <[ UIdent ]> let false = UIdent
                                                               ^^
  ```
- Derivation (4 occurrences):
  ```
  let_binding_body_no_punning: val_ident COLON TYPE newtypes DOT tuple_type at_mode_expr EQUAL . seq_expr
    seq_expr: . fun_seq_expr
      fun_seq_expr: . fun_expr
        fun_expr: . simple_expr
          simple_expr: . LESSLBRACKET separated_or_terminated_nonempty_list(SEMI,expr) RBRACKETGREATER
  ```
  Sample sentence (implementation):
  ```ocaml
  let lident : type lident . {%hello|world|} @ lident = <[ UIdent ]> let false = UIdent
                                                        ^^
  ```
- Derivation (4 occurrences):
  ```
  let_binding_body_no_punning: LPAREN val_ident at_mode_expr RPAREN COLON TYPE newtypes DOT core_type EQUAL . seq_expr
    seq_expr: . fun_seq_expr
      fun_seq_expr: . fun_expr
        fun_expr: . simple_expr
          simple_expr: . LESSLBRACKET separated_or_terminated_nonempty_list(SEMI,expr) RBRACKETGREATER
  ```
  Sample sentence (implementation):
  ```ocaml
  let ( lident @ lident ) : type lident . {%hello|world|} = <[ UIdent ]> let false = UIdent
                                                            ^^
  ```
- ...


### Item `atomic_type: LESSLBRACKET core_type . RBRACKETGREATER` (in 16093 errors)

- Derivation (16093 occurrences):
  ```
  atomic_type: LESSLBRACKET core_type . RBRACKETGREATER
  ```
  Sample sentence (interface):
  ```ocaml
  exception false of <[ {%hello|world|} ]>
                                        ^^
  ```


### Item `pattern: . pattern_gen` (in 2 errors)

- Derivation (1 occurrence):
  ```
  comprehension_clause_binding: list(attribute) ONCE . pattern IN fun_expr
    pattern: . pattern_gen
      pattern_gen: . simple_pattern
        simple_pattern: . simple_pattern_not_ident
          simple_pattern_not_ident: . signed_value_constant DOTDOT signed_value_constant
            signed_value_constant: . value_constant
              value_constant: . FLOAT
  ```
  Sample sentence (implementation):
  ```ocaml
  [: UIdent for once_ 42.0 .. 'a' in UIdent :] let false = UIdent
                      ^^^^
  ```
- Derivation (1 occurrence):
  ```
  comprehension_clause_binding: list(attribute) UNIQUE . pattern IN fun_expr
    pattern: . pattern_gen
      pattern_gen: . simple_pattern
        simple_pattern: . simple_pattern_not_ident
          simple_pattern_not_ident: . signed_value_constant DOTDOT signed_value_constant
            signed_value_constant: . value_constant
              value_constant: . FLOAT
  ```
  Sample sentence (implementation):
  ```ocaml
  [: UIdent for unique_ 42.0 .. 'a' in UIdent :] let false = UIdent
                        ^^^^
  ```


### Item `simple_expr: . LESSLBRACKET separated_or_terminated_nonempty_list(SEMI,expr) RBRACKETGREATER` (in 560 errors)

- Derivation (234 occurrences):
  ```
  fun_expr: STACK . simple_expr
    simple_expr: . LESSLBRACKET separated_or_terminated_nonempty_list(SEMI,expr) RBRACKETGREATER
  ```
  Sample sentence (implementation):
  ```ocaml
  stack_ <[ UIdent ]> let false = UIdent
         ^^
  ```
- Derivation (6 occurrences):
  ```
  simple_expr: simple_expr DOT mod_longident DOTOP LBRACKET . separated_or_terminated_nonempty_list(SEMI,expr) RBRACKET
    separated_or_terminated_nonempty_list(SEMI,expr): . fun_expr
      fun_expr: . simple_expr
        simple_expr: . LESSLBRACKET separated_or_terminated_nonempty_list(SEMI,expr) RBRACKETGREATER
  ```
  Sample sentence (implementation):
  ```ocaml
  false . UIdent .+ [ <[ UIdent ]> ] let false = UIdent
                      ^^
  ```
- Derivation (6 occurrences):
  ```
  simple_expr: simple_expr DOTOP LBRACKET . separated_or_terminated_nonempty_list(SEMI,expr) RBRACKET
    separated_or_terminated_nonempty_list(SEMI,expr): . fun_expr
      fun_expr: . simple_expr
        simple_expr: . LESSLBRACKET separated_or_terminated_nonempty_list(SEMI,expr) RBRACKETGREATER
  ```
  Sample sentence (implementation):
  ```ocaml
  UIdent .+ [ <[ UIdent ]> ] let false = UIdent
              ^^
  ```
- Derivation (6 occurrences):
  ```
  simple_expr: simple_expr DOT mod_longident DOTOP LBRACE . separated_or_terminated_nonempty_list(SEMI,expr) RBRACE
    separated_or_terminated_nonempty_list(SEMI,expr): . fun_expr
      fun_expr: . simple_expr
        simple_expr: . LESSLBRACKET separated_or_terminated_nonempty_list(SEMI,expr) RBRACKETGREATER
  ```
  Sample sentence (implementation):
  ```ocaml
  false . UIdent .+ { <[ UIdent ]> } let false = UIdent
                      ^^
  ```
- Derivation (6 occurrences):
  ```
  simple_expr: simple_expr DOTOP LBRACE . separated_or_terminated_nonempty_list(SEMI,expr) RBRACE
    separated_or_terminated_nonempty_list(SEMI,expr): . fun_expr
      fun_expr: . simple_expr
        simple_expr: . LESSLBRACKET separated_or_terminated_nonempty_list(SEMI,expr) RBRACKETGREATER
  ```
  Sample sentence (implementation):
  ```ocaml
  UIdent .+ { <[ UIdent ]> } let false = UIdent
              ^^
  ```
- Derivation (6 occurrences):
  ```
  simple_expr: simple_expr DOT mod_longident DOTOP LPAREN . separated_or_terminated_nonempty_list(SEMI,expr) RPAREN
    separated_or_terminated_nonempty_list(SEMI,expr): . fun_expr
      fun_expr: . simple_expr
        simple_expr: . LESSLBRACKET separated_or_terminated_nonempty_list(SEMI,expr) RBRACKETGREATER
  ```
  Sample sentence (implementation):
  ```ocaml
  false . UIdent .+ ( <[ UIdent ]> ) let false = UIdent
                      ^^
  ```
- Derivation (6 occurrences):
  ```
  simple_expr: simple_expr DOTOP LPAREN . separated_or_terminated_nonempty_list(SEMI,expr) RPAREN
    separated_or_terminated_nonempty_list(SEMI,expr): . fun_expr
      fun_expr: . simple_expr
        simple_expr: . LESSLBRACKET separated_or_terminated_nonempty_list(SEMI,expr) RBRACKETGREATER
  ```
  Sample sentence (implementation):
  ```ocaml
  UIdent .+ ( <[ UIdent ]> ) let false = UIdent
              ^^
  ```
- Derivation (4 occurrences):
  ```
  labeled_simple_expr: OPTLABEL . simple_expr
    simple_expr: . LESSLBRACKET separated_or_terminated_nonempty_list(SEMI,expr) RBRACKETGREATER
  ```
  Sample sentence (implementation):
  ```ocaml
  UIdent ?label: <[ UIdent ]> let false = UIdent
                 ^^
  ```
- Derivation (4 occurrences):
  ```
  labeled_simple_expr: LABEL . simple_expr
    simple_expr: . LESSLBRACKET separated_or_terminated_nonempty_list(SEMI,expr) RBRACKETGREATER
  ```
  Sample sentence (implementation):
  ```ocaml
  UIdent ~label: <[ UIdent ]> let false = UIdent
                 ^^
  ```
- Derivation (4 occurrences):
  ```
  fun_expr: LAZY ext . list(attribute) simple_expr
    simple_expr: . LESSLBRACKET separated_or_terminated_nonempty_list(SEMI,expr) RBRACKETGREATER
  ```
  Sample sentence (implementation):
  ```ocaml
  lazy <[ UIdent ]> let false = UIdent
       ^^
  ```
- Derivation (4 occurrences):
  ```
  fun_expr: ASSERT ext . list(attribute) simple_expr
    simple_expr: . LESSLBRACKET separated_or_terminated_nonempty_list(SEMI,expr) RBRACKETGREATER
  ```
  Sample sentence (implementation):
  ```ocaml
  assert <[ UIdent ]> let false = UIdent
         ^^
  ```
- Derivation (4 occurrences):
  ```
  reversed_labeled_tuple_body: TILDE LPAREN LIDENT type_constraint RPAREN COMMA . fun_expr
    fun_expr: . simple_expr
      simple_expr: . LESSLBRACKET separated_or_terminated_nonempty_list(SEMI,expr) RBRACKETGREATER
  ```
  Sample sentence (implementation):
  ```ocaml
  ~ ( lident :> {%hello|world|} ) , <[ UIdent ]> [@@ and ] let false = UIdent
                                    ^^
  ```
- Derivation (4 occurrences):
  ```
  reversed_labeled_tuple_body: TILDE LIDENT COMMA . fun_expr
    fun_expr: . simple_expr
      simple_expr: . LESSLBRACKET separated_or_terminated_nonempty_list(SEMI,expr) RBRACKETGREATER
  ```
  Sample sentence (implementation):
  ```ocaml
  ~ lident , <[ UIdent ]> [@@ and ] let false = UIdent
             ^^
  ```
- Derivation (4 occurrences):
  ```
  reversed_labeled_tuple_body: LABEL simple_expr COMMA . fun_expr
    fun_expr: . simple_expr
      simple_expr: . LESSLBRACKET separated_or_terminated_nonempty_list(SEMI,expr) RBRACKETGREATER
  ```
  Sample sentence (implementation):
  ```ocaml
  ~label: #1.0 , <[ UIdent ]> [@@ and ] let false = UIdent
                 ^^
  ```
- Derivation (4 occurrences):
  ```
  reversed_labeled_tuple_body: STACK FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case) COMMA . fun_expr
    fun_expr: . simple_expr
      simple_expr: . LESSLBRACKET separated_or_terminated_nonempty_list(SEMI,expr) RBRACKETGREATER
  ```
  Sample sentence (implementation):
  ```ocaml
  stack_ function false -> . , <[ UIdent ]> [@@ and ] let false = UIdent
                               ^^
  ```
- Derivation (4 occurrences):
  ```
  reversed_labeled_tuple_body: FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case) COMMA . fun_expr
    fun_expr: . simple_expr
      simple_expr: . LESSLBRACKET separated_or_terminated_nonempty_list(SEMI,expr) RBRACKETGREATER
  ```
  Sample sentence (implementation):
  ```ocaml
  function false -> . , <[ UIdent ]> [@@ and ] let false = UIdent
                        ^^
  ```
- Derivation (4 occurrences):
  ```
  reversed_labeled_tuple_body: fun_expr COMMA . fun_expr
    fun_expr: . simple_expr
      simple_expr: . LESSLBRACKET separated_or_terminated_nonempty_list(SEMI,expr) RBRACKETGREATER
  ```
  Sample sentence (implementation):
  ```ocaml
  UIdent , <[ UIdent ]> [@@ and ] let false = UIdent
           ^^
  ```
- Derivation (4 occurrences):
  ```
  reversed_labeled_tuple_body: reversed_labeled_tuple_body COMMA . fun_expr
    fun_expr: . simple_expr
      simple_expr: . LESSLBRACKET separated_or_terminated_nonempty_list(SEMI,expr) RBRACKETGREATER
  ```
  Sample sentence (implementation):
  ```ocaml
  UIdent , UIdent , <[ UIdent ]> [@@ and ] let false = UIdent
                    ^^
  ```
- Derivation (4 occurrences):
  ```
  paren_module_expr: LPAREN VAL list(attribute) . fun_expr RPAREN
    fun_expr: . simple_expr
      simple_expr: . LESSLBRACKET separated_or_terminated_nonempty_list(SEMI,expr) RBRACKETGREATER
  ```
  Sample sentence (implementation):
  ```ocaml
  include ( val <[ UIdent ]> ) let false = UIdent
                ^^
  ```
- Derivation (4 occurrences):
  ```
  option(preceded(EQUAL,expr)): EQUAL . fun_expr
    fun_expr: . simple_expr
      simple_expr: . LESSLBRACKET separated_or_terminated_nonempty_list(SEMI,expr) RBRACKETGREATER
  ```
  Sample sentence (implementation):
  ```ocaml
  #{ lident = <[ UIdent ]> } let false = UIdent
              ^^
  ```
- Derivation (4 occurrences):
  ```
  strict_binding_modes: fun_params option(constraint_) EQUAL . fun_body
    fun_body: . fun_seq_expr
      fun_seq_expr: . fun_expr
        fun_expr: . simple_expr
          simple_expr: . LESSLBRACKET separated_or_terminated_nonempty_list(SEMI,expr) RBRACKETGREATER
  ```
  Sample sentence (implementation):
  ```ocaml
  let ( lident @ lident ) false = <[ UIdent ]> let false = UIdent
                                  ^^
  ```
- ...

## Error: Syntax error: 'end' expected

### Item `fun_expr: . simple_expr` (in 6 errors)

- Derivation (4 occurrences):
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
  include struct <[ UIdent ]> let false = UIdent end let false = UIdent
                 ^^
  ```
- Derivation (2 occurrences):
  ```
  list(structure_element): SEMISEMI . seq_expr list(post_item_attribute) list(structure_element)
    seq_expr: . fun_seq_expr
      fun_seq_expr: . fun_expr
        fun_expr: . simple_expr
          simple_expr: . LESSLBRACKET separated_or_terminated_nonempty_list(SEMI,expr) RBRACKETGREATER
  ```
  Sample sentence (implementation):
  ```ocaml
  include struct ;; <[ UIdent ]> let false = UIdent end let false = UIdent
                    ^^
  ```

## Error: Syntax error: ')' expected

### Item `fun_seq_expr: . fun_expr` (in 4 errors)

- Derivation (2 occurrences):
  ```
  simple_expr: mod_longident DOT LPAREN . seq_expr RPAREN
    seq_expr: . fun_seq_expr
      fun_seq_expr: . fun_expr
        fun_expr: . simple_expr
          simple_expr: . LESSLBRACKET separated_or_terminated_nonempty_list(SEMI,expr) RBRACKETGREATER
  ```
  Sample sentence (implementation):
  ```ocaml
  UIdent . ( <[ UIdent ]> ) let false = UIdent
             ^^
  ```
- Derivation (2 occurrences):
  ```
  simple_expr: LPAREN . seq_expr RPAREN
    seq_expr: . fun_seq_expr
      fun_seq_expr: . fun_expr
        fun_expr: . simple_expr
          simple_expr: . LESSLBRACKET separated_or_terminated_nonempty_list(SEMI,expr) RBRACKETGREATER
  ```
  Sample sentence (implementation):
  ```ocaml
  ( <[ UIdent ]> ) let false = UIdent
    ^^
  ```


### Item `simple_expr: . LESSLBRACKET separated_or_terminated_nonempty_list(SEMI,expr) RBRACKETGREATER` (in 8 errors)

- Derivation (2 occurrences):
  ```
  simple_expr: BANG . simple_expr
    simple_expr: . LESSLBRACKET separated_or_terminated_nonempty_list(SEMI,expr) RBRACKETGREATER
  ```
  Sample sentence (implementation):
  ```ocaml
  ( ! <[ UIdent ]> ) let false = UIdent
      ^^
  ```
- Derivation (2 occurrences):
  ```
  simple_expr: PREFIXOP . simple_expr
    simple_expr: . LESSLBRACKET separated_or_terminated_nonempty_list(SEMI,expr) RBRACKETGREATER
  ```
  Sample sentence (implementation):
  ```ocaml
  ( !+ <[ UIdent ]> ) let false = UIdent
       ^^
  ```
- Derivation (2 occurrences):
  ```
  reversed_nonempty_llist(labeled_simple_expr): reversed_nonempty_llist(labeled_simple_expr) . labeled_simple_expr
    labeled_simple_expr: . simple_expr
      simple_expr: . LESSLBRACKET separated_or_terminated_nonempty_list(SEMI,expr) RBRACKETGREATER
  ```
  Sample sentence (implementation):
  ```ocaml
  class lident : {%hello|world|} = ( lident UIdent <[ UIdent ]> ) let false = UIdent
                                                   ^^
  ```
- Derivation (2 occurrences):
  ```
  class_expr: class_simple_expr . reversed_nonempty_llist(labeled_simple_expr)
    reversed_nonempty_llist(labeled_simple_expr): . labeled_simple_expr
      labeled_simple_expr: . simple_expr
        simple_expr: . LESSLBRACKET separated_or_terminated_nonempty_list(SEMI,expr) RBRACKETGREATER
  ```
  Sample sentence (implementation):
  ```ocaml
  class lident : {%hello|world|} = ( lident <[ UIdent ]> ) let false = UIdent
                                            ^^
  ```


# Comment errors

These are errors OCamlformat reports while processing a comment.
They usually mean that the comment was not preserved by the formatting process (e.g., it was dropped or moved).

## Error: comment dropped.

### Item `simple_expr: mod_longident DOT LBRACELESS separated_or_terminated_nonempty_list(SEMI,object_expr_field) . GREATERRBRACE` (in 376 errors)

- Derivation (376 occurrences):
  ```
  simple_expr: mod_longident DOT LBRACELESS separated_or_terminated_nonempty_list(SEMI,object_expr_field) . GREATERRBRACE
  ```
  Sample sentence (implementation):
  ```ocaml
  UIdent . {< lident (* ... *) >} let false = UIdent
                     ^^^^^^^^^
  ```


### Item `simple_expr: LBRACELESS separated_or_terminated_nonempty_list(SEMI,object_expr_field) . GREATERRBRACE` (in 372 errors)

- Derivation (372 occurrences):
  ```
  simple_expr: LBRACELESS separated_or_terminated_nonempty_list(SEMI,object_expr_field) . GREATERRBRACE
  ```
  Sample sentence (implementation):
  ```ocaml
  {< lident (* ... *) >} let false = UIdent
            ^^^^^^^^^
  ```


### Item `module_type: . extension` (in 95 errors)

- Derivation (13 occurrences):
  ```
  module_type: reversed_nonempty_llist(functor_arg) MINUSGREATER . module_type
    module_type: . extension
      extension: . QUOTED_STRING_EXPR
  ```
  Sample sentence (implementation):
  ```ocaml
  module type lident = ( ) -> (* ... *) {%hello|world|} let false = UIdent
                              ^^^^^^^^^
  ```
- Derivation (6 occurrences):
  ```
  option(preceded(EQUAL,module_type)): EQUAL . module_type
    module_type: . extension
      extension: . QUOTED_STRING_EXPR
  ```
  Sample sentence (implementation):
  ```ocaml
  module type lident = (* ... *) {%hello|world|} let false = UIdent
                       ^^^^^^^^^
  ```
- Derivation (6 occurrences):
  ```
  signature_item: include_kind ext . list(attribute) module_type list(post_item_attribute) optional_atat_modalities_expr
    module_type: . module_type attribute
      module_type: . extension
        extension: . QUOTED_STRING_EXPR
  ```
  Sample sentence (interface):
  ```ocaml
  include (* ... *) {%hello|world|} [@ and ] [@@ and ] @@ lident
          ^^^^^^^^^
  ```
- Derivation (6 occurrences):
  ```
  option(preceded(EQUAL,module_type)): EQUAL . module_type
    module_type: . module_type attribute
      module_type: . extension
        extension: . QUOTED_STRING_EXPR
  ```
  Sample sentence (implementation):
  ```ocaml
  module type lident = (* ... *) {%hello|world|} [@ and ] [@@ and ] let false = UIdent
                       ^^^^^^^^^
  ```
- Derivation (6 occurrences):
  ```
  module_type_subst: MODULE TYPE ext list(attribute) ident COLONEQUAL . module_type list(post_item_attribute)
    module_type: . module_type attribute
      module_type: . extension
        extension: . QUOTED_STRING_EXPR
  ```
  Sample sentence (interface):
  ```ocaml
  module type lident := (* ... *) {%hello|world|} [@ and ]
                        ^^^^^^^^^
  ```
- Derivation (6 occurrences):
  ```
  module_declaration_body(__anonymous_8): COLON . module_type optional_atat_modalities_expr
    module_type: . module_type attribute
      module_type: . extension
        extension: . QUOTED_STRING_EXPR
  ```
  Sample sentence (interface):
  ```ocaml
  module UIdent : (* ... *) {%hello|world|} [@ and ] @@ lident
                  ^^^^^^^^^
  ```
- Derivation (4 occurrences):
  ```
  signature_item: MODULE ext list(attribute) REC module_name COLON . module_type optional_atat_modalities_expr list(post_item_attribute) list(and_module_declaration)
    module_type: . extension
      extension: . QUOTED_STRING_EXPR
  ```
  Sample sentence (interface):
  ```ocaml
  module rec UIdent : (* ... *) {%hello|world|} [@@ and ]
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
  module type lident := (* ... *) {%hello|world|} [@@ and ]
                        ^^^^^^^^^
  ```
- Derivation (4 occurrences):
  ```
  module_declaration_body(__anonymous_8): COLON . module_type optional_atat_modalities_expr
    module_type: . extension
      extension: . QUOTED_STRING_EXPR
  ```
  Sample sentence (interface):
  ```ocaml
  module UIdent : (* ... *) {%hello|world|} [@@ and ]
                  ^^^^^^^^^
  ```
- Derivation (4 occurrences):
  ```
  signature_item: include_kind ext . list(attribute) module_type list(post_item_attribute) optional_atat_modalities_expr
    module_type: . extension
      extension: . LBRACKETPERCENT attr_id payload RBRACKET
  ```
  Sample sentence (interface):
  ```ocaml
  include (* ... *) [% and ] [@@ and ] @@ lident
          ^^^^^^^^^
  ```
- Derivation (4 occurrences):
  ```
  option(preceded(EQUAL,module_type)): EQUAL . module_type
    module_type: . extension
      extension: . LBRACKETPERCENT attr_id payload RBRACKET
  ```
  Sample sentence (implementation):
  ```ocaml
  module type lident = (* ... *) [% and ] [@@ and ] let false = UIdent
                       ^^^^^^^^^
  ```
- Derivation (4 occurrences):
  ```
  module_type_subst: MODULE TYPE ext list(attribute) ident COLONEQUAL . module_type list(post_item_attribute)
    module_type: . extension
      extension: . LBRACKETPERCENT attr_id payload RBRACKET
  ```
  Sample sentence (interface):
  ```ocaml
  module type lident := (* ... *) [% and ]
                        ^^^^^^^^^
  ```
- Derivation (4 occurrences):
  ```
  module_declaration_body(module_type_with_optional_modes): COLON . module_type
    module_type: . extension
      extension: . LBRACKETPERCENT attr_id payload RBRACKET
  ```
  Sample sentence (interface):
  ```ocaml
  module UIdent ( ) : (* ... *) [% and ]
                      ^^^^^^^^^
  ```
- Derivation (4 occurrences):
  ```
  module_declaration_body(__anonymous_8): COLON . module_type optional_atat_modalities_expr
    module_type: . extension
      extension: . LBRACKETPERCENT attr_id payload RBRACKET
  ```
  Sample sentence (interface):
  ```ocaml
  module UIdent : (* ... *) [% and ] @@ lident
                  ^^^^^^^^^
  ```
- Derivation (4 occurrences):
  ```
  module_binding_body: COLON . module_type EQUAL module_expr
    module_type: . extension
      extension: . LBRACKETPERCENT attr_id payload RBRACKET
  ```
  Sample sentence (implementation):
  ```ocaml
  module UIdent : (* ... *) [% and ] = {%hello|world|} let false = UIdent
                  ^^^^^^^^^
  ```
- Derivation (3 occurrences):
  ```
  module_type_atomic: LPAREN . module_type RPAREN
    module_type: . module_type attribute
      module_type: . extension
        extension: . QUOTED_STRING_EXPR
  ```
  Sample sentence (implementation):
  ```ocaml
  module type lident = ( (* ... *) {%hello|world|} [@ and ] ) [@@ and ] let false = UIdent
                         ^^^^^^^^^
  ```
- Derivation (2 occurrences):
  ```
  signature_item: include_kind ext list(attribute) . module_type list(post_item_attribute) optional_atat_modalities_expr
    module_type: . extension
      extension: . QUOTED_STRING_EXPR
  ```
  Sample sentence (interface):
  ```ocaml
  ;; include (* ... *) {%hello|world|} [@@ and ] @@ lident
             ^^^^^^^^^
  ```
- Derivation (2 occurrences):
  ```
  signature_item: include_kind ext . list(attribute) module_type list(post_item_attribute) optional_atat_modalities_expr
    module_type: . extension
      extension: . QUOTED_STRING_EXPR
  ```
  Sample sentence (interface):
  ```ocaml
  include (* ... *) {%hello|world|} [@@ and ] @@ lident
          ^^^^^^^^^
  ```
- Derivation (2 occurrences):
  ```
  list(and_module_declaration): AND list(attribute) module_name COLON . module_type optional_atat_modalities_expr list(post_item_attribute) list(and_module_declaration)
    module_type: . extension
      extension: . QUOTED_STRING_EXPR
  ```
  Sample sentence (interface):
  ```ocaml
  module rec UIdent : {%hello|world|} and UIdent : (* ... *) {%hello|world|} [@@ and ]
                                                   ^^^^^^^^^
  ```
- Derivation (2 occurrences):
  ```
  module_type_atomic: LPAREN . module_type RPAREN
    module_type: . extension
      extension: . LBRACKETPERCENT attr_id payload RBRACKET
  ```
  Sample sentence (implementation):
  ```ocaml
  module type lident = ( (* ... *) [% and ] ) [@@ and ] let false = UIdent
                         ^^^^^^^^^
  ```
- Derivation (2 occurrences):
  ```
  module_type: FUNCTOR list(attribute) reversed_nonempty_llist(functor_arg) MINUSGREATER . module_type
    module_type: . extension
      extension: . LBRACKETPERCENT attr_id payload RBRACKET
  ```
  Sample sentence (interface):
  ```ocaml
  include % and functor ( ) -> (* ... *) [% and ] [@@ and ] @@ lident
                               ^^^^^^^^^
  ```
- ...


### Item `atat_modalities_expr: . ATAT nonempty_list(modality)` (in 70 errors)

- Derivation (46 occurrences):
  ```
  signature_item: include_kind ext list(attribute) module_type . list(post_item_attribute) optional_atat_modalities_expr
    optional_atat_modalities_expr: . atat_modalities_expr
      atat_modalities_expr: . ATAT nonempty_list(modality)
  ```
  Sample sentence (interface):
  ```ocaml
  include lident [@@ and ] (* ... *) @@ lident
                           ^^^^^^^^^
  ```
- Derivation (20 occurrences):
  ```
  signature_item: include_kind ext list(attribute) module_type list(post_item_attribute) . optional_atat_modalities_expr
    optional_atat_modalities_expr: . atat_modalities_expr
      atat_modalities_expr: . ATAT nonempty_list(modality)
  ```
  Sample sentence (interface):
  ```ocaml
  ;; include {%hello|world|} [@@ and ] (* ... *) @@ lident
                                       ^^^^^^^^^
  ```
- Derivation (4 occurrences):
  ```
  module_declaration_body(__anonymous_8): COLON module_type . optional_atat_modalities_expr
    optional_atat_modalities_expr: . atat_modalities_expr
      atat_modalities_expr: . ATAT nonempty_list(modality)
  ```
  Sample sentence (interface):
  ```ocaml
  module UIdent : [% and ] (* ... *) @@ lident
                           ^^^^^^^^^
  ```


### Item `class_fun_binding: . COLON class_type EQUAL class_expr` (in 38 errors)

- Derivation (38 occurrences):
  ```
  structure_item: CLASS ext list(attribute) virtual_flag . formal_class_parameters LIDENT class_fun_binding list(post_item_attribute) list(and_class_declaration)
    class_fun_binding: . COLON class_type EQUAL class_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  class lident (* ... *) : lident = lident let false = UIdent
               ^^^^^^^^^
  ```


### Item `seq_expr: . fun_seq_expr` (in 28 errors)

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
  ( (* ... *) - stack_ function false -> UIdent ) let false = UIdent
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
  ( (* ... *) - function false -> UIdent ) let false = UIdent
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
  ( (* ... *) + stack_ function false -> UIdent ) let false = UIdent
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
  ( (* ... *) + function false -> UIdent ) let false = UIdent
    ^^^^^^^^^
  ```
- Derivation (2 occurrences):
  ```
  simple_expr: LPAREN . seq_expr RPAREN
    seq_expr: . fun_seq_expr
      fun_seq_expr: . fun_expr
        fun_expr: . subtractive fun_expr
          subtractive: . MINUS
  ```
  Sample sentence (implementation):
  ```ocaml
  ( (* ... *) - UIdent ) let false = UIdent
    ^^^^^^^^^
  ```
- Derivation (2 occurrences):
  ```
  simple_expr: LPAREN . seq_expr RPAREN
    seq_expr: . fun_seq_expr
      fun_seq_expr: . fun_expr
        fun_expr: . additive fun_expr
          additive: . PLUS
  ```
  Sample sentence (implementation):
  ```ocaml
  ( (* ... *) + UIdent ) let false = UIdent
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
  ( (* ... *) - stack_ function false -> . ; ) let false = UIdent
    ^^^^^^^^^
  ```
- Derivation (1 occurrence):
  ```
  simple_expr: LPAREN . seq_expr RPAREN
    seq_expr: . fun_seq_expr
      fun_seq_expr: . fun_expr
        fun_expr: . fun_expr attribute
          fun_expr: . subtractive STACK FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
            subtractive: . MINUS
  ```
  Sample sentence (implementation):
  ```ocaml
  ( (* ... *) - stack_ function false -> . [@ and ] ) let false = UIdent
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
  ( (* ... *) - function false -> . ; ) let false = UIdent
    ^^^^^^^^^
  ```
- Derivation (1 occurrence):
  ```
  simple_expr: LPAREN . seq_expr RPAREN
    seq_expr: . fun_seq_expr
      fun_seq_expr: . fun_expr
        fun_expr: . fun_expr attribute
          fun_expr: . subtractive FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
            subtractive: . MINUS
  ```
  Sample sentence (implementation):
  ```ocaml
  ( (* ... *) - function false -> . [@ and ] ) let false = UIdent
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
  ( (* ... *) - UIdent ; ) let false = UIdent
    ^^^^^^^^^
  ```
- Derivation (1 occurrence):
  ```
  simple_expr: LPAREN . seq_expr RPAREN
    seq_expr: . fun_seq_expr
      fun_seq_expr: . fun_expr
        fun_expr: . fun_expr attribute
          fun_expr: . subtractive fun_expr
            subtractive: . MINUS
  ```
  Sample sentence (implementation):
  ```ocaml
  ( (* ... *) - UIdent [@ and ] ) let false = UIdent
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
  ( (* ... *) + stack_ function false -> . ; ) let false = UIdent
    ^^^^^^^^^
  ```
- Derivation (1 occurrence):
  ```
  simple_expr: LPAREN . seq_expr RPAREN
    seq_expr: . fun_seq_expr
      fun_seq_expr: . fun_expr
        fun_expr: . fun_expr attribute
          fun_expr: . additive STACK FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
            additive: . PLUS
  ```
  Sample sentence (implementation):
  ```ocaml
  ( (* ... *) + stack_ function false -> . [@ and ] ) let false = UIdent
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
  ( (* ... *) + function false -> . ; ) let false = UIdent
    ^^^^^^^^^
  ```
- Derivation (1 occurrence):
  ```
  simple_expr: LPAREN . seq_expr RPAREN
    seq_expr: . fun_seq_expr
      fun_seq_expr: . fun_expr
        fun_expr: . fun_expr attribute
          fun_expr: . additive FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
            additive: . PLUS
  ```
  Sample sentence (implementation):
  ```ocaml
  ( (* ... *) + function false -> . [@ and ] ) let false = UIdent
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
  ( (* ... *) + UIdent ; ) let false = UIdent
    ^^^^^^^^^
  ```
- Derivation (1 occurrence):
  ```
  simple_expr: LPAREN . seq_expr RPAREN
    seq_expr: . fun_seq_expr
      fun_seq_expr: . fun_expr
        fun_expr: . fun_expr attribute
          fun_expr: . additive fun_expr
            additive: . PLUS
  ```
  Sample sentence (implementation):
  ```ocaml
  ( (* ... *) + UIdent [@ and ] ) let false = UIdent
    ^^^^^^^^^
  ```


### Item `class_field: METHOD . method_ list(post_item_attribute)` (in 26 errors)

- Derivation (26 occurrences):
  ```
  class_field: METHOD . method_ list(post_item_attribute)
    method_: . BANG list(attribute) private_flag LIDENT COLON TYPE newtypes DOT core_type EQUAL seq_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  object method (* ... *) ! lident : type lident . _ = UIdent inherit lident end let false = UIdent
                ^^^^^^^^^
  ```


### Item `method_: list(attribute) . private_flag LIDENT COLON TYPE newtypes DOT core_type EQUAL seq_expr` (in 26 errors)

- Derivation (26 occurrences):
  ```
  method_: list(attribute) . private_flag LIDENT COLON TYPE newtypes DOT core_type EQUAL seq_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  object method (* ... *) lident : type lident . _ = UIdent inherit lident end let false = UIdent
                ^^^^^^^^^
  ```


### Item `module_type: . module_type_atomic` (in 20 errors)

- Derivation (7 occurrences):
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
  include % and functor ( ) -> (* ... *) UIdent -> UIdent @@ lident
                               ^^^^^^^^^
  ```
- Derivation (5 occurrences):
  ```
  option(preceded(EQUAL,module_type)): EQUAL . module_type
    module_type: . module_type_atomic
      module_type_atomic: . LPAREN module_type RPAREN
  ```
  Sample sentence (implementation):
  ```ocaml
  module type lident = (* ... *) ( [% and ] ) [@@ and ] let false = UIdent
                       ^^^^^^^^^
  ```
- Derivation (2 occurrences):
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
  module UIdent ( ) : (* ... *) UIdent with UIdent
                      ^^^^^^^^^
  ```
- Derivation (2 occurrences):
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
  module UIdent : (* ... *) UIdent with UIdent = {%hello|world|} let false = UIdent
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
  include % and functor ( ) -> (* ... *) UIdent with UIdent [@@ and ] @@ lident
                               ^^^^^^^^^
  ```
- Derivation (1 occurrence):
  ```
  functor_arg: LPAREN module_name COLON . module_type RPAREN
    module_type: . module_type WITH mod_ext_longident
      module_type: . module_type_atomic
        module_type_atomic: . mty_longident
          mty_longident: . mk_longident(mod_ext_longident,ident)
            mk_longident(mod_ext_longident,ident): . ident
              ident: . UIDENT
  ```
  Sample sentence (implementation):
  ```ocaml
  module UIdent ( UIdent : (* ... *) UIdent with UIdent ) = {%hello|world|} let false = UIdent
                           ^^^^^^^^^
  ```
- Derivation (1 occurrence):
  ```
  module_type: FUNCTOR list(attribute) reversed_nonempty_llist(functor_arg) MINUSGREATER . module_type
    module_type: . module_type MINUSGREATER module_type
      module_type: . module_type WITH reversed_separated_nonempty_llist(AND,with_constraint)
        module_type: . module_type_atomic
          module_type_atomic: . mty_longident
            mty_longident: . mk_longident(mod_ext_longident,ident)
              mk_longident(mod_ext_longident,ident): . ident
                ident: . UIDENT
  ```
  Sample sentence (interface):
  ```ocaml
  include % and functor ( ) -> (* ... *) UIdent with module UIdent := UIdent -> UIdent @@ lident
                               ^^^^^^^^^
  ```
- Derivation (1 occurrence):
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
  module UIdent : UIdent -> (* ... *) UIdent -> UIdent = {%hello|world|} let false = UIdent
                            ^^^^^^^^^
  ```


### Item `attr_id: . single_attr_id` (in 19 errors)

- Derivation (11 occurrences):
  ```
  attribute: LBRACKETAT . attr_id attr_payload RBRACKET
    attr_id: . single_attr_id
      single_attr_id: . AND
  ```
  Sample sentence (implementation):
  ```ocaml
  let false = local_ UIdent ; [@ (* ... *) and ] let false = UIdent
                                 ^^^^^^^^^
  ```
- Derivation (8 occurrences):
  ```
  ext: PERCENT . attr_id
    attr_id: . single_attr_id
      single_attr_id: . AND
  ```
  Sample sentence (interface):
  ```ocaml
  open ! % (* ... *) and UIdent
           ^^^^^^^^^
  ```


### Item `attribute: . LBRACKETAT attr_id attr_payload RBRACKET` (in 11 errors)

- Derivation (11 occurrences):
  ```
  fun_expr: fun_expr . attribute
    attribute: . LBRACKETAT attr_id attr_payload RBRACKET
  ```
  Sample sentence (implementation):
  ```ocaml
  let false = local_ UIdent ; (* ... *) [@ and ] let false = UIdent
                              ^^^^^^^^^
  ```


### Item `attribute: LBRACKETAT attr_id attr_payload . RBRACKET` (in 11 errors)

- Derivation (11 occurrences):
  ```
  attribute: LBRACKETAT attr_id attr_payload . RBRACKET
  ```
  Sample sentence (implementation):
  ```ocaml
  let false = local_ UIdent ; [@ and (* ... *) ] let false = UIdent
                                     ^^^^^^^^^
  ```


### Item `module_type: . FUNCTOR list(attribute) reversed_nonempty_llist(functor_arg) MINUSGREATER module_type` (in 11 errors)

- Derivation (7 occurrences):
  ```
  module_type: FUNCTOR list(attribute) reversed_nonempty_llist(functor_arg) MINUSGREATER . module_type
    module_type: . FUNCTOR list(attribute) reversed_nonempty_llist(functor_arg) MINUSGREATER module_type
  ```
  Sample sentence (interface):
  ```ocaml
  include % and functor ( ) -> (* ... *) functor ( ) -> UIdent @@ lident
                               ^^^^^^^^^
  ```
- Derivation (3 occurrences):
  ```
  module_type: reversed_nonempty_llist(functor_arg) MINUSGREATER . module_type
    module_type: . FUNCTOR list(attribute) reversed_nonempty_llist(functor_arg) MINUSGREATER module_type
  ```
  Sample sentence (implementation):
  ```ocaml
  module UIdent : ( ) -> (* ... *) functor ( ) -> UIdent = {%hello|world|} let false = UIdent
                         ^^^^^^^^^
  ```
- Derivation (1 occurrence):
  ```
  module_type: module_type MINUSGREATER . module_type
    module_type: . FUNCTOR list(attribute) reversed_nonempty_llist(functor_arg) MINUSGREATER module_type
  ```
  Sample sentence (implementation):
  ```ocaml
  module UIdent : UIdent -> (* ... *) functor ( ) -> UIdent = {%hello|world|} let false = UIdent
                            ^^^^^^^^^
  ```


### Item `ext: . PERCENT attr_id` (in 8 errors)

- Derivation (4 occurrences):
  ```
  open_description: OPEN BANG . ext list(attribute) mod_ext_longident list(post_item_attribute)
    ext: . PERCENT attr_id
  ```
  Sample sentence (interface):
  ```ocaml
  open ! (* ... *) % and UIdent
         ^^^^^^^^^
  ```
- Derivation (4 occurrences):
  ```
  open_declaration: OPEN BANG . ext list(attribute) module_expr list(post_item_attribute)
    ext: . PERCENT attr_id
  ```
  Sample sentence (implementation):
  ```ocaml
  open ! (* ... *) % and {%hello|world|} let false = UIdent
         ^^^^^^^^^
  ```


### Item `separated_or_terminated_nonempty_list(SEMI,object_expr_field): LIDENT option(preceded(EQUAL,expr)) . SEMI separated_or_terminated_nonempty_list(SEMI,object_expr_field)` (in 6 errors)

- Derivation (6 occurrences):
  ```
  separated_or_terminated_nonempty_list(SEMI,object_expr_field): LIDENT option(preceded(EQUAL,expr)) . SEMI separated_or_terminated_nonempty_list(SEMI,object_expr_field)
  ```
  Sample sentence (implementation):
  ```ocaml
  {< lident (* ... *) ; lident >} let false = UIdent
            ^^^^^^^^^
  ```


### Item `fun_expr: . simple_expr` (in 4 errors)

- Derivation (2 occurrences):
  ```
  fun_expr: additive . fun_expr
    fun_expr: . simple_expr
      simple_expr: . BEGIN ext list(attribute) seq_expr END
  ```
  Sample sentence (implementation):
  ```ocaml
  + (* ... *) begin UIdent end let false = UIdent
    ^^^^^^^^^
  ```
- Derivation (2 occurrences):
  ```
  fun_expr: subtractive . fun_expr
    fun_expr: . simple_expr
      simple_expr: . BEGIN ext list(attribute) seq_expr END
  ```
  Sample sentence (implementation):
  ```ocaml
  - (* ... *) begin UIdent end let false = UIdent
    ^^^^^^^^^
  ```


### Item `module_binding_body: COLON module_type . EQUAL module_expr` (in 4 errors)

- Derivation (4 occurrences):
  ```
  module_binding_body: COLON module_type . EQUAL module_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  module UIdent : [% and ] (* ... *) = {%hello|world|} let false = UIdent
                           ^^^^^^^^^
  ```


### Item `open_declaration: OPEN . BANG ext list(attribute) module_expr list(post_item_attribute)` (in 4 errors)

- Derivation (4 occurrences):
  ```
  open_declaration: OPEN . BANG ext list(attribute) module_expr list(post_item_attribute)
  ```
  Sample sentence (implementation):
  ```ocaml
  open (* ... *) ! % and {%hello|world|} let false = UIdent
       ^^^^^^^^^
  ```


### Item `open_description: OPEN . BANG ext list(attribute) mod_ext_longident list(post_item_attribute)` (in 4 errors)

- Derivation (4 occurrences):
  ```
  open_description: OPEN . BANG ext list(attribute) mod_ext_longident list(post_item_attribute)
  ```
  Sample sentence (interface):
  ```ocaml
  open (* ... *) ! % and UIdent
       ^^^^^^^^^
  ```


### Item `functor_arg: . LPAREN RPAREN` (in 3 errors)

- Derivation (2 occurrences):
  ```
  module_type: FUNCTOR list(attribute) reversed_nonempty_llist(functor_arg) MINUSGREATER . module_type
    module_type: . reversed_nonempty_llist(functor_arg) MINUSGREATER module_type
      reversed_nonempty_llist(functor_arg): . functor_arg
        functor_arg: . LPAREN RPAREN
  ```
  Sample sentence (interface):
  ```ocaml
  include % and functor ( ) -> (* ... *) ( ) -> {%hello|world|} [@@ and ] @@ lident
                               ^^^^^^^^^
  ```
- Derivation (1 occurrence):
  ```
  module_type: reversed_nonempty_llist(functor_arg) MINUSGREATER . module_type
    module_type: . reversed_nonempty_llist(functor_arg) MINUSGREATER module_type
      reversed_nonempty_llist(functor_arg): . functor_arg
        functor_arg: . LPAREN RPAREN
  ```
  Sample sentence (implementation):
  ```ocaml
  include struct module type lident = ( ) -> (* ... *) ( ) -> {%hello|world|} let false = UIdent end let false = UIdent
                                             ^^^^^^^^^
  ```


### Item `functor_arg: LPAREN module_name COLON module_type . RPAREN` (in 2 errors)

- Derivation (2 occurrences):
  ```
  functor_arg: LPAREN module_name COLON module_type . RPAREN
  ```
  Sample sentence (implementation):
  ```ocaml
  module UIdent ( UIdent : [% and ] (* ... *) ) = {%hello|world|} let false = UIdent
                                    ^^^^^^^^^
  ```


### Item `module_type_atomic: LPAREN module_type . RPAREN` (in 2 errors)

- Derivation (2 occurrences):
  ```
  module_type_atomic: LPAREN module_type . RPAREN
  ```
  Sample sentence (implementation):
  ```ocaml
  module type lident = ( [% and ] (* ... *) ) [@@ and ] let false = UIdent
                                  ^^^^^^^^^
  ```


### Item `option(preceded(EQUAL,expr)): . EQUAL fun_expr` (in 2 errors)

- Derivation (2 occurrences):
  ```
  separated_or_terminated_nonempty_list(SEMI,object_expr_field): LIDENT . option(preceded(EQUAL,expr))
    option(preceded(EQUAL,expr)): . EQUAL fun_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  {< lident (* ... *) = lident >} let false = UIdent
            ^^^^^^^^^
  ```


### Item `separated_or_terminated_nonempty_list(SEMI,object_expr_field): . LIDENT option(preceded(EQUAL,expr))` (in 2 errors)

- Derivation (2 occurrences):
  ```
  simple_expr: LBRACELESS . separated_or_terminated_nonempty_list(SEMI,object_expr_field) GREATERRBRACE
    separated_or_terminated_nonempty_list(SEMI,object_expr_field): . LIDENT option(preceded(EQUAL,expr))
  ```
  Sample sentence (implementation):
  ```ocaml
  {< (* ... *) lident = lident >} let false = UIdent
     ^^^^^^^^^
  ```


# Invariant errors

Invariant errors are grammatical violations that span more than one token and are detected by semantic actions after parsing.
They are not produced by Menhir itself but by checks that enforce specific language invariants.
The reported location is typically the first token of the offending construct.
Because the fuzzer does not understand these finer invariants, such errors may appear as false positives.

## Error: invalid package type: only module type identifier and with type constraints are supported

### Item `module_type: . extension` (in 3549 errors)

- Derivation (520 occurrences):
  ```
  paren_module_expr: LPAREN VAL list(attribute) fun_expr COLONGREATER . module_type RPAREN
    module_type: . extension
      extension: . QUOTED_STRING_EXPR
  ```
  Sample sentence (implementation):
  ```ocaml
  open ( val UIdent :> {%hello|world|} ) let false = UIdent
                       ^^^^^^^^^^^^^^^
  ```
- Derivation (496 occurrences):
  ```
  simple_expr: mod_longident DOT LPAREN MODULE ext list(attribute) module_expr COLON . module_type RPAREN
    module_type: . extension
      extension: . QUOTED_STRING_EXPR
  ```
  Sample sentence (implementation):
  ```ocaml
  UIdent . ( module {%hello|world|} : {%hello|world|} ) let false = UIdent
                                      ^^^^^^^^^^^^^^^
  ```
- Derivation (458 occurrences):
  ```
  simple_expr: LPAREN MODULE ext list(attribute) module_expr COLON . module_type RPAREN
    module_type: . extension
      extension: . QUOTED_STRING_EXPR
  ```
  Sample sentence (implementation):
  ```ocaml
  ( module {%hello|world|} : {%hello|world|} ) let false = UIdent
                             ^^^^^^^^^^^^^^^
  ```
- Derivation (401 occurrences):
  ```
  delimited_type_supporting_local_open: LPAREN MODULE ext list(attribute) . module_type RPAREN
    module_type: . extension
      extension: . QUOTED_STRING_EXPR
  ```
  Sample sentence (interface):
  ```ocaml
  exception false of ( module {%hello|world|} )
                              ^^^^^^^^^^^^^^^
  ```
- Derivation (377 occurrences):
  ```
  simple_pattern_not_ident: LPAREN MODULE ext list(attribute) module_name COLON . module_type RPAREN
    module_type: . extension
      extension: . QUOTED_STRING_EXPR
  ```
  Sample sentence (implementation):
  ```ocaml
  function ( module UIdent : {%hello|world|} ) -> UIdent let false = UIdent
                             ^^^^^^^^^^^^^^^
  ```
- Derivation (220 occurrences):
  ```
  simple_expr: LPAREN MODULE ext list(attribute) module_expr COLON . module_type RPAREN
    module_type: . module_type WITH reversed_separated_nonempty_llist(AND,with_constraint)
      module_type: . extension
        extension: . QUOTED_STRING_EXPR
  ```
  Sample sentence (implementation):
  ```ocaml
  ( module {%hello|world|} : {%hello|world|} with module UIdent := UIdent ) let false = UIdent
                             ^^^^^^^^^^^^^^^
  ```
- Derivation (120 occurrences):
  ```
  paren_module_expr: LPAREN VAL list(attribute) fun_expr COLON module_type COLONGREATER . module_type RPAREN
    module_type: . extension
      extension: . QUOTED_STRING_EXPR
  ```
  Sample sentence (implementation):
  ```ocaml
  open ( val UIdent : {%hello|world|} :> {%hello|world|} ) let false = UIdent
                                         ^^^^^^^^^^^^^^^
  ```
- Derivation (76 occurrences):
  ```
  paren_module_expr: LPAREN VAL list(attribute) STACK FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case) COLON module_type COLONGREATER . module_type RPAREN
    module_type: . extension
      extension: . QUOTED_STRING_EXPR
  ```
  Sample sentence (implementation):
  ```ocaml
  open ( val stack_ function false -> UIdent : {%hello|world|} :> {%hello|world|} ) let false = UIdent
                                                                  ^^^^^^^^^^^^^^^
  ```
- Derivation (74 occurrences):
  ```
  paren_module_expr: LPAREN VAL list(attribute) FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case) COLON module_type COLONGREATER . module_type RPAREN
    module_type: . extension
      extension: . QUOTED_STRING_EXPR
  ```
  Sample sentence (implementation):
  ```ocaml
  open ( val function false -> UIdent : {%hello|world|} :> {%hello|world|} ) let false = UIdent
                                                           ^^^^^^^^^^^^^^^
  ```
- Derivation (72 occurrences):
  ```
  paren_module_expr: LPAREN VAL list(attribute) STACK FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case) COLON . module_type RPAREN
    module_type: . extension
      extension: . QUOTED_STRING_EXPR
  ```
  Sample sentence (implementation):
  ```ocaml
  open ( val stack_ function false -> UIdent : {%hello|world|} ) let false = UIdent
                                               ^^^^^^^^^^^^^^^
  ```
- Derivation (70 occurrences):
  ```
  paren_module_expr: LPAREN VAL list(attribute) FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case) COLONGREATER . module_type RPAREN
    module_type: . extension
      extension: . QUOTED_STRING_EXPR
  ```
  Sample sentence (implementation):
  ```ocaml
  open ( val function false -> UIdent :> {%hello|world|} ) let false = UIdent
                                         ^^^^^^^^^^^^^^^
  ```
- Derivation (66 occurrences):
  ```
  paren_module_expr: LPAREN VAL list(attribute) STACK FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case) COLONGREATER . module_type RPAREN
    module_type: . extension
      extension: . QUOTED_STRING_EXPR
  ```
  Sample sentence (implementation):
  ```ocaml
  open ( val stack_ function false -> UIdent :> {%hello|world|} ) let false = UIdent
                                                ^^^^^^^^^^^^^^^
  ```
- Derivation (64 occurrences):
  ```
  paren_module_expr: LPAREN VAL list(attribute) FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case) COLON . module_type RPAREN
    module_type: . extension
      extension: . QUOTED_STRING_EXPR
  ```
  Sample sentence (implementation):
  ```ocaml
  open ( val function false -> UIdent : {%hello|world|} ) let false = UIdent
                                        ^^^^^^^^^^^^^^^
  ```
- Derivation (61 occurrences):
  ```
  paren_module_expr: LPAREN VAL list(attribute) fun_expr COLON . module_type RPAREN
    module_type: . extension
      extension: . QUOTED_STRING_EXPR
  ```
  Sample sentence (implementation):
  ```ocaml
  open ( val UIdent : {%hello|world|} ) let false = UIdent
                      ^^^^^^^^^^^^^^^
  ```
- Derivation (24 occurrences):
  ```
  module_type_atomic: LPAREN . module_type RPAREN
    module_type: . extension
      extension: . QUOTED_STRING_EXPR
  ```
  Sample sentence (implementation):
  ```ocaml
  ( module {%hello|world|} : ( {%hello|world|} ) ) let false = UIdent
                               ^^^^^^^^^^^^^^^
  ```
- Derivation (22 occurrences):
  ```
  paren_module_expr: LPAREN VAL list(attribute) STACK FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case) COLON . module_type COLONGREATER module_type RPAREN
    module_type: . extension
      extension: . QUOTED_STRING_EXPR
  ```
  Sample sentence (implementation):
  ```ocaml
  include ( val stack_ function false -> UIdent : {%hello|world|} :> lident ) let false = UIdent
                                                  ^^^^^^^^^^^^^^^
  ```
- Derivation (22 occurrences):
  ```
  paren_module_expr: LPAREN VAL list(attribute) FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case) COLON . module_type COLONGREATER module_type RPAREN
    module_type: . extension
      extension: . QUOTED_STRING_EXPR
  ```
  Sample sentence (implementation):
  ```ocaml
  include ( val function false -> UIdent : {%hello|world|} :> lident ) let false = UIdent
                                           ^^^^^^^^^^^^^^^
  ```
- Derivation (22 occurrences):
  ```
  paren_module_expr: LPAREN VAL list(attribute) fun_expr COLON . module_type COLONGREATER module_type RPAREN
    module_type: . extension
      extension: . QUOTED_STRING_EXPR
  ```
  Sample sentence (implementation):
  ```ocaml
  include ( val UIdent : {%hello|world|} :> lident ) let false = UIdent
                         ^^^^^^^^^^^^^^^
  ```
- Derivation (7 occurrences):
  ```
  simple_expr: LPAREN MODULE ext list(attribute) module_expr COLON . module_type RPAREN
    module_type: . module_type MINUSGREATER module_type
      module_type: . extension
        extension: . QUOTED_STRING_EXPR
  ```
  Sample sentence (implementation):
  ```ocaml
  ( module {%hello|world|} : {%hello|world|} -> UIdent ) let false = UIdent
                             ^^^^^^^^^^^^^^^
  ```
- Derivation (6 occurrences):
  ```
  simple_pattern_not_ident: LPAREN MODULE ext list(attribute) module_name COLON . module_type RPAREN
    module_type: . module_type WITH reversed_separated_nonempty_llist(AND,with_constraint)
      module_type: . extension
        extension: . QUOTED_STRING_EXPR
  ```
  Sample sentence (implementation):
  ```ocaml
  let ( module UIdent : {%hello|world|} with module UIdent := UIdent ) @ lident = UIdent [@@ and ] let false = UIdent
                        ^^^^^^^^^^^^^^^
  ```
- Derivation (6 occurrences):
  ```
  paren_module_expr: LPAREN VAL list(attribute) STACK FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case) COLONGREATER . module_type RPAREN
    module_type: . module_type WITH reversed_separated_nonempty_llist(AND,with_constraint)
      module_type: . extension
        extension: . QUOTED_STRING_EXPR
  ```
  Sample sentence (implementation):
  ```ocaml
  include ( val stack_ function false -> UIdent :> {%hello|world|} with module UIdent := UIdent ) let false = UIdent
                                                   ^^^^^^^^^^^^^^^
  ```
- ...


### Item `reversed_nonempty_llist(functor_arg): . functor_arg` (in 170 errors)

- Derivation (8 occurrences):
  ```
  simple_pattern_not_ident: LPAREN MODULE ext list(attribute) module_name COLON . module_type RPAREN
    module_type: . reversed_nonempty_llist(functor_arg) MINUSGREATER module_type_atomic at_mode_expr
      reversed_nonempty_llist(functor_arg): . functor_arg
        functor_arg: . LPAREN RPAREN
  ```
  Sample sentence (implementation):
  ```ocaml
  let ( module UIdent : ( ) -> UIdent @ lident ) @ lident = UIdent [@@ and ] let false = UIdent
                        ^
  ```
- Derivation (8 occurrences):
  ```
  paren_module_expr: LPAREN VAL list(attribute) STACK FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case) COLONGREATER . module_type RPAREN
    module_type: . reversed_nonempty_llist(functor_arg) MINUSGREATER module_type_atomic at_mode_expr
      reversed_nonempty_llist(functor_arg): . functor_arg
        functor_arg: . LPAREN RPAREN
  ```
  Sample sentence (implementation):
  ```ocaml
  include ( val stack_ function false -> UIdent :> ( ) -> UIdent @ lident ) let false = UIdent
                                                   ^
  ```
- Derivation (8 occurrences):
  ```
  paren_module_expr: LPAREN VAL list(attribute) FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case) COLONGREATER . module_type RPAREN
    module_type: . reversed_nonempty_llist(functor_arg) MINUSGREATER module_type_atomic at_mode_expr
      reversed_nonempty_llist(functor_arg): . functor_arg
        functor_arg: . LPAREN RPAREN
  ```
  Sample sentence (implementation):
  ```ocaml
  include ( val function false -> UIdent :> ( ) -> UIdent @ lident ) let false = UIdent
                                            ^
  ```
- Derivation (8 occurrences):
  ```
  paren_module_expr: LPAREN VAL list(attribute) fun_expr COLONGREATER . module_type RPAREN
    module_type: . reversed_nonempty_llist(functor_arg) MINUSGREATER module_type_atomic at_mode_expr
      reversed_nonempty_llist(functor_arg): . functor_arg
        functor_arg: . LPAREN RPAREN
  ```
  Sample sentence (implementation):
  ```ocaml
  include ( val UIdent :> ( ) -> UIdent @ lident ) let false = UIdent
                          ^
  ```
- Derivation (8 occurrences):
  ```
  paren_module_expr: LPAREN VAL list(attribute) STACK FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case) COLON module_type COLONGREATER . module_type RPAREN
    module_type: . reversed_nonempty_llist(functor_arg) MINUSGREATER module_type_atomic at_mode_expr
      reversed_nonempty_llist(functor_arg): . functor_arg
        functor_arg: . LPAREN RPAREN
  ```
  Sample sentence (implementation):
  ```ocaml
  include ( val stack_ function false -> UIdent : {%hello|world|} :> ( ) -> UIdent @ lident ) let false = UIdent
                                                                     ^
  ```
- Derivation (8 occurrences):
  ```
  paren_module_expr: LPAREN VAL list(attribute) FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case) COLON module_type COLONGREATER . module_type RPAREN
    module_type: . reversed_nonempty_llist(functor_arg) MINUSGREATER module_type_atomic at_mode_expr
      reversed_nonempty_llist(functor_arg): . functor_arg
        functor_arg: . LPAREN RPAREN
  ```
  Sample sentence (implementation):
  ```ocaml
  include ( val function false -> UIdent : {%hello|world|} :> ( ) -> UIdent @ lident ) let false = UIdent
                                                              ^
  ```
- Derivation (8 occurrences):
  ```
  paren_module_expr: LPAREN VAL list(attribute) fun_expr COLON module_type COLONGREATER . module_type RPAREN
    module_type: . reversed_nonempty_llist(functor_arg) MINUSGREATER module_type_atomic at_mode_expr
      reversed_nonempty_llist(functor_arg): . functor_arg
        functor_arg: . LPAREN RPAREN
  ```
  Sample sentence (implementation):
  ```ocaml
  include ( val UIdent : {%hello|world|} :> ( ) -> UIdent @ lident ) let false = UIdent
                                            ^
  ```
- Derivation (8 occurrences):
  ```
  paren_module_expr: LPAREN VAL list(attribute) STACK FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case) COLON . module_type RPAREN
    module_type: . reversed_nonempty_llist(functor_arg) MINUSGREATER module_type_atomic at_mode_expr
      reversed_nonempty_llist(functor_arg): . functor_arg
        functor_arg: . LPAREN RPAREN
  ```
  Sample sentence (implementation):
  ```ocaml
  include ( val stack_ function false -> UIdent : ( ) -> UIdent @ lident ) let false = UIdent
                                                  ^
  ```
- Derivation (8 occurrences):
  ```
  paren_module_expr: LPAREN VAL list(attribute) FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case) COLON . module_type RPAREN
    module_type: . reversed_nonempty_llist(functor_arg) MINUSGREATER module_type_atomic at_mode_expr
      reversed_nonempty_llist(functor_arg): . functor_arg
        functor_arg: . LPAREN RPAREN
  ```
  Sample sentence (implementation):
  ```ocaml
  include ( val function false -> UIdent : ( ) -> UIdent @ lident ) let false = UIdent
                                           ^
  ```
- Derivation (7 occurrences):
  ```
  simple_expr: LPAREN MODULE ext list(attribute) module_expr COLON . module_type RPAREN
    module_type: . reversed_nonempty_llist(functor_arg) MINUSGREATER module_type
      reversed_nonempty_llist(functor_arg): . functor_arg
        functor_arg: . LPAREN RPAREN
  ```
  Sample sentence (implementation):
  ```ocaml
  ( module {%hello|world|} : ( ) -> {%hello|world|} ) let false = UIdent
                             ^
  ```
- Derivation (6 occurrences):
  ```
  paren_module_expr: LPAREN VAL list(attribute) fun_expr COLON . module_type RPAREN
    module_type: . reversed_nonempty_llist(functor_arg) MINUSGREATER module_type_atomic at_mode_expr
      reversed_nonempty_llist(functor_arg): . functor_arg
        functor_arg: . LPAREN RPAREN
  ```
  Sample sentence (implementation):
  ```ocaml
  include ( val UIdent : ( ) -> UIdent @ lident ) let false = UIdent
                         ^
  ```
- Derivation (6 occurrences):
  ```
  delimited_type_supporting_local_open: LPAREN MODULE ext list(attribute) . module_type RPAREN
    module_type: . reversed_nonempty_llist(functor_arg) MINUSGREATER module_type_atomic at_mode_expr
      reversed_nonempty_llist(functor_arg): . functor_arg
        functor_arg: . LPAREN RPAREN
  ```
  Sample sentence (implementation):
  ```ocaml
  exception false : ( module ( ) -> UIdent @ lident ) let false = UIdent
                             ^
  ```
- Derivation (4 occurrences):
  ```
  simple_expr: mod_longident DOT LPAREN MODULE ext list(attribute) module_expr COLON . module_type RPAREN
    module_type: . reversed_nonempty_llist(functor_arg) MINUSGREATER module_type_atomic at_mode_expr
      reversed_nonempty_llist(functor_arg): . functor_arg
        functor_arg: . LPAREN RPAREN
  ```
  Sample sentence (implementation):
  ```ocaml
  UIdent . ( module {%hello|world|} : ( ) -> UIdent @ lident ) let false = UIdent
                                      ^
  ```
- Derivation (4 occurrences):
  ```
  delimited_type_supporting_local_open: LPAREN MODULE ext list(attribute) . module_type RPAREN
    module_type: . reversed_nonempty_llist(functor_arg) MINUSGREATER module_type
      reversed_nonempty_llist(functor_arg): . functor_arg
        functor_arg: . LPAREN RPAREN
  ```
  Sample sentence (implementation):
  ```ocaml
  exception false : ( module ( ) -> {%hello|world|} ) let false = UIdent
                             ^
  ```
- Derivation (2 occurrences):
  ```
  simple_pattern_not_ident: LPAREN MODULE ext list(attribute) module_name COLON . module_type RPAREN
    module_type: . reversed_nonempty_llist(functor_arg) MINUSGREATER module_type_atomic at_mode_expr
      reversed_nonempty_llist(functor_arg): . functor_arg
        functor_arg: . LPAREN module_name COLON module_type_atomic at_mode_expr RPAREN
  ```
  Sample sentence (implementation):
  ```ocaml
  let ( module UIdent : ( UIdent : UIdent @ lident ) -> UIdent @ lident ) @ lident = UIdent [@@ and ] let false = UIdent
                        ^
  ```
- Derivation (2 occurrences):
  ```
  paren_module_expr: LPAREN VAL list(attribute) STACK FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case) COLONGREATER . module_type RPAREN
    module_type: . reversed_nonempty_llist(functor_arg) MINUSGREATER module_type_atomic at_mode_expr
      reversed_nonempty_llist(functor_arg): . functor_arg
        functor_arg: . LPAREN module_name COLON module_type_atomic at_mode_expr RPAREN
  ```
  Sample sentence (implementation):
  ```ocaml
  include ( val stack_ function false -> UIdent :> ( UIdent : UIdent @ lident ) -> UIdent @ lident ) let false = UIdent
                                                   ^
  ```
- Derivation (2 occurrences):
  ```
  paren_module_expr: LPAREN VAL list(attribute) FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case) COLONGREATER . module_type RPAREN
    module_type: . reversed_nonempty_llist(functor_arg) MINUSGREATER module_type_atomic at_mode_expr
      reversed_nonempty_llist(functor_arg): . functor_arg
        functor_arg: . LPAREN module_name COLON module_type_atomic at_mode_expr RPAREN
  ```
  Sample sentence (implementation):
  ```ocaml
  include ( val function false -> UIdent :> ( UIdent : UIdent @ lident ) -> UIdent @ lident ) let false = UIdent
                                            ^
  ```
- Derivation (2 occurrences):
  ```
  paren_module_expr: LPAREN VAL list(attribute) fun_expr COLONGREATER . module_type RPAREN
    module_type: . reversed_nonempty_llist(functor_arg) MINUSGREATER module_type_atomic at_mode_expr
      reversed_nonempty_llist(functor_arg): . functor_arg
        functor_arg: . LPAREN module_name COLON module_type_atomic at_mode_expr RPAREN
  ```
  Sample sentence (implementation):
  ```ocaml
  include ( val UIdent :> ( UIdent : UIdent @ lident ) -> UIdent @ lident ) let false = UIdent
                          ^
  ```
- Derivation (2 occurrences):
  ```
  paren_module_expr: LPAREN VAL list(attribute) STACK FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case) COLON module_type COLONGREATER . module_type RPAREN
    module_type: . reversed_nonempty_llist(functor_arg) MINUSGREATER module_type_atomic at_mode_expr
      reversed_nonempty_llist(functor_arg): . functor_arg
        functor_arg: . LPAREN module_name COLON module_type_atomic at_mode_expr RPAREN
  ```
  Sample sentence (implementation):
  ```ocaml
  include ( val stack_ function false -> UIdent : {%hello|world|} :> ( UIdent : UIdent @ lident ) -> UIdent @ lident ) let false = UIdent
                                                                     ^
  ```
- Derivation (2 occurrences):
  ```
  paren_module_expr: LPAREN VAL list(attribute) FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case) COLON module_type COLONGREATER . module_type RPAREN
    module_type: . reversed_nonempty_llist(functor_arg) MINUSGREATER module_type_atomic at_mode_expr
      reversed_nonempty_llist(functor_arg): . functor_arg
        functor_arg: . LPAREN module_name COLON module_type_atomic at_mode_expr RPAREN
  ```
  Sample sentence (implementation):
  ```ocaml
  include ( val function false -> UIdent : {%hello|world|} :> ( UIdent : UIdent @ lident ) -> UIdent @ lident ) let false = UIdent
                                                              ^
  ```
- Derivation (2 occurrences):
  ```
  paren_module_expr: LPAREN VAL list(attribute) fun_expr COLON module_type COLONGREATER . module_type RPAREN
    module_type: . reversed_nonempty_llist(functor_arg) MINUSGREATER module_type_atomic at_mode_expr
      reversed_nonempty_llist(functor_arg): . functor_arg
        functor_arg: . LPAREN module_name COLON module_type_atomic at_mode_expr RPAREN
  ```
  Sample sentence (implementation):
  ```ocaml
  include ( val UIdent : {%hello|world|} :> ( UIdent : UIdent @ lident ) -> UIdent @ lident ) let false = UIdent
                                            ^
  ```
- ...


### Item `ident: . UIDENT` (in 78 errors)

- Derivation (7 occurrences):
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
  ( module {%hello|world|} : UIdent @ lident -> {%hello|world|} ) let false = UIdent
                             ^^^^^^
  ```
- Derivation (6 occurrences):
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
  let ( module UIdent : UIdent @ lident -> UIdent @ lident ) @ lident = UIdent [@@ and ] let false = UIdent
                        ^^^^^^
  ```
- Derivation (4 occurrences):
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
  include ( val stack_ function false -> UIdent :> UIdent @ lident -> UIdent @ lident ) let false = UIdent
                                                   ^^^^^^
  ```
- Derivation (4 occurrences):
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
  include ( val function false -> UIdent :> UIdent @ lident -> UIdent @ lident ) let false = UIdent
                                            ^^^^^^
  ```
- Derivation (4 occurrences):
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
  include ( val UIdent :> UIdent @ lident -> UIdent @ lident ) let false = UIdent
                          ^^^^^^
  ```
- Derivation (4 occurrences):
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
  include ( val stack_ function false -> UIdent : {%hello|world|} :> UIdent @ lident -> UIdent @ lident ) let false = UIdent
                                                                     ^^^^^^
  ```
- Derivation (4 occurrences):
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
  include ( val function false -> UIdent : {%hello|world|} :> UIdent @ lident -> UIdent @ lident ) let false = UIdent
                                                              ^^^^^^
  ```
- Derivation (4 occurrences):
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
  include ( val UIdent : {%hello|world|} :> UIdent @ lident -> UIdent @ lident ) let false = UIdent
                                            ^^^^^^
  ```
- Derivation (4 occurrences):
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
  include ( val stack_ function false -> UIdent : UIdent @ lident -> UIdent @ lident ) let false = UIdent
                                                  ^^^^^^
  ```
- Derivation (4 occurrences):
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
  include ( val function false -> UIdent : UIdent @ lident -> UIdent @ lident ) let false = UIdent
                                           ^^^^^^
  ```
- Derivation (4 occurrences):
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
  exception false : ( module UIdent @ lident -> UIdent @ lident ) let false = UIdent
                             ^^^^^^
  ```
- Derivation (3 occurrences):
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
  include ( val UIdent : UIdent @ lident -> UIdent @ lident ) let false = UIdent
                         ^^^^^^
  ```
- Derivation (2 occurrences):
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
  UIdent . ( module {%hello|world|} : UIdent @ lident -> UIdent @ lident ) let false = UIdent
                                      ^^^^^^
  ```
- Derivation (2 occurrences):
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
  let ( module UIdent : UIdent @ lident -> {%hello|world|} ) @ lident = UIdent [@@ and ] let false = UIdent
                        ^^^^^^
  ```
- Derivation (2 occurrences):
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
  include ( val stack_ function false -> UIdent :> UIdent @ lident -> {%hello|world|} ) let false = UIdent
                                                   ^^^^^^
  ```
- Derivation (2 occurrences):
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
  include ( val function false -> UIdent :> UIdent @ lident -> {%hello|world|} ) let false = UIdent
                                            ^^^^^^
  ```
- Derivation (2 occurrences):
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
  include ( val UIdent :> UIdent @ lident -> {%hello|world|} ) let false = UIdent
                          ^^^^^^
  ```
- Derivation (2 occurrences):
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
  include ( val stack_ function false -> UIdent : {%hello|world|} :> UIdent @ lident -> {%hello|world|} ) let false = UIdent
                                                                     ^^^^^^
  ```
- Derivation (2 occurrences):
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
  include ( val function false -> UIdent : {%hello|world|} :> UIdent @ lident -> {%hello|world|} ) let false = UIdent
                                                              ^^^^^^
  ```
- Derivation (2 occurrences):
  ```
  paren_module_expr: LPAREN VAL list(attribute) fun_expr COLON module_type COLONGREATER . module_type RPAREN
    module_type: . module_type_atomic at_mode_expr MINUSGREATER module_type
      module_type_atomic: . mty_longident
        mty_longident: . mk_longident(mod_ext_longident,ident)
          mk_longident(mod_ext_longident,ident): . ident
            ident: . UIDENT
  ```
  Sample sentence (implementation):
  ```ocaml
  include ( val UIdent : {%hello|world|} :> UIdent @ lident -> {%hello|world|} ) let false = UIdent
                                            ^^^^^^
  ```
- Derivation (2 occurrences):
  ```
  paren_module_expr: LPAREN VAL list(attribute) STACK FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case) COLON . module_type RPAREN
    module_type: . module_type_atomic at_mode_expr MINUSGREATER module_type
      module_type_atomic: . mty_longident
        mty_longident: . mk_longident(mod_ext_longident,ident)
          mk_longident(mod_ext_longident,ident): . ident
            ident: . UIDENT
  ```
  Sample sentence (implementation):
  ```ocaml
  include ( val stack_ function false -> UIdent : UIdent @ lident -> {%hello|world|} ) let false = UIdent
                                                  ^^^^^^
  ```
- ...


### Item `module_type: . MODULE TYPE OF list(attribute) module_expr` (in 70 errors)

- Derivation (6 occurrences):
  ```
  simple_pattern_not_ident: LPAREN MODULE ext list(attribute) module_name COLON . module_type RPAREN
    module_type: . MODULE TYPE OF list(attribute) module_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  let ( module UIdent : module type of {%hello|world|} ) @ lident = UIdent [@@ and ] let false = UIdent
                        ^^^^^^
  ```
- Derivation (6 occurrences):
  ```
  paren_module_expr: LPAREN VAL list(attribute) STACK FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case) COLONGREATER . module_type RPAREN
    module_type: . MODULE TYPE OF list(attribute) module_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  include ( val stack_ function false -> UIdent :> module type of {%hello|world|} ) let false = UIdent
                                                   ^^^^^^
  ```
- Derivation (6 occurrences):
  ```
  paren_module_expr: LPAREN VAL list(attribute) FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case) COLONGREATER . module_type RPAREN
    module_type: . MODULE TYPE OF list(attribute) module_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  include ( val function false -> UIdent :> module type of {%hello|world|} ) let false = UIdent
                                            ^^^^^^
  ```
- Derivation (6 occurrences):
  ```
  paren_module_expr: LPAREN VAL list(attribute) fun_expr COLONGREATER . module_type RPAREN
    module_type: . MODULE TYPE OF list(attribute) module_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  include ( val UIdent :> module type of {%hello|world|} ) let false = UIdent
                          ^^^^^^
  ```
- Derivation (6 occurrences):
  ```
  paren_module_expr: LPAREN VAL list(attribute) STACK FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case) COLON module_type COLONGREATER . module_type RPAREN
    module_type: . MODULE TYPE OF list(attribute) module_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  include ( val stack_ function false -> UIdent : {%hello|world|} :> module type of {%hello|world|} ) let false = UIdent
                                                                     ^^^^^^
  ```
- Derivation (6 occurrences):
  ```
  paren_module_expr: LPAREN VAL list(attribute) FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case) COLON module_type COLONGREATER . module_type RPAREN
    module_type: . MODULE TYPE OF list(attribute) module_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  include ( val function false -> UIdent : {%hello|world|} :> module type of {%hello|world|} ) let false = UIdent
                                                              ^^^^^^
  ```
- Derivation (6 occurrences):
  ```
  paren_module_expr: LPAREN VAL list(attribute) fun_expr COLON module_type COLONGREATER . module_type RPAREN
    module_type: . MODULE TYPE OF list(attribute) module_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  include ( val UIdent : {%hello|world|} :> module type of {%hello|world|} ) let false = UIdent
                                            ^^^^^^
  ```
- Derivation (6 occurrences):
  ```
  paren_module_expr: LPAREN VAL list(attribute) STACK FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case) COLON . module_type RPAREN
    module_type: . MODULE TYPE OF list(attribute) module_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  include ( val stack_ function false -> UIdent : module type of {%hello|world|} ) let false = UIdent
                                                  ^^^^^^
  ```
- Derivation (6 occurrences):
  ```
  paren_module_expr: LPAREN VAL list(attribute) FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case) COLON . module_type RPAREN
    module_type: . MODULE TYPE OF list(attribute) module_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  include ( val function false -> UIdent : module type of {%hello|world|} ) let false = UIdent
                                           ^^^^^^
  ```
- Derivation (6 occurrences):
  ```
  paren_module_expr: LPAREN VAL list(attribute) fun_expr COLON . module_type RPAREN
    module_type: . MODULE TYPE OF list(attribute) module_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  include ( val UIdent : module type of {%hello|world|} ) let false = UIdent
                         ^^^^^^
  ```
- Derivation (4 occurrences):
  ```
  delimited_type_supporting_local_open: LPAREN MODULE ext list(attribute) . module_type RPAREN
    module_type: . MODULE TYPE OF list(attribute) module_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  exception false : ( module module type of {%hello|world|} ) let false = UIdent
                             ^^^^^^
  ```
- Derivation (3 occurrences):
  ```
  simple_expr: mod_longident DOT LPAREN MODULE ext list(attribute) module_expr COLON . module_type RPAREN
    module_type: . MODULE TYPE OF list(attribute) module_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  UIdent . ( module {%hello|world|} : module type of {%hello|world|} ) let false = UIdent
                                      ^^^^^^
  ```
- Derivation (3 occurrences):
  ```
  simple_expr: LPAREN MODULE ext list(attribute) module_expr COLON . module_type RPAREN
    module_type: . MODULE TYPE OF list(attribute) module_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  ( module {%hello|world|} : module type of {%hello|world|} ) let false = UIdent
                             ^^^^^^
  ```


### Item `module_type: . FUNCTOR list(attribute) reversed_nonempty_llist(functor_arg) MINUSGREATER module_type_atomic at_mode_expr` (in 66 errors)

- Derivation (6 occurrences):
  ```
  simple_pattern_not_ident: LPAREN MODULE ext list(attribute) module_name COLON . module_type RPAREN
    module_type: . FUNCTOR list(attribute) reversed_nonempty_llist(functor_arg) MINUSGREATER module_type_atomic at_mode_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  let ( module UIdent : functor ( ) -> UIdent @ lident ) @ lident = UIdent [@@ and ] let false = UIdent
                        ^^^^^^^
  ```
- Derivation (6 occurrences):
  ```
  paren_module_expr: LPAREN VAL list(attribute) STACK FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case) COLONGREATER . module_type RPAREN
    module_type: . FUNCTOR list(attribute) reversed_nonempty_llist(functor_arg) MINUSGREATER module_type_atomic at_mode_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  include ( val stack_ function false -> UIdent :> functor ( ) -> UIdent @ lident ) let false = UIdent
                                                   ^^^^^^^
  ```
- Derivation (6 occurrences):
  ```
  paren_module_expr: LPAREN VAL list(attribute) FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case) COLONGREATER . module_type RPAREN
    module_type: . FUNCTOR list(attribute) reversed_nonempty_llist(functor_arg) MINUSGREATER module_type_atomic at_mode_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  include ( val function false -> UIdent :> functor ( ) -> UIdent @ lident ) let false = UIdent
                                            ^^^^^^^
  ```
- Derivation (6 occurrences):
  ```
  paren_module_expr: LPAREN VAL list(attribute) fun_expr COLONGREATER . module_type RPAREN
    module_type: . FUNCTOR list(attribute) reversed_nonempty_llist(functor_arg) MINUSGREATER module_type_atomic at_mode_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  include ( val UIdent :> functor ( ) -> UIdent @ lident ) let false = UIdent
                          ^^^^^^^
  ```
- Derivation (6 occurrences):
  ```
  paren_module_expr: LPAREN VAL list(attribute) STACK FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case) COLON module_type COLONGREATER . module_type RPAREN
    module_type: . FUNCTOR list(attribute) reversed_nonempty_llist(functor_arg) MINUSGREATER module_type_atomic at_mode_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  include ( val stack_ function false -> UIdent : {%hello|world|} :> functor ( ) -> UIdent @ lident ) let false = UIdent
                                                                     ^^^^^^^
  ```
- Derivation (6 occurrences):
  ```
  paren_module_expr: LPAREN VAL list(attribute) FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case) COLON module_type COLONGREATER . module_type RPAREN
    module_type: . FUNCTOR list(attribute) reversed_nonempty_llist(functor_arg) MINUSGREATER module_type_atomic at_mode_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  include ( val function false -> UIdent : {%hello|world|} :> functor ( ) -> UIdent @ lident ) let false = UIdent
                                                              ^^^^^^^
  ```
- Derivation (6 occurrences):
  ```
  paren_module_expr: LPAREN VAL list(attribute) fun_expr COLON module_type COLONGREATER . module_type RPAREN
    module_type: . FUNCTOR list(attribute) reversed_nonempty_llist(functor_arg) MINUSGREATER module_type_atomic at_mode_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  include ( val UIdent : {%hello|world|} :> functor ( ) -> UIdent @ lident ) let false = UIdent
                                            ^^^^^^^
  ```
- Derivation (6 occurrences):
  ```
  paren_module_expr: LPAREN VAL list(attribute) STACK FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case) COLON . module_type RPAREN
    module_type: . FUNCTOR list(attribute) reversed_nonempty_llist(functor_arg) MINUSGREATER module_type_atomic at_mode_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  include ( val stack_ function false -> UIdent : functor ( ) -> UIdent @ lident ) let false = UIdent
                                                  ^^^^^^^
  ```
- Derivation (6 occurrences):
  ```
  paren_module_expr: LPAREN VAL list(attribute) FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case) COLON . module_type RPAREN
    module_type: . FUNCTOR list(attribute) reversed_nonempty_llist(functor_arg) MINUSGREATER module_type_atomic at_mode_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  include ( val function false -> UIdent : functor ( ) -> UIdent @ lident ) let false = UIdent
                                           ^^^^^^^
  ```
- Derivation (4 occurrences):
  ```
  paren_module_expr: LPAREN VAL list(attribute) fun_expr COLON . module_type RPAREN
    module_type: . FUNCTOR list(attribute) reversed_nonempty_llist(functor_arg) MINUSGREATER module_type_atomic at_mode_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  include ( val UIdent : functor ( ) -> UIdent @ lident ) let false = UIdent
                         ^^^^^^^
  ```
- Derivation (4 occurrences):
  ```
  delimited_type_supporting_local_open: LPAREN MODULE ext list(attribute) . module_type RPAREN
    module_type: . FUNCTOR list(attribute) reversed_nonempty_llist(functor_arg) MINUSGREATER module_type_atomic at_mode_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  exception false : ( module functor ( ) -> UIdent @ lident ) let false = UIdent
                             ^^^^^^^
  ```
- Derivation (3 occurrences):
  ```
  simple_expr: mod_longident DOT LPAREN MODULE ext list(attribute) module_expr COLON . module_type RPAREN
    module_type: . FUNCTOR list(attribute) reversed_nonempty_llist(functor_arg) MINUSGREATER module_type_atomic at_mode_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  UIdent . ( module {%hello|world|} : functor ( ) -> UIdent @ lident ) let false = UIdent
                                      ^^^^^^^
  ```
- Derivation (1 occurrence):
  ```
  simple_expr: LPAREN MODULE ext list(attribute) module_expr COLON . module_type RPAREN
    module_type: . FUNCTOR list(attribute) reversed_nonempty_llist(functor_arg) MINUSGREATER module_type_atomic at_mode_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  ( module {%hello|world|} : functor ( ) -> UIdent @ lident ) let false = UIdent
                             ^^^^^^^
  ```


### Item `module_type: . module_type_atomic` (in 48 errors)

- Derivation (4 occurrences):
  ```
  simple_pattern_not_ident: LPAREN MODULE ext list(attribute) module_name COLON . module_type RPAREN
    module_type: . module_type_atomic
      module_type_atomic: . SIG list(attribute) signature END
  ```
  Sample sentence (implementation):
  ```ocaml
  let ( module UIdent : sig end ) @ lident = UIdent [@@ and ] let false = UIdent
                        ^^^
  ```
- Derivation (4 occurrences):
  ```
  paren_module_expr: LPAREN VAL list(attribute) STACK FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case) COLONGREATER . module_type RPAREN
    module_type: . module_type_atomic
      module_type_atomic: . SIG list(attribute) signature END
  ```
  Sample sentence (implementation):
  ```ocaml
  include ( val stack_ function false -> UIdent :> sig end ) let false = UIdent
                                                   ^^^
  ```
- Derivation (4 occurrences):
  ```
  paren_module_expr: LPAREN VAL list(attribute) FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case) COLONGREATER . module_type RPAREN
    module_type: . module_type_atomic
      module_type_atomic: . SIG list(attribute) signature END
  ```
  Sample sentence (implementation):
  ```ocaml
  include ( val function false -> UIdent :> sig end ) let false = UIdent
                                            ^^^
  ```
- Derivation (4 occurrences):
  ```
  paren_module_expr: LPAREN VAL list(attribute) fun_expr COLONGREATER . module_type RPAREN
    module_type: . module_type_atomic
      module_type_atomic: . SIG list(attribute) signature END
  ```
  Sample sentence (implementation):
  ```ocaml
  include ( val UIdent :> sig end ) let false = UIdent
                          ^^^
  ```
- Derivation (4 occurrences):
  ```
  paren_module_expr: LPAREN VAL list(attribute) STACK FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case) COLON module_type COLONGREATER . module_type RPAREN
    module_type: . module_type_atomic
      module_type_atomic: . SIG list(attribute) signature END
  ```
  Sample sentence (implementation):
  ```ocaml
  include ( val stack_ function false -> UIdent : {%hello|world|} :> sig end ) let false = UIdent
                                                                     ^^^
  ```
- Derivation (4 occurrences):
  ```
  paren_module_expr: LPAREN VAL list(attribute) FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case) COLON module_type COLONGREATER . module_type RPAREN
    module_type: . module_type_atomic
      module_type_atomic: . SIG list(attribute) signature END
  ```
  Sample sentence (implementation):
  ```ocaml
  include ( val function false -> UIdent : {%hello|world|} :> sig end ) let false = UIdent
                                                              ^^^
  ```
- Derivation (4 occurrences):
  ```
  paren_module_expr: LPAREN VAL list(attribute) fun_expr COLON module_type COLONGREATER . module_type RPAREN
    module_type: . module_type_atomic
      module_type_atomic: . SIG list(attribute) signature END
  ```
  Sample sentence (implementation):
  ```ocaml
  include ( val UIdent : {%hello|world|} :> sig end ) let false = UIdent
                                            ^^^
  ```
- Derivation (4 occurrences):
  ```
  paren_module_expr: LPAREN VAL list(attribute) STACK FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case) COLON . module_type RPAREN
    module_type: . module_type_atomic
      module_type_atomic: . SIG list(attribute) signature END
  ```
  Sample sentence (implementation):
  ```ocaml
  include ( val stack_ function false -> UIdent : sig end ) let false = UIdent
                                                  ^^^
  ```
- Derivation (4 occurrences):
  ```
  paren_module_expr: LPAREN VAL list(attribute) FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case) COLON . module_type RPAREN
    module_type: . module_type_atomic
      module_type_atomic: . SIG list(attribute) signature END
  ```
  Sample sentence (implementation):
  ```ocaml
  include ( val function false -> UIdent : sig end ) let false = UIdent
                                           ^^^
  ```
- Derivation (4 occurrences):
  ```
  paren_module_expr: LPAREN VAL list(attribute) fun_expr COLON . module_type RPAREN
    module_type: . module_type_atomic
      module_type_atomic: . SIG list(attribute) signature END
  ```
  Sample sentence (implementation):
  ```ocaml
  include ( val UIdent : sig end ) let false = UIdent
                         ^^^
  ```
- Derivation (4 occurrences):
  ```
  delimited_type_supporting_local_open: LPAREN MODULE ext list(attribute) . module_type RPAREN
    module_type: . module_type_atomic
      module_type_atomic: . SIG list(attribute) signature END
  ```
  Sample sentence (implementation):
  ```ocaml
  exception false : ( module sig end ) let false = UIdent
                             ^^^
  ```
- Derivation (2 occurrences):
  ```
  simple_expr: mod_longident DOT LPAREN MODULE ext list(attribute) module_expr COLON . module_type RPAREN
    module_type: . module_type_atomic
      module_type_atomic: . SIG list(attribute) signature END
  ```
  Sample sentence (implementation):
  ```ocaml
  UIdent . ( module {%hello|world|} : sig end ) let false = UIdent
                                      ^^^
  ```
- Derivation (2 occurrences):
  ```
  simple_expr: LPAREN MODULE ext list(attribute) module_expr COLON . module_type RPAREN
    module_type: . module_type_atomic
      module_type_atomic: . SIG list(attribute) signature END
  ```
  Sample sentence (implementation):
  ```ocaml
  ( module {%hello|world|} : sig end ) let false = UIdent
                             ^^^
  ```


### Item `module_type: . FUNCTOR list(attribute) reversed_nonempty_llist(functor_arg) MINUSGREATER module_type` (in 32 errors)

- Derivation (7 occurrences):
  ```
  simple_expr: LPAREN MODULE ext list(attribute) module_expr COLON . module_type RPAREN
    module_type: . FUNCTOR list(attribute) reversed_nonempty_llist(functor_arg) MINUSGREATER module_type
  ```
  Sample sentence (implementation):
  ```ocaml
  ( module {%hello|world|} : functor ( ) -> UIdent ) let false = UIdent
                             ^^^^^^^
  ```
- Derivation (4 occurrences):
  ```
  delimited_type_supporting_local_open: LPAREN MODULE ext list(attribute) . module_type RPAREN
    module_type: . FUNCTOR list(attribute) reversed_nonempty_llist(functor_arg) MINUSGREATER module_type
  ```
  Sample sentence (implementation):
  ```ocaml
  exception false : ( module functor ( ) -> UIdent ) let false = UIdent
                             ^^^^^^^
  ```
- Derivation (2 occurrences):
  ```
  simple_pattern_not_ident: LPAREN MODULE ext list(attribute) module_name COLON . module_type RPAREN
    module_type: . FUNCTOR list(attribute) reversed_nonempty_llist(functor_arg) MINUSGREATER module_type
  ```
  Sample sentence (implementation):
  ```ocaml
  let ( module UIdent : functor ( ) -> UIdent ) @ lident = UIdent [@@ and ] let false = UIdent
                        ^^^^^^^
  ```
- Derivation (2 occurrences):
  ```
  paren_module_expr: LPAREN VAL list(attribute) STACK FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case) COLONGREATER . module_type RPAREN
    module_type: . FUNCTOR list(attribute) reversed_nonempty_llist(functor_arg) MINUSGREATER module_type
  ```
  Sample sentence (implementation):
  ```ocaml
  include ( val stack_ function false -> UIdent :> functor ( ) -> UIdent ) let false = UIdent
                                                   ^^^^^^^
  ```
- Derivation (2 occurrences):
  ```
  paren_module_expr: LPAREN VAL list(attribute) FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case) COLONGREATER . module_type RPAREN
    module_type: . FUNCTOR list(attribute) reversed_nonempty_llist(functor_arg) MINUSGREATER module_type
  ```
  Sample sentence (implementation):
  ```ocaml
  include ( val function false -> UIdent :> functor ( ) -> UIdent ) let false = UIdent
                                            ^^^^^^^
  ```
- Derivation (2 occurrences):
  ```
  paren_module_expr: LPAREN VAL list(attribute) fun_expr COLONGREATER . module_type RPAREN
    module_type: . FUNCTOR list(attribute) reversed_nonempty_llist(functor_arg) MINUSGREATER module_type
  ```
  Sample sentence (implementation):
  ```ocaml
  include ( val UIdent :> functor ( ) -> UIdent ) let false = UIdent
                          ^^^^^^^
  ```
- Derivation (2 occurrences):
  ```
  paren_module_expr: LPAREN VAL list(attribute) STACK FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case) COLON module_type COLONGREATER . module_type RPAREN
    module_type: . FUNCTOR list(attribute) reversed_nonempty_llist(functor_arg) MINUSGREATER module_type
  ```
  Sample sentence (implementation):
  ```ocaml
  include ( val stack_ function false -> UIdent : {%hello|world|} :> functor ( ) -> UIdent ) let false = UIdent
                                                                     ^^^^^^^
  ```
- Derivation (2 occurrences):
  ```
  paren_module_expr: LPAREN VAL list(attribute) FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case) COLON module_type COLONGREATER . module_type RPAREN
    module_type: . FUNCTOR list(attribute) reversed_nonempty_llist(functor_arg) MINUSGREATER module_type
  ```
  Sample sentence (implementation):
  ```ocaml
  include ( val function false -> UIdent : {%hello|world|} :> functor ( ) -> UIdent ) let false = UIdent
                                                              ^^^^^^^
  ```
- Derivation (2 occurrences):
  ```
  paren_module_expr: LPAREN VAL list(attribute) fun_expr COLON module_type COLONGREATER . module_type RPAREN
    module_type: . FUNCTOR list(attribute) reversed_nonempty_llist(functor_arg) MINUSGREATER module_type
  ```
  Sample sentence (implementation):
  ```ocaml
  include ( val UIdent : {%hello|world|} :> functor ( ) -> UIdent ) let false = UIdent
                                            ^^^^^^^
  ```
- Derivation (2 occurrences):
  ```
  paren_module_expr: LPAREN VAL list(attribute) STACK FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case) COLON . module_type RPAREN
    module_type: . FUNCTOR list(attribute) reversed_nonempty_llist(functor_arg) MINUSGREATER module_type
  ```
  Sample sentence (implementation):
  ```ocaml
  include ( val stack_ function false -> UIdent : functor ( ) -> UIdent ) let false = UIdent
                                                  ^^^^^^^
  ```
- Derivation (2 occurrences):
  ```
  paren_module_expr: LPAREN VAL list(attribute) FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case) COLON . module_type RPAREN
    module_type: . FUNCTOR list(attribute) reversed_nonempty_llist(functor_arg) MINUSGREATER module_type
  ```
  Sample sentence (implementation):
  ```ocaml
  include ( val function false -> UIdent : functor ( ) -> UIdent ) let false = UIdent
                                           ^^^^^^^
  ```
- Derivation (2 occurrences):
  ```
  paren_module_expr: LPAREN VAL list(attribute) fun_expr COLON . module_type RPAREN
    module_type: . FUNCTOR list(attribute) reversed_nonempty_llist(functor_arg) MINUSGREATER module_type
  ```
  Sample sentence (implementation):
  ```ocaml
  include ( val UIdent : functor ( ) -> UIdent ) let false = UIdent
                         ^^^^^^^
  ```
- Derivation (1 occurrence):
  ```
  simple_expr: mod_longident DOT LPAREN MODULE ext list(attribute) module_expr COLON . module_type RPAREN
    module_type: . FUNCTOR list(attribute) reversed_nonempty_llist(functor_arg) MINUSGREATER module_type
  ```
  Sample sentence (implementation):
  ```ocaml
  UIdent . ( module {%hello|world|} : functor ( ) -> UIdent ) let false = UIdent
                                      ^^^^^^^
  ```

## Error: In this scoped type, variable 'lident is reserved for the local type lident.

### Item `alias_type: . function_type` (in 168 errors)

- Derivation (4 occurrences):
  ```
  let_binding_body_no_punning: LPAREN val_ident at_mode_expr RPAREN COLON TYPE newtypes DOT . core_type EQUAL seq_expr
    core_type: . alias_type
      alias_type: . function_type
        function_type: . strict_function_or_labeled_tuple_type
          strict_function_or_labeled_tuple_type: . LPAREN reversed_nonempty_llist(typevar) DOT core_type RPAREN at_mode_expr MINUSGREATER nonempty_list(mode_legacy) tuple_type
  ```
  Sample sentence (implementation):
  ```ocaml
  let ( lident @ lident ) : type lident . ( ' lident . {%hello|world|} ) @ lident -> local_ {%hello|world|} = UIdent [@@ and ] let false = UIdent
                                          ^
  ```
- Derivation (4 occurrences):
  ```
  let_binding_body_no_punning: nonempty_list(mode_legacy) val_ident COLON TYPE newtypes DOT . core_type EQUAL seq_expr
    core_type: . alias_type
      alias_type: . function_type
        function_type: . strict_function_or_labeled_tuple_type
          strict_function_or_labeled_tuple_type: . LPAREN reversed_nonempty_llist(typevar) DOT core_type RPAREN at_mode_expr MINUSGREATER nonempty_list(mode_legacy) tuple_type
  ```
  Sample sentence (implementation):
  ```ocaml
  let local_ lident : type lident . ( ' lident . {%hello|world|} ) @ lident -> local_ {%hello|world|} = UIdent [@@ and ] let false = UIdent
                                    ^
  ```
- Derivation (4 occurrences):
  ```
  let_binding_body_no_punning: val_ident COLON TYPE newtypes DOT . core_type EQUAL seq_expr
    core_type: . alias_type
      alias_type: . function_type
        function_type: . strict_function_or_labeled_tuple_type
          strict_function_or_labeled_tuple_type: . LPAREN reversed_nonempty_llist(typevar) DOT core_type RPAREN at_mode_expr MINUSGREATER nonempty_list(mode_legacy) tuple_type
  ```
  Sample sentence (implementation):
  ```ocaml
  let lident : type lident . ( ' lident . {%hello|world|} ) @ lident -> local_ {%hello|world|} = UIdent [@@ and ] let false = UIdent
                             ^
  ```
- Derivation (4 occurrences):
  ```
  let_binding_body_no_punning: LPAREN val_ident at_mode_expr RPAREN COLON TYPE newtypes DOT . core_type EQUAL seq_expr
    core_type: . alias_type
      alias_type: . function_type
        function_type: . strict_function_or_labeled_tuple_type
          strict_function_or_labeled_tuple_type: . LPAREN reversed_nonempty_llist(typevar) DOT core_type RPAREN at_mode_expr MINUSGREATER tuple_type
  ```
  Sample sentence (implementation):
  ```ocaml
  let ( lident @ lident ) : type lident . ( ' lident . {%hello|world|} ) @ lident -> {%hello|world|} = UIdent [@@ and ] let false = UIdent
                                          ^
  ```
- Derivation (4 occurrences):
  ```
  let_binding_body_no_punning: nonempty_list(mode_legacy) val_ident COLON TYPE newtypes DOT . core_type EQUAL seq_expr
    core_type: . alias_type
      alias_type: . function_type
        function_type: . strict_function_or_labeled_tuple_type
          strict_function_or_labeled_tuple_type: . LPAREN reversed_nonempty_llist(typevar) DOT core_type RPAREN at_mode_expr MINUSGREATER tuple_type
  ```
  Sample sentence (implementation):
  ```ocaml
  let local_ lident : type lident . ( ' lident . {%hello|world|} ) @ lident -> {%hello|world|} = UIdent [@@ and ] let false = UIdent
                                    ^
  ```
- Derivation (4 occurrences):
  ```
  let_binding_body_no_punning: val_ident COLON TYPE newtypes DOT . core_type EQUAL seq_expr
    core_type: . alias_type
      alias_type: . function_type
        function_type: . strict_function_or_labeled_tuple_type
          strict_function_or_labeled_tuple_type: . LPAREN reversed_nonempty_llist(typevar) DOT core_type RPAREN at_mode_expr MINUSGREATER tuple_type
  ```
  Sample sentence (implementation):
  ```ocaml
  let lident : type lident . ( ' lident . {%hello|world|} ) @ lident -> {%hello|world|} = UIdent [@@ and ] let false = UIdent
                             ^
  ```
- Derivation (4 occurrences):
  ```
  let_binding_body_no_punning: LPAREN val_ident at_mode_expr RPAREN COLON TYPE newtypes DOT . core_type EQUAL seq_expr
    core_type: . alias_type
      alias_type: . function_type
        function_type: . strict_function_or_labeled_tuple_type
          strict_function_or_labeled_tuple_type: . LPAREN reversed_nonempty_llist(typevar) DOT core_type RPAREN MINUSGREATER nonempty_list(mode_legacy) tuple_type
  ```
  Sample sentence (implementation):
  ```ocaml
  let ( lident @ lident ) : type lident . ( ' lident . {%hello|world|} ) -> local_ {%hello|world|} = UIdent [@@ and ] let false = UIdent
                                          ^
  ```
- Derivation (4 occurrences):
  ```
  let_binding_body_no_punning: nonempty_list(mode_legacy) val_ident COLON TYPE newtypes DOT . core_type EQUAL seq_expr
    core_type: . alias_type
      alias_type: . function_type
        function_type: . strict_function_or_labeled_tuple_type
          strict_function_or_labeled_tuple_type: . LPAREN reversed_nonempty_llist(typevar) DOT core_type RPAREN MINUSGREATER nonempty_list(mode_legacy) tuple_type
  ```
  Sample sentence (implementation):
  ```ocaml
  let local_ lident : type lident . ( ' lident . {%hello|world|} ) -> local_ {%hello|world|} = UIdent [@@ and ] let false = UIdent
                                    ^
  ```
- Derivation (4 occurrences):
  ```
  let_binding_body_no_punning: val_ident COLON TYPE newtypes DOT . core_type EQUAL seq_expr
    core_type: . alias_type
      alias_type: . function_type
        function_type: . strict_function_or_labeled_tuple_type
          strict_function_or_labeled_tuple_type: . LPAREN reversed_nonempty_llist(typevar) DOT core_type RPAREN MINUSGREATER nonempty_list(mode_legacy) tuple_type
  ```
  Sample sentence (implementation):
  ```ocaml
  let lident : type lident . ( ' lident . {%hello|world|} ) -> local_ {%hello|world|} = UIdent [@@ and ] let false = UIdent
                             ^
  ```
- Derivation (4 occurrences):
  ```
  let_binding_body_no_punning: LPAREN val_ident at_mode_expr RPAREN COLON TYPE newtypes DOT . core_type EQUAL seq_expr
    core_type: . alias_type
      alias_type: . function_type
        function_type: . strict_function_or_labeled_tuple_type
          strict_function_or_labeled_tuple_type: . LPAREN reversed_nonempty_llist(typevar) DOT core_type RPAREN MINUSGREATER tuple_type
  ```
  Sample sentence (implementation):
  ```ocaml
  let ( lident @ lident ) : type lident . ( ' lident . {%hello|world|} ) -> {%hello|world|} = UIdent [@@ and ] let false = UIdent
                                          ^
  ```
- Derivation (4 occurrences):
  ```
  let_binding_body_no_punning: nonempty_list(mode_legacy) val_ident COLON TYPE newtypes DOT . core_type EQUAL seq_expr
    core_type: . alias_type
      alias_type: . function_type
        function_type: . strict_function_or_labeled_tuple_type
          strict_function_or_labeled_tuple_type: . LPAREN reversed_nonempty_llist(typevar) DOT core_type RPAREN MINUSGREATER tuple_type
  ```
  Sample sentence (implementation):
  ```ocaml
  let local_ lident : type lident . ( ' lident . {%hello|world|} ) -> {%hello|world|} = UIdent [@@ and ] let false = UIdent
                                    ^
  ```
- Derivation (4 occurrences):
  ```
  let_binding_body_no_punning: val_ident COLON TYPE newtypes DOT . core_type EQUAL seq_expr
    core_type: . alias_type
      alias_type: . function_type
        function_type: . strict_function_or_labeled_tuple_type
          strict_function_or_labeled_tuple_type: . LPAREN reversed_nonempty_llist(typevar) DOT core_type RPAREN MINUSGREATER tuple_type
  ```
  Sample sentence (implementation):
  ```ocaml
  let lident : type lident . ( ' lident . {%hello|world|} ) -> {%hello|world|} = UIdent [@@ and ] let false = UIdent
                             ^
  ```
- Derivation (2 occurrences):
  ```
  let_binding_body_no_punning: LPAREN val_ident at_mode_expr RPAREN COLON TYPE newtypes DOT . core_type EQUAL seq_expr
    core_type: . alias_type
      alias_type: . function_type
        function_type: . strict_function_or_labeled_tuple_type
          strict_function_or_labeled_tuple_type: . LPAREN reversed_nonempty_llist(typevar) DOT core_type RPAREN at_mode_expr MINUSGREATER nonempty_list(mode_legacy) tuple_type at_mode_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  let ( lident @ lident ) : type lident . ( ' lident . {%hello|world|} ) @ lident -> local_ {%hello|world|} @ lident = UIdent [@@ and ] let false = UIdent
                                          ^
  ```
- Derivation (2 occurrences):
  ```
  let_binding_body_no_punning: nonempty_list(mode_legacy) val_ident COLON TYPE newtypes DOT . core_type EQUAL seq_expr
    core_type: . alias_type
      alias_type: . function_type
        function_type: . strict_function_or_labeled_tuple_type
          strict_function_or_labeled_tuple_type: . LPAREN reversed_nonempty_llist(typevar) DOT core_type RPAREN at_mode_expr MINUSGREATER nonempty_list(mode_legacy) tuple_type at_mode_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  let local_ lident : type lident . ( ' lident . {%hello|world|} ) @ lident -> local_ {%hello|world|} @ lident = UIdent [@@ and ] let false = UIdent
                                    ^
  ```
- Derivation (2 occurrences):
  ```
  let_binding_body_no_punning: val_ident COLON TYPE newtypes DOT . core_type EQUAL seq_expr
    core_type: . alias_type
      alias_type: . function_type
        function_type: . strict_function_or_labeled_tuple_type
          strict_function_or_labeled_tuple_type: . LPAREN reversed_nonempty_llist(typevar) DOT core_type RPAREN at_mode_expr MINUSGREATER nonempty_list(mode_legacy) tuple_type at_mode_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  let lident : type lident . ( ' lident . {%hello|world|} ) @ lident -> local_ {%hello|world|} @ lident = UIdent [@@ and ] let false = UIdent
                             ^
  ```
- Derivation (2 occurrences):
  ```
  method_: BANG list(attribute) private_flag LIDENT COLON TYPE newtypes . DOT core_type EQUAL seq_expr
    core_type: . alias_type
      alias_type: . function_type
        function_type: . strict_function_or_labeled_tuple_type
          strict_function_or_labeled_tuple_type: . LPAREN reversed_nonempty_llist(typevar) DOT core_type RPAREN at_mode_expr MINUSGREATER nonempty_list(mode_legacy) tuple_type
  ```
  Sample sentence (implementation):
  ```ocaml
  object method ! lident : type lident . ( ' lident . {%hello|world|} ) @ lident -> local_ {%hello|world|} = UIdent inherit lident end let false = UIdent
                                         ^
  ```
- Derivation (2 occurrences):
  ```
  method_: list(attribute) private_flag LIDENT COLON TYPE newtypes . DOT core_type EQUAL seq_expr
    core_type: . alias_type
      alias_type: . function_type
        function_type: . strict_function_or_labeled_tuple_type
          strict_function_or_labeled_tuple_type: . LPAREN reversed_nonempty_llist(typevar) DOT core_type RPAREN at_mode_expr MINUSGREATER nonempty_list(mode_legacy) tuple_type
  ```
  Sample sentence (implementation):
  ```ocaml
  object method lident : type lident . ( ' lident . {%hello|world|} ) @ lident -> local_ {%hello|world|} = UIdent inherit lident end let false = UIdent
                                       ^
  ```
- Derivation (2 occurrences):
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
  let ( lident @ lident ) : type lident . ( ' lident . {%hello|world|} ) @ lident -> local_ {%hello|world|} [@ and ] = UIdent [@@ and ] let false = UIdent
                                          ^
  ```
- Derivation (2 occurrences):
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
  let local_ lident : type lident . ( ' lident . {%hello|world|} ) @ lident -> local_ {%hello|world|} [@ and ] = UIdent [@@ and ] let false = UIdent
                                    ^
  ```
- Derivation (2 occurrences):
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
  let lident : type lident . ( ' lident . {%hello|world|} ) @ lident -> local_ {%hello|world|} [@ and ] = UIdent [@@ and ] let false = UIdent
                             ^
  ```
- Derivation (2 occurrences):
  ```
  let_binding_body_no_punning: LPAREN val_ident at_mode_expr RPAREN COLON TYPE newtypes DOT . core_type EQUAL seq_expr
    core_type: . alias_type
      alias_type: . function_type
        function_type: . strict_function_or_labeled_tuple_type
          strict_function_or_labeled_tuple_type: . LPAREN reversed_nonempty_llist(typevar) DOT core_type RPAREN at_mode_expr MINUSGREATER tuple_type at_mode_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  let ( lident @ lident ) : type lident . ( ' lident . {%hello|world|} ) @ lident -> {%hello|world|} @ lident = UIdent [@@ and ] let false = UIdent
                                          ^
  ```
- ...


### Item `strict_function_or_labeled_tuple_type: nonempty_list(mode_legacy) . LPAREN reversed_nonempty_llist(typevar) DOT core_type RPAREN at_mode_expr MINUSGREATER tuple_type` (in 32 errors)

- Derivation (32 occurrences):
  ```
  strict_function_or_labeled_tuple_type: nonempty_list(mode_legacy) . LPAREN reversed_nonempty_llist(typevar) DOT core_type RPAREN at_mode_expr MINUSGREATER tuple_type
  ```
  Sample sentence (implementation):
  ```ocaml
  include struct let lident : type lident . local_ ( ' lident . {%hello|world|} ) @ lident -> {%hello|world|} = UIdent end let false = UIdent
                                                   ^
  ```


### Item `strict_function_or_labeled_tuple_type: optlabel . LPAREN reversed_nonempty_llist(typevar) DOT core_type RPAREN MINUSGREATER tuple_type` (in 24 errors)

- Derivation (24 occurrences):
  ```
  strict_function_or_labeled_tuple_type: optlabel . LPAREN reversed_nonempty_llist(typevar) DOT core_type RPAREN MINUSGREATER tuple_type
  ```
  Sample sentence (implementation):
  ```ocaml
  include struct let lident : type lident . ?label: ( ' lident . {%hello|world|} ) -> {%hello|world|} = UIdent end let false = UIdent
                                                    ^
  ```


### Item `strict_function_or_labeled_tuple_type: optlabel . LPAREN reversed_nonempty_llist(typevar) DOT core_type RPAREN MINUSGREATER nonempty_list(mode_legacy) tuple_type` (in 24 errors)

- Derivation (24 occurrences):
  ```
  strict_function_or_labeled_tuple_type: optlabel . LPAREN reversed_nonempty_llist(typevar) DOT core_type RPAREN MINUSGREATER nonempty_list(mode_legacy) tuple_type
  ```
  Sample sentence (implementation):
  ```ocaml
  include struct let lident : type lident . ?label: ( ' lident . {%hello|world|} ) -> local_ {%hello|world|} = UIdent end let false = UIdent
                                                    ^
  ```


### Item `strict_function_or_labeled_tuple_type: optlabel . LPAREN reversed_nonempty_llist(typevar) DOT core_type RPAREN at_mode_expr MINUSGREATER tuple_type` (in 24 errors)

- Derivation (24 occurrences):
  ```
  strict_function_or_labeled_tuple_type: optlabel . LPAREN reversed_nonempty_llist(typevar) DOT core_type RPAREN at_mode_expr MINUSGREATER tuple_type
  ```
  Sample sentence (implementation):
  ```ocaml
  include struct let lident : type lident . ?label: ( ' lident . {%hello|world|} ) @ lident -> {%hello|world|} = UIdent end let false = UIdent
                                                    ^
  ```


### Item `strict_function_or_labeled_tuple_type: optlabel . LPAREN reversed_nonempty_llist(typevar) DOT core_type RPAREN at_mode_expr MINUSGREATER nonempty_list(mode_legacy) tuple_type` (in 24 errors)

- Derivation (24 occurrences):
  ```
  strict_function_or_labeled_tuple_type: optlabel . LPAREN reversed_nonempty_llist(typevar) DOT core_type RPAREN at_mode_expr MINUSGREATER nonempty_list(mode_legacy) tuple_type
  ```
  Sample sentence (implementation):
  ```ocaml
  include struct let lident : type lident . ?label: ( ' lident . {%hello|world|} ) @ lident -> local_ {%hello|world|} = UIdent end let false = UIdent
                                                    ^
  ```


### Item `strict_function_or_labeled_tuple_type: optlabel nonempty_list(mode_legacy) . LPAREN reversed_nonempty_llist(typevar) DOT core_type RPAREN MINUSGREATER tuple_type` (in 24 errors)

- Derivation (24 occurrences):
  ```
  strict_function_or_labeled_tuple_type: optlabel nonempty_list(mode_legacy) . LPAREN reversed_nonempty_llist(typevar) DOT core_type RPAREN MINUSGREATER tuple_type
  ```
  Sample sentence (implementation):
  ```ocaml
  include struct let lident : type lident . ?label: local_ ( ' lident . {%hello|world|} ) -> {%hello|world|} = UIdent end let false = UIdent
                                                           ^
  ```


### Item `strict_function_or_labeled_tuple_type: optlabel nonempty_list(mode_legacy) . LPAREN reversed_nonempty_llist(typevar) DOT core_type RPAREN MINUSGREATER nonempty_list(mode_legacy) tuple_type` (in 24 errors)

- Derivation (24 occurrences):
  ```
  strict_function_or_labeled_tuple_type: optlabel nonempty_list(mode_legacy) . LPAREN reversed_nonempty_llist(typevar) DOT core_type RPAREN MINUSGREATER nonempty_list(mode_legacy) tuple_type
  ```
  Sample sentence (implementation):
  ```ocaml
  include struct let lident : type lident . ?label: local_ ( ' lident . {%hello|world|} ) -> local_ {%hello|world|} = UIdent end let false = UIdent
                                                           ^
  ```


### Item `strict_function_or_labeled_tuple_type: optlabel nonempty_list(mode_legacy) . LPAREN reversed_nonempty_llist(typevar) DOT core_type RPAREN at_mode_expr MINUSGREATER tuple_type` (in 24 errors)

- Derivation (24 occurrences):
  ```
  strict_function_or_labeled_tuple_type: optlabel nonempty_list(mode_legacy) . LPAREN reversed_nonempty_llist(typevar) DOT core_type RPAREN at_mode_expr MINUSGREATER tuple_type
  ```
  Sample sentence (implementation):
  ```ocaml
  include struct let lident : type lident . ?label: local_ ( ' lident . {%hello|world|} ) @ lident -> {%hello|world|} = UIdent end let false = UIdent
                                                           ^
  ```


### Item `strict_function_or_labeled_tuple_type: optlabel nonempty_list(mode_legacy) . LPAREN reversed_nonempty_llist(typevar) DOT core_type RPAREN at_mode_expr MINUSGREATER nonempty_list(mode_legacy) tuple_type` (in 24 errors)

- Derivation (24 occurrences):
  ```
  strict_function_or_labeled_tuple_type: optlabel nonempty_list(mode_legacy) . LPAREN reversed_nonempty_llist(typevar) DOT core_type RPAREN at_mode_expr MINUSGREATER nonempty_list(mode_legacy) tuple_type
  ```
  Sample sentence (implementation):
  ```ocaml
  include struct let lident : type lident . ?label: local_ ( ' lident . {%hello|world|} ) @ lident -> local_ {%hello|world|} = UIdent end let false = UIdent
                                                           ^
  ```


### Item `strict_function_or_labeled_tuple_type: LIDENT COLON . LPAREN reversed_nonempty_llist(typevar) DOT core_type RPAREN MINUSGREATER tuple_type` (in 24 errors)

- Derivation (24 occurrences):
  ```
  strict_function_or_labeled_tuple_type: LIDENT COLON . LPAREN reversed_nonempty_llist(typevar) DOT core_type RPAREN MINUSGREATER tuple_type
  ```
  Sample sentence (implementation):
  ```ocaml
  include struct let lident : type lident . lident : ( ' lident . {%hello|world|} ) -> {%hello|world|} = UIdent end let false = UIdent
                                                     ^
  ```


### Item `strict_function_or_labeled_tuple_type: LIDENT COLON . LPAREN reversed_nonempty_llist(typevar) DOT core_type RPAREN MINUSGREATER nonempty_list(mode_legacy) tuple_type` (in 24 errors)

- Derivation (24 occurrences):
  ```
  strict_function_or_labeled_tuple_type: LIDENT COLON . LPAREN reversed_nonempty_llist(typevar) DOT core_type RPAREN MINUSGREATER nonempty_list(mode_legacy) tuple_type
  ```
  Sample sentence (implementation):
  ```ocaml
  include struct let lident : type lident . lident : ( ' lident . {%hello|world|} ) -> local_ {%hello|world|} = UIdent end let false = UIdent
                                                     ^
  ```


### Item `strict_function_or_labeled_tuple_type: LIDENT COLON . LPAREN reversed_nonempty_llist(typevar) DOT core_type RPAREN at_mode_expr MINUSGREATER tuple_type` (in 24 errors)

- Derivation (24 occurrences):
  ```
  strict_function_or_labeled_tuple_type: LIDENT COLON . LPAREN reversed_nonempty_llist(typevar) DOT core_type RPAREN at_mode_expr MINUSGREATER tuple_type
  ```
  Sample sentence (implementation):
  ```ocaml
  include struct let lident : type lident . lident : ( ' lident . {%hello|world|} ) @ lident -> {%hello|world|} = UIdent end let false = UIdent
                                                     ^
  ```


### Item `strict_function_or_labeled_tuple_type: LIDENT COLON . LPAREN reversed_nonempty_llist(typevar) DOT core_type RPAREN at_mode_expr MINUSGREATER nonempty_list(mode_legacy) tuple_type` (in 24 errors)

- Derivation (24 occurrences):
  ```
  strict_function_or_labeled_tuple_type: LIDENT COLON . LPAREN reversed_nonempty_llist(typevar) DOT core_type RPAREN at_mode_expr MINUSGREATER nonempty_list(mode_legacy) tuple_type
  ```
  Sample sentence (implementation):
  ```ocaml
  include struct let lident : type lident . lident : ( ' lident . {%hello|world|} ) @ lident -> local_ {%hello|world|} = UIdent end let false = UIdent
                                                     ^
  ```


### Item `strict_function_or_labeled_tuple_type: LIDENT COLON nonempty_list(mode_legacy) . LPAREN reversed_nonempty_llist(typevar) DOT core_type RPAREN MINUSGREATER tuple_type` (in 24 errors)

- Derivation (24 occurrences):
  ```
  strict_function_or_labeled_tuple_type: LIDENT COLON nonempty_list(mode_legacy) . LPAREN reversed_nonempty_llist(typevar) DOT core_type RPAREN MINUSGREATER tuple_type
  ```
  Sample sentence (implementation):
  ```ocaml
  include struct let lident : type lident . lident : local_ ( ' lident . {%hello|world|} ) -> {%hello|world|} = UIdent end let false = UIdent
                                                            ^
  ```


### Item `strict_function_or_labeled_tuple_type: LIDENT COLON nonempty_list(mode_legacy) . LPAREN reversed_nonempty_llist(typevar) DOT core_type RPAREN MINUSGREATER nonempty_list(mode_legacy) tuple_type` (in 24 errors)

- Derivation (24 occurrences):
  ```
  strict_function_or_labeled_tuple_type: LIDENT COLON nonempty_list(mode_legacy) . LPAREN reversed_nonempty_llist(typevar) DOT core_type RPAREN MINUSGREATER nonempty_list(mode_legacy) tuple_type
  ```
  Sample sentence (implementation):
  ```ocaml
  include struct let lident : type lident . lident : local_ ( ' lident . {%hello|world|} ) -> local_ {%hello|world|} = UIdent end let false = UIdent
                                                            ^
  ```


### Item `strict_function_or_labeled_tuple_type: LIDENT COLON nonempty_list(mode_legacy) . LPAREN reversed_nonempty_llist(typevar) DOT core_type RPAREN at_mode_expr MINUSGREATER tuple_type` (in 24 errors)

- Derivation (24 occurrences):
  ```
  strict_function_or_labeled_tuple_type: LIDENT COLON nonempty_list(mode_legacy) . LPAREN reversed_nonempty_llist(typevar) DOT core_type RPAREN at_mode_expr MINUSGREATER tuple_type
  ```
  Sample sentence (implementation):
  ```ocaml
  include struct let lident : type lident . lident : local_ ( ' lident . {%hello|world|} ) @ lident -> {%hello|world|} = UIdent end let false = UIdent
                                                            ^
  ```


### Item `strict_function_or_labeled_tuple_type: LIDENT COLON nonempty_list(mode_legacy) . LPAREN reversed_nonempty_llist(typevar) DOT core_type RPAREN at_mode_expr MINUSGREATER nonempty_list(mode_legacy) tuple_type` (in 24 errors)

- Derivation (24 occurrences):
  ```
  strict_function_or_labeled_tuple_type: LIDENT COLON nonempty_list(mode_legacy) . LPAREN reversed_nonempty_llist(typevar) DOT core_type RPAREN at_mode_expr MINUSGREATER nonempty_list(mode_legacy) tuple_type
  ```
  Sample sentence (implementation):
  ```ocaml
  include struct let lident : type lident . lident : local_ ( ' lident . {%hello|world|} ) @ lident -> local_ {%hello|world|} = UIdent end let false = UIdent
                                                            ^
  ```


### Item `strict_function_or_labeled_tuple_type: nonempty_list(mode_legacy) . LPAREN reversed_nonempty_llist(typevar) DOT core_type RPAREN MINUSGREATER tuple_type` (in 24 errors)

- Derivation (24 occurrences):
  ```
  strict_function_or_labeled_tuple_type: nonempty_list(mode_legacy) . LPAREN reversed_nonempty_llist(typevar) DOT core_type RPAREN MINUSGREATER tuple_type
  ```
  Sample sentence (implementation):
  ```ocaml
  include struct let lident : type lident . local_ ( ' lident . {%hello|world|} ) -> {%hello|world|} = UIdent end let false = UIdent
                                                   ^
  ```


### Item `strict_function_or_labeled_tuple_type: nonempty_list(mode_legacy) . LPAREN reversed_nonempty_llist(typevar) DOT core_type RPAREN MINUSGREATER nonempty_list(mode_legacy) tuple_type` (in 24 errors)

- Derivation (24 occurrences):
  ```
  strict_function_or_labeled_tuple_type: nonempty_list(mode_legacy) . LPAREN reversed_nonempty_llist(typevar) DOT core_type RPAREN MINUSGREATER nonempty_list(mode_legacy) tuple_type
  ```
  Sample sentence (implementation):
  ```ocaml
  include struct let lident : type lident . local_ ( ' lident . {%hello|world|} ) -> local_ {%hello|world|} = UIdent end let false = UIdent
                                                   ^
  ```


### Item `strict_function_or_labeled_tuple_type: nonempty_list(mode_legacy) . LPAREN reversed_nonempty_llist(typevar) DOT core_type RPAREN at_mode_expr MINUSGREATER nonempty_list(mode_legacy) tuple_type` (in 24 errors)

- Derivation (24 occurrences):
  ```
  strict_function_or_labeled_tuple_type: nonempty_list(mode_legacy) . LPAREN reversed_nonempty_llist(typevar) DOT core_type RPAREN at_mode_expr MINUSGREATER nonempty_list(mode_legacy) tuple_type
  ```
  Sample sentence (implementation):
  ```ocaml
  include struct let lident : type lident . local_ ( ' lident . {%hello|world|} ) @ lident -> local_ {%hello|world|} = UIdent end let false = UIdent
                                                   ^
  ```


### Item `tuple_type: . atomic_type` (in 24 errors)

- Derivation (4 occurrences):
  ```
  let_binding_body_no_punning: LPAREN val_ident at_mode_expr RPAREN COLON TYPE newtypes DOT . tuple_type at_mode_expr EQUAL seq_expr
    tuple_type: . atomic_type
      atomic_type: . LPAREN QUOTE ident COLON jkind_annotation RPAREN
  ```
  Sample sentence (implementation):
  ```ocaml
  include struct let ( lident @ lident ) : type lident . ( ' lident : lident ) @ lident = UIdent end let false = UIdent
                                                         ^
  ```
- Derivation (4 occurrences):
  ```
  let_binding_body_no_punning: nonempty_list(mode_legacy) val_ident COLON TYPE newtypes DOT . tuple_type at_mode_expr EQUAL seq_expr
    tuple_type: . atomic_type
      atomic_type: . LPAREN QUOTE ident COLON jkind_annotation RPAREN
  ```
  Sample sentence (implementation):
  ```ocaml
  include struct let local_ lident : type lident . ( ' lident : lident ) @ lident = UIdent end let false = UIdent
                                                   ^
  ```
- Derivation (4 occurrences):
  ```
  let_binding_body_no_punning: val_ident COLON TYPE newtypes DOT . tuple_type at_mode_expr EQUAL seq_expr
    tuple_type: . atomic_type
      atomic_type: . LPAREN QUOTE ident COLON jkind_annotation RPAREN
  ```
  Sample sentence (implementation):
  ```ocaml
  include struct let lident : type lident . ( ' lident : lident ) @ lident = UIdent end let false = UIdent
                                            ^
  ```
- Derivation (4 occurrences):
  ```
  let_binding_body_no_punning: LPAREN val_ident at_mode_expr RPAREN COLON TYPE newtypes DOT . tuple_type at_mode_expr EQUAL seq_expr
    tuple_type: . atomic_type
      atomic_type: . QUOTE ident
  ```
  Sample sentence (implementation):
  ```ocaml
  include struct let ( lident @ lident ) : type lident . ' lident @ lident = UIdent end let false = UIdent
                                                         ^
  ```
- Derivation (4 occurrences):
  ```
  let_binding_body_no_punning: nonempty_list(mode_legacy) val_ident COLON TYPE newtypes DOT . tuple_type at_mode_expr EQUAL seq_expr
    tuple_type: . atomic_type
      atomic_type: . QUOTE ident
  ```
  Sample sentence (implementation):
  ```ocaml
  include struct let local_ lident : type lident . ' lident @ lident = UIdent end let false = UIdent
                                                   ^
  ```
- Derivation (4 occurrences):
  ```
  let_binding_body_no_punning: val_ident COLON TYPE newtypes DOT . tuple_type at_mode_expr EQUAL seq_expr
    tuple_type: . atomic_type
      atomic_type: . QUOTE ident
  ```
  Sample sentence (implementation):
  ```ocaml
  include struct let lident : type lident . ' lident @ lident = UIdent end let false = UIdent
                                            ^
  ```


### Item `strict_function_or_labeled_tuple_type: optlabel . LPAREN reversed_nonempty_llist(typevar) DOT core_type RPAREN MINUSGREATER strict_function_or_labeled_tuple_type` (in 16 errors)

- Derivation (16 occurrences):
  ```
  strict_function_or_labeled_tuple_type: optlabel . LPAREN reversed_nonempty_llist(typevar) DOT core_type RPAREN MINUSGREATER strict_function_or_labeled_tuple_type
  ```
  Sample sentence (implementation):
  ```ocaml
  include struct let lident : type lident . ?label: ( ' lident . {%hello|world|} ) -> {%hello|world|} -> {%hello|world|} = UIdent end let false = UIdent
                                                    ^
  ```


### Item `strict_function_or_labeled_tuple_type: optlabel . LPAREN reversed_nonempty_llist(typevar) DOT core_type RPAREN at_mode_expr MINUSGREATER strict_function_or_labeled_tuple_type` (in 16 errors)

- Derivation (16 occurrences):
  ```
  strict_function_or_labeled_tuple_type: optlabel . LPAREN reversed_nonempty_llist(typevar) DOT core_type RPAREN at_mode_expr MINUSGREATER strict_function_or_labeled_tuple_type
  ```
  Sample sentence (implementation):
  ```ocaml
  include struct let lident : type lident . ?label: ( ' lident . {%hello|world|} ) @ lident -> {%hello|world|} -> {%hello|world|} = UIdent end let false = UIdent
                                                    ^
  ```


### Item `strict_function_or_labeled_tuple_type: optlabel nonempty_list(mode_legacy) . LPAREN reversed_nonempty_llist(typevar) DOT core_type RPAREN MINUSGREATER strict_function_or_labeled_tuple_type` (in 16 errors)

- Derivation (16 occurrences):
  ```
  strict_function_or_labeled_tuple_type: optlabel nonempty_list(mode_legacy) . LPAREN reversed_nonempty_llist(typevar) DOT core_type RPAREN MINUSGREATER strict_function_or_labeled_tuple_type
  ```
  Sample sentence (implementation):
  ```ocaml
  include struct let lident : type lident . ?label: local_ ( ' lident . {%hello|world|} ) -> {%hello|world|} -> {%hello|world|} = UIdent end let false = UIdent
                                                           ^
  ```


### Item `strict_function_or_labeled_tuple_type: optlabel nonempty_list(mode_legacy) . LPAREN reversed_nonempty_llist(typevar) DOT core_type RPAREN at_mode_expr MINUSGREATER strict_function_or_labeled_tuple_type` (in 16 errors)

- Derivation (16 occurrences):
  ```
  strict_function_or_labeled_tuple_type: optlabel nonempty_list(mode_legacy) . LPAREN reversed_nonempty_llist(typevar) DOT core_type RPAREN at_mode_expr MINUSGREATER strict_function_or_labeled_tuple_type
  ```
  Sample sentence (implementation):
  ```ocaml
  include struct let lident : type lident . ?label: local_ ( ' lident . {%hello|world|} ) @ lident -> {%hello|world|} -> {%hello|world|} = UIdent end let false = UIdent
                                                           ^
  ```


### Item `strict_function_or_labeled_tuple_type: LIDENT COLON . LPAREN reversed_nonempty_llist(typevar) DOT core_type RPAREN MINUSGREATER strict_function_or_labeled_tuple_type` (in 16 errors)

- Derivation (16 occurrences):
  ```
  strict_function_or_labeled_tuple_type: LIDENT COLON . LPAREN reversed_nonempty_llist(typevar) DOT core_type RPAREN MINUSGREATER strict_function_or_labeled_tuple_type
  ```
  Sample sentence (implementation):
  ```ocaml
  include struct let lident : type lident . lident : ( ' lident . {%hello|world|} ) -> {%hello|world|} -> {%hello|world|} = UIdent end let false = UIdent
                                                     ^
  ```


### Item `strict_function_or_labeled_tuple_type: LIDENT COLON . LPAREN reversed_nonempty_llist(typevar) DOT core_type RPAREN at_mode_expr MINUSGREATER strict_function_or_labeled_tuple_type` (in 16 errors)

- Derivation (16 occurrences):
  ```
  strict_function_or_labeled_tuple_type: LIDENT COLON . LPAREN reversed_nonempty_llist(typevar) DOT core_type RPAREN at_mode_expr MINUSGREATER strict_function_or_labeled_tuple_type
  ```
  Sample sentence (implementation):
  ```ocaml
  include struct let lident : type lident . lident : ( ' lident . {%hello|world|} ) @ lident -> {%hello|world|} -> {%hello|world|} = UIdent end let false = UIdent
                                                     ^
  ```


### Item `strict_function_or_labeled_tuple_type: LIDENT COLON nonempty_list(mode_legacy) . LPAREN reversed_nonempty_llist(typevar) DOT core_type RPAREN MINUSGREATER strict_function_or_labeled_tuple_type` (in 16 errors)

- Derivation (16 occurrences):
  ```
  strict_function_or_labeled_tuple_type: LIDENT COLON nonempty_list(mode_legacy) . LPAREN reversed_nonempty_llist(typevar) DOT core_type RPAREN MINUSGREATER strict_function_or_labeled_tuple_type
  ```
  Sample sentence (implementation):
  ```ocaml
  include struct let lident : type lident . lident : local_ ( ' lident . {%hello|world|} ) -> {%hello|world|} -> {%hello|world|} = UIdent end let false = UIdent
                                                            ^
  ```


### Item `strict_function_or_labeled_tuple_type: LIDENT COLON nonempty_list(mode_legacy) . LPAREN reversed_nonempty_llist(typevar) DOT core_type RPAREN at_mode_expr MINUSGREATER strict_function_or_labeled_tuple_type` (in 16 errors)

- Derivation (16 occurrences):
  ```
  strict_function_or_labeled_tuple_type: LIDENT COLON nonempty_list(mode_legacy) . LPAREN reversed_nonempty_llist(typevar) DOT core_type RPAREN at_mode_expr MINUSGREATER strict_function_or_labeled_tuple_type
  ```
  Sample sentence (implementation):
  ```ocaml
  include struct let lident : type lident . lident : local_ ( ' lident . {%hello|world|} ) @ lident -> {%hello|world|} -> {%hello|world|} = UIdent end let false = UIdent
                                                            ^
  ```


### Item `strict_function_or_labeled_tuple_type: nonempty_list(mode_legacy) . LPAREN reversed_nonempty_llist(typevar) DOT core_type RPAREN MINUSGREATER strict_function_or_labeled_tuple_type` (in 16 errors)

- Derivation (16 occurrences):
  ```
  strict_function_or_labeled_tuple_type: nonempty_list(mode_legacy) . LPAREN reversed_nonempty_llist(typevar) DOT core_type RPAREN MINUSGREATER strict_function_or_labeled_tuple_type
  ```
  Sample sentence (implementation):
  ```ocaml
  include struct let lident : type lident . local_ ( ' lident . {%hello|world|} ) -> {%hello|world|} -> {%hello|world|} = UIdent end let false = UIdent
                                                   ^
  ```


### Item `strict_function_or_labeled_tuple_type: nonempty_list(mode_legacy) . LPAREN reversed_nonempty_llist(typevar) DOT core_type RPAREN at_mode_expr MINUSGREATER strict_function_or_labeled_tuple_type` (in 16 errors)

- Derivation (16 occurrences):
  ```
  strict_function_or_labeled_tuple_type: nonempty_list(mode_legacy) . LPAREN reversed_nonempty_llist(typevar) DOT core_type RPAREN at_mode_expr MINUSGREATER strict_function_or_labeled_tuple_type
  ```
  Sample sentence (implementation):
  ```ocaml
  include struct let lident : type lident . local_ ( ' lident . {%hello|world|} ) @ lident -> {%hello|world|} -> {%hello|world|} = UIdent end let false = UIdent
                                                   ^
  ```


### Item `alias_type: alias_type AS LPAREN . QUOTE ident COLON jkind_annotation RPAREN` (in 8 errors)

- Derivation (8 occurrences):
  ```
  alias_type: alias_type AS LPAREN . QUOTE ident COLON jkind_annotation RPAREN
  ```
  Sample sentence (implementation):
  ```ocaml
  include struct let lident : type lident . {%hello|world|} as ( ' lident : lident ) = UIdent end let false = UIdent
                                                                 ^
  ```


### Item `strict_function_or_labeled_tuple_type: optlabel . LPAREN reversed_nonempty_llist(typevar) DOT core_type RPAREN MINUSGREATER tuple_type at_mode_expr` (in 8 errors)

- Derivation (8 occurrences):
  ```
  strict_function_or_labeled_tuple_type: optlabel . LPAREN reversed_nonempty_llist(typevar) DOT core_type RPAREN MINUSGREATER tuple_type at_mode_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  include struct let lident : type lident . ?label: ( ' lident . {%hello|world|} ) -> {%hello|world|} @ lident = UIdent end let false = UIdent
                                                    ^
  ```


### Item `strict_function_or_labeled_tuple_type: optlabel . LPAREN reversed_nonempty_llist(typevar) DOT core_type RPAREN MINUSGREATER nonempty_list(mode_legacy) tuple_type at_mode_expr` (in 8 errors)

- Derivation (8 occurrences):
  ```
  strict_function_or_labeled_tuple_type: optlabel . LPAREN reversed_nonempty_llist(typevar) DOT core_type RPAREN MINUSGREATER nonempty_list(mode_legacy) tuple_type at_mode_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  include struct let lident : type lident . ?label: ( ' lident . {%hello|world|} ) -> local_ {%hello|world|} @ lident = UIdent end let false = UIdent
                                                    ^
  ```


### Item `strict_function_or_labeled_tuple_type: optlabel . LPAREN reversed_nonempty_llist(typevar) DOT core_type RPAREN at_mode_expr MINUSGREATER tuple_type at_mode_expr` (in 8 errors)

- Derivation (8 occurrences):
  ```
  strict_function_or_labeled_tuple_type: optlabel . LPAREN reversed_nonempty_llist(typevar) DOT core_type RPAREN at_mode_expr MINUSGREATER tuple_type at_mode_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  include struct let lident : type lident . ?label: ( ' lident . {%hello|world|} ) @ lident -> {%hello|world|} @ lident = UIdent end let false = UIdent
                                                    ^
  ```


### Item `strict_function_or_labeled_tuple_type: optlabel . LPAREN reversed_nonempty_llist(typevar) DOT core_type RPAREN at_mode_expr MINUSGREATER nonempty_list(mode_legacy) tuple_type at_mode_expr` (in 8 errors)

- Derivation (8 occurrences):
  ```
  strict_function_or_labeled_tuple_type: optlabel . LPAREN reversed_nonempty_llist(typevar) DOT core_type RPAREN at_mode_expr MINUSGREATER nonempty_list(mode_legacy) tuple_type at_mode_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  include struct let lident : type lident . ?label: ( ' lident . {%hello|world|} ) @ lident -> local_ {%hello|world|} @ lident = UIdent end let false = UIdent
                                                    ^
  ```


### Item `strict_function_or_labeled_tuple_type: optlabel nonempty_list(mode_legacy) . LPAREN reversed_nonempty_llist(typevar) DOT core_type RPAREN MINUSGREATER tuple_type at_mode_expr` (in 8 errors)

- Derivation (8 occurrences):
  ```
  strict_function_or_labeled_tuple_type: optlabel nonempty_list(mode_legacy) . LPAREN reversed_nonempty_llist(typevar) DOT core_type RPAREN MINUSGREATER tuple_type at_mode_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  include struct let lident : type lident . ?label: local_ ( ' lident . {%hello|world|} ) -> {%hello|world|} @ lident = UIdent end let false = UIdent
                                                           ^
  ```


### Item `strict_function_or_labeled_tuple_type: optlabel nonempty_list(mode_legacy) . LPAREN reversed_nonempty_llist(typevar) DOT core_type RPAREN MINUSGREATER nonempty_list(mode_legacy) tuple_type at_mode_expr` (in 8 errors)

- Derivation (8 occurrences):
  ```
  strict_function_or_labeled_tuple_type: optlabel nonempty_list(mode_legacy) . LPAREN reversed_nonempty_llist(typevar) DOT core_type RPAREN MINUSGREATER nonempty_list(mode_legacy) tuple_type at_mode_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  include struct let lident : type lident . ?label: local_ ( ' lident . {%hello|world|} ) -> local_ {%hello|world|} @ lident = UIdent end let false = UIdent
                                                           ^
  ```


### Item `strict_function_or_labeled_tuple_type: optlabel nonempty_list(mode_legacy) . LPAREN reversed_nonempty_llist(typevar) DOT core_type RPAREN at_mode_expr MINUSGREATER tuple_type at_mode_expr` (in 8 errors)

- Derivation (8 occurrences):
  ```
  strict_function_or_labeled_tuple_type: optlabel nonempty_list(mode_legacy) . LPAREN reversed_nonempty_llist(typevar) DOT core_type RPAREN at_mode_expr MINUSGREATER tuple_type at_mode_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  include struct let lident : type lident . ?label: local_ ( ' lident . {%hello|world|} ) @ lident -> {%hello|world|} @ lident = UIdent end let false = UIdent
                                                           ^
  ```


### Item `strict_function_or_labeled_tuple_type: optlabel nonempty_list(mode_legacy) . LPAREN reversed_nonempty_llist(typevar) DOT core_type RPAREN at_mode_expr MINUSGREATER nonempty_list(mode_legacy) tuple_type at_mode_expr` (in 8 errors)

- Derivation (8 occurrences):
  ```
  strict_function_or_labeled_tuple_type: optlabel nonempty_list(mode_legacy) . LPAREN reversed_nonempty_llist(typevar) DOT core_type RPAREN at_mode_expr MINUSGREATER nonempty_list(mode_legacy) tuple_type at_mode_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  include struct let lident : type lident . ?label: local_ ( ' lident . {%hello|world|} ) @ lident -> local_ {%hello|world|} @ lident = UIdent end let false = UIdent
                                                           ^
  ```


### Item `strict_function_or_labeled_tuple_type: LIDENT COLON . LPAREN reversed_nonempty_llist(typevar) DOT core_type RPAREN MINUSGREATER tuple_type at_mode_expr` (in 8 errors)

- Derivation (8 occurrences):
  ```
  strict_function_or_labeled_tuple_type: LIDENT COLON . LPAREN reversed_nonempty_llist(typevar) DOT core_type RPAREN MINUSGREATER tuple_type at_mode_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  include struct let lident : type lident . lident : ( ' lident . {%hello|world|} ) -> {%hello|world|} @ lident = UIdent end let false = UIdent
                                                     ^
  ```


### Item `strict_function_or_labeled_tuple_type: LIDENT COLON . LPAREN reversed_nonempty_llist(typevar) DOT core_type RPAREN MINUSGREATER nonempty_list(mode_legacy) tuple_type at_mode_expr` (in 8 errors)

- Derivation (8 occurrences):
  ```
  strict_function_or_labeled_tuple_type: LIDENT COLON . LPAREN reversed_nonempty_llist(typevar) DOT core_type RPAREN MINUSGREATER nonempty_list(mode_legacy) tuple_type at_mode_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  include struct let lident : type lident . lident : ( ' lident . {%hello|world|} ) -> local_ {%hello|world|} @ lident = UIdent end let false = UIdent
                                                     ^
  ```


### Item `strict_function_or_labeled_tuple_type: LIDENT COLON . LPAREN reversed_nonempty_llist(typevar) DOT core_type RPAREN at_mode_expr MINUSGREATER tuple_type at_mode_expr` (in 8 errors)

- Derivation (8 occurrences):
  ```
  strict_function_or_labeled_tuple_type: LIDENT COLON . LPAREN reversed_nonempty_llist(typevar) DOT core_type RPAREN at_mode_expr MINUSGREATER tuple_type at_mode_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  include struct let lident : type lident . lident : ( ' lident . {%hello|world|} ) @ lident -> {%hello|world|} @ lident = UIdent end let false = UIdent
                                                     ^
  ```


### Item `strict_function_or_labeled_tuple_type: LIDENT COLON . LPAREN reversed_nonempty_llist(typevar) DOT core_type RPAREN at_mode_expr MINUSGREATER nonempty_list(mode_legacy) tuple_type at_mode_expr` (in 8 errors)

- Derivation (8 occurrences):
  ```
  strict_function_or_labeled_tuple_type: LIDENT COLON . LPAREN reversed_nonempty_llist(typevar) DOT core_type RPAREN at_mode_expr MINUSGREATER nonempty_list(mode_legacy) tuple_type at_mode_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  include struct let lident : type lident . lident : ( ' lident . {%hello|world|} ) @ lident -> local_ {%hello|world|} @ lident = UIdent end let false = UIdent
                                                     ^
  ```


### Item `strict_function_or_labeled_tuple_type: LIDENT COLON nonempty_list(mode_legacy) . LPAREN reversed_nonempty_llist(typevar) DOT core_type RPAREN MINUSGREATER tuple_type at_mode_expr` (in 8 errors)

- Derivation (8 occurrences):
  ```
  strict_function_or_labeled_tuple_type: LIDENT COLON nonempty_list(mode_legacy) . LPAREN reversed_nonempty_llist(typevar) DOT core_type RPAREN MINUSGREATER tuple_type at_mode_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  include struct let lident : type lident . lident : local_ ( ' lident . {%hello|world|} ) -> {%hello|world|} @ lident = UIdent end let false = UIdent
                                                            ^
  ```


### Item `strict_function_or_labeled_tuple_type: LIDENT COLON nonempty_list(mode_legacy) . LPAREN reversed_nonempty_llist(typevar) DOT core_type RPAREN MINUSGREATER nonempty_list(mode_legacy) tuple_type at_mode_expr` (in 8 errors)

- Derivation (8 occurrences):
  ```
  strict_function_or_labeled_tuple_type: LIDENT COLON nonempty_list(mode_legacy) . LPAREN reversed_nonempty_llist(typevar) DOT core_type RPAREN MINUSGREATER nonempty_list(mode_legacy) tuple_type at_mode_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  include struct let lident : type lident . lident : local_ ( ' lident . {%hello|world|} ) -> local_ {%hello|world|} @ lident = UIdent end let false = UIdent
                                                            ^
  ```


### Item `strict_function_or_labeled_tuple_type: LIDENT COLON nonempty_list(mode_legacy) . LPAREN reversed_nonempty_llist(typevar) DOT core_type RPAREN at_mode_expr MINUSGREATER tuple_type at_mode_expr` (in 8 errors)

- Derivation (8 occurrences):
  ```
  strict_function_or_labeled_tuple_type: LIDENT COLON nonempty_list(mode_legacy) . LPAREN reversed_nonempty_llist(typevar) DOT core_type RPAREN at_mode_expr MINUSGREATER tuple_type at_mode_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  include struct let lident : type lident . lident : local_ ( ' lident . {%hello|world|} ) @ lident -> {%hello|world|} @ lident = UIdent end let false = UIdent
                                                            ^
  ```


### Item `strict_function_or_labeled_tuple_type: LIDENT COLON nonempty_list(mode_legacy) . LPAREN reversed_nonempty_llist(typevar) DOT core_type RPAREN at_mode_expr MINUSGREATER nonempty_list(mode_legacy) tuple_type at_mode_expr` (in 8 errors)

- Derivation (8 occurrences):
  ```
  strict_function_or_labeled_tuple_type: LIDENT COLON nonempty_list(mode_legacy) . LPAREN reversed_nonempty_llist(typevar) DOT core_type RPAREN at_mode_expr MINUSGREATER nonempty_list(mode_legacy) tuple_type at_mode_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  include struct let lident : type lident . lident : local_ ( ' lident . {%hello|world|} ) @ lident -> local_ {%hello|world|} @ lident = UIdent end let false = UIdent
                                                            ^
  ```


### Item `strict_function_or_labeled_tuple_type: nonempty_list(mode_legacy) . LPAREN reversed_nonempty_llist(typevar) DOT core_type RPAREN MINUSGREATER tuple_type at_mode_expr` (in 8 errors)

- Derivation (8 occurrences):
  ```
  strict_function_or_labeled_tuple_type: nonempty_list(mode_legacy) . LPAREN reversed_nonempty_llist(typevar) DOT core_type RPAREN MINUSGREATER tuple_type at_mode_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  include struct let lident : type lident . local_ ( ' lident . {%hello|world|} ) -> {%hello|world|} @ lident = UIdent end let false = UIdent
                                                   ^
  ```


### Item `strict_function_or_labeled_tuple_type: nonempty_list(mode_legacy) . LPAREN reversed_nonempty_llist(typevar) DOT core_type RPAREN MINUSGREATER nonempty_list(mode_legacy) tuple_type at_mode_expr` (in 8 errors)

- Derivation (8 occurrences):
  ```
  strict_function_or_labeled_tuple_type: nonempty_list(mode_legacy) . LPAREN reversed_nonempty_llist(typevar) DOT core_type RPAREN MINUSGREATER nonempty_list(mode_legacy) tuple_type at_mode_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  include struct let lident : type lident . local_ ( ' lident . {%hello|world|} ) -> local_ {%hello|world|} @ lident = UIdent end let false = UIdent
                                                   ^
  ```


### Item `strict_function_or_labeled_tuple_type: nonempty_list(mode_legacy) . LPAREN reversed_nonempty_llist(typevar) DOT core_type RPAREN at_mode_expr MINUSGREATER tuple_type at_mode_expr` (in 8 errors)

- Derivation (8 occurrences):
  ```
  strict_function_or_labeled_tuple_type: nonempty_list(mode_legacy) . LPAREN reversed_nonempty_llist(typevar) DOT core_type RPAREN at_mode_expr MINUSGREATER tuple_type at_mode_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  include struct let lident : type lident . local_ ( ' lident . {%hello|world|} ) @ lident -> {%hello|world|} @ lident = UIdent end let false = UIdent
                                                   ^
  ```


### Item `strict_function_or_labeled_tuple_type: nonempty_list(mode_legacy) . LPAREN reversed_nonempty_llist(typevar) DOT core_type RPAREN at_mode_expr MINUSGREATER nonempty_list(mode_legacy) tuple_type at_mode_expr` (in 8 errors)

- Derivation (8 occurrences):
  ```
  strict_function_or_labeled_tuple_type: nonempty_list(mode_legacy) . LPAREN reversed_nonempty_llist(typevar) DOT core_type RPAREN at_mode_expr MINUSGREATER nonempty_list(mode_legacy) tuple_type at_mode_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  include struct let lident : type lident . local_ ( ' lident . {%hello|world|} ) @ lident -> local_ {%hello|world|} @ lident = UIdent end let false = UIdent
                                                   ^
  ```

## Error: Syntax error: mode annotations not expected.

### Item `fun_expr: . simple_expr` (in 1170 errors)

- Derivation (433 occurrences):
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
  ( UIdent :> {%hello|world|} @ lident ) let false = UIdent
  ^
  ```
- Derivation (143 occurrences):
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
  ( UIdent : {%hello|world|} :> {%hello|world|} @ lident ) let false = UIdent
  ^
  ```
- Derivation (3 occurrences):
  ```
  simple_expr: simple_expr DOT mod_longident DOTOP LBRACKET . separated_or_terminated_nonempty_list(SEMI,expr) RBRACKET
    separated_or_terminated_nonempty_list(SEMI,expr): . fun_expr
      fun_expr: . simple_expr
        simple_expr: . LPAREN seq_expr COLONGREATER tuple_type at_mode_expr RPAREN
  ```
  Sample sentence (implementation):
  ```ocaml
  false . UIdent .+ [ ( UIdent :> {%hello|world|} @ lident ) ] let false = UIdent
                      ^
  ```
- Derivation (3 occurrences):
  ```
  simple_expr: simple_expr DOTOP LBRACKET . separated_or_terminated_nonempty_list(SEMI,expr) RBRACKET
    separated_or_terminated_nonempty_list(SEMI,expr): . fun_expr
      fun_expr: . simple_expr
        simple_expr: . LPAREN seq_expr COLONGREATER tuple_type at_mode_expr RPAREN
  ```
  Sample sentence (implementation):
  ```ocaml
  UIdent .+ [ ( UIdent :> {%hello|world|} @ lident ) ] let false = UIdent
              ^
  ```
- Derivation (3 occurrences):
  ```
  simple_expr: simple_expr DOT mod_longident DOTOP LBRACE . separated_or_terminated_nonempty_list(SEMI,expr) RBRACE
    separated_or_terminated_nonempty_list(SEMI,expr): . fun_expr
      fun_expr: . simple_expr
        simple_expr: . LPAREN seq_expr COLONGREATER tuple_type at_mode_expr RPAREN
  ```
  Sample sentence (implementation):
  ```ocaml
  false . UIdent .+ { ( UIdent :> {%hello|world|} @ lident ) } let false = UIdent
                      ^
  ```
- Derivation (3 occurrences):
  ```
  simple_expr: simple_expr DOTOP LBRACE . separated_or_terminated_nonempty_list(SEMI,expr) RBRACE
    separated_or_terminated_nonempty_list(SEMI,expr): . fun_expr
      fun_expr: . simple_expr
        simple_expr: . LPAREN seq_expr COLONGREATER tuple_type at_mode_expr RPAREN
  ```
  Sample sentence (implementation):
  ```ocaml
  UIdent .+ { ( UIdent :> {%hello|world|} @ lident ) } let false = UIdent
              ^
  ```
- Derivation (3 occurrences):
  ```
  simple_expr: simple_expr DOT mod_longident DOTOP LPAREN . separated_or_terminated_nonempty_list(SEMI,expr) RPAREN
    separated_or_terminated_nonempty_list(SEMI,expr): . fun_expr
      fun_expr: . simple_expr
        simple_expr: . LPAREN seq_expr COLONGREATER tuple_type at_mode_expr RPAREN
  ```
  Sample sentence (implementation):
  ```ocaml
  false . UIdent .+ ( ( UIdent :> {%hello|world|} @ lident ) ) let false = UIdent
                      ^
  ```
- Derivation (3 occurrences):
  ```
  simple_expr: simple_expr DOTOP LPAREN . separated_or_terminated_nonempty_list(SEMI,expr) RPAREN
    separated_or_terminated_nonempty_list(SEMI,expr): . fun_expr
      fun_expr: . simple_expr
        simple_expr: . LPAREN seq_expr COLONGREATER tuple_type at_mode_expr RPAREN
  ```
  Sample sentence (implementation):
  ```ocaml
  UIdent .+ ( ( UIdent :> {%hello|world|} @ lident ) ) let false = UIdent
              ^
  ```
- Derivation (3 occurrences):
  ```
  simple_expr: simple_expr DOT LBRACKET . seq_expr RBRACKET
    seq_expr: . fun_seq_expr
      fun_seq_expr: . fun_expr
        fun_expr: . simple_expr
          simple_expr: . LPAREN seq_expr COLONGREATER tuple_type at_mode_expr RPAREN
  ```
  Sample sentence (implementation):
  ```ocaml
  false . [ ( UIdent :> {%hello|world|} @ lident ) ] let false = UIdent
            ^
  ```
- Derivation (3 occurrences):
  ```
  simple_expr: simple_expr DOT LBRACE . seq_expr RBRACE
    seq_expr: . fun_seq_expr
      fun_seq_expr: . fun_expr
        fun_expr: . simple_expr
          simple_expr: . LPAREN seq_expr COLONGREATER tuple_type at_mode_expr RPAREN
  ```
  Sample sentence (implementation):
  ```ocaml
  false . { ( UIdent :> {%hello|world|} @ lident ) } let false = UIdent
            ^
  ```
- Derivation (3 occurrences):
  ```
  simple_expr: simple_expr DOT LPAREN . seq_expr RPAREN
    seq_expr: . fun_seq_expr
      fun_seq_expr: . fun_expr
        fun_expr: . simple_expr
          simple_expr: . LPAREN seq_expr COLONGREATER tuple_type at_mode_expr RPAREN
  ```
  Sample sentence (implementation):
  ```ocaml
  false . ( ( UIdent :> {%hello|world|} @ lident ) ) let false = UIdent
            ^
  ```
- Derivation (3 occurrences):
  ```
  simple_expr: simple_expr DOT mod_longident DOTOP LBRACKET . separated_or_terminated_nonempty_list(SEMI,expr) RBRACKET
    separated_or_terminated_nonempty_list(SEMI,expr): . fun_expr
      fun_expr: . simple_expr
        simple_expr: . LPAREN seq_expr COLON core_type COLONGREATER tuple_type at_mode_expr RPAREN
  ```
  Sample sentence (implementation):
  ```ocaml
  false . UIdent .+ [ ( UIdent : {%hello|world|} :> {%hello|world|} @ lident ) ] let false = UIdent
                      ^
  ```
- Derivation (3 occurrences):
  ```
  simple_expr: simple_expr DOTOP LBRACKET . separated_or_terminated_nonempty_list(SEMI,expr) RBRACKET
    separated_or_terminated_nonempty_list(SEMI,expr): . fun_expr
      fun_expr: . simple_expr
        simple_expr: . LPAREN seq_expr COLON core_type COLONGREATER tuple_type at_mode_expr RPAREN
  ```
  Sample sentence (implementation):
  ```ocaml
  UIdent .+ [ ( UIdent : {%hello|world|} :> {%hello|world|} @ lident ) ] let false = UIdent
              ^
  ```
- Derivation (3 occurrences):
  ```
  simple_expr: simple_expr DOT mod_longident DOTOP LBRACE . separated_or_terminated_nonempty_list(SEMI,expr) RBRACE
    separated_or_terminated_nonempty_list(SEMI,expr): . fun_expr
      fun_expr: . simple_expr
        simple_expr: . LPAREN seq_expr COLON core_type COLONGREATER tuple_type at_mode_expr RPAREN
  ```
  Sample sentence (implementation):
  ```ocaml
  false . UIdent .+ { ( UIdent : {%hello|world|} :> {%hello|world|} @ lident ) } let false = UIdent
                      ^
  ```
- Derivation (3 occurrences):
  ```
  simple_expr: simple_expr DOTOP LBRACE . separated_or_terminated_nonempty_list(SEMI,expr) RBRACE
    separated_or_terminated_nonempty_list(SEMI,expr): . fun_expr
      fun_expr: . simple_expr
        simple_expr: . LPAREN seq_expr COLON core_type COLONGREATER tuple_type at_mode_expr RPAREN
  ```
  Sample sentence (implementation):
  ```ocaml
  UIdent .+ { ( UIdent : {%hello|world|} :> {%hello|world|} @ lident ) } let false = UIdent
              ^
  ```
- Derivation (3 occurrences):
  ```
  simple_expr: simple_expr DOT mod_longident DOTOP LPAREN . separated_or_terminated_nonempty_list(SEMI,expr) RPAREN
    separated_or_terminated_nonempty_list(SEMI,expr): . fun_expr
      fun_expr: . simple_expr
        simple_expr: . LPAREN seq_expr COLON core_type COLONGREATER tuple_type at_mode_expr RPAREN
  ```
  Sample sentence (implementation):
  ```ocaml
  false . UIdent .+ ( ( UIdent : {%hello|world|} :> {%hello|world|} @ lident ) ) let false = UIdent
                      ^
  ```
- Derivation (3 occurrences):
  ```
  simple_expr: simple_expr DOTOP LPAREN . separated_or_terminated_nonempty_list(SEMI,expr) RPAREN
    separated_or_terminated_nonempty_list(SEMI,expr): . fun_expr
      fun_expr: . simple_expr
        simple_expr: . LPAREN seq_expr COLON core_type COLONGREATER tuple_type at_mode_expr RPAREN
  ```
  Sample sentence (implementation):
  ```ocaml
  UIdent .+ ( ( UIdent : {%hello|world|} :> {%hello|world|} @ lident ) ) let false = UIdent
              ^
  ```
- Derivation (3 occurrences):
  ```
  simple_expr: simple_expr DOT LBRACKET . seq_expr RBRACKET
    seq_expr: . fun_seq_expr
      fun_seq_expr: . fun_expr
        fun_expr: . simple_expr
          simple_expr: . LPAREN seq_expr COLON core_type COLONGREATER tuple_type at_mode_expr RPAREN
  ```
  Sample sentence (implementation):
  ```ocaml
  false . [ ( UIdent : {%hello|world|} :> {%hello|world|} @ lident ) ] let false = UIdent
            ^
  ```
- Derivation (3 occurrences):
  ```
  simple_expr: simple_expr DOT LBRACE . seq_expr RBRACE
    seq_expr: . fun_seq_expr
      fun_seq_expr: . fun_expr
        fun_expr: . simple_expr
          simple_expr: . LPAREN seq_expr COLON core_type COLONGREATER tuple_type at_mode_expr RPAREN
  ```
  Sample sentence (implementation):
  ```ocaml
  false . { ( UIdent : {%hello|world|} :> {%hello|world|} @ lident ) } let false = UIdent
            ^
  ```
- Derivation (3 occurrences):
  ```
  simple_expr: simple_expr DOT LPAREN . seq_expr RPAREN
    seq_expr: . fun_seq_expr
      fun_seq_expr: . fun_expr
        fun_expr: . simple_expr
          simple_expr: . LPAREN seq_expr COLON core_type COLONGREATER tuple_type at_mode_expr RPAREN
  ```
  Sample sentence (implementation):
  ```ocaml
  false . ( ( UIdent : {%hello|world|} :> {%hello|world|} @ lident ) ) let false = UIdent
            ^
  ```
- Derivation (2 occurrences):
  ```
  reversed_labeled_tuple_body: TILDE LPAREN LIDENT type_constraint RPAREN COMMA . fun_expr
    fun_expr: . simple_expr
      simple_expr: . LPAREN seq_expr COLONGREATER tuple_type at_mode_expr RPAREN
  ```
  Sample sentence (implementation):
  ```ocaml
  ~ ( lident :> {%hello|world|} ) , ( UIdent :> {%hello|world|} @ lident ) [@@ and ] let false = UIdent
                                    ^
  ```
- ...


### Item `fun_expr: STACK . simple_expr` (in 234 errors)

- Derivation (117 occurrences):
  ```
  fun_expr: STACK . simple_expr
    simple_expr: . LPAREN seq_expr COLONGREATER tuple_type at_mode_expr RPAREN
  ```
  Sample sentence (implementation):
  ```ocaml
  stack_ ( UIdent :> {%hello|world|} @ lident ) let false = UIdent
         ^
  ```
- Derivation (117 occurrences):
  ```
  fun_expr: STACK . simple_expr
    simple_expr: . LPAREN seq_expr COLON core_type COLONGREATER tuple_type at_mode_expr RPAREN
  ```
  Sample sentence (implementation):
  ```ocaml
  stack_ ( UIdent : {%hello|world|} :> {%hello|world|} @ lident ) let false = UIdent
         ^
  ```


### Item `strict_binding_modes: fun_params . option(constraint_) EQUAL fun_body` (in 113 errors)

- Derivation (57 occurrences):
  ```
  strict_binding_modes: fun_params . option(constraint_) EQUAL fun_body
    option(constraint_): . COLON core_type COLONGREATER tuple_type at_mode_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  object method ! lident false : {%hello|world|} :> {%hello|world|} @ lident = UIdent inherit lident end let false = UIdent
                               ^
  ```
- Derivation (56 occurrences):
  ```
  strict_binding_modes: fun_params . option(constraint_) EQUAL fun_body
    option(constraint_): . COLONGREATER tuple_type at_mode_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  object method ! lident false :> {%hello|world|} @ lident = UIdent inherit lident end let false = UIdent
                               ^^
  ```


### Item `simple_expr: . LPAREN seq_expr COLON core_type COLONGREATER tuple_type at_mode_expr RPAREN` (in 39 errors)

- Derivation (4 occurrences):
  ```
  reversed_nonempty_llist(labeled_simple_expr): reversed_nonempty_llist(labeled_simple_expr) . labeled_simple_expr
    labeled_simple_expr: . simple_expr
      simple_expr: . LPAREN seq_expr COLON core_type COLONGREATER tuple_type at_mode_expr RPAREN
  ```
  Sample sentence (implementation):
  ```ocaml
  UIdent ~label: #1.0 ( UIdent : {%hello|world|} :> {%hello|world|} @ lident ) let false = UIdent
                      ^
  ```
- Derivation (2 occurrences):
  ```
  simple_expr: BANG . simple_expr
    simple_expr: . LPAREN seq_expr COLON core_type COLONGREATER tuple_type at_mode_expr RPAREN
  ```
  Sample sentence (implementation):
  ```ocaml
  ! ( UIdent : {%hello|world|} :> {%hello|world|} @ lident ) let false = UIdent
    ^
  ```
- Derivation (2 occurrences):
  ```
  simple_expr: PREFIXOP . simple_expr
    simple_expr: . LPAREN seq_expr COLON core_type COLONGREATER tuple_type at_mode_expr RPAREN
  ```
  Sample sentence (implementation):
  ```ocaml
  !+ ( UIdent : {%hello|world|} :> {%hello|world|} @ lident ) let false = UIdent
     ^
  ```
- Derivation (2 occurrences):
  ```
  labeled_simple_expr: OPTLABEL . simple_expr
    simple_expr: . LPAREN seq_expr COLON core_type COLONGREATER tuple_type at_mode_expr RPAREN
  ```
  Sample sentence (implementation):
  ```ocaml
  UIdent ?label: ( UIdent : {%hello|world|} :> {%hello|world|} @ lident ) let false = UIdent
                 ^
  ```
- Derivation (2 occurrences):
  ```
  labeled_simple_expr: LABEL . simple_expr
    simple_expr: . LPAREN seq_expr COLON core_type COLONGREATER tuple_type at_mode_expr RPAREN
  ```
  Sample sentence (implementation):
  ```ocaml
  UIdent ~label: ( UIdent : {%hello|world|} :> {%hello|world|} @ lident ) let false = UIdent
                 ^
  ```
- Derivation (2 occurrences):
  ```
  fun_expr: simple_expr . reversed_nonempty_llist(labeled_simple_expr)
    reversed_nonempty_llist(labeled_simple_expr): . labeled_simple_expr
      labeled_simple_expr: . simple_expr
        simple_expr: . LPAREN seq_expr COLON core_type COLONGREATER tuple_type at_mode_expr RPAREN
  ```
  Sample sentence (implementation):
  ```ocaml
  #1.0 ( UIdent : {%hello|world|} :> {%hello|world|} @ lident ) let false = UIdent
       ^
  ```
- Derivation (2 occurrences):
  ```
  class_expr: class_simple_expr . reversed_nonempty_llist(labeled_simple_expr)
    reversed_nonempty_llist(labeled_simple_expr): . labeled_simple_expr
      labeled_simple_expr: . simple_expr
        simple_expr: . LPAREN seq_expr COLON core_type COLONGREATER tuple_type at_mode_expr RPAREN
  ```
  Sample sentence (implementation):
  ```ocaml
  class lident = lident ( UIdent : {%hello|world|} :> {%hello|world|} @ lident ) let false = UIdent
                        ^
  ```
- Derivation (2 occurrences):
  ```
  fun_expr: name_tag . simple_expr
    simple_expr: . LPAREN seq_expr COLON core_type COLONGREATER tuple_type at_mode_expr RPAREN
  ```
  Sample sentence (implementation):
  ```ocaml
  ` lident ( UIdent : {%hello|world|} :> {%hello|world|} @ lident ) let false = UIdent
           ^
  ```
- Derivation (2 occurrences):
  ```
  fun_expr: STACK constr_longident . simple_expr
    simple_expr: . LPAREN seq_expr COLON core_type COLONGREATER tuple_type at_mode_expr RPAREN
  ```
  Sample sentence (implementation):
  ```ocaml
  stack_ UIdent ( UIdent : {%hello|world|} :> {%hello|world|} @ lident ) let false = UIdent
                ^
  ```
- Derivation (2 occurrences):
  ```
  fun_expr: constr_longident . simple_expr
    simple_expr: . LPAREN seq_expr COLON core_type COLONGREATER tuple_type at_mode_expr RPAREN
  ```
  Sample sentence (implementation):
  ```ocaml
  UIdent ( UIdent : {%hello|world|} :> {%hello|world|} @ lident ) let false = UIdent
         ^
  ```
- Derivation (2 occurrences):
  ```
  fun_expr: LAZY ext . list(attribute) simple_expr
    simple_expr: . LPAREN seq_expr COLON core_type COLONGREATER tuple_type at_mode_expr RPAREN
  ```
  Sample sentence (implementation):
  ```ocaml
  lazy ( UIdent : {%hello|world|} :> {%hello|world|} @ lident ) let false = UIdent
       ^
  ```
- Derivation (2 occurrences):
  ```
  fun_expr: ASSERT ext . list(attribute) simple_expr
    simple_expr: . LPAREN seq_expr COLON core_type COLONGREATER tuple_type at_mode_expr RPAREN
  ```
  Sample sentence (implementation):
  ```ocaml
  assert ( UIdent : {%hello|world|} :> {%hello|world|} @ lident ) let false = UIdent
         ^
  ```
- Derivation (1 occurrence):
  ```
  simple_expr: simple_expr HASHOP . simple_expr
    simple_expr: . LPAREN seq_expr COLON core_type COLONGREATER tuple_type at_mode_expr RPAREN
  ```
  Sample sentence (implementation):
  ```ocaml
  UIdent ## ( UIdent : {%hello|world|} :> {%hello|world|} @ lident ) let false = UIdent
            ^
  ```
- Derivation (1 occurrence):
  ```
  reversed_labeled_tuple_body: TILDE LPAREN LIDENT type_constraint RPAREN COMMA LABEL . simple_expr
    simple_expr: . LPAREN seq_expr COLON core_type COLONGREATER tuple_type at_mode_expr RPAREN
  ```
  Sample sentence (implementation):
  ```ocaml
  ~ ( lident :> {%hello|world|} ) , ~label: ( UIdent : {%hello|world|} :> {%hello|world|} @ lident ) [@@ and ] let false = UIdent
                                            ^
  ```
- Derivation (1 occurrence):
  ```
  reversed_labeled_tuple_body: TILDE LIDENT COMMA LABEL . simple_expr
    simple_expr: . LPAREN seq_expr COLON core_type COLONGREATER tuple_type at_mode_expr RPAREN
  ```
  Sample sentence (implementation):
  ```ocaml
  ~ lident , ~label: ( UIdent : {%hello|world|} :> {%hello|world|} @ lident ) [@@ and ] let false = UIdent
                     ^
  ```
- Derivation (1 occurrence):
  ```
  reversed_labeled_tuple_body: LABEL . simple_expr COMMA TILDE LIDENT
    simple_expr: . LPAREN seq_expr COLON core_type COLONGREATER tuple_type at_mode_expr RPAREN
  ```
  Sample sentence (implementation):
  ```ocaml
  ~label: ( UIdent : {%hello|world|} :> {%hello|world|} @ lident ) , ~ lident [@@ and ] let false = UIdent
          ^
  ```
- Derivation (1 occurrence):
  ```
  reversed_labeled_tuple_body: LABEL simple_expr COMMA LABEL . simple_expr
    simple_expr: . LPAREN seq_expr COLON core_type COLONGREATER tuple_type at_mode_expr RPAREN
  ```
  Sample sentence (implementation):
  ```ocaml
  ~label: #1.0 , ~label: ( UIdent : {%hello|world|} :> {%hello|world|} @ lident ) [@@ and ] let false = UIdent
                         ^
  ```
- Derivation (1 occurrence):
  ```
  reversed_labeled_tuple_body: LABEL . simple_expr COMMA fun_expr
    simple_expr: . LPAREN seq_expr COLON core_type COLONGREATER tuple_type at_mode_expr RPAREN
  ```
  Sample sentence (implementation):
  ```ocaml
  [ ~label: ( UIdent : {%hello|world|} :> {%hello|world|} @ lident ) , UIdent for false in UIdent ] let false = UIdent
            ^
  ```
- Derivation (1 occurrence):
  ```
  reversed_labeled_tuple_body: STACK FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case) COMMA LABEL . simple_expr
    simple_expr: . LPAREN seq_expr COLON core_type COLONGREATER tuple_type at_mode_expr RPAREN
  ```
  Sample sentence (implementation):
  ```ocaml
  stack_ function false -> . , ~label: ( UIdent : {%hello|world|} :> {%hello|world|} @ lident ) [@@ and ] let false = UIdent
                                       ^
  ```
- Derivation (1 occurrence):
  ```
  reversed_labeled_tuple_body: FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case) COMMA LABEL . simple_expr
    simple_expr: . LPAREN seq_expr COLON core_type COLONGREATER tuple_type at_mode_expr RPAREN
  ```
  Sample sentence (implementation):
  ```ocaml
  function false -> . , ~label: ( UIdent : {%hello|world|} :> {%hello|world|} @ lident ) [@@ and ] let false = UIdent
                                ^
  ```
- Derivation (1 occurrence):
  ```
  reversed_labeled_tuple_body: fun_expr COMMA LABEL . simple_expr
    simple_expr: . LPAREN seq_expr COLON core_type COLONGREATER tuple_type at_mode_expr RPAREN
  ```
  Sample sentence (implementation):
  ```ocaml
  UIdent , ~label: ( UIdent : {%hello|world|} :> {%hello|world|} @ lident ) [@@ and ] let false = UIdent
                   ^
  ```
- ...


### Item `simple_expr: . LPAREN seq_expr COLONGREATER tuple_type at_mode_expr RPAREN` (in 39 errors)

- Derivation (4 occurrences):
  ```
  reversed_nonempty_llist(labeled_simple_expr): reversed_nonempty_llist(labeled_simple_expr) . labeled_simple_expr
    labeled_simple_expr: . simple_expr
      simple_expr: . LPAREN seq_expr COLONGREATER tuple_type at_mode_expr RPAREN
  ```
  Sample sentence (implementation):
  ```ocaml
  UIdent ~label: #1.0 ( UIdent :> {%hello|world|} @ lident ) let false = UIdent
                      ^
  ```
- Derivation (2 occurrences):
  ```
  simple_expr: BANG . simple_expr
    simple_expr: . LPAREN seq_expr COLONGREATER tuple_type at_mode_expr RPAREN
  ```
  Sample sentence (implementation):
  ```ocaml
  ! ( UIdent :> {%hello|world|} @ lident ) let false = UIdent
    ^
  ```
- Derivation (2 occurrences):
  ```
  simple_expr: PREFIXOP . simple_expr
    simple_expr: . LPAREN seq_expr COLONGREATER tuple_type at_mode_expr RPAREN
  ```
  Sample sentence (implementation):
  ```ocaml
  !+ ( UIdent :> {%hello|world|} @ lident ) let false = UIdent
     ^
  ```
- Derivation (2 occurrences):
  ```
  labeled_simple_expr: OPTLABEL . simple_expr
    simple_expr: . LPAREN seq_expr COLONGREATER tuple_type at_mode_expr RPAREN
  ```
  Sample sentence (implementation):
  ```ocaml
  UIdent ?label: ( UIdent :> {%hello|world|} @ lident ) let false = UIdent
                 ^
  ```
- Derivation (2 occurrences):
  ```
  labeled_simple_expr: LABEL . simple_expr
    simple_expr: . LPAREN seq_expr COLONGREATER tuple_type at_mode_expr RPAREN
  ```
  Sample sentence (implementation):
  ```ocaml
  UIdent ~label: ( UIdent :> {%hello|world|} @ lident ) let false = UIdent
                 ^
  ```
- Derivation (2 occurrences):
  ```
  fun_expr: simple_expr . reversed_nonempty_llist(labeled_simple_expr)
    reversed_nonempty_llist(labeled_simple_expr): . labeled_simple_expr
      labeled_simple_expr: . simple_expr
        simple_expr: . LPAREN seq_expr COLONGREATER tuple_type at_mode_expr RPAREN
  ```
  Sample sentence (implementation):
  ```ocaml
  #1.0 ( UIdent :> {%hello|world|} @ lident ) let false = UIdent
       ^
  ```
- Derivation (2 occurrences):
  ```
  class_expr: class_simple_expr . reversed_nonempty_llist(labeled_simple_expr)
    reversed_nonempty_llist(labeled_simple_expr): . labeled_simple_expr
      labeled_simple_expr: . simple_expr
        simple_expr: . LPAREN seq_expr COLONGREATER tuple_type at_mode_expr RPAREN
  ```
  Sample sentence (implementation):
  ```ocaml
  class lident = lident ( UIdent :> {%hello|world|} @ lident ) let false = UIdent
                        ^
  ```
- Derivation (2 occurrences):
  ```
  fun_expr: name_tag . simple_expr
    simple_expr: . LPAREN seq_expr COLONGREATER tuple_type at_mode_expr RPAREN
  ```
  Sample sentence (implementation):
  ```ocaml
  ` lident ( UIdent :> {%hello|world|} @ lident ) let false = UIdent
           ^
  ```
- Derivation (2 occurrences):
  ```
  fun_expr: STACK constr_longident . simple_expr
    simple_expr: . LPAREN seq_expr COLONGREATER tuple_type at_mode_expr RPAREN
  ```
  Sample sentence (implementation):
  ```ocaml
  stack_ UIdent ( UIdent :> {%hello|world|} @ lident ) let false = UIdent
                ^
  ```
- Derivation (2 occurrences):
  ```
  fun_expr: constr_longident . simple_expr
    simple_expr: . LPAREN seq_expr COLONGREATER tuple_type at_mode_expr RPAREN
  ```
  Sample sentence (implementation):
  ```ocaml
  UIdent ( UIdent :> {%hello|world|} @ lident ) let false = UIdent
         ^
  ```
- Derivation (2 occurrences):
  ```
  fun_expr: LAZY ext . list(attribute) simple_expr
    simple_expr: . LPAREN seq_expr COLONGREATER tuple_type at_mode_expr RPAREN
  ```
  Sample sentence (implementation):
  ```ocaml
  lazy ( UIdent :> {%hello|world|} @ lident ) let false = UIdent
       ^
  ```
- Derivation (2 occurrences):
  ```
  fun_expr: ASSERT ext . list(attribute) simple_expr
    simple_expr: . LPAREN seq_expr COLONGREATER tuple_type at_mode_expr RPAREN
  ```
  Sample sentence (implementation):
  ```ocaml
  assert ( UIdent :> {%hello|world|} @ lident ) let false = UIdent
         ^
  ```
- Derivation (1 occurrence):
  ```
  simple_expr: simple_expr HASHOP . simple_expr
    simple_expr: . LPAREN seq_expr COLONGREATER tuple_type at_mode_expr RPAREN
  ```
  Sample sentence (implementation):
  ```ocaml
  UIdent ## ( UIdent :> {%hello|world|} @ lident ) let false = UIdent
            ^
  ```
- Derivation (1 occurrence):
  ```
  reversed_labeled_tuple_body: TILDE LPAREN LIDENT type_constraint RPAREN COMMA LABEL . simple_expr
    simple_expr: . LPAREN seq_expr COLONGREATER tuple_type at_mode_expr RPAREN
  ```
  Sample sentence (implementation):
  ```ocaml
  ~ ( lident :> {%hello|world|} ) , ~label: ( UIdent :> {%hello|world|} @ lident ) [@@ and ] let false = UIdent
                                            ^
  ```
- Derivation (1 occurrence):
  ```
  reversed_labeled_tuple_body: TILDE LIDENT COMMA LABEL . simple_expr
    simple_expr: . LPAREN seq_expr COLONGREATER tuple_type at_mode_expr RPAREN
  ```
  Sample sentence (implementation):
  ```ocaml
  ~ lident , ~label: ( UIdent :> {%hello|world|} @ lident ) [@@ and ] let false = UIdent
                     ^
  ```
- Derivation (1 occurrence):
  ```
  reversed_labeled_tuple_body: LABEL . simple_expr COMMA TILDE LIDENT
    simple_expr: . LPAREN seq_expr COLONGREATER tuple_type at_mode_expr RPAREN
  ```
  Sample sentence (implementation):
  ```ocaml
  ~label: ( UIdent :> {%hello|world|} @ lident ) , ~ lident [@@ and ] let false = UIdent
          ^
  ```
- Derivation (1 occurrence):
  ```
  reversed_labeled_tuple_body: LABEL simple_expr COMMA LABEL . simple_expr
    simple_expr: . LPAREN seq_expr COLONGREATER tuple_type at_mode_expr RPAREN
  ```
  Sample sentence (implementation):
  ```ocaml
  ~label: #1.0 , ~label: ( UIdent :> {%hello|world|} @ lident ) [@@ and ] let false = UIdent
                         ^
  ```
- Derivation (1 occurrence):
  ```
  reversed_labeled_tuple_body: LABEL . simple_expr COMMA fun_expr
    simple_expr: . LPAREN seq_expr COLONGREATER tuple_type at_mode_expr RPAREN
  ```
  Sample sentence (implementation):
  ```ocaml
  [ ~label: ( UIdent :> {%hello|world|} @ lident ) , UIdent for false in UIdent ] let false = UIdent
            ^
  ```
- Derivation (1 occurrence):
  ```
  reversed_labeled_tuple_body: STACK FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case) COMMA LABEL . simple_expr
    simple_expr: . LPAREN seq_expr COLONGREATER tuple_type at_mode_expr RPAREN
  ```
  Sample sentence (implementation):
  ```ocaml
  stack_ function false -> . , ~label: ( UIdent :> {%hello|world|} @ lident ) [@@ and ] let false = UIdent
                                       ^
  ```
- Derivation (1 occurrence):
  ```
  reversed_labeled_tuple_body: FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case) COMMA LABEL . simple_expr
    simple_expr: . LPAREN seq_expr COLONGREATER tuple_type at_mode_expr RPAREN
  ```
  Sample sentence (implementation):
  ```ocaml
  function false -> . , ~label: ( UIdent :> {%hello|world|} @ lident ) [@@ and ] let false = UIdent
                                ^
  ```
- Derivation (1 occurrence):
  ```
  reversed_labeled_tuple_body: fun_expr COMMA LABEL . simple_expr
    simple_expr: . LPAREN seq_expr COLONGREATER tuple_type at_mode_expr RPAREN
  ```
  Sample sentence (implementation):
  ```ocaml
  UIdent , ~label: ( UIdent :> {%hello|world|} @ lident ) [@@ and ] let false = UIdent
                   ^
  ```
- ...

## Error: Syntax error: extension not expected.

### Item `let_bindings(no_ext): LET . PERCENT attr_id list(attribute) mutable_flag rec_flag let_binding_body list(post_item_attribute)` (in 350 errors)

- Derivation (350 occurrences):
  ```
  let_bindings(no_ext): LET . PERCENT attr_id list(attribute) mutable_flag rec_flag let_binding_body list(post_item_attribute)
  ```
  Sample sentence (implementation):
  ```ocaml
  class lident = let % and lident = UIdent in lident let false = UIdent
                     ^
  ```

## Error: Syntax error: 'done' expected

### Item `seq_expr: . fun_seq_expr` (in 336 errors)

- Derivation (58 occurrences):
  ```
  fun_expr: WHILE ext list(attribute) seq_expr DO . seq_expr DONE
    seq_expr: . fun_seq_expr
      fun_seq_expr: . fun_expr SEMI seq_expr
        fun_expr: . simple_expr
          simple_expr: . constr_longident
            constr_longident: . mod_longident
              mod_longident: . mk_longident(mod_longident,UIDENT)
                mk_longident(mod_longident,UIDENT): . UIDENT
  ```
  Sample sentence (implementation):
  ```ocaml
  while UIdent do UIdent ; <[ UIdent ]> done let false = UIdent
                  ^^^^^^
  ```
- Derivation (54 occurrences):
  ```
  fun_expr: WHILE ext list(attribute) seq_expr DO . seq_expr DONE
    seq_expr: . fun_seq_expr
      fun_seq_expr: . fun_expr SEMI PERCENT attr_id seq_expr
        fun_expr: . simple_expr
          simple_expr: . constr_longident
            constr_longident: . mod_longident
              mod_longident: . mk_longident(mod_longident,UIDENT)
                mk_longident(mod_longident,UIDENT): . UIDENT
  ```
  Sample sentence (implementation):
  ```ocaml
  while UIdent do UIdent ; % and overwrite_ UIdent with UIdent done let false = UIdent
                  ^^^^^^
  ```
- Derivation (6 occurrences):
  ```
  fun_expr: FOR ext list(attribute) pattern EQUAL seq_expr direction_flag seq_expr DO . seq_expr DONE
    seq_expr: . fun_seq_expr
      fun_seq_expr: . fun_expr
        fun_expr: . OVERWRITE ext list(attribute) seq_expr WITH STACK FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
  ```
  Sample sentence (implementation):
  ```ocaml
  for false = UIdent downto UIdent do overwrite_ UIdent with stack_ function false -> UIdent done let false = UIdent
                                      ^^^^^^^^^^
  ```
- Derivation (6 occurrences):
  ```
  fun_expr: WHILE ext list(attribute) seq_expr DO . seq_expr DONE
    seq_expr: . fun_seq_expr
      fun_seq_expr: . fun_expr
        fun_expr: . OVERWRITE ext list(attribute) seq_expr WITH STACK FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
  ```
  Sample sentence (implementation):
  ```ocaml
  while UIdent do overwrite_ UIdent with stack_ function false -> UIdent done let false = UIdent
                  ^^^^^^^^^^
  ```
- Derivation (6 occurrences):
  ```
  fun_expr: FOR ext list(attribute) pattern EQUAL seq_expr direction_flag seq_expr DO . seq_expr DONE
    seq_expr: . fun_seq_expr
      fun_seq_expr: . fun_expr
        fun_expr: . OVERWRITE ext list(attribute) seq_expr WITH FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
  ```
  Sample sentence (implementation):
  ```ocaml
  for false = UIdent downto UIdent do overwrite_ UIdent with function false -> UIdent done let false = UIdent
                                      ^^^^^^^^^^
  ```
- Derivation (6 occurrences):
  ```
  fun_expr: WHILE ext list(attribute) seq_expr DO . seq_expr DONE
    seq_expr: . fun_seq_expr
      fun_seq_expr: . fun_expr
        fun_expr: . OVERWRITE ext list(attribute) seq_expr WITH FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
  ```
  Sample sentence (implementation):
  ```ocaml
  while UIdent do overwrite_ UIdent with function false -> UIdent done let false = UIdent
                  ^^^^^^^^^^
  ```
- Derivation (6 occurrences):
  ```
  fun_expr: FOR ext list(attribute) pattern EQUAL seq_expr direction_flag seq_expr DO . seq_expr DONE
    seq_expr: . fun_seq_expr
      fun_seq_expr: . fun_expr
        fun_expr: . OVERWRITE ext list(attribute) seq_expr WITH fun_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  for false = UIdent downto UIdent do overwrite_ UIdent with UIdent done let false = UIdent
                                      ^^^^^^^^^^
  ```
- Derivation (6 occurrences):
  ```
  fun_expr: WHILE ext list(attribute) seq_expr DO . seq_expr DONE
    seq_expr: . fun_seq_expr
      fun_seq_expr: . fun_expr
        fun_expr: . OVERWRITE ext list(attribute) seq_expr WITH fun_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  while UIdent do overwrite_ UIdent with UIdent done let false = UIdent
                  ^^^^^^^^^^
  ```
- Derivation (2 occurrences):
  ```
  fun_expr: FOR ext list(attribute) pattern EQUAL seq_expr direction_flag seq_expr DO . seq_expr DONE
    seq_expr: . fun_seq_expr
      fun_seq_expr: . fun_expr
        fun_expr: . reversed_labeled_tuple_body
          reversed_labeled_tuple_body: . fun_expr COMMA TILDE LPAREN LIDENT type_constraint RPAREN
            fun_expr: . ONCE seq_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  for false = UIdent downto UIdent do once_ UIdent ; , ~ ( lident :> {%hello|world|} ) done let false = UIdent
                                      ^^^^^
  ```
- Derivation (2 occurrences):
  ```
  fun_expr: WHILE ext list(attribute) seq_expr DO . seq_expr DONE
    seq_expr: . fun_seq_expr
      fun_seq_expr: . fun_expr
        fun_expr: . reversed_labeled_tuple_body
          reversed_labeled_tuple_body: . fun_expr COMMA TILDE LPAREN LIDENT type_constraint RPAREN
            fun_expr: . ONCE seq_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  while UIdent do once_ UIdent ; , ~ ( lident :> {%hello|world|} ) done let false = UIdent
                  ^^^^^
  ```
- Derivation (2 occurrences):
  ```
  fun_expr: FOR ext list(attribute) pattern EQUAL seq_expr direction_flag seq_expr DO . seq_expr DONE
    seq_expr: . fun_seq_expr
      fun_seq_expr: . fun_expr SEMI
        fun_expr: . ONCE seq_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  for false = UIdent downto UIdent do once_ UIdent ; ; done let false = UIdent
                                      ^^^^^
  ```
- Derivation (2 occurrences):
  ```
  fun_expr: WHILE ext list(attribute) seq_expr DO . seq_expr DONE
    seq_expr: . fun_seq_expr
      fun_seq_expr: . fun_expr SEMI
        fun_expr: . ONCE seq_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  while UIdent do once_ UIdent ; ; done let false = UIdent
                  ^^^^^
  ```
- Derivation (2 occurrences):
  ```
  fun_expr: FOR ext list(attribute) pattern EQUAL seq_expr direction_flag seq_expr DO . seq_expr DONE
    seq_expr: . fun_seq_expr
      fun_seq_expr: . fun_expr
        fun_expr: . fun_expr attribute
          fun_expr: . ONCE seq_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  for false = UIdent downto UIdent do once_ UIdent ; [@ and ] done let false = UIdent
                                      ^^^^^
  ```
- Derivation (2 occurrences):
  ```
  fun_expr: WHILE ext list(attribute) seq_expr DO . seq_expr DONE
    seq_expr: . fun_seq_expr
      fun_seq_expr: . fun_expr
        fun_expr: . fun_expr attribute
          fun_expr: . ONCE seq_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  while UIdent do once_ UIdent ; [@ and ] done let false = UIdent
                  ^^^^^
  ```
- Derivation (2 occurrences):
  ```
  fun_expr: FOR ext list(attribute) pattern EQUAL seq_expr direction_flag seq_expr DO . seq_expr DONE
    seq_expr: . fun_seq_expr
      fun_seq_expr: . fun_expr
        fun_expr: . fun_expr COLONCOLON fun_expr
          fun_expr: . ONCE seq_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  for false = UIdent downto UIdent do once_ UIdent ; :: UIdent done let false = UIdent
                                      ^^^^^
  ```
- Derivation (2 occurrences):
  ```
  fun_expr: WHILE ext list(attribute) seq_expr DO . seq_expr DONE
    seq_expr: . fun_seq_expr
      fun_seq_expr: . fun_expr
        fun_expr: . fun_expr COLONCOLON fun_expr
          fun_expr: . ONCE seq_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  while UIdent do once_ UIdent ; :: UIdent done let false = UIdent
                  ^^^^^
  ```
- Derivation (2 occurrences):
  ```
  fun_expr: FOR ext list(attribute) pattern EQUAL seq_expr direction_flag seq_expr DO . seq_expr DONE
    seq_expr: . fun_seq_expr
      fun_seq_expr: . fun_expr
        fun_expr: . fun_expr COLONEQUAL fun_expr
          fun_expr: . ONCE seq_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  for false = UIdent downto UIdent do once_ UIdent ; := UIdent done let false = UIdent
                                      ^^^^^
  ```
- Derivation (2 occurrences):
  ```
  fun_expr: WHILE ext list(attribute) seq_expr DO . seq_expr DONE
    seq_expr: . fun_seq_expr
      fun_seq_expr: . fun_expr
        fun_expr: . fun_expr COLONEQUAL fun_expr
          fun_expr: . ONCE seq_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  while UIdent do once_ UIdent ; := UIdent done let false = UIdent
                  ^^^^^
  ```
- Derivation (2 occurrences):
  ```
  fun_expr: FOR ext list(attribute) pattern EQUAL seq_expr direction_flag seq_expr DO . seq_expr DONE
    seq_expr: . fun_seq_expr
      fun_seq_expr: . fun_expr
        fun_expr: . fun_expr AMPERAMPER fun_expr
          fun_expr: . ONCE seq_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  for false = UIdent downto UIdent do once_ UIdent ; && UIdent done let false = UIdent
                                      ^^^^^
  ```
- Derivation (2 occurrences):
  ```
  fun_expr: WHILE ext list(attribute) seq_expr DO . seq_expr DONE
    seq_expr: . fun_seq_expr
      fun_seq_expr: . fun_expr
        fun_expr: . fun_expr AMPERAMPER fun_expr
          fun_expr: . ONCE seq_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  while UIdent do once_ UIdent ; && UIdent done let false = UIdent
                  ^^^^^
  ```
- Derivation (2 occurrences):
  ```
  fun_expr: FOR ext list(attribute) pattern EQUAL seq_expr direction_flag seq_expr DO . seq_expr DONE
    seq_expr: . fun_seq_expr
      fun_seq_expr: . fun_expr
        fun_expr: . fun_expr BARBAR fun_expr
          fun_expr: . ONCE seq_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  for false = UIdent downto UIdent do once_ UIdent ; || UIdent done let false = UIdent
                                      ^^^^^
  ```
- ...

## Error: Syntax error: Mutable let bindings are not allowed at the structure level.

### Item `let_bindings(ext): . LET ext list(attribute) mutable_flag rec_flag let_binding_body list(post_item_attribute)` (in 2 errors)

- Derivation (1 occurrence):
  ```
  module_expr: STRUCT list(attribute) . structure END
    structure: . list(structure_element)
      list(structure_element): . structure_item list(structure_element)
        structure_item: . let_bindings(ext)
          let_bindings(ext): . LET ext list(attribute) mutable_flag rec_flag let_binding_body list(post_item_attribute)
  ```
  Sample sentence (implementation):
  ```ocaml
  include struct let mutable false = UIdent let false = UIdent end let false = UIdent
                 ^^^
  ```
- Derivation (1 occurrence):
  ```
  implementation: . structure EOF
    structure: . list(structure_element)
      list(structure_element): . structure_item list(structure_element)
        structure_item: . let_bindings(ext)
          let_bindings(ext): . LET ext list(attribute) mutable_flag rec_flag let_binding_body list(post_item_attribute)
  ```
  Sample sentence (implementation):
  ```ocaml
  let mutable false = UIdent let false = UIdent
  ^^^
  ```

## Error: Syntax error: Mutable let bindings are not allowed inside class definitions.

### Item `class_expr: . let_bindings(no_ext) IN class_expr` (in 1 error)

- Derivation (1 occurrence):
  ```
  class_fun_binding: COLON class_type EQUAL . class_expr
    class_expr: . let_bindings(no_ext) IN class_expr
      let_bindings(no_ext): . LET list(attribute) mutable_flag rec_flag let_binding_body list(post_item_attribute)
  ```
  Sample sentence (implementation):
  ```ocaml
  class lident : {%hello|world|} = let mutable false = UIdent in lident let false = UIdent
                                   ^^^
  ```


# Internal errors

When OCamlformat fails with an internal error, the exact location of the problem cannot be determined.
The location is guessed by examining the syntactic constructions that appear most frequently in the failing code.

## Exception: "Assert_failure lib/Fmt_ast.ml:684:6" (317144 errors)

### Item `seq_expr: . fun_seq_expr` (in 178570 errors)

- Derivation (1965 occurrences):
  ```
  fun_expr: LET MODULE ext list(attribute) module_name_modal(at_mode_expr) module_binding_body IN . seq_expr
    seq_expr: . fun_seq_expr
      fun_seq_expr: . fun_expr SEMI
        fun_expr: . simple_expr
          simple_expr: . constr_longident
            constr_longident: . mod_longident
              mod_longident: . mk_longident(mod_longident,UIDENT)
                mk_longident(mod_longident,UIDENT): . UIDENT
  ```
  Sample sentence (implementation):
  ```ocaml
  [ let module UIdent = {%hello|world|} in UIdent ; ] let false = UIdent
  ```
- Derivation (1102 occurrences):
  ```
  fun_expr: LET OPEN BANG ext list(attribute) module_expr IN . seq_expr
    seq_expr: . fun_seq_expr
      fun_seq_expr: . fun_expr SEMI
  ```
  Sample sentence (implementation):
  ```ocaml
  let open ! {%hello|world|} in UIdent ; , UIdent let false = UIdent
  ```
- Derivation (1102 occurrences):
  ```
  fun_expr: LET OPEN ext list(attribute) module_expr IN . seq_expr
    seq_expr: . fun_seq_expr
      fun_seq_expr: . fun_expr SEMI
  ```
  Sample sentence (implementation):
  ```ocaml
  let open {%hello|world|} in UIdent ; , UIdent let false = UIdent
  ```
- Derivation (1024 occurrences):
  ```
  fun_expr: LET MODULE ext list(attribute) module_name_modal(at_mode_expr) module_binding_body IN . seq_expr
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
  let module UIdent = {%hello|world|} in UIdent let false = UIdent
  ```
- Derivation (980 occurrences):
  ```
  let_binding_body_no_punning: LPAREN val_ident at_mode_expr RPAREN COLON core_type COLONGREATER core_type EQUAL . seq_expr
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
  let ( lident @ lident ) : {%hello|world|} :> {%hello|world|} = UIdent let false = UIdent
  ```
- Derivation (980 occurrences):
  ```
  let_binding_body_no_punning: val_ident COLON core_type COLONGREATER core_type EQUAL . seq_expr
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
  let lident : {%hello|world|} :> {%hello|world|} = UIdent let false = UIdent
  ```
- Derivation (942 occurrences):
  ```
  fun_expr: LET OPEN BANG ext list(attribute) module_expr IN . seq_expr
    seq_expr: . fun_seq_expr
      fun_seq_expr: . fun_expr SEMI
        fun_expr: . simple_expr
          simple_expr: . constr_longident
            constr_longident: . mod_longident
              mod_longident: . mk_longident(mod_longident,UIDENT)
                mk_longident(mod_longident,UIDENT): . UIDENT
  ```
  Sample sentence (implementation):
  ```ocaml
  [ let open ! {%hello|world|} in UIdent ; ] let false = UIdent
  ```
- Derivation (942 occurrences):
  ```
  fun_expr: LET OPEN ext list(attribute) module_expr IN . seq_expr
    seq_expr: . fun_seq_expr
      fun_seq_expr: . fun_expr SEMI
        fun_expr: . simple_expr
          simple_expr: . constr_longident
            constr_longident: . mod_longident
              mod_longident: . mk_longident(mod_longident,UIDENT)
                mk_longident(mod_longident,UIDENT): . UIDENT
  ```
  Sample sentence (implementation):
  ```ocaml
  [ let open {%hello|world|} in UIdent ; ] let false = UIdent
  ```
- Derivation (808 occurrences):
  ```
  let_binding_body_no_punning: nonempty_list(mode_legacy) val_ident COLON core_type COLONGREATER core_type EQUAL . seq_expr
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
  let local_ lident : {%hello|world|} :> {%hello|world|} = UIdent let false = UIdent
  ```
- Derivation (666 occurrences):
  ```
  implementation: . structure EOF
    structure: . seq_expr list(post_item_attribute) list(structure_element)
      seq_expr: . fun_seq_expr
        fun_seq_expr: . fun_expr
          fun_expr: . simple_expr
            simple_expr: . LBRACKET fun_expr reversed_nonempty_llist(comprehension_clause) RBRACKET
  ```
  Sample sentence (implementation):
  ```ocaml
  [ ( UIdent :> {%hello|world|} ) for false in UIdent ] let false = UIdent
  ```
- Derivation (646 occurrences):
  ```
  fun_expr: LET OPEN BANG ext list(attribute) module_expr IN . seq_expr
    seq_expr: . fun_seq_expr
      fun_seq_expr: . fun_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  let open ! {%hello|world|} in UIdent #1.0 let false = UIdent
  ```
- Derivation (646 occurrences):
  ```
  fun_expr: LET OPEN ext list(attribute) module_expr IN . seq_expr
    seq_expr: . fun_seq_expr
      fun_seq_expr: . fun_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  let open {%hello|world|} in UIdent #1.0 let false = UIdent
  ```
- Derivation (643 occurrences):
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
  [@@@ and {%%hello|world|} ] let false = UIdent
  ```
- Derivation (418 occurrences):
  ```
  fun_expr: LET OPEN BANG ext list(attribute) module_expr IN . seq_expr
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
  begin let open ! {%hello|world|} in UIdent end let false = UIdent
  ```
- Derivation (417 occurrences):
  ```
  fun_expr: LET OPEN ext list(attribute) module_expr IN . seq_expr
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
  begin let open {%hello|world|} in UIdent end let false = UIdent
  ```
- Derivation (302 occurrences):
  ```
  let_binding_body_no_punning: nonempty_list(mode_legacy) val_ident COLON core_type COLONGREATER tuple_type at_mode_expr EQUAL . seq_expr
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
  let local_ lident : {%hello|world|} :> {%hello|world|} @ lident = UIdent let false = UIdent
  ```
- Derivation (261 occurrences):
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
  [: UIdent when ( module {%hello|world|} ) :] let false = UIdent
  ```
- Derivation (234 occurrences):
  ```
  let_binding_body_no_punning: simple_pattern_not_ident COLON tuple_type at_mode_expr EQUAL . seq_expr
    seq_expr: . fun_seq_expr
      fun_seq_expr: . fun_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  let false : {%hello|world|} @ lident = UIdent #1.0 let false = UIdent
  ```
- Derivation (234 occurrences):
  ```
  let_binding_body_no_punning: simple_pattern_not_ident COLON core_type EQUAL . seq_expr
    seq_expr: . fun_seq_expr
      fun_seq_expr: . fun_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  let false : {%hello|world|} = UIdent #1.0 let false = UIdent
  ```
- Derivation (234 occurrences):
  ```
  let_binding_body_no_punning: LPAREN val_ident at_mode_expr RPAREN COLON TYPE newtypes DOT tuple_type at_mode_expr EQUAL . seq_expr
    seq_expr: . fun_seq_expr
      fun_seq_expr: . fun_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  let ( lident @ lident ) : type lident . {%hello|world|} @ lident = UIdent #1.0 let false = UIdent
  ```
- Derivation (234 occurrences):
  ```
  let_binding_body_no_punning: nonempty_list(mode_legacy) val_ident COLON TYPE newtypes DOT tuple_type at_mode_expr EQUAL . seq_expr
    seq_expr: . fun_seq_expr
      fun_seq_expr: . fun_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  let local_ lident : type lident . {%hello|world|} @ lident = UIdent #1.0 let false = UIdent
  ```
- ...


### Item `alias_type: . function_type` (in 87505 errors)

- Derivation (4247 occurrences):
  ```
  jkind_desc: KIND_OF . core_type
    core_type: . alias_type
      alias_type: . function_type
        function_type: . strict_function_or_labeled_tuple_type
  ```
  Sample sentence (implementation):
  ```ocaml
  kind_abbrev_ lident = kind_of_ {%hello|world|} -> {%hello|world|}
  ```
- Derivation (1766 occurrences):
  ```
  type_constraint: COLONGREATER . core_type
    core_type: . alias_type
      alias_type: . function_type
        function_type: . strict_function_or_labeled_tuple_type
  ```
  Sample sentence (implementation):
  ```ocaml
  { lident :> {%hello|world|} -> {%hello|world|} ; } let false = UIdent
  ```
- Derivation (1424 occurrences):
  ```
  jkind_desc: KIND_OF . core_type
    core_type: . core_type attribute
      core_type: . alias_type
        alias_type: . function_type
          function_type: . strict_function_or_labeled_tuple_type
  ```
  Sample sentence (implementation):
  ```ocaml
  kind_abbrev_ lident = kind_of_ {%hello|world|} -> {%hello|world|} [@ and ] let false = UIdent
  ```
- Derivation (1352 occurrences):
  ```
  simple_expr: LPAREN seq_expr COLON . core_type RPAREN
    core_type: . alias_type
      alias_type: . function_type
        function_type: . strict_function_or_labeled_tuple_type
  ```
  Sample sentence (implementation):
  ```ocaml
  ( UIdent : lident : {%hello|world|} * {%hello|world|} ) let false = UIdent
  ```
- Derivation (1290 occurrences):
  ```
  class_signature: LBRACKET . reversed_separated_nonempty_llist(COMMA,core_type) RBRACKET clty_longident
    reversed_separated_nonempty_llist(COMMA,core_type): . reversed_separated_nonempty_llist(COMMA,core_type) COMMA core_type
      reversed_separated_nonempty_llist(COMMA,core_type): . core_type
        core_type: . alias_type
          alias_type: . function_type
            function_type: . strict_function_or_labeled_tuple_type
  ```
  Sample sentence (interface):
  ```ocaml
  class lident : [ lident : {%hello|world|} * {%hello|world|} , {%hello|world|} ] lident
  ```
- Derivation (1024 occurrences):
  ```
  with_constraint: TYPE type_parameters label_longident with_type_binder . alias_type reversed_llist(preceded(CONSTRAINT,constrain))
    alias_type: . function_type
      function_type: . tuple_type
        tuple_type: . atomic_type
          atomic_type: . delimited_type
            delimited_type: . extension_type
              extension_type: . extension
                extension: . QUOTED_STRING_EXPR
  ```
  Sample sentence (interface):
  ```ocaml
  include {%hello|world|} with type lident = {%hello|world|} @@ lident
  ```
- Derivation (864 occurrences):
  ```
  delimited_type_supporting_local_open: LPAREN . core_type RPAREN
    core_type: . alias_type
      alias_type: . function_type
        function_type: . strict_function_or_labeled_tuple_type
  ```
  Sample sentence (implementation):
  ```ocaml
  val lident : ( lident : {%hello|world|} * {%hello|world|} ) let false = UIdent
  ```
- Derivation (740 occurrences):
  ```
  delimited_type_supporting_local_open: LBRACKET . row_field BAR reversed_separated_nonempty_llist(BAR,row_field) RBRACKET
    row_field: . core_type
      core_type: . alias_type
        alias_type: . function_type
          function_type: . tuple_type
            tuple_type: . atomic_type
              atomic_type: . delimited_type
                delimited_type: . extension_type
                  extension_type: . extension
                    extension: . QUOTED_STRING_EXPR
  ```
  Sample sentence (interface):
  ```ocaml
  exception false of [ {%hello|world|} | {%hello|world|} ]
  ```
- Derivation (707 occurrences):
  ```
  atomic_type: LPAREN . reversed_separated_nontrivial_llist(COMMA,one_type_parameter_of_several) RPAREN type_longident
    reversed_separated_nontrivial_llist(COMMA,one_type_parameter_of_several): . core_type COMMA core_type
      core_type: . alias_type
        alias_type: . function_type
          function_type: . tuple_type
            tuple_type: . atomic_type
              atomic_type: . delimited_type
                delimited_type: . extension_type
                  extension_type: . extension
                    extension: . QUOTED_STRING_EXPR
  ```
  Sample sentence (interface):
  ```ocaml
  exception false of ( {%hello|world|} , _ ) lident
  ```
- Derivation (689 occurrences):
  ```
  simple_expr: LPAREN seq_expr COLON . core_type COLONGREATER core_type RPAREN
    core_type: . alias_type
      alias_type: . function_type
  ```
  Sample sentence (implementation):
  ```ocaml
  ( UIdent : {%hello|world|} :> {%hello|world|} ) let false = UIdent
  ```
- Derivation (665 occurrences):
  ```
  simple_expr: LPAREN seq_expr COLONGREATER . core_type RPAREN
    core_type: . alias_type
      alias_type: . function_type
        function_type: . tuple_type
  ```
  Sample sentence (implementation):
  ```ocaml
  ( UIdent :> {%hello|world|} ) let false = UIdent
  ```
- Derivation (652 occurrences):
  ```
  type_constraint: COLON . core_type COLONGREATER core_type
    core_type: . alias_type
      alias_type: . function_type
  ```
  Sample sentence (implementation):
  ```ocaml
  #{ lident : {%hello|world|} :> {%hello|world|} } let false = UIdent
  ```
- Derivation (625 occurrences):
  ```
  tag_field: name_tag OF opt_ampersand . reversed_separated_nonempty_llist(AMPERSAND,core_type_no_attr) list(attribute)
    reversed_separated_nonempty_llist(AMPERSAND,core_type_no_attr): . reversed_separated_nonempty_llist(AMPERSAND,core_type_no_attr) AMPERSAND alias_type
      reversed_separated_nonempty_llist(AMPERSAND,core_type_no_attr): . alias_type
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
  exception false : ' lident . {%hello|world|} -> [ ` lident of {%hello|world|} & {%hello|world|} ] let false = UIdent
  ```
- Derivation (601 occurrences):
  ```
  simple_pattern_not_ident: LPAREN pattern COLON . core_type RPAREN
    core_type: . alias_type
      alias_type: . function_type
        function_type: . strict_function_or_labeled_tuple_type
  ```
  Sample sentence (implementation):
  ```ocaml
  let ( lident : lident : {%hello|world|} -> {%hello|world|} ) @ lident = UIdent [@@ and ] let false = UIdent
  ```
- Derivation (585 occurrences):
  ```
  atomic_type: LPAREN . reversed_separated_nontrivial_llist(COMMA,one_type_parameter_of_several) RPAREN type_longident
    reversed_separated_nontrivial_llist(COMMA,one_type_parameter_of_several): . core_type COMMA core_type
      core_type: . alias_type
        alias_type: . function_type
  ```
  Sample sentence (implementation):
  ```ocaml
  kind_abbrev_ lident = lident with ( {%hello|world|} , _ ) lident
  ```
- Derivation (455 occurrences):
  ```
  class_signature: LBRACKET . reversed_separated_nonempty_llist(COMMA,core_type) RBRACKET clty_longident
    reversed_separated_nonempty_llist(COMMA,core_type): . reversed_separated_nonempty_llist(COMMA,core_type) COMMA core_type
      reversed_separated_nonempty_llist(COMMA,core_type): . core_type
        core_type: . alias_type
          alias_type: . function_type
            function_type: . tuple_type
  ```
  Sample sentence (interface):
  ```ocaml
  class lident : [ {%hello|world|} , {%hello|world|} ] lident
  ```
- Derivation (450 occurrences):
  ```
  delimited_type_supporting_local_open: LBRACKET BAR . reversed_separated_nonempty_llist(BAR,row_field) RBRACKET
    reversed_separated_nonempty_llist(BAR,row_field): . reversed_separated_nonempty_llist(BAR,row_field) BAR row_field
      reversed_separated_nonempty_llist(BAR,row_field): . row_field
        row_field: . core_type
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
  exception false : ' lident . {%hello|world|} -> [ | {%hello|world|} | {%hello|world|} ] let false = UIdent
  ```
- Derivation (411 occurrences):
  ```
  possibly_poly(core_type): reversed_nonempty_llist(typevar) DOT . core_type
    core_type: . alias_type
      alias_type: . function_type
        function_type: . strict_function_or_labeled_tuple_type
  ```
  Sample sentence (implementation):
  ```ocaml
  val lident : ' lident . lident : {%hello|world|} * {%hello|world|}
  ```
- Derivation (398 occurrences):
  ```
  option(constraint_): COLON . core_type COLONGREATER core_type
    core_type: . alias_type
      alias_type: . function_type
  ```
  Sample sentence (implementation):
  ```ocaml
  object method ! lident false : {%hello|world|} :> {%hello|world|} = UIdent inherit lident end let false = UIdent
  ```
- Derivation (397 occurrences):
  ```
  jkind_desc: KIND_OF . core_type
    core_type: . alias_type
      alias_type: . function_type
        function_type: . strict_function_or_labeled_tuple_type
          strict_function_or_labeled_tuple_type: . optlabel nonempty_list(mode_legacy) tuple_type at_mode_expr MINUSGREATER strict_function_or_labeled_tuple_type
            optlabel: . OPTLABEL
  ```
  Sample sentence (implementation):
  ```ocaml
  kind_abbrev_ lident = kind_of_ ?label: local_ {%hello|world|} @ lident -> {%hello|world|} -> {%hello|world|}
  ```
- Derivation (397 occurrences):
  ```
  jkind_desc: KIND_OF . core_type
    core_type: . alias_type
      alias_type: . function_type
        function_type: . strict_function_or_labeled_tuple_type
          strict_function_or_labeled_tuple_type: . optlabel nonempty_list(mode_legacy) tuple_type MINUSGREATER strict_function_or_labeled_tuple_type
            optlabel: . OPTLABEL
  ```
  Sample sentence (implementation):
  ```ocaml
  kind_abbrev_ lident = kind_of_ ?label: local_ {%hello|world|} -> {%hello|world|} -> {%hello|world|}
  ```
- ...


### Item `type_constraint: . COLONGREATER core_type` (in 18241 errors)

- Derivation (5250 occurrences):
  ```
  reversed_labeled_tuple_body: TILDE LPAREN LIDENT . type_constraint RPAREN COMMA fun_expr
    type_constraint: . COLONGREATER core_type
  ```
  Sample sentence (implementation):
  ```ocaml
  ~ ( lident :> {%hello|world|} ) , UIdent let false = UIdent
  ```
- Derivation (3599 occurrences):
  ```
  reversed_labeled_tuple_body: TILDE LPAREN LIDENT . type_constraint RPAREN COMMA STACK FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
    type_constraint: . COLONGREATER core_type
  ```
  Sample sentence (implementation):
  ```ocaml
  ~ ( lident :> {%hello|world|} ) , stack_ function false -> UIdent let false = UIdent
  ```
- Derivation (3597 occurrences):
  ```
  reversed_labeled_tuple_body: TILDE LPAREN LIDENT . type_constraint RPAREN COMMA FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
    type_constraint: . COLONGREATER core_type
  ```
  Sample sentence (implementation):
  ```ocaml
  ~ ( lident :> {%hello|world|} ) , function false -> UIdent let false = UIdent
  ```
- Derivation (2477 occurrences):
  ```
  reversed_labeled_tuple_body: fun_expr COMMA TILDE LPAREN LIDENT . type_constraint RPAREN
    type_constraint: . COLONGREATER core_type
  ```
  Sample sentence (implementation):
  ```ocaml
  UIdent ; UIdent , ~ ( lident :> {%hello|world|} ) let false = UIdent
  ```
- Derivation (807 occurrences):
  ```
  reversed_labeled_tuple_body: TILDE LPAREN LIDENT . type_constraint RPAREN COMMA LABEL simple_expr
    type_constraint: . COLONGREATER core_type
  ```
  Sample sentence (implementation):
  ```ocaml
  UIdent ; ~ ( lident :> {%hello|world|} ) , ~label: #1.0 let false = UIdent
  ```
- Derivation (702 occurrences):
  ```
  reversed_labeled_tuple_body: STACK FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case) COMMA TILDE LPAREN LIDENT . type_constraint RPAREN
    type_constraint: . COLONGREATER core_type
  ```
  Sample sentence (implementation):
  ```ocaml
  UIdent , stack_ function false -> . , ~ ( lident :> {%hello|world|} ) let false = UIdent
  ```
- Derivation (396 occurrences):
  ```
  reversed_labeled_tuple_body: LABEL simple_expr COMMA TILDE LPAREN LIDENT . type_constraint RPAREN
    type_constraint: . COLONGREATER core_type
  ```
  Sample sentence (implementation):
  ```ocaml
  UIdent ; ~label: #1.0 , ~ ( lident :> {%hello|world|} ) let false = UIdent
  ```
- Derivation (348 occurrences):
  ```
  reversed_labeled_tuple_body: TILDE LPAREN LIDENT . type_constraint RPAREN COMMA TILDE LPAREN LIDENT type_constraint RPAREN
    type_constraint: . COLONGREATER core_type
  ```
  Sample sentence (implementation):
  ```ocaml
  UIdent ; ~ ( lident :> {%hello|world|} ) , ~ ( lident :> {%hello|world|} ) let false = UIdent
  ```
- Derivation (312 occurrences):
  ```
  reversed_labeled_tuple_body: FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case) COMMA TILDE LPAREN LIDENT . type_constraint RPAREN
    type_constraint: . COLONGREATER core_type
  ```
  Sample sentence (implementation):
  ```ocaml
  UIdent , function false -> . , ~ ( lident :> {%hello|world|} ) let false = UIdent
  ```
- Derivation (306 occurrences):
  ```
  reversed_labeled_tuple_body: reversed_labeled_tuple_body COMMA TILDE LPAREN LIDENT . type_constraint RPAREN
    type_constraint: . COLONGREATER core_type
  ```
  Sample sentence (implementation):
  ```ocaml
  ( UIdent , UIdent , ~ ( lident :> {%hello|world|} ) ) let false = UIdent
  ```
- Derivation (211 occurrences):
  ```
  reversed_labeled_tuple_body: TILDE LIDENT COMMA TILDE LPAREN LIDENT . type_constraint RPAREN
    type_constraint: . COLONGREATER core_type
  ```
  Sample sentence (implementation):
  ```ocaml
  UIdent ; ~ lident , ~ ( lident :> {%hello|world|} ) let false = UIdent
  ```
- Derivation (208 occurrences):
  ```
  reversed_labeled_tuple_body: TILDE LPAREN LIDENT . type_constraint RPAREN COMMA TILDE LIDENT
    type_constraint: . COLONGREATER core_type
  ```
  Sample sentence (implementation):
  ```ocaml
  UIdent ; ~ ( lident :> {%hello|world|} ) , ~ lident let false = UIdent
  ```
- Derivation (16 occurrences):
  ```
  labeled_simple_expr: TILDE LPAREN LIDENT . type_constraint RPAREN
    type_constraint: . COLONGREATER core_type
  ```
  Sample sentence (implementation):
  ```ocaml
  UIdent ~ ( lident :> {%hello|world|} ) let false = UIdent
  ```
- Derivation (6 occurrences):
  ```
  value: BANG list(attribute) mutable_flag . LIDENT type_constraint EQUAL seq_expr
    type_constraint: . COLONGREATER core_type
  ```
  Sample sentence (implementation):
  ```ocaml
  object val ! lident :> {%hello|world|} = function false -> UIdent inherit lident end let false = UIdent
  ```
- Derivation (6 occurrences):
  ```
  value: list(attribute) mutable_flag . LIDENT type_constraint EQUAL seq_expr
    type_constraint: . COLONGREATER core_type
  ```
  Sample sentence (implementation):
  ```ocaml
  object val lident :> {%hello|world|} = function false -> UIdent inherit lident end let false = UIdent
  ```


### Item `extension: . QUOTED_STRING_EXPR` (in 9295 errors)

- Derivation (1912 occurrences):
  ```
  class_fun_binding: COLON . class_type EQUAL class_expr
    class_type: . class_signature
      class_signature: . extension
        extension: . QUOTED_STRING_EXPR
  ```
  Sample sentence (implementation):
  ```ocaml
  class lident : {%hello|world|} = lident let false = UIdent
  ```
- Derivation (255 occurrences):
  ```
  delimited_type_supporting_local_open: HASHLPAREN LIDENT COLON . atomic_type STAR reversed_separated_nonempty_llist(STAR,labeled_tuple_typ_element) RPAREN
    atomic_type: . delimited_type
      delimited_type: . extension_type
        extension_type: . extension
          extension: . QUOTED_STRING_EXPR
  ```
  Sample sentence (interface):
  ```ocaml
  exception false of #( lident : {%hello|world|} * {%hello|world|} )
  ```
- Derivation (226 occurrences):
  ```
  class_type: tuple_type MINUSGREATER . class_type
    class_type: . class_signature
      class_signature: . extension
        extension: . QUOTED_STRING_EXPR
  ```
  Sample sentence (interface):
  ```ocaml
  class lident : {%hello|world|} -> {%hello|world|}
  ```
- Derivation (203 occurrences):
  ```
  fun_expr: LET OPEN BANG ext list(attribute) . module_expr IN seq_expr
    module_expr: . extension
      extension: . QUOTED_STRING_EXPR
  ```
  Sample sentence (implementation):
  ```ocaml
  [ let open ! {%hello|world|} in function false -> UIdent ] let false = UIdent
  ```
- Derivation (203 occurrences):
  ```
  fun_expr: LET OPEN ext list(attribute) . module_expr IN seq_expr
    module_expr: . extension
      extension: . QUOTED_STRING_EXPR
  ```
  Sample sentence (implementation):
  ```ocaml
  [ let open {%hello|world|} in function false -> UIdent ] let false = UIdent
  ```
- Derivation (189 occurrences):
  ```
  strict_function_or_labeled_tuple_type: LIDENT COLON nonempty_list(mode_legacy) atomic_type STAR . reversed_separated_nonempty_llist(STAR,labeled_tuple_typ_element) at_mode_expr MINUSGREATER strict_function_or_labeled_tuple_type
    reversed_separated_nonempty_llist(STAR,labeled_tuple_typ_element): . atomic_type
      atomic_type: . delimited_type
        delimited_type: . extension_type
          extension_type: . extension
            extension: . QUOTED_STRING_EXPR
  ```
  Sample sentence (implementation):
  ```ocaml
  type nonrec lident = lident : local_ {%hello|world|} * {%hello|world|} @ lident -> {%hello|world|} -> {%hello|world|} and lident
  ```
- Derivation (189 occurrences):
  ```
  strict_function_or_labeled_tuple_type: LIDENT COLON nonempty_list(mode_legacy) atomic_type STAR . reversed_separated_nonempty_llist(STAR,labeled_tuple_typ_element) MINUSGREATER strict_function_or_labeled_tuple_type
    reversed_separated_nonempty_llist(STAR,labeled_tuple_typ_element): . atomic_type
      atomic_type: . delimited_type
        delimited_type: . extension_type
          extension_type: . extension
            extension: . QUOTED_STRING_EXPR
  ```
  Sample sentence (implementation):
  ```ocaml
  type nonrec lident = lident : local_ {%hello|world|} * {%hello|world|} -> {%hello|world|} -> {%hello|world|} and lident
  ```
- Derivation (185 occurrences):
  ```
  simple_expr: LPAREN MODULE ext list(attribute) . module_expr RPAREN
    module_expr: . extension
      extension: . QUOTED_STRING_EXPR
  ```
  Sample sentence (implementation):
  ```ocaml
  ( ( module {%hello|world|} ) ) let false = UIdent
  ```
- Derivation (173 occurrences):
  ```
  signature_item: MODULE ext list(attribute) REC module_name COLON . module_type optional_atat_modalities_expr list(post_item_attribute) list(and_module_declaration)
    module_type: . extension
      extension: . QUOTED_STRING_EXPR
  ```
  Sample sentence (interface):
  ```ocaml
  module rec UIdent : {%hello|world|}
  ```
- Derivation (159 occurrences):
  ```
  signature_item: include_kind ext . list(attribute) module_type list(post_item_attribute) optional_atat_modalities_expr
    module_type: . module_type WITH reversed_separated_nonempty_llist(AND,with_constraint)
      module_type: . extension
        extension: . QUOTED_STRING_EXPR
  ```
  Sample sentence (interface):
  ```ocaml
  include {%hello|world|} with module UIdent := UIdent @@ lident
  ```
- Derivation (153 occurrences):
  ```
  delimited_type_supporting_local_open: HASHLPAREN . atomic_type STAR reversed_separated_nonempty_llist(STAR,labeled_tuple_typ_element) RPAREN
    atomic_type: . delimited_type
      delimited_type: . extension_type
        extension_type: . extension
          extension: . QUOTED_STRING_EXPR
  ```
  Sample sentence (interface):
  ```ocaml
  exception false of #( {%hello|world|} * {%hello|world|} )
  ```
- Derivation (110 occurrences):
  ```
  object_type: LESS . meth_list GREATER
    meth_list: . atomic_type
      atomic_type: . delimited_type
        delimited_type: . extension_type
          extension_type: . extension
            extension: . QUOTED_STRING_EXPR
  ```
  Sample sentence (interface):
  ```ocaml
  exception false of < {%hello|world|} >
  ```
- Derivation (105 occurrences):
  ```
  class_type: optlabel . tuple_type MINUSGREATER class_type
    tuple_type: . atomic_type
      atomic_type: . delimited_type
        delimited_type: . extension_type
          extension_type: . extension
            extension: . QUOTED_STRING_EXPR
  ```
  Sample sentence (interface):
  ```ocaml
  class lident : ?label: {%hello|world|} -> {%hello|world|}
  ```
- Derivation (101 occurrences):
  ```
  strict_function_or_labeled_tuple_type: LIDENT COLON nonempty_list(mode_legacy) atomic_type STAR . reversed_separated_nonempty_llist(STAR,labeled_tuple_typ_element) at_mode_expr MINUSGREATER tuple_type
    reversed_separated_nonempty_llist(STAR,labeled_tuple_typ_element): . atomic_type
      atomic_type: . delimited_type
        delimited_type: . extension_type
          extension_type: . extension
            extension: . QUOTED_STRING_EXPR
  ```
  Sample sentence (implementation):
  ```ocaml
  type nonrec lident = lident : local_ {%hello|world|} * {%hello|world|} @ lident -> {%hello|world|} and lident
  ```
- Derivation (91 occurrences):
  ```
  module_type: reversed_nonempty_llist(functor_arg) MINUSGREATER . module_type
    module_type: . extension
      extension: . QUOTED_STRING_EXPR
  ```
  Sample sentence (interface):
  ```ocaml
  include ( ) -> {%hello|world|} @@ lident
  ```
- Derivation (89 occurrences):
  ```
  strict_function_or_labeled_tuple_type: LIDENT COLON nonempty_list(mode_legacy) atomic_type STAR . reversed_separated_nonempty_llist(STAR,labeled_tuple_typ_element) MINUSGREATER tuple_type
    reversed_separated_nonempty_llist(STAR,labeled_tuple_typ_element): . atomic_type
      atomic_type: . delimited_type
        delimited_type: . extension_type
          extension_type: . extension
            extension: . QUOTED_STRING_EXPR
  ```
  Sample sentence (implementation):
  ```ocaml
  type nonrec lident = lident : local_ {%hello|world|} * {%hello|world|} -> {%hello|world|} and lident
  ```
- Derivation (88 occurrences):
  ```
  strict_function_or_labeled_tuple_type: LIDENT COLON nonempty_list(mode_legacy) atomic_type STAR . reversed_separated_nonempty_llist(STAR,labeled_tuple_typ_element) at_mode_expr MINUSGREATER nonempty_list(mode_legacy) tuple_type
    reversed_separated_nonempty_llist(STAR,labeled_tuple_typ_element): . atomic_type
      atomic_type: . delimited_type
        delimited_type: . extension_type
          extension_type: . extension
            extension: . QUOTED_STRING_EXPR
  ```
  Sample sentence (implementation):
  ```ocaml
  type nonrec lident = lident : local_ {%hello|world|} * {%hello|world|} @ lident -> local_ {%hello|world|} and lident
  ```
- Derivation (88 occurrences):
  ```
  strict_function_or_labeled_tuple_type: LIDENT COLON nonempty_list(mode_legacy) atomic_type STAR . reversed_separated_nonempty_llist(STAR,labeled_tuple_typ_element) MINUSGREATER nonempty_list(mode_legacy) tuple_type
    reversed_separated_nonempty_llist(STAR,labeled_tuple_typ_element): . atomic_type
      atomic_type: . delimited_type
        delimited_type: . extension_type
          extension_type: . extension
            extension: . QUOTED_STRING_EXPR
  ```
  Sample sentence (implementation):
  ```ocaml
  type nonrec lident = lident : local_ {%hello|world|} * {%hello|world|} -> local_ {%hello|world|} and lident
  ```
- Derivation (85 occurrences):
  ```
  class_type: LIDENT COLON . tuple_type MINUSGREATER class_type
    tuple_type: . atomic_type
      atomic_type: . delimited_type
        delimited_type: . extension_type
          extension_type: . extension
            extension: . QUOTED_STRING_EXPR
  ```
  Sample sentence (interface):
  ```ocaml
  class lident : lident : {%hello|world|} -> {%hello|world|}
  ```
- Derivation (73 occurrences):
  ```
  module_type: module_type_atomic at_mode_expr MINUSGREATER . module_type
    module_type: . extension
      extension: . QUOTED_STRING_EXPR
  ```
  Sample sentence (interface):
  ```ocaml
  include UIdent @ lident -> {%hello|world|} @@ lident
  ```
- Derivation (73 occurrences):
  ```
  generalized_constructor_arguments: COLON reversed_nonempty_llist(typevar) DOT . constructor_arguments MINUSGREATER atomic_type
    constructor_arguments: . atomic_type optional_atat_modalities_expr
      atomic_type: . delimited_type
        delimited_type: . extension_type
          extension_type: . extension
            extension: . QUOTED_STRING_EXPR
  ```
  Sample sentence (interface):
  ```ocaml
  exception false : ' lident . {%hello|world|} -> {%hello|world|}
  ```
- ...


### Item `simple_pattern: . simple_pattern_not_ident` (in 3924 errors)

- Derivation (1428 occurrences):
  ```
  labeled_tuple_pat_element_list(pattern): TILDE LPAREN LIDENT COLON core_type RPAREN COMMA . pattern
    pattern: . pattern_gen
      pattern_gen: . simple_pattern
        simple_pattern: . simple_pattern_not_ident
          simple_pattern_not_ident: . constr_longident
            constr_longident: . constr_extra_nonprefix_ident
              constr_extra_nonprefix_ident: . FALSE
  ```
  Sample sentence (implementation):
  ```ocaml
  function ~ ( lident : {%hello|world|} ) , false -> UIdent let false = UIdent
  ```
- Derivation (1124 occurrences):
  ```
  labeled_tuple_pat_element_list(pattern): TILDE LPAREN LIDENT COLON core_type RPAREN COMMA LABEL . simple_pattern
    simple_pattern: . simple_pattern_not_ident
      simple_pattern_not_ident: . constr_longident
        constr_longident: . constr_extra_nonprefix_ident
          constr_extra_nonprefix_ident: . FALSE
  ```
  Sample sentence (implementation):
  ```ocaml
  function ~ ( lident : {%hello|world|} ) , ~label: false -> UIdent let false = UIdent
  ```
- Derivation (171 occurrences):
  ```
  fun_expr: fun_expr MOD STACK FUNCTION ext . list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
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
  let open {%hello|world|} in UIdent mod stack_ function false -> UIdent [@@ and ] let false = UIdent
  ```
- Derivation (37 occurrences):
  ```
  labeled_tuple_pat_element_list(pattern_no_exn): TILDE LPAREN LIDENT COLON core_type RPAREN COMMA . pattern_no_exn
    pattern_no_exn: . pattern_gen
      pattern_gen: . simple_pattern
        simple_pattern: . simple_pattern_not_ident
          simple_pattern_not_ident: . constr_longident
            constr_longident: . constr_extra_nonprefix_ident
              constr_extra_nonprefix_ident: . FALSE
  ```
  Sample sentence (implementation):
  ```ocaml
  let false = UIdent and ~ ( lident : {%hello|world|} ) , false = UIdent
  ```
- Derivation (27 occurrences):
  ```
  labeled_tuple_pat_element_list(pattern_no_exn): TILDE LPAREN LIDENT COLON core_type RPAREN COMMA LABEL . simple_pattern
    simple_pattern: . simple_pattern_not_ident
      simple_pattern_not_ident: . constr_longident
        constr_longident: . constr_extra_nonprefix_ident
          constr_extra_nonprefix_ident: . FALSE
  ```
  Sample sentence (implementation):
  ```ocaml
  let false = UIdent and ~ ( lident : {%hello|world|} ) , ~label: false = UIdent
  ```
- Derivation (26 occurrences):
  ```
  fun_expr: LETOP . letop_bindings IN seq_expr
    letop_bindings: . letop_binding_body
      letop_binding_body: . simple_pattern COLON core_type EQUAL seq_expr
        simple_pattern: . simple_pattern_not_ident
  ```
  Sample sentence (implementation):
  ```ocaml
  ( let*# lident : {%hello|world|} = UIdent in UIdent ) let false = UIdent
  ```
- Derivation (17 occurrences):
  ```
  labeled_tuple_pat_element_list(pattern): TILDE LPAREN LIDENT COLON core_type RPAREN COMMA . pattern
    pattern: . pattern COLONCOLON pattern
      pattern: . pattern_gen
        pattern_gen: . simple_pattern
          simple_pattern: . simple_pattern_not_ident
            simple_pattern_not_ident: . constr_longident
              constr_longident: . constr_extra_nonprefix_ident
                constr_extra_nonprefix_ident: . FALSE
  ```
  Sample sentence (implementation):
  ```ocaml
  function ~ ( lident : {%hello|world|} ) , false :: false -> UIdent let false = UIdent
  ```
- Derivation (13 occurrences):
  ```
  letop_bindings: letop_bindings ANDOP . letop_binding_body
    letop_binding_body: . simple_pattern COLON core_type EQUAL seq_expr
      simple_pattern: . simple_pattern_not_ident
  ```
  Sample sentence (implementation):
  ```ocaml
  let* lident and*# lident : {%hello|world|} = UIdent in UIdent [@@ and ] let false = UIdent
  ```
- Derivation (10 occurrences):
  ```
  labeled_tuple_pat_element_list(pattern): TILDE LPAREN LIDENT COLON core_type RPAREN COMMA . pattern
    pattern: . pattern_gen
      pattern_gen: . simple_pattern
        simple_pattern: . simple_pattern_not_ident
          simple_pattern_not_ident: . HASH_SUFFIX type_longident
  ```
  Sample sentence (implementation):
  ```ocaml
  function ~ ( lident : {%hello|world|} ) ,# lident -> UIdent let false = UIdent
  ```
- Derivation (10 occurrences):
  ```
  labeled_tuple_pat_element_list(pattern): TILDE LPAREN LIDENT COLON core_type RPAREN COMMA LABEL . simple_pattern
    simple_pattern: . simple_pattern_not_ident
      simple_pattern_not_ident: . HASH_SUFFIX type_longident
  ```
  Sample sentence (implementation):
  ```ocaml
  function ~ ( lident : {%hello|world|} ) , ~label:# lident -> UIdent let false = UIdent
  ```
- Derivation (10 occurrences):
  ```
  labeled_tuple_pat_element_list(pattern): TILDE LPAREN LIDENT COLON core_type RPAREN COMMA . pattern
    pattern: . pattern_gen
      pattern_gen: . simple_pattern
        simple_pattern: . simple_pattern_not_ident
          simple_pattern_not_ident: . HASH type_longident
  ```
  Sample sentence (implementation):
  ```ocaml
  function ~ ( lident : {%hello|world|} ) , # lident -> UIdent let false = UIdent
  ```
- Derivation (10 occurrences):
  ```
  labeled_tuple_pat_element_list(pattern): TILDE LPAREN LIDENT COLON core_type RPAREN COMMA LABEL . simple_pattern
    simple_pattern: . simple_pattern_not_ident
      simple_pattern_not_ident: . HASH type_longident
  ```
  Sample sentence (implementation):
  ```ocaml
  function ~ ( lident : {%hello|world|} ) , ~label: # lident -> UIdent let false = UIdent
  ```
- Derivation (8 occurrences):
  ```
  simple_pattern_not_ident: LPAREN . pattern COLON core_type RPAREN
    pattern: . pattern_gen
      pattern_gen: . simple_pattern
        simple_pattern: . simple_pattern_not_ident
  ```
  Sample sentence (implementation):
  ```ocaml
  let (# lident : {%hello|world|} ) @ lident = UIdent [@@ and ] let false = UIdent
  ```
- Derivation (6 occurrences):
  ```
  reversed_nonempty_concat(fun_param_as_list): reversed_nonempty_concat(fun_param_as_list) . fun_param_as_list
    fun_param_as_list: . labeled_simple_pattern
      labeled_simple_pattern: . simple_pattern_extend_modes_or_poly
        simple_pattern_extend_modes_or_poly: . simple_pattern
          simple_pattern: . simple_pattern_not_ident
  ```
  Sample sentence (implementation):
  ```ocaml
  fun false # lident : {%hello|world|} -> UIdent let false = UIdent
  ```
- Derivation (6 occurrences):
  ```
  let_binding_body_no_punning: LPAREN val_ident at_mode_expr RPAREN . strict_binding_modes
    strict_binding_modes: . fun_params option(constraint_) EQUAL fun_body
      fun_params: . reversed_nonempty_concat(fun_param_as_list)
        reversed_nonempty_concat(fun_param_as_list): . fun_param_as_list
          fun_param_as_list: . labeled_simple_pattern
            labeled_simple_pattern: . simple_pattern_extend_modes_or_poly
              simple_pattern_extend_modes_or_poly: . simple_pattern
                simple_pattern: . simple_pattern_not_ident
                  simple_pattern_not_ident: . mod_longident DOT LPAREN RPAREN
                    mod_longident: . mk_longident(mod_longident,UIDENT)
                      mk_longident(mod_longident,UIDENT): . UIDENT
  ```
  Sample sentence (implementation):
  ```ocaml
  let ( lident @ lident ) UIdent . ( ) : {%hello|world|} = UIdent [@@ and ] let false = UIdent
  ```
- Derivation (6 occurrences):
  ```
  let_binding_body_no_punning: nonempty_list(mode_legacy) val_ident . strict_binding_modes
    strict_binding_modes: . fun_params option(constraint_) EQUAL fun_body
      fun_params: . reversed_nonempty_concat(fun_param_as_list)
        reversed_nonempty_concat(fun_param_as_list): . fun_param_as_list
          fun_param_as_list: . labeled_simple_pattern
            labeled_simple_pattern: . simple_pattern_extend_modes_or_poly
              simple_pattern_extend_modes_or_poly: . simple_pattern
                simple_pattern: . simple_pattern_not_ident
                  simple_pattern_not_ident: . mod_longident DOT LPAREN RPAREN
                    mod_longident: . mk_longident(mod_longident,UIDENT)
                      mk_longident(mod_longident,UIDENT): . UIDENT
  ```
  Sample sentence (implementation):
  ```ocaml
  let local_ lident UIdent . ( ) : {%hello|world|} = UIdent [@@ and ] let false = UIdent
  ```
- Derivation (6 occurrences):
  ```
  let_binding_body_no_punning: val_ident . strict_binding_modes
    strict_binding_modes: . fun_params option(constraint_) EQUAL fun_body
      fun_params: . reversed_nonempty_concat(fun_param_as_list)
        reversed_nonempty_concat(fun_param_as_list): . fun_param_as_list
          fun_param_as_list: . labeled_simple_pattern
            labeled_simple_pattern: . simple_pattern_extend_modes_or_poly
              simple_pattern_extend_modes_or_poly: . simple_pattern
                simple_pattern: . simple_pattern_not_ident
                  simple_pattern_not_ident: . mod_longident DOT LPAREN RPAREN
                    mod_longident: . mk_longident(mod_longident,UIDENT)
                      mk_longident(mod_longident,UIDENT): . UIDENT
  ```
  Sample sentence (implementation):
  ```ocaml
  let lident UIdent . ( ) : {%hello|world|} = UIdent [@@ and ] let false = UIdent
  ```
- Derivation (6 occurrences):
  ```
  labeled_tuple_pat_element_list(pattern): TILDE LPAREN LIDENT COLON core_type RPAREN COMMA LABEL . simple_pattern
    simple_pattern: . simple_pattern_not_ident
      simple_pattern_not_ident: . mod_longident DOT LPAREN RPAREN
        mod_longident: . mk_longident(mod_longident,UIDENT)
          mk_longident(mod_longident,UIDENT): . UIDENT
  ```
  Sample sentence (implementation):
  ```ocaml
  function ~ ( lident : {%hello|world|} ) , ~label: UIdent . ( ) -> UIdent let false = UIdent
  ```
- Derivation (6 occurrences):
  ```
  labeled_tuple_pat_element_list(pattern_no_exn): TILDE LPAREN LIDENT COLON core_type RPAREN COMMA . pattern_no_exn
    pattern_no_exn: . pattern_no_exn COLONCOLON pattern
      pattern_no_exn: . pattern_gen
        pattern_gen: . simple_pattern
          simple_pattern: . simple_pattern_not_ident
            simple_pattern_not_ident: . constr_longident
              constr_longident: . constr_extra_nonprefix_ident
                constr_extra_nonprefix_ident: . FALSE
  ```
  Sample sentence (implementation):
  ```ocaml
  let ~ ( lident : {%hello|world|} ) , false :: false = UIdent [@@ and ] let false = UIdent
  ```
- Derivation (6 occurrences):
  ```
  labeled_tuple_pat_element_list(pattern): TILDE LPAREN LIDENT COLON core_type RPAREN COMMA . pattern
    pattern: . pattern attribute
      pattern: . pattern_gen
        pattern_gen: . simple_pattern
          simple_pattern: . simple_pattern_not_ident
            simple_pattern_not_ident: . constr_longident
              constr_longident: . constr_extra_nonprefix_ident
                constr_extra_nonprefix_ident: . FALSE
  ```
  Sample sentence (implementation):
  ```ocaml
  function ~ ( lident : {%hello|world|} ) , false [@ and ] -> UIdent let false = UIdent
  ```
- Derivation (4 occurrences):
  ```
  simple_pattern_not_ident: LPAREN . pattern RPAREN
    pattern: . pattern_gen
      pattern_gen: . simple_pattern
        simple_pattern: . simple_pattern_not_ident
          simple_pattern_not_ident: . signed_constant
  ```
  Sample sentence (implementation):
  ```ocaml
  fun ( - #1.0 ) : {%hello|world|} -> UIdent let false = UIdent
  ```
- ...


### Item `tuple_type: . atomic_type` (in 1241 errors)

- Derivation (84 occurrences):
  ```
  strict_function_or_labeled_tuple_type: LIDENT COLON . tuple_type at_mode_expr MINUSGREATER tuple_type
    tuple_type: . atomic_type
  ```
  Sample sentence (implementation):
  ```ocaml
  type nonrec lident = lident : {%hello|world|} @ lident -> {%hello|world|} and lident
  ```
- Derivation (84 occurrences):
  ```
  strict_function_or_labeled_tuple_type: LIDENT COLON . tuple_type at_mode_expr MINUSGREATER strict_function_or_labeled_tuple_type
    tuple_type: . atomic_type
  ```
  Sample sentence (implementation):
  ```ocaml
  type nonrec lident = lident : {%hello|world|} @ lident -> {%hello|world|} -> {%hello|world|} and lident
  ```
- Derivation (69 occurrences):
  ```
  strict_function_or_labeled_tuple_type: optlabel nonempty_list(mode_legacy) . tuple_type at_mode_expr MINUSGREATER tuple_type
    tuple_type: . atomic_type
  ```
  Sample sentence (implementation):
  ```ocaml
  val lident : ?label: local_ {%hello|world|} @ lident -> {%hello|world|} let false = UIdent
  ```
- Derivation (30 occurrences):
  ```
  strict_function_or_labeled_tuple_type: optlabel . tuple_type at_mode_expr MINUSGREATER tuple_type
    tuple_type: . atomic_type
  ```
  Sample sentence (implementation):
  ```ocaml
  val lident : ?label: {%hello|world|} @ lident -> {%hello|world|} let false = UIdent
  ```
- Derivation (28 occurrences):
  ```
  strict_function_or_labeled_tuple_type: LPAREN reversed_nonempty_llist(typevar) DOT core_type RPAREN at_mode_expr MINUSGREATER . strict_function_or_labeled_tuple_type
    strict_function_or_labeled_tuple_type: . tuple_type MINUSGREATER tuple_type
      tuple_type: . atomic_type
  ```
  Sample sentence (implementation):
  ```ocaml
  type nonrec lident = ( ' lident . {%hello|world|} ) @ lident -> {%hello|world|} -> {%hello|world|} and lident
  ```
- Derivation (28 occurrences):
  ```
  strict_function_or_labeled_tuple_type: LIDENT COLON nonempty_list(mode_legacy) tuple_type at_mode_expr MINUSGREATER . strict_function_or_labeled_tuple_type
    strict_function_or_labeled_tuple_type: . tuple_type MINUSGREATER tuple_type
      tuple_type: . atomic_type
  ```
  Sample sentence (implementation):
  ```ocaml
  type nonrec lident = lident : local_ {%hello|world|} @ lident -> {%hello|world|} -> {%hello|world|} and lident
  ```
- Derivation (28 occurrences):
  ```
  strict_function_or_labeled_tuple_type: LIDENT COLON nonempty_list(mode_legacy) tuple_type MINUSGREATER . strict_function_or_labeled_tuple_type
    strict_function_or_labeled_tuple_type: . tuple_type MINUSGREATER tuple_type
      tuple_type: . atomic_type
  ```
  Sample sentence (implementation):
  ```ocaml
  type nonrec lident = lident : local_ {%hello|world|} -> {%hello|world|} -> {%hello|world|} and lident
  ```
- Derivation (28 occurrences):
  ```
  strict_function_or_labeled_tuple_type: LIDENT COLON nonempty_list(mode_legacy) LPAREN reversed_nonempty_llist(typevar) DOT core_type RPAREN at_mode_expr MINUSGREATER . strict_function_or_labeled_tuple_type
    strict_function_or_labeled_tuple_type: . tuple_type MINUSGREATER tuple_type
      tuple_type: . atomic_type
  ```
  Sample sentence (implementation):
  ```ocaml
  type nonrec lident = lident : local_ ( ' lident . {%hello|world|} ) @ lident -> {%hello|world|} -> {%hello|world|} and lident
  ```
- Derivation (28 occurrences):
  ```
  strict_function_or_labeled_tuple_type: LIDENT COLON tuple_type MINUSGREATER . strict_function_or_labeled_tuple_type
    strict_function_or_labeled_tuple_type: . tuple_type MINUSGREATER tuple_type
      tuple_type: . atomic_type
  ```
  Sample sentence (implementation):
  ```ocaml
  type nonrec lident = lident : {%hello|world|} -> {%hello|world|} -> {%hello|world|} and lident
  ```
- Derivation (28 occurrences):
  ```
  strict_function_or_labeled_tuple_type: LIDENT COLON LPAREN reversed_nonempty_llist(typevar) DOT core_type RPAREN at_mode_expr MINUSGREATER . strict_function_or_labeled_tuple_type
    strict_function_or_labeled_tuple_type: . tuple_type MINUSGREATER tuple_type
      tuple_type: . atomic_type
  ```
  Sample sentence (implementation):
  ```ocaml
  type nonrec lident = lident : ( ' lident . {%hello|world|} ) @ lident -> {%hello|world|} -> {%hello|world|} and lident
  ```
- Derivation (26 occurrences):
  ```
  strict_function_or_labeled_tuple_type: nonempty_list(mode_legacy) . tuple_type MINUSGREATER tuple_type
    tuple_type: . atomic_type
      atomic_type: . type_longident
        type_longident: . mk_longident(mod_ext_longident,type_trailing_no_hash)
          mk_longident(mod_ext_longident,type_trailing_no_hash): . type_trailing_no_hash
            type_trailing_no_hash: . LIDENT
  ```
  Sample sentence (implementation):
  ```ocaml
  kind_abbrev_ lident = kind_of_ {%hello|world|} -> local_ lident -> {%hello|world|} let false = UIdent
  ```
- Derivation (22 occurrences):
  ```
  strict_function_or_labeled_tuple_type: LIDENT COLON . tuple_type at_mode_expr MINUSGREATER nonempty_list(mode_legacy) tuple_type
    tuple_type: . atomic_type
  ```
  Sample sentence (implementation):
  ```ocaml
  kind_abbrev_ lident = kind_of_ lident : {%hello|world|} @ lident -> local_ lident let false = UIdent
  ```
- Derivation (20 occurrences):
  ```
  signature_item: CLASS ext list(attribute) virtual_flag formal_class_parameters . LIDENT COLON class_type list(post_item_attribute) list(and_class_description)
    class_type: . tuple_type MINUSGREATER class_type
      tuple_type: . atomic_type
        atomic_type: . delimited_type
  ```
  Sample sentence (interface):
  ```ocaml
  class lident : {%hello|world|} -> lident
  ```
- Derivation (15 occurrences):
  ```
  strict_function_or_labeled_tuple_type: tuple_type MINUSGREATER . strict_function_or_labeled_tuple_type
    strict_function_or_labeled_tuple_type: . tuple_type MINUSGREATER tuple_type
      tuple_type: . atomic_type
  ```
  Sample sentence (implementation):
  ```ocaml
  type nonrec lident = {%hello|world|} -> {%hello|world|} -> {%hello|world|} and lident
  ```
- Derivation (14 occurrences):
  ```
  strict_function_or_labeled_tuple_type: nonempty_list(mode_legacy) LPAREN reversed_nonempty_llist(typevar) DOT core_type RPAREN at_mode_expr MINUSGREATER . strict_function_or_labeled_tuple_type
    strict_function_or_labeled_tuple_type: . tuple_type MINUSGREATER tuple_type
      tuple_type: . atomic_type
  ```
  Sample sentence (implementation):
  ```ocaml
  val lident : local_ ( ' lident . {%hello|world|} ) @ lident -> {%hello|world|} -> {%hello|world|} let false = UIdent
  ```
- Derivation (14 occurrences):
  ```
  strict_function_or_labeled_tuple_type: optlabel nonempty_list(mode_legacy) tuple_type MINUSGREATER . strict_function_or_labeled_tuple_type
    strict_function_or_labeled_tuple_type: . tuple_type MINUSGREATER tuple_type
      tuple_type: . atomic_type
  ```
  Sample sentence (implementation):
  ```ocaml
  val lident : ?label: local_ {%hello|world|} -> {%hello|world|} -> {%hello|world|} let false = UIdent
  ```
- Derivation (14 occurrences):
  ```
  strict_function_or_labeled_tuple_type: optlabel nonempty_list(mode_legacy) LPAREN reversed_nonempty_llist(typevar) DOT core_type RPAREN MINUSGREATER . strict_function_or_labeled_tuple_type
    strict_function_or_labeled_tuple_type: . tuple_type MINUSGREATER tuple_type
      tuple_type: . atomic_type
  ```
  Sample sentence (implementation):
  ```ocaml
  val lident : ?label: local_ ( ' lident . {%hello|world|} ) -> {%hello|world|} -> {%hello|world|} let false = UIdent
  ```
- Derivation (14 occurrences):
  ```
  strict_function_or_labeled_tuple_type: optlabel tuple_type MINUSGREATER . strict_function_or_labeled_tuple_type
    strict_function_or_labeled_tuple_type: . tuple_type MINUSGREATER tuple_type
      tuple_type: . atomic_type
  ```
  Sample sentence (implementation):
  ```ocaml
  val lident : ?label: {%hello|world|} -> {%hello|world|} -> {%hello|world|} let false = UIdent
  ```
- Derivation (14 occurrences):
  ```
  strict_function_or_labeled_tuple_type: optlabel LPAREN reversed_nonempty_llist(typevar) DOT core_type RPAREN MINUSGREATER . strict_function_or_labeled_tuple_type
    strict_function_or_labeled_tuple_type: . tuple_type MINUSGREATER tuple_type
      tuple_type: . atomic_type
  ```
  Sample sentence (implementation):
  ```ocaml
  val lident : ?label: ( ' lident . {%hello|world|} ) -> {%hello|world|} -> {%hello|world|} let false = UIdent
  ```
- Derivation (14 occurrences):
  ```
  strict_function_or_labeled_tuple_type: optlabel nonempty_list(mode_legacy) . tuple_type at_mode_expr MINUSGREATER strict_function_or_labeled_tuple_type
    tuple_type: . atomic_type
  ```
  Sample sentence (implementation):
  ```ocaml
  val lident : ?label: local_ {%hello|world|} @ lident -> {%hello|world|} -> {%hello|world|} let false = UIdent
  ```
- Derivation (14 occurrences):
  ```
  strict_function_or_labeled_tuple_type: optlabel . tuple_type at_mode_expr MINUSGREATER strict_function_or_labeled_tuple_type
    tuple_type: . atomic_type
  ```
  Sample sentence (implementation):
  ```ocaml
  val lident : ?label: {%hello|world|} @ lident -> {%hello|world|} -> {%hello|world|} let false = UIdent
  ```
- ...


### Item `seq_expr: . FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)` (in 1058 errors)

- Derivation (411 occurrences):
  ```
  fun_expr: LET MODULE ext list(attribute) module_name_modal(at_mode_expr) module_binding_body IN . seq_expr
    seq_expr: . FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
  ```
  Sample sentence (implementation):
  ```ocaml
  let module UIdent = {%hello|world|} in function false -> UIdent let false = UIdent
  ```
- Derivation (215 occurrences):
  ```
  fun_expr: LET OPEN BANG ext list(attribute) module_expr IN . seq_expr
    seq_expr: . FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
  ```
  Sample sentence (implementation):
  ```ocaml
  let open ! {%hello|world|} in function false -> UIdent let false = UIdent
  ```
- Derivation (215 occurrences):
  ```
  fun_expr: LET OPEN ext list(attribute) module_expr IN . seq_expr
    seq_expr: . FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
  ```
  Sample sentence (implementation):
  ```ocaml
  let open {%hello|world|} in function false -> UIdent let false = UIdent
  ```
- Derivation (8 occurrences):
  ```
  let_binding_body_no_punning: simple_pattern_not_ident COLON tuple_type at_mode_expr EQUAL . seq_expr
    seq_expr: . FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
  ```
  Sample sentence (implementation):
  ```ocaml
  let false : {%hello|world|} @ lident = function false -> UIdent let false = UIdent
  ```
- Derivation (8 occurrences):
  ```
  let_binding_body_no_punning: simple_pattern_not_ident COLON core_type EQUAL . seq_expr
    seq_expr: . FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
  ```
  Sample sentence (implementation):
  ```ocaml
  let false : {%hello|world|} = function false -> UIdent let false = UIdent
  ```
- Derivation (8 occurrences):
  ```
  let_binding_body_no_punning: LPAREN val_ident at_mode_expr RPAREN COLON TYPE newtypes DOT tuple_type at_mode_expr EQUAL . seq_expr
    seq_expr: . FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
  ```
  Sample sentence (implementation):
  ```ocaml
  let ( lident @ lident ) : type lident . {%hello|world|} @ lident = function false -> UIdent let false = UIdent
  ```
- Derivation (8 occurrences):
  ```
  let_binding_body_no_punning: nonempty_list(mode_legacy) val_ident COLON TYPE newtypes DOT tuple_type at_mode_expr EQUAL . seq_expr
    seq_expr: . FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
  ```
  Sample sentence (implementation):
  ```ocaml
  let local_ lident : type lident . {%hello|world|} @ lident = function false -> UIdent let false = UIdent
  ```
- Derivation (8 occurrences):
  ```
  let_binding_body_no_punning: val_ident COLON TYPE newtypes DOT tuple_type at_mode_expr EQUAL . seq_expr
    seq_expr: . FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
  ```
  Sample sentence (implementation):
  ```ocaml
  let lident : type lident . {%hello|world|} @ lident = function false -> UIdent let false = UIdent
  ```
- Derivation (8 occurrences):
  ```
  let_binding_body_no_punning: LPAREN val_ident at_mode_expr RPAREN COLON TYPE newtypes DOT core_type EQUAL . seq_expr
    seq_expr: . FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
  ```
  Sample sentence (implementation):
  ```ocaml
  let ( lident @ lident ) : type lident . {%hello|world|} = function false -> UIdent let false = UIdent
  ```
- Derivation (8 occurrences):
  ```
  let_binding_body_no_punning: nonempty_list(mode_legacy) val_ident COLON TYPE newtypes DOT core_type EQUAL . seq_expr
    seq_expr: . FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
  ```
  Sample sentence (implementation):
  ```ocaml
  let local_ lident : type lident . {%hello|world|} = function false -> UIdent let false = UIdent
  ```
- Derivation (8 occurrences):
  ```
  let_binding_body_no_punning: val_ident COLON TYPE newtypes DOT core_type EQUAL . seq_expr
    seq_expr: . FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
  ```
  Sample sentence (implementation):
  ```ocaml
  let lident : type lident . {%hello|world|} = function false -> UIdent let false = UIdent
  ```
- Derivation (8 occurrences):
  ```
  let_binding_body_no_punning: LPAREN val_ident at_mode_expr RPAREN COLON reversed_nonempty_llist(typevar) DOT tuple_type at_mode_expr EQUAL . seq_expr
    seq_expr: . FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
  ```
  Sample sentence (implementation):
  ```ocaml
  let ( lident @ lident ) : ' lident . {%hello|world|} @ lident = function false -> UIdent let false = UIdent
  ```
- Derivation (8 occurrences):
  ```
  let_binding_body_no_punning: LPAREN val_ident at_mode_expr RPAREN COLON reversed_nonempty_llist(typevar) DOT core_type EQUAL . seq_expr
    seq_expr: . FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
  ```
  Sample sentence (implementation):
  ```ocaml
  let ( lident @ lident ) : ' lident . {%hello|world|} = function false -> UIdent let false = UIdent
  ```
- Derivation (8 occurrences):
  ```
  let_binding_body_no_punning: nonempty_list(mode_legacy) val_ident COLON reversed_nonempty_llist(typevar) DOT tuple_type at_mode_expr EQUAL . seq_expr
    seq_expr: . FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
  ```
  Sample sentence (implementation):
  ```ocaml
  let local_ lident : ' lident . {%hello|world|} @ lident = function false -> UIdent let false = UIdent
  ```
- Derivation (8 occurrences):
  ```
  let_binding_body_no_punning: nonempty_list(mode_legacy) val_ident COLON reversed_nonempty_llist(typevar) DOT core_type EQUAL . seq_expr
    seq_expr: . FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
  ```
  Sample sentence (implementation):
  ```ocaml
  let local_ lident : ' lident . {%hello|world|} = function false -> UIdent let false = UIdent
  ```
- Derivation (8 occurrences):
  ```
  let_binding_body_no_punning: val_ident COLON reversed_nonempty_llist(typevar) DOT tuple_type at_mode_expr EQUAL . seq_expr
    seq_expr: . FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
  ```
  Sample sentence (implementation):
  ```ocaml
  let lident : ' lident . {%hello|world|} @ lident = function false -> UIdent let false = UIdent
  ```
- Derivation (8 occurrences):
  ```
  let_binding_body_no_punning: val_ident COLON reversed_nonempty_llist(typevar) DOT core_type EQUAL . seq_expr
    seq_expr: . FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
  ```
  Sample sentence (implementation):
  ```ocaml
  let lident : ' lident . {%hello|world|} = function false -> UIdent let false = UIdent
  ```
- Derivation (8 occurrences):
  ```
  let_binding_body_no_punning: LPAREN val_ident at_mode_expr RPAREN COLONGREATER tuple_type at_mode_expr EQUAL . seq_expr
    seq_expr: . FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
  ```
  Sample sentence (implementation):
  ```ocaml
  let ( lident @ lident ) :> {%hello|world|} @ lident = function false -> UIdent let false = UIdent
  ```
- Derivation (8 occurrences):
  ```
  let_binding_body_no_punning: LPAREN val_ident at_mode_expr RPAREN COLONGREATER core_type EQUAL . seq_expr
    seq_expr: . FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
  ```
  Sample sentence (implementation):
  ```ocaml
  let ( lident @ lident ) :> {%hello|world|} = function false -> UIdent let false = UIdent
  ```
- Derivation (8 occurrences):
  ```
  let_binding_body_no_punning: LPAREN val_ident at_mode_expr RPAREN COLON tuple_type at_mode_expr EQUAL . seq_expr
    seq_expr: . FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
  ```
  Sample sentence (implementation):
  ```ocaml
  let ( lident @ lident ) : {%hello|world|} @ lident = function false -> UIdent let false = UIdent
  ```
- Derivation (8 occurrences):
  ```
  let_binding_body_no_punning: LPAREN val_ident at_mode_expr RPAREN COLON core_type EQUAL . seq_expr
    seq_expr: . FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
  ```
  Sample sentence (implementation):
  ```ocaml
  let ( lident @ lident ) : {%hello|world|} = function false -> UIdent let false = UIdent
  ```
- ...


### Item `at_mode_expr: . AT nonempty_list(mode)` (in 569 errors)

- Derivation (185 occurrences):
  ```
  simple_expr: LPAREN seq_expr COLON tuple_type . at_mode_expr RPAREN
    at_mode_expr: . AT nonempty_list(mode)
  ```
  Sample sentence (implementation):
  ```ocaml
  begin ( UIdent : {%hello|world|} @ lident ) end let false = UIdent
  ```
- Derivation (48 occurrences):
  ```
  pattern_with_modes_or_poly: pattern . at_mode_expr
    at_mode_expr: . AT nonempty_list(mode)
  ```
  Sample sentence (implementation):
  ```ocaml
  fun ( false @ lident ) : {%hello|world|} -> UIdent let false = UIdent
  ```
- Derivation (41 occurrences):
  ```
  module_type: reversed_nonempty_llist(functor_arg) MINUSGREATER module_type_atomic . at_mode_expr
    at_mode_expr: . AT nonempty_list(mode)
  ```
  Sample sentence (implementation):
  ```ocaml
  include ( {%hello|world|} : ( ) -> UIdent @ lident ) let false = UIdent
  ```
- Derivation (32 occurrences):
  ```
  module_type: FUNCTOR list(attribute) reversed_nonempty_llist(functor_arg) MINUSGREATER module_type_atomic . at_mode_expr
    at_mode_expr: . AT nonempty_list(mode)
  ```
  Sample sentence (implementation):
  ```ocaml
  include ( {%hello|world|} : functor ( ) -> UIdent @ lident ) let false = UIdent
  ```
- Derivation (31 occurrences):
  ```
  paren_module_expr: LPAREN module_expr . at_mode_expr RPAREN
    at_mode_expr: . AT nonempty_list(mode)
  ```
  Sample sentence (implementation):
  ```ocaml
  open ( {%hello|world|} @ lident ) let false = UIdent
  ```
- Derivation (31 occurrences):
  ```
  paren_module_expr: LPAREN module_expr COLON module_type_atomic . at_mode_expr RPAREN
    at_mode_expr: . AT nonempty_list(mode)
  ```
  Sample sentence (implementation):
  ```ocaml
  open ( {%hello|world|} : UIdent @ lident ) let false = UIdent
  ```
- Derivation (31 occurrences):
  ```
  module_type: module_type_atomic . at_mode_expr MINUSGREATER module_type
    at_mode_expr: . AT nonempty_list(mode)
  ```
  Sample sentence (implementation):
  ```ocaml
  include ( {%hello|world|} : UIdent @ lident -> lident ) let false = UIdent
  ```
- Derivation (26 occurrences):
  ```
  strict_function_or_labeled_tuple_type: LIDENT COLON atomic_type STAR reversed_separated_nonempty_llist(STAR,labeled_tuple_typ_element) . at_mode_expr MINUSGREATER strict_function_or_labeled_tuple_type
    at_mode_expr: . AT nonempty_list(mode)
  ```
  Sample sentence (implementation):
  ```ocaml
  kind_abbrev_ lident = kind_of_ lident : {%hello|world|} * {%hello|world|} @ lident -> ?label: {%hello|world|} -> {%hello|world|} let false = UIdent
  ```
- Derivation (26 occurrences):
  ```
  strict_function_or_labeled_tuple_type: tuple_type . at_mode_expr MINUSGREATER strict_function_or_labeled_tuple_type
    at_mode_expr: . AT nonempty_list(mode)
  ```
  Sample sentence (implementation):
  ```ocaml
  kind_abbrev_ lident = kind_of_ {%hello|world|} @ lident -> ?label: {%hello|world|} -> {%hello|world|} let false = UIdent
  ```
- Derivation (21 occurrences):
  ```
  module_type: module_type_atomic . at_mode_expr MINUSGREATER module_type_atomic at_mode_expr
    at_mode_expr: . AT nonempty_list(mode)
  ```
  Sample sentence (implementation):
  ```ocaml
  include ( {%hello|world|} : UIdent @ lident -> UIdent @ lident ) let false = UIdent
  ```
- Derivation (19 occurrences):
  ```
  module_type: module_type MINUSGREATER module_type_atomic . at_mode_expr
    at_mode_expr: . AT nonempty_list(mode)
  ```
  Sample sentence (implementation):
  ```ocaml
  include ( {%hello|world|} : UIdent -> UIdent @ lident ) let false = UIdent
  ```
- Derivation (13 occurrences):
  ```
  functor_arg: LPAREN module_name COLON module_type_atomic . at_mode_expr RPAREN
    at_mode_expr: . AT nonempty_list(mode)
  ```
  Sample sentence (implementation):
  ```ocaml
  include ( functor ( UIdent : UIdent @ lident ) -> {%hello|world|} ) let false = UIdent
  ```
- Derivation (8 occurrences):
  ```
  strict_function_or_labeled_tuple_type: tuple_type MINUSGREATER tuple_type . at_mode_expr
    at_mode_expr: . AT nonempty_list(mode)
  ```
  Sample sentence (implementation):
  ```ocaml
  class type lident = object ( {%hello|world|} -> {%hello|world|} @ lident ) end let false = UIdent
  ```
- Derivation (8 occurrences):
  ```
  strict_function_or_labeled_tuple_type: LPAREN reversed_nonempty_llist(typevar) DOT core_type RPAREN at_mode_expr MINUSGREATER tuple_type . at_mode_expr
    at_mode_expr: . AT nonempty_list(mode)
  ```
  Sample sentence (implementation):
  ```ocaml
  class type lident = object ( ( ' lident . {%hello|world|} ) @ lident -> {%hello|world|} @ lident ) end let false = UIdent
  ```
- Derivation (8 occurrences):
  ```
  strict_function_or_labeled_tuple_type: LIDENT COLON nonempty_list(mode_legacy) tuple_type at_mode_expr MINUSGREATER tuple_type . at_mode_expr
    at_mode_expr: . AT nonempty_list(mode)
  ```
  Sample sentence (implementation):
  ```ocaml
  class type lident = object ( lident : local_ {%hello|world|} @ lident -> {%hello|world|} @ lident ) end let false = UIdent
  ```
- Derivation (8 occurrences):
  ```
  strict_function_or_labeled_tuple_type: LIDENT COLON nonempty_list(mode_legacy) tuple_type MINUSGREATER tuple_type . at_mode_expr
    at_mode_expr: . AT nonempty_list(mode)
  ```
  Sample sentence (implementation):
  ```ocaml
  class type lident = object ( lident : local_ {%hello|world|} -> {%hello|world|} @ lident ) end let false = UIdent
  ```
- Derivation (8 occurrences):
  ```
  strict_function_or_labeled_tuple_type: LIDENT COLON nonempty_list(mode_legacy) LPAREN reversed_nonempty_llist(typevar) DOT core_type RPAREN at_mode_expr MINUSGREATER tuple_type . at_mode_expr
    at_mode_expr: . AT nonempty_list(mode)
  ```
  Sample sentence (implementation):
  ```ocaml
  class type lident = object ( lident : local_ ( ' lident . {%hello|world|} ) @ lident -> {%hello|world|} @ lident ) end let false = UIdent
  ```
- Derivation (8 occurrences):
  ```
  strict_function_or_labeled_tuple_type: LIDENT COLON tuple_type MINUSGREATER tuple_type . at_mode_expr
    at_mode_expr: . AT nonempty_list(mode)
  ```
  Sample sentence (implementation):
  ```ocaml
  class type lident = object ( lident : {%hello|world|} -> {%hello|world|} @ lident ) end let false = UIdent
  ```
- Derivation (8 occurrences):
  ```
  strict_function_or_labeled_tuple_type: LIDENT COLON LPAREN reversed_nonempty_llist(typevar) DOT core_type RPAREN at_mode_expr MINUSGREATER tuple_type . at_mode_expr
    at_mode_expr: . AT nonempty_list(mode)
  ```
  Sample sentence (implementation):
  ```ocaml
  class type lident = object ( lident : ( ' lident . {%hello|world|} ) @ lident -> {%hello|world|} @ lident ) end let false = UIdent
  ```
- Derivation (2 occurrences):
  ```
  strict_function_or_labeled_tuple_type: LIDENT COLON atomic_type STAR reversed_separated_nonempty_llist(STAR,labeled_tuple_typ_element) . at_mode_expr MINUSGREATER nonempty_list(mode_legacy) tuple_type
    at_mode_expr: . AT nonempty_list(mode)
  ```
  Sample sentence (implementation):
  ```ocaml
  kind_abbrev_ lident = kind_of_ lident : {%hello|world|} * {%hello|world|} @ lident -> local_ lident * {%hello|world|} let false = UIdent
  ```
- Derivation (2 occurrences):
  ```
  strict_function_or_labeled_tuple_type: LIDENT COLON atomic_type STAR reversed_separated_nonempty_llist(STAR,labeled_tuple_typ_element) . at_mode_expr MINUSGREATER tuple_type
    at_mode_expr: . AT nonempty_list(mode)
  ```
  Sample sentence (implementation):
  ```ocaml
  kind_abbrev_ lident = kind_of_ lident : {%hello|world|} * {%hello|world|} @ lident -> lident * {%hello|world|} let false = UIdent
  ```
- ...


### Item `let_binding_body_no_punning: val_ident COLON core_type EQUAL . seq_expr` (in 436 errors)

- Derivation (426 occurrences):
  ```
  let_binding_body_no_punning: val_ident COLON core_type EQUAL . seq_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  let lident : {%hello|world|} = UIdent land UIdent [@@ and ] let false = UIdent
  ```
- Derivation (10 occurrences):
  ```
  let_binding_body_no_punning: val_ident COLON core_type EQUAL . seq_expr
    seq_expr: . STACK FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
  ```
  Sample sentence (implementation):
  ```ocaml
  let lident : {%hello|world|} = stack_ function false -> UIdent let false = UIdent
  ```


### Item `let_binding_body_no_punning: val_ident COLON tuple_type at_mode_expr EQUAL . seq_expr` (in 436 errors)

- Derivation (426 occurrences):
  ```
  let_binding_body_no_punning: val_ident COLON tuple_type at_mode_expr EQUAL . seq_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  let lident : {%hello|world|} @ lident = UIdent land UIdent [@@ and ] let false = UIdent
  ```
- Derivation (10 occurrences):
  ```
  let_binding_body_no_punning: val_ident COLON tuple_type at_mode_expr EQUAL . seq_expr
    seq_expr: . STACK FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
  ```
  Sample sentence (implementation):
  ```ocaml
  let lident : {%hello|world|} @ lident = stack_ function false -> UIdent let false = UIdent
  ```


### Item `let_binding_body_no_punning: val_ident COLONGREATER core_type EQUAL . seq_expr` (in 436 errors)

- Derivation (426 occurrences):
  ```
  let_binding_body_no_punning: val_ident COLONGREATER core_type EQUAL . seq_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  let lident :> {%hello|world|} = UIdent land UIdent [@@ and ] let false = UIdent
  ```
- Derivation (10 occurrences):
  ```
  let_binding_body_no_punning: val_ident COLONGREATER core_type EQUAL . seq_expr
    seq_expr: . STACK FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
  ```
  Sample sentence (implementation):
  ```ocaml
  let lident :> {%hello|world|} = stack_ function false -> UIdent let false = UIdent
  ```


### Item `let_binding_body_no_punning: val_ident COLONGREATER tuple_type at_mode_expr EQUAL . seq_expr` (in 436 errors)

- Derivation (426 occurrences):
  ```
  let_binding_body_no_punning: val_ident COLONGREATER tuple_type at_mode_expr EQUAL . seq_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  let lident :> {%hello|world|} @ lident = UIdent land UIdent [@@ and ] let false = UIdent
  ```
- Derivation (10 occurrences):
  ```
  let_binding_body_no_punning: val_ident COLONGREATER tuple_type at_mode_expr EQUAL . seq_expr
    seq_expr: . STACK FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
  ```
  Sample sentence (implementation):
  ```ocaml
  let lident :> {%hello|world|} @ lident = stack_ function false -> UIdent let false = UIdent
  ```


### Item `let_binding_body_no_punning: nonempty_list(mode_legacy) val_ident COLON core_type EQUAL . seq_expr` (in 436 errors)

- Derivation (426 occurrences):
  ```
  let_binding_body_no_punning: nonempty_list(mode_legacy) val_ident COLON core_type EQUAL . seq_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  let local_ lident : {%hello|world|} = UIdent land UIdent [@@ and ] let false = UIdent
  ```
- Derivation (10 occurrences):
  ```
  let_binding_body_no_punning: nonempty_list(mode_legacy) val_ident COLON core_type EQUAL . seq_expr
    seq_expr: . STACK FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
  ```
  Sample sentence (implementation):
  ```ocaml
  let local_ lident : {%hello|world|} = stack_ function false -> UIdent let false = UIdent
  ```


### Item `let_binding_body_no_punning: nonempty_list(mode_legacy) val_ident COLON tuple_type at_mode_expr EQUAL . seq_expr` (in 436 errors)

- Derivation (426 occurrences):
  ```
  let_binding_body_no_punning: nonempty_list(mode_legacy) val_ident COLON tuple_type at_mode_expr EQUAL . seq_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  let local_ lident : {%hello|world|} @ lident = UIdent land UIdent [@@ and ] let false = UIdent
  ```
- Derivation (10 occurrences):
  ```
  let_binding_body_no_punning: nonempty_list(mode_legacy) val_ident COLON tuple_type at_mode_expr EQUAL . seq_expr
    seq_expr: . STACK FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
  ```
  Sample sentence (implementation):
  ```ocaml
  let local_ lident : {%hello|world|} @ lident = stack_ function false -> UIdent let false = UIdent
  ```


### Item `let_binding_body_no_punning: nonempty_list(mode_legacy) val_ident COLONGREATER core_type EQUAL . seq_expr` (in 436 errors)

- Derivation (426 occurrences):
  ```
  let_binding_body_no_punning: nonempty_list(mode_legacy) val_ident COLONGREATER core_type EQUAL . seq_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  let local_ lident :> {%hello|world|} = UIdent land UIdent [@@ and ] let false = UIdent
  ```
- Derivation (10 occurrences):
  ```
  let_binding_body_no_punning: nonempty_list(mode_legacy) val_ident COLONGREATER core_type EQUAL . seq_expr
    seq_expr: . STACK FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
  ```
  Sample sentence (implementation):
  ```ocaml
  let local_ lident :> {%hello|world|} = stack_ function false -> UIdent let false = UIdent
  ```


### Item `let_binding_body_no_punning: nonempty_list(mode_legacy) val_ident COLONGREATER tuple_type at_mode_expr EQUAL . seq_expr` (in 436 errors)

- Derivation (426 occurrences):
  ```
  let_binding_body_no_punning: nonempty_list(mode_legacy) val_ident COLONGREATER tuple_type at_mode_expr EQUAL . seq_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  let local_ lident :> {%hello|world|} @ lident = UIdent land UIdent [@@ and ] let false = UIdent
  ```
- Derivation (10 occurrences):
  ```
  let_binding_body_no_punning: nonempty_list(mode_legacy) val_ident COLONGREATER tuple_type at_mode_expr EQUAL . seq_expr
    seq_expr: . STACK FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
  ```
  Sample sentence (implementation):
  ```ocaml
  let local_ lident :> {%hello|world|} @ lident = stack_ function false -> UIdent let false = UIdent
  ```


### Item `let_binding_body_no_punning: LPAREN val_ident at_mode_expr RPAREN COLON core_type EQUAL . seq_expr` (in 436 errors)

- Derivation (426 occurrences):
  ```
  let_binding_body_no_punning: LPAREN val_ident at_mode_expr RPAREN COLON core_type EQUAL . seq_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  let ( lident @ lident ) : {%hello|world|} = UIdent land UIdent [@@ and ] let false = UIdent
  ```
- Derivation (10 occurrences):
  ```
  let_binding_body_no_punning: LPAREN val_ident at_mode_expr RPAREN COLON core_type EQUAL . seq_expr
    seq_expr: . STACK FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
  ```
  Sample sentence (implementation):
  ```ocaml
  let ( lident @ lident ) : {%hello|world|} = stack_ function false -> UIdent let false = UIdent
  ```


### Item `let_binding_body_no_punning: LPAREN val_ident at_mode_expr RPAREN COLON tuple_type at_mode_expr EQUAL . seq_expr` (in 436 errors)

- Derivation (426 occurrences):
  ```
  let_binding_body_no_punning: LPAREN val_ident at_mode_expr RPAREN COLON tuple_type at_mode_expr EQUAL . seq_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  let ( lident @ lident ) : {%hello|world|} @ lident = UIdent land UIdent [@@ and ] let false = UIdent
  ```
- Derivation (10 occurrences):
  ```
  let_binding_body_no_punning: LPAREN val_ident at_mode_expr RPAREN COLON tuple_type at_mode_expr EQUAL . seq_expr
    seq_expr: . STACK FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
  ```
  Sample sentence (implementation):
  ```ocaml
  let ( lident @ lident ) : {%hello|world|} @ lident = stack_ function false -> UIdent let false = UIdent
  ```


### Item `let_binding_body_no_punning: LPAREN val_ident at_mode_expr RPAREN COLONGREATER core_type EQUAL . seq_expr` (in 436 errors)

- Derivation (426 occurrences):
  ```
  let_binding_body_no_punning: LPAREN val_ident at_mode_expr RPAREN COLONGREATER core_type EQUAL . seq_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  let ( lident @ lident ) :> {%hello|world|} = UIdent land UIdent [@@ and ] let false = UIdent
  ```
- Derivation (10 occurrences):
  ```
  let_binding_body_no_punning: LPAREN val_ident at_mode_expr RPAREN COLONGREATER core_type EQUAL . seq_expr
    seq_expr: . STACK FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
  ```
  Sample sentence (implementation):
  ```ocaml
  let ( lident @ lident ) :> {%hello|world|} = stack_ function false -> UIdent let false = UIdent
  ```


### Item `let_binding_body_no_punning: LPAREN val_ident at_mode_expr RPAREN COLONGREATER tuple_type at_mode_expr EQUAL . seq_expr` (in 436 errors)

- Derivation (426 occurrences):
  ```
  let_binding_body_no_punning: LPAREN val_ident at_mode_expr RPAREN COLONGREATER tuple_type at_mode_expr EQUAL . seq_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  let ( lident @ lident ) :> {%hello|world|} @ lident = UIdent land UIdent [@@ and ] let false = UIdent
  ```
- Derivation (10 occurrences):
  ```
  let_binding_body_no_punning: LPAREN val_ident at_mode_expr RPAREN COLONGREATER tuple_type at_mode_expr EQUAL . seq_expr
    seq_expr: . STACK FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
  ```
  Sample sentence (implementation):
  ```ocaml
  let ( lident @ lident ) :> {%hello|world|} @ lident = stack_ function false -> UIdent let false = UIdent
  ```


### Item `let_binding_body_no_punning: val_ident COLON reversed_nonempty_llist(typevar) DOT core_type EQUAL . seq_expr` (in 436 errors)

- Derivation (426 occurrences):
  ```
  let_binding_body_no_punning: val_ident COLON reversed_nonempty_llist(typevar) DOT core_type EQUAL . seq_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  let lident : ' lident . {%hello|world|} = UIdent land UIdent [@@ and ] let false = UIdent
  ```
- Derivation (10 occurrences):
  ```
  let_binding_body_no_punning: val_ident COLON reversed_nonempty_llist(typevar) DOT core_type EQUAL . seq_expr
    seq_expr: . STACK FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
  ```
  Sample sentence (implementation):
  ```ocaml
  let lident : ' lident . {%hello|world|} = stack_ function false -> UIdent let false = UIdent
  ```


### Item `let_binding_body_no_punning: val_ident COLON reversed_nonempty_llist(typevar) DOT tuple_type at_mode_expr EQUAL . seq_expr` (in 436 errors)

- Derivation (426 occurrences):
  ```
  let_binding_body_no_punning: val_ident COLON reversed_nonempty_llist(typevar) DOT tuple_type at_mode_expr EQUAL . seq_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  let lident : ' lident . {%hello|world|} @ lident = UIdent land UIdent [@@ and ] let false = UIdent
  ```
- Derivation (10 occurrences):
  ```
  let_binding_body_no_punning: val_ident COLON reversed_nonempty_llist(typevar) DOT tuple_type at_mode_expr EQUAL . seq_expr
    seq_expr: . STACK FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
  ```
  Sample sentence (implementation):
  ```ocaml
  let lident : ' lident . {%hello|world|} @ lident = stack_ function false -> UIdent let false = UIdent
  ```


### Item `let_binding_body_no_punning: nonempty_list(mode_legacy) val_ident COLON reversed_nonempty_llist(typevar) DOT core_type EQUAL . seq_expr` (in 436 errors)

- Derivation (426 occurrences):
  ```
  let_binding_body_no_punning: nonempty_list(mode_legacy) val_ident COLON reversed_nonempty_llist(typevar) DOT core_type EQUAL . seq_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  let local_ lident : ' lident . {%hello|world|} = UIdent land UIdent [@@ and ] let false = UIdent
  ```
- Derivation (10 occurrences):
  ```
  let_binding_body_no_punning: nonempty_list(mode_legacy) val_ident COLON reversed_nonempty_llist(typevar) DOT core_type EQUAL . seq_expr
    seq_expr: . STACK FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
  ```
  Sample sentence (implementation):
  ```ocaml
  let local_ lident : ' lident . {%hello|world|} = stack_ function false -> UIdent let false = UIdent
  ```


### Item `let_binding_body_no_punning: nonempty_list(mode_legacy) val_ident COLON reversed_nonempty_llist(typevar) DOT tuple_type at_mode_expr EQUAL . seq_expr` (in 436 errors)

- Derivation (426 occurrences):
  ```
  let_binding_body_no_punning: nonempty_list(mode_legacy) val_ident COLON reversed_nonempty_llist(typevar) DOT tuple_type at_mode_expr EQUAL . seq_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  let local_ lident : ' lident . {%hello|world|} @ lident = UIdent land UIdent [@@ and ] let false = UIdent
  ```
- Derivation (10 occurrences):
  ```
  let_binding_body_no_punning: nonempty_list(mode_legacy) val_ident COLON reversed_nonempty_llist(typevar) DOT tuple_type at_mode_expr EQUAL . seq_expr
    seq_expr: . STACK FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
  ```
  Sample sentence (implementation):
  ```ocaml
  let local_ lident : ' lident . {%hello|world|} @ lident = stack_ function false -> UIdent let false = UIdent
  ```


### Item `let_binding_body_no_punning: LPAREN val_ident at_mode_expr RPAREN COLON reversed_nonempty_llist(typevar) DOT core_type EQUAL . seq_expr` (in 436 errors)

- Derivation (426 occurrences):
  ```
  let_binding_body_no_punning: LPAREN val_ident at_mode_expr RPAREN COLON reversed_nonempty_llist(typevar) DOT core_type EQUAL . seq_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  let ( lident @ lident ) : ' lident . {%hello|world|} = UIdent land UIdent [@@ and ] let false = UIdent
  ```
- Derivation (10 occurrences):
  ```
  let_binding_body_no_punning: LPAREN val_ident at_mode_expr RPAREN COLON reversed_nonempty_llist(typevar) DOT core_type EQUAL . seq_expr
    seq_expr: . STACK FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
  ```
  Sample sentence (implementation):
  ```ocaml
  let ( lident @ lident ) : ' lident . {%hello|world|} = stack_ function false -> UIdent let false = UIdent
  ```


### Item `let_binding_body_no_punning: LPAREN val_ident at_mode_expr RPAREN COLON reversed_nonempty_llist(typevar) DOT tuple_type at_mode_expr EQUAL . seq_expr` (in 436 errors)

- Derivation (426 occurrences):
  ```
  let_binding_body_no_punning: LPAREN val_ident at_mode_expr RPAREN COLON reversed_nonempty_llist(typevar) DOT tuple_type at_mode_expr EQUAL . seq_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  let ( lident @ lident ) : ' lident . {%hello|world|} @ lident = UIdent land UIdent [@@ and ] let false = UIdent
  ```
- Derivation (10 occurrences):
  ```
  let_binding_body_no_punning: LPAREN val_ident at_mode_expr RPAREN COLON reversed_nonempty_llist(typevar) DOT tuple_type at_mode_expr EQUAL . seq_expr
    seq_expr: . STACK FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
  ```
  Sample sentence (implementation):
  ```ocaml
  let ( lident @ lident ) : ' lident . {%hello|world|} @ lident = stack_ function false -> UIdent let false = UIdent
  ```


### Item `let_binding_body_no_punning: val_ident COLON TYPE newtypes DOT core_type EQUAL . seq_expr` (in 436 errors)

- Derivation (426 occurrences):
  ```
  let_binding_body_no_punning: val_ident COLON TYPE newtypes DOT core_type EQUAL . seq_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  let lident : type lident . {%hello|world|} = UIdent land UIdent [@@ and ] let false = UIdent
  ```
- Derivation (10 occurrences):
  ```
  let_binding_body_no_punning: val_ident COLON TYPE newtypes DOT core_type EQUAL . seq_expr
    seq_expr: . STACK FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
  ```
  Sample sentence (implementation):
  ```ocaml
  let lident : type lident . {%hello|world|} = stack_ function false -> UIdent let false = UIdent
  ```


### Item `let_binding_body_no_punning: nonempty_list(mode_legacy) val_ident COLON TYPE newtypes DOT core_type EQUAL . seq_expr` (in 436 errors)

- Derivation (426 occurrences):
  ```
  let_binding_body_no_punning: nonempty_list(mode_legacy) val_ident COLON TYPE newtypes DOT core_type EQUAL . seq_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  let local_ lident : type lident . {%hello|world|} = UIdent land UIdent [@@ and ] let false = UIdent
  ```
- Derivation (10 occurrences):
  ```
  let_binding_body_no_punning: nonempty_list(mode_legacy) val_ident COLON TYPE newtypes DOT core_type EQUAL . seq_expr
    seq_expr: . STACK FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
  ```
  Sample sentence (implementation):
  ```ocaml
  let local_ lident : type lident . {%hello|world|} = stack_ function false -> UIdent let false = UIdent
  ```


### Item `let_binding_body_no_punning: LPAREN val_ident at_mode_expr RPAREN COLON TYPE newtypes DOT core_type EQUAL . seq_expr` (in 436 errors)

- Derivation (426 occurrences):
  ```
  let_binding_body_no_punning: LPAREN val_ident at_mode_expr RPAREN COLON TYPE newtypes DOT core_type EQUAL . seq_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  let ( lident @ lident ) : type lident . {%hello|world|} = UIdent land UIdent [@@ and ] let false = UIdent
  ```
- Derivation (10 occurrences):
  ```
  let_binding_body_no_punning: LPAREN val_ident at_mode_expr RPAREN COLON TYPE newtypes DOT core_type EQUAL . seq_expr
    seq_expr: . STACK FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
  ```
  Sample sentence (implementation):
  ```ocaml
  let ( lident @ lident ) : type lident . {%hello|world|} = stack_ function false -> UIdent let false = UIdent
  ```


### Item `let_binding_body_no_punning: val_ident COLON TYPE newtypes DOT tuple_type at_mode_expr EQUAL . seq_expr` (in 436 errors)

- Derivation (426 occurrences):
  ```
  let_binding_body_no_punning: val_ident COLON TYPE newtypes DOT tuple_type at_mode_expr EQUAL . seq_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  let lident : type lident . {%hello|world|} @ lident = UIdent land UIdent [@@ and ] let false = UIdent
  ```
- Derivation (10 occurrences):
  ```
  let_binding_body_no_punning: val_ident COLON TYPE newtypes DOT tuple_type at_mode_expr EQUAL . seq_expr
    seq_expr: . STACK FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
  ```
  Sample sentence (implementation):
  ```ocaml
  let lident : type lident . {%hello|world|} @ lident = stack_ function false -> UIdent let false = UIdent
  ```


### Item `let_binding_body_no_punning: nonempty_list(mode_legacy) val_ident COLON TYPE newtypes DOT tuple_type at_mode_expr EQUAL . seq_expr` (in 436 errors)

- Derivation (426 occurrences):
  ```
  let_binding_body_no_punning: nonempty_list(mode_legacy) val_ident COLON TYPE newtypes DOT tuple_type at_mode_expr EQUAL . seq_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  let local_ lident : type lident . {%hello|world|} @ lident = UIdent land UIdent [@@ and ] let false = UIdent
  ```
- Derivation (10 occurrences):
  ```
  let_binding_body_no_punning: nonempty_list(mode_legacy) val_ident COLON TYPE newtypes DOT tuple_type at_mode_expr EQUAL . seq_expr
    seq_expr: . STACK FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
  ```
  Sample sentence (implementation):
  ```ocaml
  let local_ lident : type lident . {%hello|world|} @ lident = stack_ function false -> UIdent let false = UIdent
  ```


### Item `let_binding_body_no_punning: LPAREN val_ident at_mode_expr RPAREN COLON TYPE newtypes DOT tuple_type at_mode_expr EQUAL . seq_expr` (in 436 errors)

- Derivation (426 occurrences):
  ```
  let_binding_body_no_punning: LPAREN val_ident at_mode_expr RPAREN COLON TYPE newtypes DOT tuple_type at_mode_expr EQUAL . seq_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  let ( lident @ lident ) : type lident . {%hello|world|} @ lident = UIdent land UIdent [@@ and ] let false = UIdent
  ```
- Derivation (10 occurrences):
  ```
  let_binding_body_no_punning: LPAREN val_ident at_mode_expr RPAREN COLON TYPE newtypes DOT tuple_type at_mode_expr EQUAL . seq_expr
    seq_expr: . STACK FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
  ```
  Sample sentence (implementation):
  ```ocaml
  let ( lident @ lident ) : type lident . {%hello|world|} @ lident = stack_ function false -> UIdent let false = UIdent
  ```


### Item `let_binding_body_no_punning: simple_pattern_not_ident COLON core_type EQUAL . seq_expr` (in 436 errors)

- Derivation (426 occurrences):
  ```
  let_binding_body_no_punning: simple_pattern_not_ident COLON core_type EQUAL . seq_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  let false : {%hello|world|} = UIdent land UIdent [@@ and ] let false = UIdent
  ```
- Derivation (10 occurrences):
  ```
  let_binding_body_no_punning: simple_pattern_not_ident COLON core_type EQUAL . seq_expr
    seq_expr: . STACK FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
  ```
  Sample sentence (implementation):
  ```ocaml
  let false : {%hello|world|} = stack_ function false -> UIdent let false = UIdent
  ```


### Item `let_binding_body_no_punning: simple_pattern_not_ident COLON tuple_type at_mode_expr EQUAL . seq_expr` (in 436 errors)

- Derivation (426 occurrences):
  ```
  let_binding_body_no_punning: simple_pattern_not_ident COLON tuple_type at_mode_expr EQUAL . seq_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  let false : {%hello|world|} @ lident = UIdent land UIdent [@@ and ] let false = UIdent
  ```
- Derivation (10 occurrences):
  ```
  let_binding_body_no_punning: simple_pattern_not_ident COLON tuple_type at_mode_expr EQUAL . seq_expr
    seq_expr: . STACK FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
  ```
  Sample sentence (implementation):
  ```ocaml
  let false : {%hello|world|} @ lident = stack_ function false -> UIdent let false = UIdent
  ```


### Item `clty_longident: . mk_longident(mod_ext_longident,LIDENT)` (in 369 errors)

- Derivation (348 occurrences):
  ```
  atomic_type: atomic_type HASH . clty_longident
    clty_longident: . mk_longident(mod_ext_longident,LIDENT)
      mk_longident(mod_ext_longident,LIDENT): . LIDENT
  ```
  Sample sentence (interface):
  ```ocaml
  exception false : {%hello|world|} # lident
  ```
- Derivation (4 occurrences):
  ```
  class_signature: LBRACKET reversed_separated_nonempty_llist(COMMA,core_type) RBRACKET . clty_longident
    clty_longident: . mk_longident(mod_ext_longident,LIDENT)
      mk_longident(mod_ext_longident,LIDENT): . mod_ext_longident DOT LIDENT
        mod_ext_longident: . mk_longident(mod_ext_longident,UIDENT)
          mk_longident(mod_ext_longident,UIDENT): . UIDENT
  ```
  Sample sentence (implementation):
  ```ocaml
  class type lident = [ {%hello|world|} ] UIdent . lident let false = UIdent
  ```
- Derivation (4 occurrences):
  ```
  atomic_type: atomic_type HASH . clty_longident
    clty_longident: . mk_longident(mod_ext_longident,LIDENT)
      mk_longident(mod_ext_longident,LIDENT): . mod_ext_longident DOT LIDENT
        mod_ext_longident: . mk_longident(mod_ext_longident,UIDENT)
          mk_longident(mod_ext_longident,UIDENT): . UIDENT
  ```
  Sample sentence (implementation):
  ```ocaml
  exception false : ' lident . {%hello|world|} -> {%hello|world|} # UIdent . lident let false = UIdent
  ```
- Derivation (4 occurrences):
  ```
  atomic_type: HASH . clty_longident
    clty_longident: . mk_longident(mod_ext_longident,LIDENT)
      mk_longident(mod_ext_longident,LIDENT): . mod_ext_longident DOT LIDENT
        mod_ext_longident: . mk_longident(mod_ext_longident,UIDENT)
          mk_longident(mod_ext_longident,UIDENT): . UIDENT
  ```
  Sample sentence (implementation):
  ```ocaml
  exception false : ' lident . {%hello|world|} -> # UIdent . lident let false = UIdent
  ```
- Derivation (2 occurrences):
  ```
  class_signature: LBRACKET reversed_separated_nonempty_llist(COMMA,core_type) RBRACKET . clty_longident
    clty_longident: . mk_longident(mod_ext_longident,LIDENT)
      mk_longident(mod_ext_longident,LIDENT): . mod_ext_longident DOT LIDENT
        mod_ext_longident: . mod_ext_longident LPAREN mod_ext_longident RPAREN
          mod_ext_longident: . mk_longident(mod_ext_longident,UIDENT)
            mk_longident(mod_ext_longident,UIDENT): . UIDENT
  ```
  Sample sentence (implementation):
  ```ocaml
  class type lident = [ {%hello|world|} ] UIdent ( UIdent ) . lident let false = UIdent
  ```
- Derivation (2 occurrences):
  ```
  atomic_type: atomic_type HASH . clty_longident
    clty_longident: . mk_longident(mod_ext_longident,LIDENT)
      mk_longident(mod_ext_longident,LIDENT): . mod_ext_longident DOT LIDENT
        mod_ext_longident: . mod_ext_longident LPAREN mod_ext_longident RPAREN
          mod_ext_longident: . mk_longident(mod_ext_longident,UIDENT)
            mk_longident(mod_ext_longident,UIDENT): . UIDENT
  ```
  Sample sentence (implementation):
  ```ocaml
  exception false : ' lident . {%hello|world|} -> {%hello|world|} # UIdent ( UIdent ) . lident let false = UIdent
  ```
- Derivation (2 occurrences):
  ```
  atomic_type: HASH . clty_longident
    clty_longident: . mk_longident(mod_ext_longident,LIDENT)
      mk_longident(mod_ext_longident,LIDENT): . mod_ext_longident DOT LIDENT
        mod_ext_longident: . mod_ext_longident LPAREN mod_ext_longident RPAREN
          mod_ext_longident: . mk_longident(mod_ext_longident,UIDENT)
            mk_longident(mod_ext_longident,UIDENT): . UIDENT
  ```
  Sample sentence (implementation):
  ```ocaml
  exception false : ' lident . {%hello|world|} -> # UIdent ( UIdent ) . lident let false = UIdent
  ```
- Derivation (1 occurrence):
  ```
  class_signature: LBRACKET reversed_separated_nonempty_llist(COMMA,core_type) RBRACKET . clty_longident
    clty_longident: . mk_longident(mod_ext_longident,LIDENT)
      mk_longident(mod_ext_longident,LIDENT): . mod_ext_longident DOT LIDENT
        mod_ext_longident: . mk_longident(mod_ext_longident,UIDENT)
          mk_longident(mod_ext_longident,UIDENT): . mod_ext_longident DOT UIDENT
            mod_ext_longident: . mk_longident(mod_ext_longident,UIDENT)
              mk_longident(mod_ext_longident,UIDENT): . UIDENT
  ```
  Sample sentence (implementation):
  ```ocaml
  class type lident = [ {%hello|world|} ] UIdent . UIdent . lident let false = UIdent
  ```
- Derivation (1 occurrence):
  ```
  atomic_type: atomic_type HASH . clty_longident
    clty_longident: . mk_longident(mod_ext_longident,LIDENT)
      mk_longident(mod_ext_longident,LIDENT): . mod_ext_longident DOT LIDENT
        mod_ext_longident: . mk_longident(mod_ext_longident,UIDENT)
          mk_longident(mod_ext_longident,UIDENT): . mod_ext_longident DOT UIDENT
            mod_ext_longident: . mk_longident(mod_ext_longident,UIDENT)
              mk_longident(mod_ext_longident,UIDENT): . UIDENT
  ```
  Sample sentence (implementation):
  ```ocaml
  exception false : ' lident . {%hello|world|} -> {%hello|world|} # UIdent . UIdent . lident let false = UIdent
  ```
- Derivation (1 occurrence):
  ```
  atomic_type: HASH . clty_longident
    clty_longident: . mk_longident(mod_ext_longident,LIDENT)
      mk_longident(mod_ext_longident,LIDENT): . mod_ext_longident DOT LIDENT
        mod_ext_longident: . mk_longident(mod_ext_longident,UIDENT)
          mk_longident(mod_ext_longident,UIDENT): . mod_ext_longident DOT UIDENT
            mod_ext_longident: . mk_longident(mod_ext_longident,UIDENT)
              mk_longident(mod_ext_longident,UIDENT): . UIDENT
  ```
  Sample sentence (implementation):
  ```ocaml
  exception false : ' lident . {%hello|world|} -> # UIdent . UIdent . lident let false = UIdent
  ```


### Item `ident: . LIDENT` (in 336 errors)

- Derivation (192 occurrences):
  ```
  alias_type: alias_type AS QUOTE . ident
    ident: . LIDENT
  ```
  Sample sentence (implementation):
  ```ocaml
  ( UIdent : {%hello|world|} as ' lident ) let false = UIdent
  ```
- Derivation (70 occurrences):
  ```
  alias_type: alias_type AS LPAREN UNDERSCORE COLON . jkind_annotation RPAREN
    jkind_annotation: . jkind_desc
      jkind_desc: . ident
        ident: . LIDENT
  ```
  Sample sentence (implementation):
  ```ocaml
  ( UIdent : {%hello|world|} as ( _ : lident ) ) let false = UIdent
  ```
- Derivation (64 occurrences):
  ```
  alias_type: alias_type AS LPAREN QUOTE . ident COLON jkind_annotation RPAREN
    ident: . LIDENT
  ```
  Sample sentence (implementation):
  ```ocaml
  ( UIdent : {%hello|world|} as ( ' lident : lident ) ) let false = UIdent
  ```
- Derivation (2 occurrences):
  ```
  paren_module_expr: LPAREN module_expr COLON . module_type RPAREN
    module_type: . module_type_atomic
      module_type_atomic: . mty_longident
        mty_longident: . mk_longident(mod_ext_longident,ident)
          mk_longident(mod_ext_longident,ident): . ident
            ident: . LIDENT
  ```
  Sample sentence (implementation):
  ```ocaml
  include ( {%hello|world|} : lident ) let false = UIdent
  ```
- Derivation (1 occurrence):
  ```
  mk_longident(mod_ext_longident,ident): mod_ext_longident DOT . ident
    ident: . LIDENT
  ```
  Sample sentence (implementation):
  ```ocaml
  include ( {%hello|world|} : UIdent . lident ) let false = UIdent
  ```
- Derivation (1 occurrence):
  ```
  with_constraint: MODULE TYPE mty_longident COLONEQUAL . module_type
    module_type: . module_type_atomic
      module_type_atomic: . mty_longident
        mty_longident: . mk_longident(mod_ext_longident,ident)
          mk_longident(mod_ext_longident,ident): . ident
            ident: . LIDENT
  ```
  Sample sentence (implementation):
  ```ocaml
  include ( {%hello|world|} : UIdent with module type UIdent := lident ) let false = UIdent
  ```
- Derivation (1 occurrence):
  ```
  with_constraint: MODULE TYPE mty_longident EQUAL . module_type
    module_type: . module_type_atomic
      module_type_atomic: . mty_longident
        mty_longident: . mk_longident(mod_ext_longident,ident)
          mk_longident(mod_ext_longident,ident): . ident
            ident: . LIDENT
  ```
  Sample sentence (implementation):
  ```ocaml
  include ( {%hello|world|} : UIdent with module type UIdent = lident ) let false = UIdent
  ```
- Derivation (1 occurrence):
  ```
  simple_expr: LPAREN MODULE ext list(attribute) module_expr COLON . module_type RPAREN
    module_type: . module_type_atomic
      module_type_atomic: . mty_longident
        mty_longident: . mk_longident(mod_ext_longident,ident)
          mk_longident(mod_ext_longident,ident): . ident
            ident: . LIDENT
  ```
  Sample sentence (implementation):
  ```ocaml
  ( module {%hello|world|} : lident ) let false = UIdent
  ```
- Derivation (1 occurrence):
  ```
  module_type_atomic: LPAREN . module_type RPAREN
    module_type: . module_type_atomic
      module_type_atomic: . mty_longident
        mty_longident: . mk_longident(mod_ext_longident,ident)
          mk_longident(mod_ext_longident,ident): . ident
            ident: . LIDENT
  ```
  Sample sentence (implementation):
  ```ocaml
  include ( {%hello|world|} : ( lident ) ) let false = UIdent
  ```
- Derivation (1 occurrence):
  ```
  module_type: module_type MINUSGREATER . module_type
    module_type: . module_type_atomic
      module_type_atomic: . mty_longident
        mty_longident: . mk_longident(mod_ext_longident,ident)
          mk_longident(mod_ext_longident,ident): . ident
            ident: . LIDENT
  ```
  Sample sentence (implementation):
  ```ocaml
  include ( {%hello|world|} : UIdent -> lident ) let false = UIdent
  ```
- Derivation (1 occurrence):
  ```
  module_type: reversed_nonempty_llist(functor_arg) MINUSGREATER . module_type
    module_type: . module_type_atomic
      module_type_atomic: . mty_longident
        mty_longident: . mk_longident(mod_ext_longident,ident)
          mk_longident(mod_ext_longident,ident): . ident
            ident: . LIDENT
  ```
  Sample sentence (implementation):
  ```ocaml
  include ( {%hello|world|} : ( ) -> lident ) let false = UIdent
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
  Sample sentence (implementation):
  ```ocaml
  include ( {%hello|world|} : functor ( ) -> lident ) let false = UIdent
  ```


### Item `fun_param_as_list: . labeled_simple_pattern` (in 303 errors)

- Derivation (82 occurrences):
  ```
  reversed_nonempty_concat(fun_param_as_list): reversed_nonempty_concat(fun_param_as_list) . fun_param_as_list
    fun_param_as_list: . labeled_simple_pattern
      labeled_simple_pattern: . simple_pattern_extend_modes_or_poly
        simple_pattern_extend_modes_or_poly: . simple_pattern
  ```
  Sample sentence (implementation):
  ```ocaml
  fun false false : {%hello|world|} -> UIdent let false = UIdent
  ```
- Derivation (18 occurrences):
  ```
  let_binding_body_no_punning: val_ident . strict_binding_modes
    strict_binding_modes: . fun_params option(constraint_) EQUAL fun_body
      fun_params: . reversed_nonempty_concat(fun_param_as_list)
        reversed_nonempty_concat(fun_param_as_list): . fun_param_as_list
          fun_param_as_list: . labeled_simple_pattern
            labeled_simple_pattern: . simple_pattern_extend_modes_or_poly
              simple_pattern_extend_modes_or_poly: . simple_pattern
  ```
  Sample sentence (implementation):
  ```ocaml
  let lident false : {%hello|world|} = UIdent [@@ and ] let false = UIdent
  ```
- Derivation (16 occurrences):
  ```
  let_binding_body_no_punning: nonempty_list(mode_legacy) val_ident . strict_binding_modes
    strict_binding_modes: . fun_params option(constraint_) EQUAL fun_body
      fun_params: . reversed_nonempty_concat(fun_param_as_list)
        reversed_nonempty_concat(fun_param_as_list): . fun_param_as_list
          fun_param_as_list: . labeled_simple_pattern
            labeled_simple_pattern: . simple_pattern_extend_modes_or_poly
              simple_pattern_extend_modes_or_poly: . simple_pattern
  ```
  Sample sentence (implementation):
  ```ocaml
  include struct let local_ lident false : {%hello|world|} = UIdent end let false = UIdent
  ```
- Derivation (10 occurrences):
  ```
  reversed_nonempty_concat(fun_param_as_list): reversed_nonempty_concat(fun_param_as_list) . fun_param_as_list
    fun_param_as_list: . labeled_simple_pattern
      labeled_simple_pattern: . simple_pattern_extend_modes_or_poly
  ```
  Sample sentence (implementation):
  ```ocaml
  include struct let lident false false :> {%hello|world|} = UIdent end let false = UIdent
  ```
- Derivation (10 occurrences):
  ```
  let_binding_body_no_punning: nonempty_list(mode_legacy) val_ident . strict_binding_modes
    strict_binding_modes: . fun_params option(constraint_) EQUAL fun_body
      fun_params: . reversed_nonempty_concat(fun_param_as_list)
        reversed_nonempty_concat(fun_param_as_list): . fun_param_as_list
          fun_param_as_list: . labeled_simple_pattern
            labeled_simple_pattern: . simple_pattern_extend_modes_or_poly
  ```
  Sample sentence (implementation):
  ```ocaml
  let local_ lident false : {%hello|world|} = UIdent [@@ and ] let false = UIdent
  ```
- Derivation (10 occurrences):
  ```
  let_binding_body_no_punning: val_ident . strict_binding_modes
    strict_binding_modes: . fun_params option(constraint_) EQUAL fun_body
      fun_params: . reversed_nonempty_concat(fun_param_as_list)
        reversed_nonempty_concat(fun_param_as_list): . fun_param_as_list
          fun_param_as_list: . labeled_simple_pattern
            labeled_simple_pattern: . simple_pattern_extend_modes_or_poly
  ```
  Sample sentence (implementation):
  ```ocaml
  let lident false : {%hello|world|} = UIdent [@@ and ] let false = UIdent
  ```
- Derivation (9 occurrences):
  ```
  method_: BANG list(attribute) private_flag . LIDENT strict_binding_modes
    strict_binding_modes: . fun_params option(constraint_) EQUAL fun_body
      fun_params: . reversed_nonempty_concat(fun_param_as_list)
        reversed_nonempty_concat(fun_param_as_list): . fun_param_as_list
          fun_param_as_list: . labeled_simple_pattern
            labeled_simple_pattern: . simple_pattern_extend_modes_or_poly
              simple_pattern_extend_modes_or_poly: . simple_pattern
  ```
  Sample sentence (implementation):
  ```ocaml
  object method ! lident false : {%hello|world|} = UIdent inherit lident end let false = UIdent
  ```
- Derivation (9 occurrences):
  ```
  method_: list(attribute) private_flag . LIDENT strict_binding_modes
    strict_binding_modes: . fun_params option(constraint_) EQUAL fun_body
      fun_params: . reversed_nonempty_concat(fun_param_as_list)
        reversed_nonempty_concat(fun_param_as_list): . fun_param_as_list
          fun_param_as_list: . labeled_simple_pattern
            labeled_simple_pattern: . simple_pattern_extend_modes_or_poly
              simple_pattern_extend_modes_or_poly: . simple_pattern
  ```
  Sample sentence (implementation):
  ```ocaml
  object method lident false : {%hello|world|} = UIdent inherit lident end let false = UIdent
  ```
- Derivation (9 occurrences):
  ```
  letop_binding_body: val_ident . strict_binding_modes
    strict_binding_modes: . fun_params option(constraint_) EQUAL fun_body
      fun_params: . reversed_nonempty_concat(fun_param_as_list)
        reversed_nonempty_concat(fun_param_as_list): . fun_param_as_list
          fun_param_as_list: . labeled_simple_pattern
            labeled_simple_pattern: . simple_pattern_extend_modes_or_poly
              simple_pattern_extend_modes_or_poly: . simple_pattern
  ```
  Sample sentence (implementation):
  ```ocaml
  let* lident false : {%hello|world|} = UIdent in UIdent [@@ and ] let false = UIdent
  ```
- Derivation (8 occurrences):
  ```
  method_: BANG list(attribute) private_flag . LIDENT strict_binding_modes
    strict_binding_modes: . fun_params option(constraint_) EQUAL fun_body
      fun_params: . reversed_nonempty_concat(fun_param_as_list)
        reversed_nonempty_concat(fun_param_as_list): . fun_param_as_list
          fun_param_as_list: . labeled_simple_pattern
            labeled_simple_pattern: . simple_pattern_extend_modes_or_poly
  ```
  Sample sentence (implementation):
  ```ocaml
  object method ! lident false : {%hello|world|} = UIdent inherit lident end let false = UIdent
  ```
- Derivation (7 occurrences):
  ```
  let_binding_body_no_punning: LPAREN val_ident at_mode_expr RPAREN . strict_binding_modes
    strict_binding_modes: . fun_params option(constraint_) EQUAL fun_body
      fun_params: . reversed_nonempty_concat(fun_param_as_list)
        reversed_nonempty_concat(fun_param_as_list): . fun_param_as_list
          fun_param_as_list: . labeled_simple_pattern
            labeled_simple_pattern: . simple_pattern_extend_modes_or_poly
              simple_pattern_extend_modes_or_poly: . simple_pattern
  ```
  Sample sentence (implementation):
  ```ocaml
  include struct let ( lident @ lident ) ( ) : {%hello|world|} = UIdent end let false = UIdent
  ```
- Derivation (7 occurrences):
  ```
  fun_: STACK FUN ext list(attribute) . fun_params optional_atomic_constraint_ MINUSGREATER fun_body
    fun_params: . reversed_nonempty_concat(fun_param_as_list)
      reversed_nonempty_concat(fun_param_as_list): . fun_param_as_list
        fun_param_as_list: . labeled_simple_pattern
          labeled_simple_pattern: . simple_pattern_extend_modes_or_poly
            simple_pattern_extend_modes_or_poly: . simple_pattern
  ```
  Sample sentence (implementation):
  ```ocaml
  stack_ fun ( ) : {%hello|world|} -> UIdent let false = UIdent
  ```
- Derivation (7 occurrences):
  ```
  fun_: FUN ext list(attribute) . fun_params optional_atomic_constraint_ MINUSGREATER fun_body
    fun_params: . reversed_nonempty_concat(fun_param_as_list)
      reversed_nonempty_concat(fun_param_as_list): . fun_param_as_list
        fun_param_as_list: . labeled_simple_pattern
          labeled_simple_pattern: . simple_pattern_extend_modes_or_poly
            simple_pattern_extend_modes_or_poly: . simple_pattern
  ```
  Sample sentence (implementation):
  ```ocaml
  [ fun ( ) : {%hello|world|} -> UIdent for false in UIdent ] let false = UIdent
  ```
- Derivation (7 occurrences):
  ```
  let_binding_body_no_punning: nonempty_list(mode_legacy) val_ident . strict_binding_modes
    strict_binding_modes: . fun_params option(constraint_) EQUAL fun_body
      fun_params: . reversed_nonempty_concat(fun_param_as_list)
        reversed_nonempty_concat(fun_param_as_list): . fun_param_as_list
          fun_param_as_list: . labeled_simple_pattern
  ```
  Sample sentence (implementation):
  ```ocaml
  let local_ lident ~label: false :> {%hello|world|} = UIdent [@@ and ] let false = UIdent
  ```
- Derivation (6 occurrences):
  ```
  let_binding_body_no_punning: val_ident . strict_binding_modes
    strict_binding_modes: . fun_params option(constraint_) EQUAL fun_body
      fun_params: . reversed_nonempty_concat(fun_param_as_list)
        reversed_nonempty_concat(fun_param_as_list): . fun_param_as_list
          fun_param_as_list: . labeled_simple_pattern
  ```
  Sample sentence (implementation):
  ```ocaml
  let lident ~label: false : {%hello|world|} = UIdent [@@ and ] let false = UIdent
  ```
- Derivation (5 occurrences):
  ```
  method_: list(attribute) private_flag . LIDENT strict_binding_modes
    strict_binding_modes: . fun_params option(constraint_) EQUAL fun_body
      fun_params: . reversed_nonempty_concat(fun_param_as_list)
        reversed_nonempty_concat(fun_param_as_list): . fun_param_as_list
          fun_param_as_list: . labeled_simple_pattern
            labeled_simple_pattern: . simple_pattern_extend_modes_or_poly
  ```
  Sample sentence (implementation):
  ```ocaml
  object method lident false : {%hello|world|} = UIdent inherit lident end let false = UIdent
  ```
- Derivation (5 occurrences):
  ```
  letop_binding_body: val_ident . strict_binding_modes
    strict_binding_modes: . fun_params option(constraint_) EQUAL fun_body
      fun_params: . reversed_nonempty_concat(fun_param_as_list)
        reversed_nonempty_concat(fun_param_as_list): . fun_param_as_list
          fun_param_as_list: . labeled_simple_pattern
            labeled_simple_pattern: . simple_pattern_extend_modes_or_poly
  ```
  Sample sentence (implementation):
  ```ocaml
  let* lident false : {%hello|world|} = UIdent in UIdent [@@ and ] let false = UIdent
  ```
- Derivation (5 occurrences):
  ```
  let_binding_body_no_punning: LPAREN val_ident at_mode_expr RPAREN . strict_binding_modes
    strict_binding_modes: . fun_params option(constraint_) EQUAL fun_body
      fun_params: . reversed_nonempty_concat(fun_param_as_list)
        reversed_nonempty_concat(fun_param_as_list): . fun_param_as_list
          fun_param_as_list: . labeled_simple_pattern
            labeled_simple_pattern: . simple_pattern_extend_modes_or_poly
  ```
  Sample sentence (implementation):
  ```ocaml
  include struct let ( lident @ lident ) false : {%hello|world|} = UIdent end let false = UIdent
  ```
- Derivation (4 occurrences):
  ```
  let_binding_body_no_punning: LPAREN val_ident at_mode_expr RPAREN . strict_binding_modes
    strict_binding_modes: . fun_params option(constraint_) EQUAL fun_body
      fun_params: . reversed_nonempty_concat(fun_param_as_list)
        reversed_nonempty_concat(fun_param_as_list): . reversed_nonempty_concat(fun_param_as_list) fun_param_as_list
          reversed_nonempty_concat(fun_param_as_list): . fun_param_as_list
            fun_param_as_list: . labeled_simple_pattern
              labeled_simple_pattern: . simple_pattern_extend_modes_or_poly
                simple_pattern_extend_modes_or_poly: . simple_pattern
  ```
  Sample sentence (implementation):
  ```ocaml
  let ( lident @ lident ) false UIdent : {%hello|world|} = UIdent [@@ and ] let false = UIdent
  ```
- Derivation (4 occurrences):
  ```
  let_binding_body_no_punning: nonempty_list(mode_legacy) val_ident . strict_binding_modes
    strict_binding_modes: . fun_params option(constraint_) EQUAL fun_body
      fun_params: . reversed_nonempty_concat(fun_param_as_list)
        reversed_nonempty_concat(fun_param_as_list): . reversed_nonempty_concat(fun_param_as_list) fun_param_as_list
          reversed_nonempty_concat(fun_param_as_list): . fun_param_as_list
            fun_param_as_list: . labeled_simple_pattern
              labeled_simple_pattern: . simple_pattern_extend_modes_or_poly
                simple_pattern_extend_modes_or_poly: . simple_pattern
  ```
  Sample sentence (implementation):
  ```ocaml
  let local_ lident false UIdent :> {%hello|world|} = UIdent [@@ and ] let false = UIdent
  ```
- Derivation (4 occurrences):
  ```
  let_binding_body_no_punning: val_ident . strict_binding_modes
    strict_binding_modes: . fun_params option(constraint_) EQUAL fun_body
      fun_params: . reversed_nonempty_concat(fun_param_as_list)
        reversed_nonempty_concat(fun_param_as_list): . reversed_nonempty_concat(fun_param_as_list) fun_param_as_list
          reversed_nonempty_concat(fun_param_as_list): . fun_param_as_list
            fun_param_as_list: . labeled_simple_pattern
              labeled_simple_pattern: . simple_pattern_extend_modes_or_poly
                simple_pattern_extend_modes_or_poly: . simple_pattern
  ```
  Sample sentence (implementation):
  ```ocaml
  let lident false UIdent : {%hello|world|} = UIdent [@@ and ] let false = UIdent
  ```
- ...


### Item `labeled_tuple_pat_element_list(pattern): TILDE LPAREN LIDENT COLON core_type RPAREN COMMA . TILDE LIDENT` (in 293 errors)

- Derivation (293 occurrences):
  ```
  labeled_tuple_pat_element_list(pattern): TILDE LPAREN LIDENT COLON core_type RPAREN COMMA . TILDE LIDENT
  ```
  Sample sentence (implementation):
  ```ocaml
  function ~ ( lident : {%hello|world|} ) , ~ lident -> UIdent let false = UIdent
  ```


### Item `simple_pattern_not_ident: LPAREN . pattern COLON core_type RPAREN` (in 271 errors)

- Derivation (131 occurrences):
  ```
  simple_pattern_not_ident: LPAREN . pattern COLON core_type RPAREN
  ```
  Sample sentence (implementation):
  ```ocaml
  stack_ function false ( false : {%hello|world|} ) -> UIdent let false = UIdent
  ```
- Derivation (98 occurrences):
  ```
  simple_pattern_not_ident: LPAREN . pattern COLON core_type RPAREN
    pattern: . reversed_labeled_tuple_pattern(pattern)
      reversed_labeled_tuple_pattern(pattern): . labeled_tuple_pat_element_list(pattern)
  ```
  Sample sentence (implementation):
  ```ocaml
  stack_ function ( false , false : {%hello|world|} ) -> UIdent let false = UIdent
  ```
- Derivation (23 occurrences):
  ```
  simple_pattern_not_ident: LPAREN . pattern COLON core_type RPAREN
    pattern: . pattern_gen
  ```
  Sample sentence (implementation):
  ```ocaml
  stack_ function false ( lazy false : {%hello|world|} ) -> UIdent let false = UIdent
  ```
- Derivation (6 occurrences):
  ```
  simple_pattern_not_ident: LPAREN . pattern COLON core_type RPAREN
    pattern: . pattern_gen
      pattern_gen: . simple_pattern
  ```
  Sample sentence (implementation):
  ```ocaml
  fun false ( false : {%hello|world|} ) -> UIdent let false = UIdent
  ```
- Derivation (2 occurrences):
  ```
  simple_pattern_not_ident: LPAREN . pattern COLON core_type RPAREN
    pattern: . reversed_labeled_tuple_pattern(pattern)
      reversed_labeled_tuple_pattern(pattern): . labeled_tuple_pat_element_list(pattern)
        labeled_tuple_pat_element_list(pattern): . pattern COMMA pattern
          pattern: . pattern_gen
            pattern_gen: . simple_pattern
  ```
  Sample sentence (implementation):
  ```ocaml
  fun ( false , false : {%hello|world|} ) : {%hello|world|} -> UIdent let false = UIdent
  ```
- Derivation (1 occurrence):
  ```
  simple_pattern_not_ident: LPAREN . pattern COLON core_type RPAREN
    pattern: . pattern_gen
      pattern_gen: . LAZY ext list(attribute) simple_pattern
  ```
  Sample sentence (implementation):
  ```ocaml
  fun ( lazy false : {%hello|world|} ) : {%hello|world|} -> UIdent let false = UIdent
  ```
- Derivation (1 occurrence):
  ```
  simple_pattern_not_ident: LPAREN . pattern COLON core_type RPAREN
    pattern: . pattern BAR pattern
      pattern: . pattern_gen
        pattern_gen: . simple_pattern
  ```
  Sample sentence (implementation):
  ```ocaml
  fun ( false | false : {%hello|world|} ) : {%hello|world|} -> UIdent let false = UIdent
  ```
- Derivation (1 occurrence):
  ```
  simple_pattern_not_ident: LPAREN . pattern COLON core_type RPAREN
    pattern: . pattern COLONCOLON pattern
      pattern: . pattern_gen
        pattern_gen: . simple_pattern
  ```
  Sample sentence (implementation):
  ```ocaml
  fun ( false :: false : {%hello|world|} ) : {%hello|world|} -> UIdent let false = UIdent
  ```
- Derivation (1 occurrence):
  ```
  simple_pattern_not_ident: LPAREN . pattern COLON core_type RPAREN
    pattern: . reversed_labeled_tuple_pattern(pattern)
      reversed_labeled_tuple_pattern(pattern): . labeled_tuple_pat_element_list(pattern)
        labeled_tuple_pat_element_list(pattern): . labeled_tuple_pat_element_list(pattern) COMMA LABEL simple_pattern
          labeled_tuple_pat_element_list(pattern): . pattern COMMA pattern
            pattern: . pattern_gen
              pattern_gen: . simple_pattern
  ```
  Sample sentence (implementation):
  ```ocaml
  fun ( false , false , ~label: false : {%hello|world|} ) : {%hello|world|} -> UIdent let false = UIdent
  ```
- Derivation (1 occurrence):
  ```
  simple_pattern_not_ident: LPAREN . pattern COLON core_type RPAREN
    pattern: . reversed_labeled_tuple_pattern(pattern)
      reversed_labeled_tuple_pattern(pattern): . labeled_tuple_pat_element_list(pattern)
        labeled_tuple_pat_element_list(pattern): . labeled_tuple_pat_element_list(pattern) COMMA pattern
          labeled_tuple_pat_element_list(pattern): . pattern COMMA pattern
            pattern: . pattern_gen
              pattern_gen: . simple_pattern
  ```
  Sample sentence (implementation):
  ```ocaml
  fun ( false , false , false : {%hello|world|} ) : {%hello|world|} -> UIdent let false = UIdent
  ```
- Derivation (1 occurrence):
  ```
  simple_pattern_not_ident: LPAREN . pattern COLON core_type RPAREN
    pattern: . EXCEPTION ext list(attribute) pattern
  ```
  Sample sentence (implementation):
  ```ocaml
  fun ( exception false : {%hello|world|} ) : {%hello|world|} -> UIdent let false = UIdent
  ```
- Derivation (1 occurrence):
  ```
  simple_pattern_not_ident: LPAREN . pattern COLON core_type RPAREN
    pattern: . pattern_gen
      pattern_gen: . name_tag pattern
        name_tag: . BACKQUOTE ident
  ```
  Sample sentence (implementation):
  ```ocaml
  fun ( ` lident false : {%hello|world|} ) : {%hello|world|} -> UIdent let false = UIdent
  ```
- Derivation (1 occurrence):
  ```
  simple_pattern_not_ident: LPAREN . pattern COLON core_type RPAREN
    pattern: . reversed_labeled_tuple_pattern(pattern)
      reversed_labeled_tuple_pattern(pattern): . labeled_tuple_pat_element_list(pattern)
        labeled_tuple_pat_element_list(pattern): . TILDE LIDENT COMMA LABEL simple_pattern
  ```
  Sample sentence (implementation):
  ```ocaml
  fun ( ~ lident , ~label: false : {%hello|world|} ) : {%hello|world|} -> UIdent let false = UIdent
  ```
- Derivation (1 occurrence):
  ```
  simple_pattern_not_ident: LPAREN . pattern COLON core_type RPAREN
    pattern: . reversed_labeled_tuple_pattern(pattern)
      reversed_labeled_tuple_pattern(pattern): . labeled_tuple_pat_element_list(pattern)
        labeled_tuple_pat_element_list(pattern): . TILDE LIDENT COMMA pattern
  ```
  Sample sentence (implementation):
  ```ocaml
  fun ( ~ lident , false : {%hello|world|} ) : {%hello|world|} -> UIdent let false = UIdent
  ```
- Derivation (1 occurrence):
  ```
  simple_pattern_not_ident: LPAREN . pattern COLON core_type RPAREN
    pattern: . reversed_labeled_tuple_pattern(pattern)
      reversed_labeled_tuple_pattern(pattern): . labeled_tuple_pat_element_list(pattern)
        labeled_tuple_pat_element_list(pattern): . LABEL simple_pattern COMMA LABEL simple_pattern
  ```
  Sample sentence (implementation):
  ```ocaml
  fun ( ~label: false , ~label: false : {%hello|world|} ) : {%hello|world|} -> UIdent let false = UIdent
  ```
- Derivation (1 occurrence):
  ```
  simple_pattern_not_ident: LPAREN . pattern COLON core_type RPAREN
    pattern: . reversed_labeled_tuple_pattern(pattern)
      reversed_labeled_tuple_pattern(pattern): . labeled_tuple_pat_element_list(pattern)
        labeled_tuple_pat_element_list(pattern): . LABEL simple_pattern COMMA pattern
  ```
  Sample sentence (implementation):
  ```ocaml
  fun ( ~label: false , false : {%hello|world|} ) : {%hello|world|} -> UIdent let false = UIdent
  ```


### Item `letop_binding_body: simple_pattern COLON core_type EQUAL . seq_expr` (in 257 errors)

- Derivation (254 occurrences):
  ```
  letop_binding_body: simple_pattern COLON core_type EQUAL . seq_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  let* lident : {%hello|world|} = UIdent #1.0 in UIdent [@@ and ] let false = UIdent
  ```
- Derivation (3 occurrences):
  ```
  letop_binding_body: simple_pattern COLON core_type EQUAL . seq_expr
    seq_expr: . STACK FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
  ```
  Sample sentence (implementation):
  ```ocaml
  let* lident : {%hello|world|} = stack_ function false -> UIdent in UIdent [@@ and ] let false = UIdent
  ```


### Item `paren_module_expr: LPAREN module_expr . COLON module_type RPAREN` (in 256 errors)

- Derivation (256 occurrences):
  ```
  paren_module_expr: LPAREN module_expr . COLON module_type RPAREN
  ```
  Sample sentence (implementation):
  ```ocaml
  open ( {%hello|world|} : UIdent ) let false = UIdent
  ```


### Item `method_: list(attribute) private_flag LIDENT COLON possibly_poly(core_type) . EQUAL seq_expr` (in 253 errors)

- Derivation (250 occurrences):
  ```
  method_: list(attribute) private_flag LIDENT COLON possibly_poly(core_type) . EQUAL seq_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  object method lident : {%hello|world|} = UIdent UIdent inherit lident end let false = UIdent
  ```
- Derivation (3 occurrences):
  ```
  method_: list(attribute) private_flag LIDENT COLON possibly_poly(core_type) . EQUAL seq_expr
    seq_expr: . STACK FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
  ```
  Sample sentence (implementation):
  ```ocaml
  object method lident : {%hello|world|} = stack_ function false -> UIdent inherit lident end let false = UIdent
  ```


### Item `method_: BANG list(attribute) private_flag LIDENT COLON possibly_poly(core_type) . EQUAL seq_expr` (in 253 errors)

- Derivation (250 occurrences):
  ```
  method_: BANG list(attribute) private_flag LIDENT COLON possibly_poly(core_type) . EQUAL seq_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  object method ! lident : {%hello|world|} = UIdent UIdent inherit lident end let false = UIdent
  ```
- Derivation (3 occurrences):
  ```
  method_: BANG list(attribute) private_flag LIDENT COLON possibly_poly(core_type) . EQUAL seq_expr
    seq_expr: . STACK FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
  ```
  Sample sentence (implementation):
  ```ocaml
  object method ! lident : {%hello|world|} = stack_ function false -> UIdent inherit lident end let false = UIdent
  ```


### Item `fun_expr: LET OPEN ext list(attribute) module_expr IN . seq_expr` (in 233 errors)

- Derivation (213 occurrences):
  ```
  fun_expr: LET OPEN ext list(attribute) module_expr IN . seq_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  let open {%hello|world|} in UIdent land UIdent [@@ and ] let false = UIdent
  ```
- Derivation (20 occurrences):
  ```
  fun_expr: LET OPEN ext list(attribute) module_expr IN . seq_expr
    seq_expr: . STACK FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
  ```
  Sample sentence (implementation):
  ```ocaml
  let open {%hello|world|} in stack_ function false -> UIdent let false = UIdent
  ```


### Item `fun_expr: LET OPEN BANG ext list(attribute) module_expr IN . seq_expr` (in 233 errors)

- Derivation (213 occurrences):
  ```
  fun_expr: LET OPEN BANG ext list(attribute) module_expr IN . seq_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  let open ! {%hello|world|} in UIdent land UIdent [@@ and ] let false = UIdent
  ```
- Derivation (20 occurrences):
  ```
  fun_expr: LET OPEN BANG ext list(attribute) module_expr IN . seq_expr
    seq_expr: . STACK FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
  ```
  Sample sentence (implementation):
  ```ocaml
  let open ! {%hello|world|} in stack_ function false -> UIdent let false = UIdent
  ```


### Item `atomic_type: . type_longident` (in 188 errors)

- Derivation (10 occurrences):
  ```
  constructor_arguments: reversed_separated_nonempty_llist(STAR,constructor_argument) STAR GLOBAL . atomic_type optional_atat_modalities_expr
    atomic_type: . type_longident
      type_longident: . mk_longident(mod_ext_longident,type_trailing_no_hash)
        mk_longident(mod_ext_longident,type_trailing_no_hash): . type_trailing_no_hash
          type_trailing_no_hash: . LIDENT
  ```
  Sample sentence (interface):
  ```ocaml
  exception false of {%hello|world|} * global_ lident
  ```
- Derivation (10 occurrences):
  ```
  constructor_arguments: reversed_separated_nonempty_llist(STAR,constructor_argument) STAR . atomic_type optional_atat_modalities_expr
    atomic_type: . type_longident
      type_longident: . mk_longident(mod_ext_longident,type_trailing_no_hash)
        mk_longident(mod_ext_longident,type_trailing_no_hash): . type_trailing_no_hash
          type_trailing_no_hash: . LIDENT
  ```
  Sample sentence (interface):
  ```ocaml
  exception false of {%hello|world|} * lident
  ```
- Derivation (8 occurrences):
  ```
  generalized_constructor_arguments: COLON constructor_arguments MINUSGREATER . atomic_type
    atomic_type: . type_longident
      type_longident: . mk_longident(mod_ext_longident,type_trailing_no_hash)
        mk_longident(mod_ext_longident,type_trailing_no_hash): . type_trailing_no_hash
          type_trailing_no_hash: . LIDENT
  ```
  Sample sentence (implementation):
  ```ocaml
  exception false : {%hello|world|} -> lident let false = UIdent
  ```
- Derivation (4 occurrences):
  ```
  tuple_type: atomic_type STAR . reversed_separated_nonempty_llist(STAR,labeled_tuple_typ_element)
    reversed_separated_nonempty_llist(STAR,labeled_tuple_typ_element): . atomic_type
      atomic_type: . type_longident
        type_longident: . mk_longident(mod_ext_longident,type_trailing_no_hash)
          mk_longident(mod_ext_longident,type_trailing_no_hash): . type_trailing_no_hash
            type_trailing_no_hash: . LIDENT
  ```
  Sample sentence (implementation):
  ```ocaml
  #{ lident :> {%hello|world|} * lident ; } let false = UIdent
  ```
- Derivation (4 occurrences):
  ```
  generalized_constructor_arguments: COLON reversed_nonempty_llist(typevar) DOT constructor_arguments MINUSGREATER . atomic_type
    atomic_type: . type_longident
      type_longident: . mk_longident(mod_ext_longident,type_trailing_no_hash)
        mk_longident(mod_ext_longident,type_trailing_no_hash): . type_trailing_no_hash
          type_trailing_no_hash: . LIDENT
  ```
  Sample sentence (implementation):
  ```ocaml
  exception false : ' lident . {%hello|world|} -> lident let false = UIdent
  ```
- Derivation (4 occurrences):
  ```
  let_binding_body_no_punning: simple_pattern_not_ident COLON . tuple_type at_mode_expr EQUAL seq_expr
    tuple_type: . atomic_type STAR reversed_separated_nonempty_llist(STAR,labeled_tuple_typ_element)
      atomic_type: . type_longident
  ```
  Sample sentence (implementation):
  ```ocaml
  include struct let false : lident * {%hello|world|} @ lident = UIdent end let false = UIdent
  ```
- Derivation (4 occurrences):
  ```
  let_binding_body_no_punning: LPAREN val_ident at_mode_expr RPAREN COLON TYPE newtypes DOT . tuple_type at_mode_expr EQUAL seq_expr
    tuple_type: . atomic_type STAR reversed_separated_nonempty_llist(STAR,labeled_tuple_typ_element)
      atomic_type: . type_longident
  ```
  Sample sentence (implementation):
  ```ocaml
  include struct let ( lident @ lident ) : type lident . lident * {%hello|world|} @ lident = UIdent end let false = UIdent
  ```
- Derivation (4 occurrences):
  ```
  let_binding_body_no_punning: nonempty_list(mode_legacy) val_ident COLON TYPE newtypes DOT . tuple_type at_mode_expr EQUAL seq_expr
    tuple_type: . atomic_type STAR reversed_separated_nonempty_llist(STAR,labeled_tuple_typ_element)
      atomic_type: . type_longident
  ```
  Sample sentence (implementation):
  ```ocaml
  include struct let local_ lident : type lident . lident * {%hello|world|} @ lident = UIdent end let false = UIdent
  ```
- Derivation (4 occurrences):
  ```
  let_binding_body_no_punning: val_ident COLON TYPE newtypes DOT . tuple_type at_mode_expr EQUAL seq_expr
    tuple_type: . atomic_type STAR reversed_separated_nonempty_llist(STAR,labeled_tuple_typ_element)
      atomic_type: . type_longident
  ```
  Sample sentence (implementation):
  ```ocaml
  include struct let lident : type lident . lident * {%hello|world|} @ lident = UIdent end let false = UIdent
  ```
- Derivation (4 occurrences):
  ```
  let_binding_body_no_punning: LPAREN val_ident at_mode_expr RPAREN COLON reversed_nonempty_llist(typevar) DOT . tuple_type at_mode_expr EQUAL seq_expr
    tuple_type: . atomic_type STAR reversed_separated_nonempty_llist(STAR,labeled_tuple_typ_element)
      atomic_type: . type_longident
  ```
  Sample sentence (implementation):
  ```ocaml
  include struct let ( lident @ lident ) : ' lident . lident * {%hello|world|} @ lident = UIdent end let false = UIdent
  ```
- Derivation (4 occurrences):
  ```
  let_binding_body_no_punning: nonempty_list(mode_legacy) val_ident COLON reversed_nonempty_llist(typevar) DOT . tuple_type at_mode_expr EQUAL seq_expr
    tuple_type: . atomic_type STAR reversed_separated_nonempty_llist(STAR,labeled_tuple_typ_element)
      atomic_type: . type_longident
  ```
  Sample sentence (implementation):
  ```ocaml
  include struct let local_ lident : ' lident . lident * {%hello|world|} @ lident = UIdent end let false = UIdent
  ```
- Derivation (4 occurrences):
  ```
  let_binding_body_no_punning: val_ident COLON reversed_nonempty_llist(typevar) DOT . tuple_type at_mode_expr EQUAL seq_expr
    tuple_type: . atomic_type STAR reversed_separated_nonempty_llist(STAR,labeled_tuple_typ_element)
      atomic_type: . type_longident
  ```
  Sample sentence (implementation):
  ```ocaml
  include struct let lident : ' lident . lident * {%hello|world|} @ lident = UIdent end let false = UIdent
  ```
- Derivation (4 occurrences):
  ```
  let_binding_body_no_punning: LPAREN val_ident at_mode_expr RPAREN COLONGREATER . tuple_type at_mode_expr EQUAL seq_expr
    tuple_type: . atomic_type STAR reversed_separated_nonempty_llist(STAR,labeled_tuple_typ_element)
      atomic_type: . type_longident
  ```
  Sample sentence (implementation):
  ```ocaml
  include struct let ( lident @ lident ) :> lident * {%hello|world|} @ lident = UIdent end let false = UIdent
  ```
- Derivation (4 occurrences):
  ```
  let_binding_body_no_punning: LPAREN val_ident at_mode_expr RPAREN COLON . tuple_type at_mode_expr EQUAL seq_expr
    tuple_type: . atomic_type STAR reversed_separated_nonempty_llist(STAR,labeled_tuple_typ_element)
      atomic_type: . type_longident
  ```
  Sample sentence (implementation):
  ```ocaml
  include struct let ( lident @ lident ) : lident * {%hello|world|} @ lident = UIdent end let false = UIdent
  ```
- Derivation (4 occurrences):
  ```
  let_binding_body_no_punning: nonempty_list(mode_legacy) val_ident COLONGREATER . tuple_type at_mode_expr EQUAL seq_expr
    tuple_type: . atomic_type STAR reversed_separated_nonempty_llist(STAR,labeled_tuple_typ_element)
      atomic_type: . type_longident
  ```
  Sample sentence (implementation):
  ```ocaml
  include struct let local_ lident :> lident * {%hello|world|} @ lident = UIdent end let false = UIdent
  ```
- Derivation (4 occurrences):
  ```
  let_binding_body_no_punning: nonempty_list(mode_legacy) val_ident COLON . tuple_type at_mode_expr EQUAL seq_expr
    tuple_type: . atomic_type STAR reversed_separated_nonempty_llist(STAR,labeled_tuple_typ_element)
      atomic_type: . type_longident
  ```
  Sample sentence (implementation):
  ```ocaml
  include struct let local_ lident : lident * {%hello|world|} @ lident = UIdent end let false = UIdent
  ```
- Derivation (4 occurrences):
  ```
  let_binding_body_no_punning: val_ident COLONGREATER . tuple_type at_mode_expr EQUAL seq_expr
    tuple_type: . atomic_type STAR reversed_separated_nonempty_llist(STAR,labeled_tuple_typ_element)
      atomic_type: . type_longident
  ```
  Sample sentence (implementation):
  ```ocaml
  include struct let lident :> lident * {%hello|world|} @ lident = UIdent end let false = UIdent
  ```
- Derivation (4 occurrences):
  ```
  let_binding_body_no_punning: val_ident COLON . tuple_type at_mode_expr EQUAL seq_expr
    tuple_type: . atomic_type STAR reversed_separated_nonempty_llist(STAR,labeled_tuple_typ_element)
      atomic_type: . type_longident
  ```
  Sample sentence (implementation):
  ```ocaml
  include struct let lident : lident * {%hello|world|} @ lident = UIdent end let false = UIdent
  ```
- Derivation (2 occurrences):
  ```
  strict_function_or_labeled_tuple_type: LIDENT COLON atomic_type STAR reversed_separated_nonempty_llist(STAR,labeled_tuple_typ_element) MINUSGREATER nonempty_list(mode_legacy) . tuple_type
    tuple_type: . atomic_type STAR reversed_separated_nonempty_llist(STAR,labeled_tuple_typ_element)
      atomic_type: . type_longident
        type_longident: . mk_longident(mod_ext_longident,type_trailing_no_hash)
          mk_longident(mod_ext_longident,type_trailing_no_hash): . type_trailing_no_hash
            type_trailing_no_hash: . LIDENT
  ```
  Sample sentence (implementation):
  ```ocaml
  kind_abbrev_ lident = kind_of_ lident : {%hello|world|} * {%hello|world|} -> local_ lident * {%hello|world|} let false = UIdent
  ```
- Derivation (2 occurrences):
  ```
  strict_function_or_labeled_tuple_type: LIDENT COLON atomic_type STAR reversed_separated_nonempty_llist(STAR,labeled_tuple_typ_element) MINUSGREATER . tuple_type
    tuple_type: . atomic_type STAR reversed_separated_nonempty_llist(STAR,labeled_tuple_typ_element)
      atomic_type: . type_longident
        type_longident: . mk_longident(mod_ext_longident,type_trailing_no_hash)
          mk_longident(mod_ext_longident,type_trailing_no_hash): . type_trailing_no_hash
            type_trailing_no_hash: . LIDENT
  ```
  Sample sentence (implementation):
  ```ocaml
  kind_abbrev_ lident = kind_of_ lident : {%hello|world|} * {%hello|world|} -> lident * {%hello|world|} let false = UIdent
  ```
- Derivation (2 occurrences):
  ```
  strict_function_or_labeled_tuple_type: tuple_type MINUSGREATER nonempty_list(mode_legacy) . tuple_type
    tuple_type: . atomic_type STAR reversed_separated_nonempty_llist(STAR,labeled_tuple_typ_element)
      atomic_type: . type_longident
        type_longident: . mk_longident(mod_ext_longident,type_trailing_no_hash)
          mk_longident(mod_ext_longident,type_trailing_no_hash): . type_trailing_no_hash
            type_trailing_no_hash: . LIDENT
  ```
  Sample sentence (implementation):
  ```ocaml
  kind_abbrev_ lident = kind_of_ {%hello|world|} -> local_ lident * {%hello|world|} let false = UIdent
  ```
- ...


### Item `core_type: . alias_type` (in 187 errors)

- Derivation (187 occurrences):
  ```
  simple_expr: LPAREN seq_expr COLON . core_type RPAREN
    core_type: . alias_type
  ```
  Sample sentence (implementation):
  ```ocaml
  ( UIdent : {%hello|world|} ) let false = UIdent
  ```


### Item `reversed_separated_nonempty_llist(STAR,labeled_tuple_typ_element): . atomic_type` (in 145 errors)

- Derivation (28 occurrences):
  ```
  tuple_type: atomic_type STAR . reversed_separated_nonempty_llist(STAR,labeled_tuple_typ_element)
    reversed_separated_nonempty_llist(STAR,labeled_tuple_typ_element): . atomic_type
  ```
  Sample sentence (implementation):
  ```ocaml
  type nonrec lident = {%hello|world|} * {%hello|world|} -> {%hello|world|} and lident
  ```
- Derivation (26 occurrences):
  ```
  strict_function_or_labeled_tuple_type: LIDENT COLON atomic_type STAR . reversed_separated_nonempty_llist(STAR,labeled_tuple_typ_element) MINUSGREATER strict_function_or_labeled_tuple_type
    reversed_separated_nonempty_llist(STAR,labeled_tuple_typ_element): . atomic_type
  ```
  Sample sentence (implementation):
  ```ocaml
  kind_abbrev_ lident = kind_of_ lident : {%hello|world|} * {%hello|world|} -> ?label: {%hello|world|} -> {%hello|world|} let false = UIdent
  ```
- Derivation (17 occurrences):
  ```
  tuple_type: atomic_type STAR . reversed_separated_nonempty_llist(STAR,labeled_tuple_typ_element)
    reversed_separated_nonempty_llist(STAR,labeled_tuple_typ_element): . reversed_separated_nonempty_llist(STAR,labeled_tuple_typ_element) STAR LIDENT COLON atomic_type
      reversed_separated_nonempty_llist(STAR,labeled_tuple_typ_element): . atomic_type
  ```
  Sample sentence (implementation):
  ```ocaml
  ( UIdent : {%hello|world|} * {%hello|world|} * lident : _ @ lident ) let false = UIdent
  ```
- Derivation (17 occurrences):
  ```
  tuple_type: atomic_type STAR . reversed_separated_nonempty_llist(STAR,labeled_tuple_typ_element)
    reversed_separated_nonempty_llist(STAR,labeled_tuple_typ_element): . reversed_separated_nonempty_llist(STAR,labeled_tuple_typ_element) STAR atomic_type
      reversed_separated_nonempty_llist(STAR,labeled_tuple_typ_element): . atomic_type
  ```
  Sample sentence (implementation):
  ```ocaml
  ( UIdent : {%hello|world|} * {%hello|world|} * _ @ lident ) let false = UIdent
  ```
- Derivation (11 occurrences):
  ```
  tuple_type: atomic_type STAR . reversed_separated_nonempty_llist(STAR,labeled_tuple_typ_element)
    reversed_separated_nonempty_llist(STAR,labeled_tuple_typ_element): . atomic_type
      atomic_type: . atomic_type type_longident
  ```
  Sample sentence (implementation):
  ```ocaml
  #{ lident :> {%hello|world|} * {%hello|world|} lident ; } let false = UIdent
  ```
- Derivation (4 occurrences):
  ```
  tuple_type: atomic_type STAR . reversed_separated_nonempty_llist(STAR,labeled_tuple_typ_element)
    reversed_separated_nonempty_llist(STAR,labeled_tuple_typ_element): . atomic_type
      atomic_type: . HASH clty_longident
  ```
  Sample sentence (implementation):
  ```ocaml
  kind_abbrev_ lident = kind_of_ {%hello|world|} * # lident
  ```
- Derivation (4 occurrences):
  ```
  tuple_type: atomic_type STAR . reversed_separated_nonempty_llist(STAR,labeled_tuple_typ_element)
    reversed_separated_nonempty_llist(STAR,labeled_tuple_typ_element): . atomic_type
      atomic_type: . atomic_type type_unboxed_longident
  ```
  Sample sentence (implementation):
  ```ocaml
  ( UIdent : {%hello|world|} * {%hello|world|} lident# @ lident ) let false = UIdent
  ```
- Derivation (3 occurrences):
  ```
  tuple_type: atomic_type STAR . reversed_separated_nonempty_llist(STAR,labeled_tuple_typ_element)
    reversed_separated_nonempty_llist(STAR,labeled_tuple_typ_element): . atomic_type
      atomic_type: . atomic_type type_unboxed_longident
        atomic_type: . atomic_type type_longident
  ```
  Sample sentence (implementation):
  ```ocaml
  ( UIdent : {%hello|world|} * {%hello|world|} lident lident# @ lident ) let false = UIdent
  ```
- Derivation (2 occurrences):
  ```
  tuple_type: atomic_type STAR . reversed_separated_nonempty_llist(STAR,labeled_tuple_typ_element)
    reversed_separated_nonempty_llist(STAR,labeled_tuple_typ_element): . atomic_type
      atomic_type: . type_unboxed_longident
        type_unboxed_longident: . mk_longident(mod_ext_longident,type_trailing_hash)
          mk_longident(mod_ext_longident,type_trailing_hash): . type_trailing_hash
            type_trailing_hash: . LIDENT HASH_SUFFIX
  ```
  Sample sentence (implementation):
  ```ocaml
  ( UIdent : {%hello|world|} * lident# @ lident ) let false = UIdent
  ```
- Derivation (2 occurrences):
  ```
  strict_function_or_labeled_tuple_type: LIDENT COLON atomic_type STAR . reversed_separated_nonempty_llist(STAR,labeled_tuple_typ_element)
    reversed_separated_nonempty_llist(STAR,labeled_tuple_typ_element): . atomic_type
      atomic_type: . type_unboxed_longident
        type_unboxed_longident: . mk_longident(mod_ext_longident,type_trailing_hash)
          mk_longident(mod_ext_longident,type_trailing_hash): . type_trailing_hash
            type_trailing_hash: . LIDENT HASH_SUFFIX
  ```
  Sample sentence (implementation):
  ```ocaml
  kind_abbrev_ lident = kind_of_ lident : {%hello|world|} * lident# let false = UIdent
  ```
- Derivation (2 occurrences):
  ```
  tuple_type: atomic_type STAR . reversed_separated_nonempty_llist(STAR,labeled_tuple_typ_element)
    reversed_separated_nonempty_llist(STAR,labeled_tuple_typ_element): . atomic_type
      atomic_type: . delimited_type
        delimited_type: . extension_type
          extension_type: . extension
            extension: . LBRACKETPERCENT attr_id payload RBRACKET
  ```
  Sample sentence (implementation):
  ```ocaml
  ( UIdent : {%hello|world|} * [% and ] @ lident ) let false = UIdent
  ```
- Derivation (2 occurrences):
  ```
  strict_function_or_labeled_tuple_type: LIDENT COLON atomic_type STAR . reversed_separated_nonempty_llist(STAR,labeled_tuple_typ_element)
    reversed_separated_nonempty_llist(STAR,labeled_tuple_typ_element): . atomic_type
      atomic_type: . delimited_type
        delimited_type: . extension_type
          extension_type: . extension
            extension: . LBRACKETPERCENT attr_id payload RBRACKET
  ```
  Sample sentence (implementation):
  ```ocaml
  kind_abbrev_ lident = kind_of_ lident : {%hello|world|} * [% and ] let false = UIdent
  ```
- Derivation (2 occurrences):
  ```
  tuple_type: atomic_type STAR . reversed_separated_nonempty_llist(STAR,labeled_tuple_typ_element)
    reversed_separated_nonempty_llist(STAR,labeled_tuple_typ_element): . atomic_type
      atomic_type: . LPAREN QUOTE ident COLON jkind_annotation RPAREN
  ```
  Sample sentence (implementation):
  ```ocaml
  ( UIdent : {%hello|world|} * ( ' lident : lident ) @ lident ) let false = UIdent
  ```
- Derivation (2 occurrences):
  ```
  strict_function_or_labeled_tuple_type: LIDENT COLON atomic_type STAR . reversed_separated_nonempty_llist(STAR,labeled_tuple_typ_element)
    reversed_separated_nonempty_llist(STAR,labeled_tuple_typ_element): . atomic_type
      atomic_type: . LPAREN QUOTE ident COLON jkind_annotation RPAREN
  ```
  Sample sentence (implementation):
  ```ocaml
  kind_abbrev_ lident = kind_of_ lident : {%hello|world|} * ( ' lident : lident ) let false = UIdent
  ```
- Derivation (2 occurrences):
  ```
  tuple_type: atomic_type STAR . reversed_separated_nonempty_llist(STAR,labeled_tuple_typ_element)
    reversed_separated_nonempty_llist(STAR,labeled_tuple_typ_element): . atomic_type
      atomic_type: . QUOTE ident
  ```
  Sample sentence (implementation):
  ```ocaml
  ( UIdent : {%hello|world|} * ' lident @ lident ) let false = UIdent
  ```
- Derivation (2 occurrences):
  ```
  strict_function_or_labeled_tuple_type: LIDENT COLON atomic_type STAR . reversed_separated_nonempty_llist(STAR,labeled_tuple_typ_element)
    reversed_separated_nonempty_llist(STAR,labeled_tuple_typ_element): . atomic_type
      atomic_type: . QUOTE ident
  ```
  Sample sentence (implementation):
  ```ocaml
  kind_abbrev_ lident = kind_of_ lident : {%hello|world|} * ' lident let false = UIdent
  ```
- Derivation (2 occurrences):
  ```
  strict_function_or_labeled_tuple_type: LIDENT COLON atomic_type STAR . reversed_separated_nonempty_llist(STAR,labeled_tuple_typ_element)
    reversed_separated_nonempty_llist(STAR,labeled_tuple_typ_element): . atomic_type
      atomic_type: . atomic_type type_unboxed_longident
  ```
  Sample sentence (implementation):
  ```ocaml
  kind_abbrev_ lident = kind_of_ lident : {%hello|world|} * {%hello|world|} lident# let false = UIdent
  ```
- Derivation (1 occurrence):
  ```
  tuple_type: atomic_type STAR . reversed_separated_nonempty_llist(STAR,labeled_tuple_typ_element)
    reversed_separated_nonempty_llist(STAR,labeled_tuple_typ_element): . atomic_type
      atomic_type: . delimited_type
        delimited_type: . object_type
          object_type: . LESS GREATER
  ```
  Sample sentence (implementation):
  ```ocaml
  ( UIdent : {%hello|world|} * < > @ lident ) let false = UIdent
  ```
- Derivation (1 occurrence):
  ```
  strict_function_or_labeled_tuple_type: LIDENT COLON atomic_type STAR . reversed_separated_nonempty_llist(STAR,labeled_tuple_typ_element)
    reversed_separated_nonempty_llist(STAR,labeled_tuple_typ_element): . atomic_type
      atomic_type: . delimited_type
        delimited_type: . object_type
          object_type: . LESS GREATER
  ```
  Sample sentence (implementation):
  ```ocaml
  kind_abbrev_ lident = kind_of_ lident : {%hello|world|} * < > let false = UIdent
  ```
- Derivation (1 occurrence):
  ```
  tuple_type: atomic_type STAR . reversed_separated_nonempty_llist(STAR,labeled_tuple_typ_element)
    reversed_separated_nonempty_llist(STAR,labeled_tuple_typ_element): . atomic_type
      atomic_type: . type_unboxed_longident
        type_unboxed_longident: . mk_longident(mod_ext_longident,type_trailing_hash)
          mk_longident(mod_ext_longident,type_trailing_hash): . mod_ext_longident DOT type_trailing_hash
            mod_ext_longident: . mk_longident(mod_ext_longident,UIDENT)
              mk_longident(mod_ext_longident,UIDENT): . UIDENT
  ```
  Sample sentence (implementation):
  ```ocaml
  ( UIdent : {%hello|world|} * UIdent . lident# @ lident ) let false = UIdent
  ```
- Derivation (1 occurrence):
  ```
  strict_function_or_labeled_tuple_type: LIDENT COLON atomic_type STAR . reversed_separated_nonempty_llist(STAR,labeled_tuple_typ_element)
    reversed_separated_nonempty_llist(STAR,labeled_tuple_typ_element): . atomic_type
      atomic_type: . type_unboxed_longident
        type_unboxed_longident: . mk_longident(mod_ext_longident,type_trailing_hash)
          mk_longident(mod_ext_longident,type_trailing_hash): . mod_ext_longident DOT type_trailing_hash
            mod_ext_longident: . mk_longident(mod_ext_longident,UIDENT)
              mk_longident(mod_ext_longident,UIDENT): . UIDENT
  ```
  Sample sentence (implementation):
  ```ocaml
  kind_abbrev_ lident = kind_of_ lident : {%hello|world|} * UIdent . lident# let false = UIdent
  ```
- ...


### Item `pattern: . pattern_gen` (in 135 errors)

- Derivation (16 occurrences):
  ```
  labeled_tuple_pat_element_list(pattern): TILDE LPAREN LIDENT COLON core_type RPAREN COMMA . pattern
    pattern: . pattern_gen
      pattern_gen: . constr_longident pattern
        constr_longident: . constr_extra_nonprefix_ident
          constr_extra_nonprefix_ident: . FALSE
  ```
  Sample sentence (implementation):
  ```ocaml
  function ~ ( lident : {%hello|world|} ) , false false -> UIdent let false = UIdent
  ```
- Derivation (14 occurrences):
  ```
  labeled_tuple_pat_element_list(pattern): TILDE LPAREN LIDENT COLON core_type RPAREN COMMA . pattern
    pattern: . pattern_gen
      pattern_gen: . name_tag pattern
        name_tag: . BACKQUOTE ident
  ```
  Sample sentence (implementation):
  ```ocaml
  function ~ ( lident : {%hello|world|} ) , ` lident false -> UIdent let false = UIdent
  ```
- Derivation (11 occurrences):
  ```
  labeled_tuple_pat_element_list(pattern): TILDE LPAREN LIDENT COLON core_type RPAREN COMMA . pattern
    pattern: . pattern_gen
      pattern_gen: . LAZY ext list(attribute) simple_pattern
  ```
  Sample sentence (implementation):
  ```ocaml
  function ~ ( lident : {%hello|world|} ) , lazy false -> UIdent let false = UIdent
  ```
- Derivation (11 occurrences):
  ```
  labeled_tuple_pat_element_list(pattern): TILDE LPAREN LIDENT COLON core_type RPAREN COMMA . pattern
    pattern: . pattern_gen
      pattern_gen: . constr_longident LPAREN TYPE newtypes RPAREN simple_pattern
        constr_longident: . constr_extra_nonprefix_ident
          constr_extra_nonprefix_ident: . FALSE
  ```
  Sample sentence (implementation):
  ```ocaml
  function ~ ( lident : {%hello|world|} ) , false ( type lident ) false -> UIdent let false = UIdent
  ```
- Derivation (9 occurrences):
  ```
  labeled_tuple_pat_element_list(pattern): TILDE LPAREN LIDENT COLON core_type RPAREN COMMA . pattern
    pattern: . pattern_gen
      pattern_gen: . constr_longident LPAREN TYPE LIDENT COLON jkind_annotation RPAREN simple_pattern
        constr_longident: . constr_extra_nonprefix_ident
          constr_extra_nonprefix_ident: . FALSE
  ```
  Sample sentence (implementation):
  ```ocaml
  function ~ ( lident : {%hello|world|} ) , false ( type lident : lident ) false -> UIdent let false = UIdent
  ```
- Derivation (4 occurrences):
  ```
  labeled_tuple_pat_element_list(pattern): TILDE LPAREN LIDENT COLON core_type RPAREN COMMA . pattern
    pattern: . pattern_gen
      pattern_gen: . constr_longident pattern
        constr_longident: . mod_longident
          mod_longident: . mk_longident(mod_longident,UIDENT)
            mk_longident(mod_longident,UIDENT): . UIDENT
  ```
  Sample sentence (implementation):
  ```ocaml
  function ~ ( lident : {%hello|world|} ) , UIdent false -> UIdent let false = UIdent
  ```
- Derivation (4 occurrences):
  ```
  labeled_tuple_pat_element_list(pattern): TILDE LPAREN LIDENT COLON core_type RPAREN COMMA . pattern
    pattern: . pattern_gen
      pattern_gen: . constr_longident pattern
        constr_longident: . constr_extra_nonprefix_ident
          constr_extra_nonprefix_ident: . LBRACKET RBRACKET
  ```
  Sample sentence (implementation):
  ```ocaml
  function ~ ( lident : {%hello|world|} ) , [ ] false -> UIdent let false = UIdent
  ```
- Derivation (3 occurrences):
  ```
  simple_pattern_not_ident: LPAREN . pattern RPAREN
    pattern: . pattern_gen
      pattern_gen: . LAZY ext list(attribute) simple_pattern
  ```
  Sample sentence (implementation):
  ```ocaml
  fun ( lazy false ) : {%hello|world|} -> UIdent let false = UIdent
  ```
- Derivation (3 occurrences):
  ```
  simple_pattern_not_ident: LPAREN . pattern RPAREN
    pattern: . pattern BAR pattern
      pattern: . pattern_gen
        pattern_gen: . simple_pattern
  ```
  Sample sentence (implementation):
  ```ocaml
  fun ( false | false ) : {%hello|world|} -> UIdent let false = UIdent
  ```
- Derivation (3 occurrences):
  ```
  simple_pattern_not_ident: LPAREN . pattern RPAREN
    pattern: . pattern COLONCOLON pattern
      pattern: . pattern_gen
        pattern_gen: . simple_pattern
  ```
  Sample sentence (implementation):
  ```ocaml
  fun ( false :: false ) : {%hello|world|} -> UIdent let false = UIdent
  ```
- Derivation (3 occurrences):
  ```
  simple_pattern_not_ident: LPAREN . pattern RPAREN
    pattern: . reversed_labeled_tuple_pattern(pattern)
      reversed_labeled_tuple_pattern(pattern): . labeled_tuple_pat_element_list(pattern) COMMA DOTDOT
        labeled_tuple_pat_element_list(pattern): . pattern COMMA pattern
          pattern: . pattern_gen
            pattern_gen: . simple_pattern
  ```
  Sample sentence (implementation):
  ```ocaml
  fun ( false , false , .. ) : {%hello|world|} -> UIdent let false = UIdent
  ```
- Derivation (3 occurrences):
  ```
  simple_pattern_not_ident: LPAREN . pattern RPAREN
    pattern: . pattern BAR pattern
      pattern: . pattern_gen
  ```
  Sample sentence (implementation):
  ```ocaml
  fun ( false false | false ) : {%hello|world|} -> UIdent let false = UIdent
  ```
- Derivation (2 occurrences):
  ```
  labeled_tuple_pat_element_list(pattern): TILDE LPAREN LIDENT COLON core_type RPAREN COMMA . pattern
    pattern: . pattern_gen
      pattern_gen: . simple_pattern
        simple_pattern: . val_ident
          val_ident: . LIDENT
  ```
  Sample sentence (implementation):
  ```ocaml
  function ~ ( lident : {%hello|world|} ) , lident -> UIdent let false = UIdent
  ```
- Derivation (2 occurrences):
  ```
  labeled_tuple_pat_element_list(pattern): TILDE LPAREN LIDENT COLON core_type RPAREN COMMA . pattern
    pattern: . pattern_gen
      pattern_gen: . simple_pattern
        simple_pattern: . val_ident
          val_ident: . val_extra_ident
            val_extra_ident: . LPAREN operator RPAREN
  ```
  Sample sentence (implementation):
  ```ocaml
  function ~ ( lident : {%hello|world|} ) , ( - ) -> UIdent let false = UIdent
  ```
- Derivation (2 occurrences):
  ```
  fun_expr: fun_expr OR STACK FUNCTION ext . list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
    reversed_preceded_or_separated_nonempty_llist(BAR,match_case): . match_case
      match_case: . pattern MINUSGREATER seq_expr
        pattern: . reversed_labeled_tuple_pattern(pattern)
          reversed_labeled_tuple_pattern(pattern): . labeled_tuple_pat_element_list(pattern)
            labeled_tuple_pat_element_list(pattern): . pattern COMMA TILDE LPAREN LIDENT COLON core_type RPAREN
              pattern: . pattern_gen
                pattern_gen: . simple_pattern
  ```
  Sample sentence (implementation):
  ```ocaml
  UIdent or stack_ function false , ~ ( lident : {%hello|world|} ) -> UIdent let false = UIdent
  ```
- Derivation (2 occurrences):
  ```
  simple_pattern_not_ident: LPAREN . pattern RPAREN
    pattern: . reversed_labeled_tuple_pattern(pattern)
      reversed_labeled_tuple_pattern(pattern): . labeled_tuple_pat_element_list(pattern)
        labeled_tuple_pat_element_list(pattern): . pattern COMMA pattern
          pattern: . pattern_gen
            pattern_gen: . simple_pattern
  ```
  Sample sentence (implementation):
  ```ocaml
  fun ( false , false ) : {%hello|world|} -> UIdent let false = UIdent
  ```
- Derivation (2 occurrences):
  ```
  simple_pattern_not_ident: LPAREN . pattern RPAREN
    pattern: . pattern BAR pattern
      pattern: . reversed_labeled_tuple_pattern(pattern)
        reversed_labeled_tuple_pattern(pattern): . labeled_tuple_pat_element_list(pattern)
          labeled_tuple_pat_element_list(pattern): . pattern COMMA pattern
            pattern: . pattern_gen
              pattern_gen: . simple_pattern
  ```
  Sample sentence (implementation):
  ```ocaml
  fun ( false , false | false ) : {%hello|world|} -> UIdent let false = UIdent
  ```
- Derivation (2 occurrences):
  ```
  fun_expr: fun_expr OR STACK FUNCTION ext . list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
    reversed_preceded_or_separated_nonempty_llist(BAR,match_case): . match_case
      match_case: . pattern MINUSGREATER seq_expr
        pattern: . reversed_labeled_tuple_pattern(pattern)
          reversed_labeled_tuple_pattern(pattern): . labeled_tuple_pat_element_list(pattern)
            labeled_tuple_pat_element_list(pattern): . labeled_tuple_pat_element_list(pattern) COMMA TILDE LPAREN LIDENT COLON core_type RPAREN
              labeled_tuple_pat_element_list(pattern): . pattern COMMA pattern
                pattern: . pattern_gen
                  pattern_gen: . simple_pattern
  ```
  Sample sentence (implementation):
  ```ocaml
  UIdent or stack_ function false , false , ~ ( lident : {%hello|world|} ) -> UIdent let false = UIdent
  ```
- Derivation (2 occurrences):
  ```
  labeled_tuple_pat_element_list(pattern): TILDE LPAREN LIDENT COLON core_type RPAREN COMMA . pattern
    pattern: . pattern attribute
      pattern: . pattern_gen
        pattern_gen: . name_tag pattern
          name_tag: . BACKQUOTE ident
  ```
  Sample sentence (implementation):
  ```ocaml
  function ~ ( lident : {%hello|world|} ) , ` lident false [@ and ] -> UIdent let false = UIdent
  ```
- Derivation (2 occurrences):
  ```
  labeled_tuple_pat_element_list(pattern): TILDE LPAREN LIDENT COLON core_type RPAREN COMMA . pattern
    pattern: . pattern COLONCOLON pattern
      pattern: . pattern_gen
        pattern_gen: . name_tag pattern
          name_tag: . BACKQUOTE ident
  ```
  Sample sentence (implementation):
  ```ocaml
  function ~ ( lident : {%hello|world|} ) , ` lident false :: false -> UIdent let false = UIdent
  ```
- Derivation (2 occurrences):
  ```
  labeled_tuple_pat_element_list(pattern): TILDE LPAREN LIDENT COLON core_type RPAREN COMMA . pattern
    pattern: . pattern_gen
      pattern_gen: . constr_longident pattern
        constr_longident: . mod_longident
          mod_longident: . mk_longident(mod_longident,UIDENT)
            mk_longident(mod_longident,UIDENT): . mod_longident DOT UIDENT
              mod_longident: . mk_longident(mod_longident,UIDENT)
                mk_longident(mod_longident,UIDENT): . UIDENT
  ```
  Sample sentence (implementation):
  ```ocaml
  function ~ ( lident : {%hello|world|} ) , UIdent . UIdent false -> UIdent let false = UIdent
  ```
- ...


### Item `generalized_constructor_arguments: COLON constructor_arguments MINUSGREATER . atomic_type` (in 117 errors)

- Derivation (64 occurrences):
  ```
  generalized_constructor_arguments: COLON constructor_arguments MINUSGREATER . atomic_type
    atomic_type: . LPAREN reversed_separated_nontrivial_llist(COMMA,one_type_parameter_of_several) RPAREN type_longident
  ```
  Sample sentence (implementation):
  ```ocaml
  exception false : {%hello|world|} -> ( _ : lident , _ : lident ) lident let false = UIdent
  ```
- Derivation (11 occurrences):
  ```
  generalized_constructor_arguments: COLON constructor_arguments MINUSGREATER . atomic_type
    atomic_type: . atomic_type type_longident
  ```
  Sample sentence (implementation):
  ```ocaml
  exception false : {%hello|world|} -> {%hello|world|} lident let false = UIdent
  ```
- Derivation (6 occurrences):
  ```
  generalized_constructor_arguments: COLON constructor_arguments MINUSGREATER . atomic_type
    atomic_type: . HASH clty_longident
  ```
  Sample sentence (interface):
  ```ocaml
  exception false : {%hello|world|} -> # lident
  ```
- Derivation (4 occurrences):
  ```
  generalized_constructor_arguments: COLON constructor_arguments MINUSGREATER . atomic_type
    atomic_type: . type_unboxed_longident
      type_unboxed_longident: . mk_longident(mod_ext_longident,type_trailing_hash)
        mk_longident(mod_ext_longident,type_trailing_hash): . type_trailing_hash
          type_trailing_hash: . LIDENT HASH_SUFFIX
  ```
  Sample sentence (implementation):
  ```ocaml
  exception false : {%hello|world|} -> lident# let false = UIdent
  ```
- Derivation (4 occurrences):
  ```
  generalized_constructor_arguments: COLON constructor_arguments MINUSGREATER . atomic_type
    atomic_type: . delimited_type
      delimited_type: . extension_type
        extension_type: . extension
          extension: . LBRACKETPERCENT attr_id payload RBRACKET
  ```
  Sample sentence (implementation):
  ```ocaml
  exception false : {%hello|world|} -> [% and ] let false = UIdent
  ```
- Derivation (4 occurrences):
  ```
  generalized_constructor_arguments: COLON constructor_arguments MINUSGREATER . atomic_type
    atomic_type: . QUOTE ident
  ```
  Sample sentence (implementation):
  ```ocaml
  exception false : {%hello|world|} -> ' lident let false = UIdent
  ```
- Derivation (4 occurrences):
  ```
  generalized_constructor_arguments: COLON constructor_arguments MINUSGREATER . atomic_type
    atomic_type: . atomic_type type_unboxed_longident
  ```
  Sample sentence (implementation):
  ```ocaml
  exception false : {%hello|world|} -> {%hello|world|} lident# let false = UIdent
  ```
- Derivation (3 occurrences):
  ```
  generalized_constructor_arguments: COLON constructor_arguments MINUSGREATER . atomic_type
    atomic_type: . LPAREN UNDERSCORE COLON jkind_annotation RPAREN
  ```
  Sample sentence (implementation):
  ```ocaml
  exception false : {%hello|world|} -> ( _ : lident ) let false = UIdent
  ```
- Derivation (3 occurrences):
  ```
  generalized_constructor_arguments: COLON constructor_arguments MINUSGREATER . atomic_type
    atomic_type: . atomic_type type_unboxed_longident
      atomic_type: . atomic_type type_longident
  ```
  Sample sentence (implementation):
  ```ocaml
  exception false : {%hello|world|} -> {%hello|world|} lident lident# let false = UIdent
  ```
- Derivation (2 occurrences):
  ```
  generalized_constructor_arguments: COLON constructor_arguments MINUSGREATER . atomic_type
    atomic_type: . delimited_type
      delimited_type: . object_type
        object_type: . LESS GREATER
  ```
  Sample sentence (implementation):
  ```ocaml
  exception false : {%hello|world|} -> < > let false = UIdent
  ```
- Derivation (2 occurrences):
  ```
  generalized_constructor_arguments: COLON constructor_arguments MINUSGREATER . atomic_type
    atomic_type: . type_unboxed_longident
      type_unboxed_longident: . mk_longident(mod_ext_longident,type_trailing_hash)
        mk_longident(mod_ext_longident,type_trailing_hash): . mod_ext_longident DOT type_trailing_hash
          mod_ext_longident: . mk_longident(mod_ext_longident,UIDENT)
            mk_longident(mod_ext_longident,UIDENT): . UIDENT
  ```
  Sample sentence (implementation):
  ```ocaml
  exception false : {%hello|world|} -> UIdent . lident# let false = UIdent
  ```
- Derivation (2 occurrences):
  ```
  generalized_constructor_arguments: COLON constructor_arguments MINUSGREATER . atomic_type
    atomic_type: . delimited_type
      delimited_type: . delimited_type_supporting_local_open
        delimited_type_supporting_local_open: . LBRACKETGREATER RBRACKET
  ```
  Sample sentence (implementation):
  ```ocaml
  exception false : {%hello|world|} -> [> ] let false = UIdent
  ```
- Derivation (2 occurrences):
  ```
  generalized_constructor_arguments: COLON constructor_arguments MINUSGREATER . atomic_type
    atomic_type: . delimited_type
      delimited_type: . delimited_type_supporting_local_open
        delimited_type_supporting_local_open: . LBRACKET tag_field RBRACKET
  ```
  Sample sentence (implementation):
  ```ocaml
  exception false : {%hello|world|} -> [ ` lident ] let false = UIdent
  ```
- Derivation (2 occurrences):
  ```
  generalized_constructor_arguments: COLON constructor_arguments MINUSGREATER . atomic_type
    atomic_type: . LPAREN TYPE COLON jkind_annotation RPAREN
  ```
  Sample sentence (implementation):
  ```ocaml
  exception false : {%hello|world|} -> ( type : lident ) let false = UIdent
  ```
- Derivation (2 occurrences):
  ```
  generalized_constructor_arguments: COLON constructor_arguments MINUSGREATER . atomic_type
    atomic_type: . LPAREN QUOTE ident COLON jkind_annotation RPAREN
  ```
  Sample sentence (implementation):
  ```ocaml
  exception false : {%hello|world|} -> ( ' lident : lident ) let false = UIdent
  ```
- Derivation (2 occurrences):
  ```
  generalized_constructor_arguments: COLON constructor_arguments MINUSGREATER . atomic_type
    atomic_type: . UNDERSCORE
  ```
  Sample sentence (implementation):
  ```ocaml
  exception false : {%hello|world|} -> _ let false = UIdent
  ```


### Item `generalized_constructor_arguments: COLON reversed_nonempty_llist(typevar) DOT constructor_arguments MINUSGREATER . atomic_type` (in 87 errors)

- Derivation (18 occurrences):
  ```
  generalized_constructor_arguments: COLON reversed_nonempty_llist(typevar) DOT constructor_arguments MINUSGREATER . atomic_type
    atomic_type: . delimited_type
      delimited_type: . object_type
        object_type: . LESS meth_list GREATER
  ```
  Sample sentence (implementation):
  ```ocaml
  exception false : ' lident . {%hello|world|} -> < .. > let false = UIdent
  ```
- Derivation (17 occurrences):
  ```
  generalized_constructor_arguments: COLON reversed_nonempty_llist(typevar) DOT constructor_arguments MINUSGREATER . atomic_type
    atomic_type: . LPAREN QUOTE ident COLON jkind_annotation RPAREN
  ```
  Sample sentence (implementation):
  ```ocaml
  exception false : ' lident . {%hello|world|} -> ( ' lident : lident ) let false = UIdent
  ```
- Derivation (13 occurrences):
  ```
  generalized_constructor_arguments: COLON reversed_nonempty_llist(typevar) DOT constructor_arguments MINUSGREATER . atomic_type
    atomic_type: . atomic_type type_longident
  ```
  Sample sentence (implementation):
  ```ocaml
  exception false : ' lident . {%hello|world|} -> {%hello|world|} lident let false = UIdent
  ```
- Derivation (6 occurrences):
  ```
  generalized_constructor_arguments: COLON reversed_nonempty_llist(typevar) DOT constructor_arguments MINUSGREATER . atomic_type
    atomic_type: . delimited_type
      delimited_type: . delimited_type_supporting_local_open
        delimited_type_supporting_local_open: . LBRACKET tag_field RBRACKET
  ```
  Sample sentence (implementation):
  ```ocaml
  exception false : ' lident . {%hello|world|} -> [ ` lident ] let false = UIdent
  ```
- Derivation (4 occurrences):
  ```
  generalized_constructor_arguments: COLON reversed_nonempty_llist(typevar) DOT constructor_arguments MINUSGREATER . atomic_type
    atomic_type: . HASH clty_longident
  ```
  Sample sentence (interface):
  ```ocaml
  exception false : ' lident . {%hello|world|} -> # lident
  ```
- Derivation (4 occurrences):
  ```
  generalized_constructor_arguments: COLON reversed_nonempty_llist(typevar) DOT constructor_arguments MINUSGREATER . atomic_type
    atomic_type: . atomic_type type_unboxed_longident
  ```
  Sample sentence (implementation):
  ```ocaml
  exception false : ' lident . {%hello|world|} -> {%hello|world|} lident# let false = UIdent
  ```
- Derivation (3 occurrences):
  ```
  generalized_constructor_arguments: COLON reversed_nonempty_llist(typevar) DOT constructor_arguments MINUSGREATER . atomic_type
    atomic_type: . LPAREN TYPE COLON jkind_annotation RPAREN
  ```
  Sample sentence (implementation):
  ```ocaml
  exception false : ' lident . {%hello|world|} -> ( type : lident ) let false = UIdent
  ```
- Derivation (3 occurrences):
  ```
  generalized_constructor_arguments: COLON reversed_nonempty_llist(typevar) DOT constructor_arguments MINUSGREATER . atomic_type
    atomic_type: . QUOTE ident
  ```
  Sample sentence (implementation):
  ```ocaml
  exception false : ' lident . {%hello|world|} -> ' lident let false = UIdent
  ```
- Derivation (3 occurrences):
  ```
  generalized_constructor_arguments: COLON reversed_nonempty_llist(typevar) DOT constructor_arguments MINUSGREATER . atomic_type
    atomic_type: . atomic_type type_unboxed_longident
      atomic_type: . atomic_type type_longident
  ```
  Sample sentence (implementation):
  ```ocaml
  exception false : ' lident . {%hello|world|} -> {%hello|world|} lident lident# let false = UIdent
  ```
- Derivation (2 occurrences):
  ```
  generalized_constructor_arguments: COLON reversed_nonempty_llist(typevar) DOT constructor_arguments MINUSGREATER . atomic_type
    atomic_type: . type_unboxed_longident
      type_unboxed_longident: . mk_longident(mod_ext_longident,type_trailing_hash)
        mk_longident(mod_ext_longident,type_trailing_hash): . type_trailing_hash
          type_trailing_hash: . LIDENT HASH_SUFFIX
  ```
  Sample sentence (implementation):
  ```ocaml
  exception false : ' lident . {%hello|world|} -> lident# let false = UIdent
  ```
- Derivation (2 occurrences):
  ```
  generalized_constructor_arguments: COLON reversed_nonempty_llist(typevar) DOT constructor_arguments MINUSGREATER . atomic_type
    atomic_type: . type_unboxed_longident
      type_unboxed_longident: . mk_longident(mod_ext_longident,type_trailing_hash)
        mk_longident(mod_ext_longident,type_trailing_hash): . mod_ext_longident DOT type_trailing_hash
          mod_ext_longident: . mk_longident(mod_ext_longident,UIDENT)
            mk_longident(mod_ext_longident,UIDENT): . UIDENT
  ```
  Sample sentence (implementation):
  ```ocaml
  exception false : ' lident . {%hello|world|} -> UIdent . lident# let false = UIdent
  ```
- Derivation (2 occurrences):
  ```
  generalized_constructor_arguments: COLON reversed_nonempty_llist(typevar) DOT constructor_arguments MINUSGREATER . atomic_type
    atomic_type: . delimited_type
      delimited_type: . extension_type
        extension_type: . extension
          extension: . LBRACKETPERCENT attr_id payload RBRACKET
  ```
  Sample sentence (implementation):
  ```ocaml
  exception false : ' lident . {%hello|world|} -> [% and ] let false = UIdent
  ```
- Derivation (2 occurrences):
  ```
  generalized_constructor_arguments: COLON reversed_nonempty_llist(typevar) DOT constructor_arguments MINUSGREATER . atomic_type
    atomic_type: . delimited_type
      delimited_type: . delimited_type_supporting_local_open
        delimited_type_supporting_local_open: . LBRACKET BAR reversed_separated_nonempty_llist(BAR,row_field) RBRACKET
  ```
  Sample sentence (implementation):
  ```ocaml
  exception false : ' lident . {%hello|world|} -> [ | ` lident ] let false = UIdent
  ```
- Derivation (2 occurrences):
  ```
  generalized_constructor_arguments: COLON reversed_nonempty_llist(typevar) DOT constructor_arguments MINUSGREATER . atomic_type
    atomic_type: . LPAREN UNDERSCORE COLON jkind_annotation RPAREN
  ```
  Sample sentence (implementation):
  ```ocaml
  exception false : ' lident . {%hello|world|} -> ( _ : lident ) let false = UIdent
  ```
- Derivation (1 occurrence):
  ```
  generalized_constructor_arguments: COLON reversed_nonempty_llist(typevar) DOT constructor_arguments MINUSGREATER . atomic_type
    atomic_type: . delimited_type
      delimited_type: . object_type
        object_type: . LESS GREATER
  ```
  Sample sentence (implementation):
  ```ocaml
  exception false : ' lident . {%hello|world|} -> < > let false = UIdent
  ```
- Derivation (1 occurrence):
  ```
  generalized_constructor_arguments: COLON reversed_nonempty_llist(typevar) DOT constructor_arguments MINUSGREATER . atomic_type
    atomic_type: . delimited_type
      delimited_type: . delimited_type_supporting_local_open
        delimited_type_supporting_local_open: . LBRACKETLESS option(BAR) reversed_separated_nonempty_llist(BAR,row_field) GREATER reversed_nonempty_llist(name_tag) RBRACKET
  ```
  Sample sentence (implementation):
  ```ocaml
  exception false : ' lident . {%hello|world|} -> [< ` lident > ` lident ] let false = UIdent
  ```
- Derivation (1 occurrence):
  ```
  generalized_constructor_arguments: COLON reversed_nonempty_llist(typevar) DOT constructor_arguments MINUSGREATER . atomic_type
    atomic_type: . delimited_type
      delimited_type: . delimited_type_supporting_local_open
        delimited_type_supporting_local_open: . LBRACKETLESS option(BAR) reversed_separated_nonempty_llist(BAR,row_field) RBRACKET
  ```
  Sample sentence (implementation):
  ```ocaml
  exception false : ' lident . {%hello|world|} -> [< ` lident ] let false = UIdent
  ```
- Derivation (1 occurrence):
  ```
  generalized_constructor_arguments: COLON reversed_nonempty_llist(typevar) DOT constructor_arguments MINUSGREATER . atomic_type
    atomic_type: . delimited_type
      delimited_type: . delimited_type_supporting_local_open
        delimited_type_supporting_local_open: . LBRACKETGREATER RBRACKET
  ```
  Sample sentence (implementation):
  ```ocaml
  exception false : ' lident . {%hello|world|} -> [> ] let false = UIdent
  ```
- Derivation (1 occurrence):
  ```
  generalized_constructor_arguments: COLON reversed_nonempty_llist(typevar) DOT constructor_arguments MINUSGREATER . atomic_type
    atomic_type: . delimited_type
      delimited_type: . delimited_type_supporting_local_open
        delimited_type_supporting_local_open: . LBRACKETGREATER option(BAR) reversed_separated_nonempty_llist(BAR,row_field) RBRACKET
  ```
  Sample sentence (implementation):
  ```ocaml
  exception false : ' lident . {%hello|world|} -> [> ` lident ] let false = UIdent
  ```
- Derivation (1 occurrence):
  ```
  generalized_constructor_arguments: COLON reversed_nonempty_llist(typevar) DOT constructor_arguments MINUSGREATER . atomic_type
    atomic_type: . UNDERSCORE
  ```
  Sample sentence (implementation):
  ```ocaml
  exception false : ' lident . {%hello|world|} -> _ let false = UIdent
  ```


### Item `label_declaration: mutable_or_global_flag LIDENT COLON possibly_poly(core_type_no_attr) . optional_atat_modalities_expr list(attribute)` (in 84 errors)

- Derivation (84 occurrences):
  ```
  label_declaration: mutable_or_global_flag LIDENT COLON possibly_poly(core_type_no_attr) . optional_atat_modalities_expr list(attribute)
  ```
  Sample sentence (interface):
  ```ocaml
  type lident := { lident : {%hello|world|} }
  ```


### Item `optlabel: . OPTLABEL` (in 80 errors)

- Derivation (2 occurrences):
  ```
  strict_function_or_labeled_tuple_type: tuple_type MINUSGREATER . strict_function_or_labeled_tuple_type
    strict_function_or_labeled_tuple_type: . optlabel nonempty_list(mode_legacy) tuple_type MINUSGREATER tuple_type
      optlabel: . OPTLABEL
  ```
  Sample sentence (implementation):
  ```ocaml
  kind_abbrev_ lident = kind_of_ {%hello|world|} -> ?label: local_ {%hello|world|} -> {%hello|world|} let false = UIdent
  ```
- Derivation (2 occurrences):
  ```
  strict_function_or_labeled_tuple_type: LPAREN reversed_nonempty_llist(typevar) DOT core_type RPAREN at_mode_expr MINUSGREATER . strict_function_or_labeled_tuple_type
    strict_function_or_labeled_tuple_type: . optlabel nonempty_list(mode_legacy) tuple_type MINUSGREATER tuple_type
      optlabel: . OPTLABEL
  ```
  Sample sentence (implementation):
  ```ocaml
  kind_abbrev_ lident = kind_of_ ( ' lident . {%hello|world|} ) @ lident -> ?label: local_ {%hello|world|} -> {%hello|world|} let false = UIdent
  ```
- Derivation (2 occurrences):
  ```
  strict_function_or_labeled_tuple_type: LPAREN reversed_nonempty_llist(typevar) DOT core_type RPAREN MINUSGREATER . strict_function_or_labeled_tuple_type
    strict_function_or_labeled_tuple_type: . optlabel nonempty_list(mode_legacy) tuple_type MINUSGREATER tuple_type
      optlabel: . OPTLABEL
  ```
  Sample sentence (implementation):
  ```ocaml
  kind_abbrev_ lident = kind_of_ ( ' lident . {%hello|world|} ) -> ?label: local_ {%hello|world|} -> {%hello|world|} let false = UIdent
  ```
- Derivation (2 occurrences):
  ```
  strict_function_or_labeled_tuple_type: LIDENT COLON nonempty_list(mode_legacy) tuple_type at_mode_expr MINUSGREATER . strict_function_or_labeled_tuple_type
    strict_function_or_labeled_tuple_type: . optlabel nonempty_list(mode_legacy) tuple_type MINUSGREATER tuple_type
      optlabel: . OPTLABEL
  ```
  Sample sentence (implementation):
  ```ocaml
  kind_abbrev_ lident = kind_of_ lident : local_ {%hello|world|} @ lident -> ?label: local_ {%hello|world|} -> {%hello|world|} let false = UIdent
  ```
- Derivation (2 occurrences):
  ```
  strict_function_or_labeled_tuple_type: LIDENT COLON nonempty_list(mode_legacy) tuple_type MINUSGREATER . strict_function_or_labeled_tuple_type
    strict_function_or_labeled_tuple_type: . optlabel nonempty_list(mode_legacy) tuple_type MINUSGREATER tuple_type
      optlabel: . OPTLABEL
  ```
  Sample sentence (implementation):
  ```ocaml
  kind_abbrev_ lident = kind_of_ lident : local_ {%hello|world|} -> ?label: local_ {%hello|world|} -> {%hello|world|} let false = UIdent
  ```
- Derivation (2 occurrences):
  ```
  strict_function_or_labeled_tuple_type: LIDENT COLON nonempty_list(mode_legacy) LPAREN reversed_nonempty_llist(typevar) DOT core_type RPAREN at_mode_expr MINUSGREATER . strict_function_or_labeled_tuple_type
    strict_function_or_labeled_tuple_type: . optlabel nonempty_list(mode_legacy) tuple_type MINUSGREATER tuple_type
      optlabel: . OPTLABEL
  ```
  Sample sentence (implementation):
  ```ocaml
  kind_abbrev_ lident = kind_of_ lident : local_ ( ' lident . {%hello|world|} ) @ lident -> ?label: local_ {%hello|world|} -> {%hello|world|} let false = UIdent
  ```
- Derivation (2 occurrences):
  ```
  strict_function_or_labeled_tuple_type: LIDENT COLON nonempty_list(mode_legacy) LPAREN reversed_nonempty_llist(typevar) DOT core_type RPAREN MINUSGREATER . strict_function_or_labeled_tuple_type
    strict_function_or_labeled_tuple_type: . optlabel nonempty_list(mode_legacy) tuple_type MINUSGREATER tuple_type
      optlabel: . OPTLABEL
  ```
  Sample sentence (implementation):
  ```ocaml
  kind_abbrev_ lident = kind_of_ lident : local_ ( ' lident . {%hello|world|} ) -> ?label: local_ {%hello|world|} -> {%hello|world|} let false = UIdent
  ```
- Derivation (2 occurrences):
  ```
  strict_function_or_labeled_tuple_type: LIDENT COLON tuple_type MINUSGREATER . strict_function_or_labeled_tuple_type
    strict_function_or_labeled_tuple_type: . optlabel nonempty_list(mode_legacy) tuple_type MINUSGREATER tuple_type
      optlabel: . OPTLABEL
  ```
  Sample sentence (implementation):
  ```ocaml
  kind_abbrev_ lident = kind_of_ lident : {%hello|world|} -> ?label: local_ {%hello|world|} -> {%hello|world|} let false = UIdent
  ```
- Derivation (2 occurrences):
  ```
  strict_function_or_labeled_tuple_type: LIDENT COLON LPAREN reversed_nonempty_llist(typevar) DOT core_type RPAREN at_mode_expr MINUSGREATER . strict_function_or_labeled_tuple_type
    strict_function_or_labeled_tuple_type: . optlabel nonempty_list(mode_legacy) tuple_type MINUSGREATER tuple_type
      optlabel: . OPTLABEL
  ```
  Sample sentence (implementation):
  ```ocaml
  kind_abbrev_ lident = kind_of_ lident : ( ' lident . {%hello|world|} ) @ lident -> ?label: local_ {%hello|world|} -> {%hello|world|} let false = UIdent
  ```
- Derivation (2 occurrences):
  ```
  strict_function_or_labeled_tuple_type: LIDENT COLON LPAREN reversed_nonempty_llist(typevar) DOT core_type RPAREN MINUSGREATER . strict_function_or_labeled_tuple_type
    strict_function_or_labeled_tuple_type: . optlabel nonempty_list(mode_legacy) tuple_type MINUSGREATER tuple_type
      optlabel: . OPTLABEL
  ```
  Sample sentence (implementation):
  ```ocaml
  kind_abbrev_ lident = kind_of_ lident : ( ' lident . {%hello|world|} ) -> ?label: local_ {%hello|world|} -> {%hello|world|} let false = UIdent
  ```
- Derivation (2 occurrences):
  ```
  strict_function_or_labeled_tuple_type: tuple_type MINUSGREATER . strict_function_or_labeled_tuple_type
    strict_function_or_labeled_tuple_type: . optlabel nonempty_list(mode_legacy) LPAREN reversed_nonempty_llist(typevar) DOT core_type RPAREN MINUSGREATER tuple_type
      optlabel: . OPTLABEL
  ```
  Sample sentence (implementation):
  ```ocaml
  kind_abbrev_ lident = kind_of_ {%hello|world|} -> ?label: local_ ( ' lident . {%hello|world|} ) -> {%hello|world|} let false = UIdent
  ```
- Derivation (2 occurrences):
  ```
  strict_function_or_labeled_tuple_type: LPAREN reversed_nonempty_llist(typevar) DOT core_type RPAREN at_mode_expr MINUSGREATER . strict_function_or_labeled_tuple_type
    strict_function_or_labeled_tuple_type: . optlabel nonempty_list(mode_legacy) LPAREN reversed_nonempty_llist(typevar) DOT core_type RPAREN MINUSGREATER tuple_type
      optlabel: . OPTLABEL
  ```
  Sample sentence (implementation):
  ```ocaml
  kind_abbrev_ lident = kind_of_ ( ' lident . {%hello|world|} ) @ lident -> ?label: local_ ( ' lident . {%hello|world|} ) -> {%hello|world|} let false = UIdent
  ```
- Derivation (2 occurrences):
  ```
  strict_function_or_labeled_tuple_type: LPAREN reversed_nonempty_llist(typevar) DOT core_type RPAREN MINUSGREATER . strict_function_or_labeled_tuple_type
    strict_function_or_labeled_tuple_type: . optlabel nonempty_list(mode_legacy) LPAREN reversed_nonempty_llist(typevar) DOT core_type RPAREN MINUSGREATER tuple_type
      optlabel: . OPTLABEL
  ```
  Sample sentence (implementation):
  ```ocaml
  kind_abbrev_ lident = kind_of_ ( ' lident . {%hello|world|} ) -> ?label: local_ ( ' lident . {%hello|world|} ) -> {%hello|world|} let false = UIdent
  ```
- Derivation (2 occurrences):
  ```
  strict_function_or_labeled_tuple_type: LIDENT COLON nonempty_list(mode_legacy) tuple_type at_mode_expr MINUSGREATER . strict_function_or_labeled_tuple_type
    strict_function_or_labeled_tuple_type: . optlabel nonempty_list(mode_legacy) LPAREN reversed_nonempty_llist(typevar) DOT core_type RPAREN MINUSGREATER tuple_type
      optlabel: . OPTLABEL
  ```
  Sample sentence (implementation):
  ```ocaml
  kind_abbrev_ lident = kind_of_ lident : local_ {%hello|world|} @ lident -> ?label: local_ ( ' lident . {%hello|world|} ) -> {%hello|world|} let false = UIdent
  ```
- Derivation (2 occurrences):
  ```
  strict_function_or_labeled_tuple_type: LIDENT COLON nonempty_list(mode_legacy) tuple_type MINUSGREATER . strict_function_or_labeled_tuple_type
    strict_function_or_labeled_tuple_type: . optlabel nonempty_list(mode_legacy) LPAREN reversed_nonempty_llist(typevar) DOT core_type RPAREN MINUSGREATER tuple_type
      optlabel: . OPTLABEL
  ```
  Sample sentence (implementation):
  ```ocaml
  kind_abbrev_ lident = kind_of_ lident : local_ {%hello|world|} -> ?label: local_ ( ' lident . {%hello|world|} ) -> {%hello|world|} let false = UIdent
  ```
- Derivation (2 occurrences):
  ```
  strict_function_or_labeled_tuple_type: LIDENT COLON nonempty_list(mode_legacy) LPAREN reversed_nonempty_llist(typevar) DOT core_type RPAREN at_mode_expr MINUSGREATER . strict_function_or_labeled_tuple_type
    strict_function_or_labeled_tuple_type: . optlabel nonempty_list(mode_legacy) LPAREN reversed_nonempty_llist(typevar) DOT core_type RPAREN MINUSGREATER tuple_type
      optlabel: . OPTLABEL
  ```
  Sample sentence (implementation):
  ```ocaml
  kind_abbrev_ lident = kind_of_ lident : local_ ( ' lident . {%hello|world|} ) @ lident -> ?label: local_ ( ' lident . {%hello|world|} ) -> {%hello|world|} let false = UIdent
  ```
- Derivation (2 occurrences):
  ```
  strict_function_or_labeled_tuple_type: LIDENT COLON nonempty_list(mode_legacy) LPAREN reversed_nonempty_llist(typevar) DOT core_type RPAREN MINUSGREATER . strict_function_or_labeled_tuple_type
    strict_function_or_labeled_tuple_type: . optlabel nonempty_list(mode_legacy) LPAREN reversed_nonempty_llist(typevar) DOT core_type RPAREN MINUSGREATER tuple_type
      optlabel: . OPTLABEL
  ```
  Sample sentence (implementation):
  ```ocaml
  kind_abbrev_ lident = kind_of_ lident : local_ ( ' lident . {%hello|world|} ) -> ?label: local_ ( ' lident . {%hello|world|} ) -> {%hello|world|} let false = UIdent
  ```
- Derivation (2 occurrences):
  ```
  strict_function_or_labeled_tuple_type: LIDENT COLON tuple_type MINUSGREATER . strict_function_or_labeled_tuple_type
    strict_function_or_labeled_tuple_type: . optlabel nonempty_list(mode_legacy) LPAREN reversed_nonempty_llist(typevar) DOT core_type RPAREN MINUSGREATER tuple_type
      optlabel: . OPTLABEL
  ```
  Sample sentence (implementation):
  ```ocaml
  kind_abbrev_ lident = kind_of_ lident : {%hello|world|} -> ?label: local_ ( ' lident . {%hello|world|} ) -> {%hello|world|} let false = UIdent
  ```
- Derivation (2 occurrences):
  ```
  strict_function_or_labeled_tuple_type: LIDENT COLON LPAREN reversed_nonempty_llist(typevar) DOT core_type RPAREN at_mode_expr MINUSGREATER . strict_function_or_labeled_tuple_type
    strict_function_or_labeled_tuple_type: . optlabel nonempty_list(mode_legacy) LPAREN reversed_nonempty_llist(typevar) DOT core_type RPAREN MINUSGREATER tuple_type
      optlabel: . OPTLABEL
  ```
  Sample sentence (implementation):
  ```ocaml
  kind_abbrev_ lident = kind_of_ lident : ( ' lident . {%hello|world|} ) @ lident -> ?label: local_ ( ' lident . {%hello|world|} ) -> {%hello|world|} let false = UIdent
  ```
- Derivation (2 occurrences):
  ```
  strict_function_or_labeled_tuple_type: LIDENT COLON LPAREN reversed_nonempty_llist(typevar) DOT core_type RPAREN MINUSGREATER . strict_function_or_labeled_tuple_type
    strict_function_or_labeled_tuple_type: . optlabel nonempty_list(mode_legacy) LPAREN reversed_nonempty_llist(typevar) DOT core_type RPAREN MINUSGREATER tuple_type
      optlabel: . OPTLABEL
  ```
  Sample sentence (implementation):
  ```ocaml
  kind_abbrev_ lident = kind_of_ lident : ( ' lident . {%hello|world|} ) -> ?label: local_ ( ' lident . {%hello|world|} ) -> {%hello|world|} let false = UIdent
  ```
- Derivation (2 occurrences):
  ```
  strict_function_or_labeled_tuple_type: tuple_type MINUSGREATER . strict_function_or_labeled_tuple_type
    strict_function_or_labeled_tuple_type: . optlabel tuple_type MINUSGREATER tuple_type
      optlabel: . OPTLABEL
  ```
  Sample sentence (implementation):
  ```ocaml
  kind_abbrev_ lident = kind_of_ {%hello|world|} -> ?label: {%hello|world|} -> {%hello|world|} let false = UIdent
  ```
- ...


### Item `fun_: FUN ext list(attribute) . fun_params optional_atomic_constraint_ MINUSGREATER fun_body` (in 76 errors)

- Derivation (74 occurrences):
  ```
  fun_: FUN ext list(attribute) . fun_params optional_atomic_constraint_ MINUSGREATER fun_body
  ```
  Sample sentence (implementation):
  ```ocaml
  fun false : {%hello|world|} -> UIdent let false = UIdent
  ```
- Derivation (2 occurrences):
  ```
  fun_: FUN ext list(attribute) . fun_params optional_atomic_constraint_ MINUSGREATER fun_body
    fun_params: . reversed_nonempty_concat(fun_param_as_list)
      reversed_nonempty_concat(fun_param_as_list): . fun_param_as_list
  ```
  Sample sentence (implementation):
  ```ocaml
  [ fun ( type lident ) : {%hello|world|} -> UIdent for false in UIdent ] let false = UIdent
  ```


### Item `tuple_type: . atomic_type STAR reversed_separated_nonempty_llist(STAR,labeled_tuple_typ_element)` (in 58 errors)

- Derivation (3 occurrences):
  ```
  strict_function_or_labeled_tuple_type: tuple_type MINUSGREATER . tuple_type
    tuple_type: . atomic_type STAR reversed_separated_nonempty_llist(STAR,labeled_tuple_typ_element)
  ```
  Sample sentence (implementation):
  ```ocaml
  kind_abbrev_ lident = kind_of_ {%hello|world|} -> {%hello|world|} * {%hello|world|} let false = UIdent
  ```
- Derivation (3 occurrences):
  ```
  strict_function_or_labeled_tuple_type: LPAREN reversed_nonempty_llist(typevar) DOT core_type RPAREN at_mode_expr MINUSGREATER . tuple_type
    tuple_type: . atomic_type STAR reversed_separated_nonempty_llist(STAR,labeled_tuple_typ_element)
  ```
  Sample sentence (implementation):
  ```ocaml
  kind_abbrev_ lident = kind_of_ ( ' lident . {%hello|world|} ) @ lident -> {%hello|world|} * {%hello|world|} let false = UIdent
  ```
- Derivation (3 occurrences):
  ```
  strict_function_or_labeled_tuple_type: LIDENT COLON nonempty_list(mode_legacy) tuple_type at_mode_expr MINUSGREATER . tuple_type
    tuple_type: . atomic_type STAR reversed_separated_nonempty_llist(STAR,labeled_tuple_typ_element)
  ```
  Sample sentence (implementation):
  ```ocaml
  kind_abbrev_ lident = kind_of_ lident : local_ {%hello|world|} @ lident -> {%hello|world|} * {%hello|world|} let false = UIdent
  ```
- Derivation (3 occurrences):
  ```
  strict_function_or_labeled_tuple_type: LIDENT COLON nonempty_list(mode_legacy) tuple_type MINUSGREATER . tuple_type
    tuple_type: . atomic_type STAR reversed_separated_nonempty_llist(STAR,labeled_tuple_typ_element)
  ```
  Sample sentence (implementation):
  ```ocaml
  kind_abbrev_ lident = kind_of_ lident : local_ {%hello|world|} -> {%hello|world|} * {%hello|world|} let false = UIdent
  ```
- Derivation (3 occurrences):
  ```
  strict_function_or_labeled_tuple_type: LIDENT COLON nonempty_list(mode_legacy) LPAREN reversed_nonempty_llist(typevar) DOT core_type RPAREN at_mode_expr MINUSGREATER . tuple_type
    tuple_type: . atomic_type STAR reversed_separated_nonempty_llist(STAR,labeled_tuple_typ_element)
  ```
  Sample sentence (implementation):
  ```ocaml
  kind_abbrev_ lident = kind_of_ lident : local_ ( ' lident . {%hello|world|} ) @ lident -> {%hello|world|} * {%hello|world|} let false = UIdent
  ```
- Derivation (3 occurrences):
  ```
  strict_function_or_labeled_tuple_type: LIDENT COLON tuple_type MINUSGREATER . tuple_type
    tuple_type: . atomic_type STAR reversed_separated_nonempty_llist(STAR,labeled_tuple_typ_element)
  ```
  Sample sentence (implementation):
  ```ocaml
  kind_abbrev_ lident = kind_of_ lident : {%hello|world|} -> {%hello|world|} * {%hello|world|} let false = UIdent
  ```
- Derivation (3 occurrences):
  ```
  strict_function_or_labeled_tuple_type: LIDENT COLON LPAREN reversed_nonempty_llist(typevar) DOT core_type RPAREN at_mode_expr MINUSGREATER . tuple_type
    tuple_type: . atomic_type STAR reversed_separated_nonempty_llist(STAR,labeled_tuple_typ_element)
  ```
  Sample sentence (implementation):
  ```ocaml
  kind_abbrev_ lident = kind_of_ lident : ( ' lident . {%hello|world|} ) @ lident -> {%hello|world|} * {%hello|world|} let false = UIdent
  ```
- Derivation (2 occurrences):
  ```
  let_binding_body_no_punning: simple_pattern_not_ident COLON . tuple_type at_mode_expr EQUAL seq_expr
    tuple_type: . atomic_type STAR reversed_separated_nonempty_llist(STAR,labeled_tuple_typ_element)
  ```
  Sample sentence (implementation):
  ```ocaml
  include struct let false : {%hello|world|} lident * {%hello|world|} @ lident = UIdent end let false = UIdent
  ```
- Derivation (2 occurrences):
  ```
  let_binding_body_no_punning: LPAREN val_ident at_mode_expr RPAREN COLON TYPE newtypes DOT . tuple_type at_mode_expr EQUAL seq_expr
    tuple_type: . atomic_type STAR reversed_separated_nonempty_llist(STAR,labeled_tuple_typ_element)
  ```
  Sample sentence (implementation):
  ```ocaml
  include struct let ( lident @ lident ) : type lident . {%hello|world|} lident * {%hello|world|} @ lident = UIdent end let false = UIdent
  ```
- Derivation (2 occurrences):
  ```
  let_binding_body_no_punning: nonempty_list(mode_legacy) val_ident COLON TYPE newtypes DOT . tuple_type at_mode_expr EQUAL seq_expr
    tuple_type: . atomic_type STAR reversed_separated_nonempty_llist(STAR,labeled_tuple_typ_element)
  ```
  Sample sentence (implementation):
  ```ocaml
  include struct let local_ lident : type lident . {%hello|world|} lident * {%hello|world|} @ lident = UIdent end let false = UIdent
  ```
- Derivation (2 occurrences):
  ```
  let_binding_body_no_punning: val_ident COLON TYPE newtypes DOT . tuple_type at_mode_expr EQUAL seq_expr
    tuple_type: . atomic_type STAR reversed_separated_nonempty_llist(STAR,labeled_tuple_typ_element)
  ```
  Sample sentence (implementation):
  ```ocaml
  include struct let lident : type lident . {%hello|world|} lident * {%hello|world|} @ lident = UIdent end let false = UIdent
  ```
- Derivation (2 occurrences):
  ```
  let_binding_body_no_punning: LPAREN val_ident at_mode_expr RPAREN COLON reversed_nonempty_llist(typevar) DOT . tuple_type at_mode_expr EQUAL seq_expr
    tuple_type: . atomic_type STAR reversed_separated_nonempty_llist(STAR,labeled_tuple_typ_element)
  ```
  Sample sentence (implementation):
  ```ocaml
  include struct let ( lident @ lident ) : ' lident . {%hello|world|} lident * {%hello|world|} @ lident = UIdent end let false = UIdent
  ```
- Derivation (2 occurrences):
  ```
  let_binding_body_no_punning: nonempty_list(mode_legacy) val_ident COLON reversed_nonempty_llist(typevar) DOT . tuple_type at_mode_expr EQUAL seq_expr
    tuple_type: . atomic_type STAR reversed_separated_nonempty_llist(STAR,labeled_tuple_typ_element)
  ```
  Sample sentence (implementation):
  ```ocaml
  include struct let local_ lident : ' lident . {%hello|world|} lident * {%hello|world|} @ lident = UIdent end let false = UIdent
  ```
- Derivation (2 occurrences):
  ```
  let_binding_body_no_punning: val_ident COLON reversed_nonempty_llist(typevar) DOT . tuple_type at_mode_expr EQUAL seq_expr
    tuple_type: . atomic_type STAR reversed_separated_nonempty_llist(STAR,labeled_tuple_typ_element)
  ```
  Sample sentence (implementation):
  ```ocaml
  include struct let lident : ' lident . {%hello|world|} lident * {%hello|world|} @ lident = UIdent end let false = UIdent
  ```
- Derivation (2 occurrences):
  ```
  let_binding_body_no_punning: LPAREN val_ident at_mode_expr RPAREN COLONGREATER . tuple_type at_mode_expr EQUAL seq_expr
    tuple_type: . atomic_type STAR reversed_separated_nonempty_llist(STAR,labeled_tuple_typ_element)
  ```
  Sample sentence (implementation):
  ```ocaml
  include struct let ( lident @ lident ) :> {%hello|world|} lident * {%hello|world|} @ lident = UIdent end let false = UIdent
  ```
- Derivation (2 occurrences):
  ```
  let_binding_body_no_punning: LPAREN val_ident at_mode_expr RPAREN COLON . tuple_type at_mode_expr EQUAL seq_expr
    tuple_type: . atomic_type STAR reversed_separated_nonempty_llist(STAR,labeled_tuple_typ_element)
  ```
  Sample sentence (implementation):
  ```ocaml
  include struct let ( lident @ lident ) : {%hello|world|} lident * {%hello|world|} @ lident = UIdent end let false = UIdent
  ```
- Derivation (2 occurrences):
  ```
  let_binding_body_no_punning: nonempty_list(mode_legacy) val_ident COLONGREATER . tuple_type at_mode_expr EQUAL seq_expr
    tuple_type: . atomic_type STAR reversed_separated_nonempty_llist(STAR,labeled_tuple_typ_element)
  ```
  Sample sentence (implementation):
  ```ocaml
  include struct let local_ lident :> {%hello|world|} lident * {%hello|world|} @ lident = UIdent end let false = UIdent
  ```
- Derivation (2 occurrences):
  ```
  let_binding_body_no_punning: nonempty_list(mode_legacy) val_ident COLON . tuple_type at_mode_expr EQUAL seq_expr
    tuple_type: . atomic_type STAR reversed_separated_nonempty_llist(STAR,labeled_tuple_typ_element)
  ```
  Sample sentence (implementation):
  ```ocaml
  include struct let local_ lident : {%hello|world|} lident * {%hello|world|} @ lident = UIdent end let false = UIdent
  ```
- Derivation (2 occurrences):
  ```
  let_binding_body_no_punning: val_ident COLONGREATER . tuple_type at_mode_expr EQUAL seq_expr
    tuple_type: . atomic_type STAR reversed_separated_nonempty_llist(STAR,labeled_tuple_typ_element)
  ```
  Sample sentence (implementation):
  ```ocaml
  include struct let lident :> {%hello|world|} lident * {%hello|world|} @ lident = UIdent end let false = UIdent
  ```
- Derivation (2 occurrences):
  ```
  let_binding_body_no_punning: val_ident COLON . tuple_type at_mode_expr EQUAL seq_expr
    tuple_type: . atomic_type STAR reversed_separated_nonempty_llist(STAR,labeled_tuple_typ_element)
  ```
  Sample sentence (implementation):
  ```ocaml
  include struct let lident : {%hello|world|} lident * {%hello|world|} @ lident = UIdent end let false = UIdent
  ```
- Derivation (1 occurrence):
  ```
  strict_function_or_labeled_tuple_type: optlabel nonempty_list(mode_legacy) . tuple_type at_mode_expr MINUSGREATER tuple_type
    tuple_type: . atomic_type STAR reversed_separated_nonempty_llist(STAR,labeled_tuple_typ_element)
  ```
  Sample sentence (implementation):
  ```ocaml
  val lident : ?label: local_ {%hello|world|} lident * {%hello|world|} @ lident -> {%hello|world|} let false = UIdent
  ```
- ...


### Item `reversed_labeled_tuple_body: . reversed_labeled_tuple_body COMMA TILDE LPAREN LIDENT type_constraint RPAREN` (in 52 errors)

- Derivation (10 occurrences):
  ```
  simple_expr: HASHLPAREN . reversed_labeled_tuple_body RPAREN
    reversed_labeled_tuple_body: . reversed_labeled_tuple_body COMMA TILDE LPAREN LIDENT type_constraint RPAREN
  ```
  Sample sentence (implementation):
  ```ocaml
  #( ~ lident , UIdent , ~ ( lident :> {%hello|world|} ) ) let false = UIdent
  ```
- Derivation (5 occurrences):
  ```
  option(preceded(EQUAL,expr)): EQUAL . fun_expr
    fun_expr: . reversed_labeled_tuple_body
      reversed_labeled_tuple_body: . reversed_labeled_tuple_body COMMA TILDE LPAREN LIDENT type_constraint RPAREN
  ```
  Sample sentence (implementation):
  ```ocaml
  #{ lident = ~ lident , UIdent , ~ ( lident :> {%hello|world|} ) } let false = UIdent
  ```
- Derivation (5 occurrences):
  ```
  comprehension_iterator: IN . fun_expr
    fun_expr: . reversed_labeled_tuple_body
      reversed_labeled_tuple_body: . reversed_labeled_tuple_body COMMA TILDE LPAREN LIDENT type_constraint RPAREN
  ```
  Sample sentence (implementation):
  ```ocaml
  [: UIdent for false in ~ lident , UIdent , ~ ( lident :> {%hello|world|} ) :] let false = UIdent
  ```
- Derivation (5 occurrences):
  ```
  comprehension_iterator: EQUAL STACK FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case) direction_flag . fun_expr
    fun_expr: . reversed_labeled_tuple_body
      reversed_labeled_tuple_body: . reversed_labeled_tuple_body COMMA TILDE LPAREN LIDENT type_constraint RPAREN
  ```
  Sample sentence (implementation):
  ```ocaml
  [: UIdent for false = stack_ function false -> UIdent downto ~ lident , UIdent , ~ ( lident :> {%hello|world|} ) :] let false = UIdent
  ```
- Derivation (5 occurrences):
  ```
  comprehension_iterator: EQUAL FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case) direction_flag . fun_expr
    fun_expr: . reversed_labeled_tuple_body
      reversed_labeled_tuple_body: . reversed_labeled_tuple_body COMMA TILDE LPAREN LIDENT type_constraint RPAREN
  ```
  Sample sentence (implementation):
  ```ocaml
  [: UIdent for false = function false -> UIdent downto ~ lident , UIdent , ~ ( lident :> {%hello|world|} ) :] let false = UIdent
  ```
- Derivation (5 occurrences):
  ```
  comprehension_iterator: EQUAL fun_expr direction_flag . fun_expr
    fun_expr: . reversed_labeled_tuple_body
      reversed_labeled_tuple_body: . reversed_labeled_tuple_body COMMA TILDE LPAREN LIDENT type_constraint RPAREN
  ```
  Sample sentence (implementation):
  ```ocaml
  [: UIdent for false = UIdent downto ~ lident , UIdent , ~ ( lident :> {%hello|world|} ) :] let false = UIdent
  ```
- Derivation (5 occurrences):
  ```
  comprehension_iterator: EQUAL . fun_expr direction_flag fun_expr
    fun_expr: . reversed_labeled_tuple_body
      reversed_labeled_tuple_body: . reversed_labeled_tuple_body COMMA TILDE LPAREN LIDENT type_constraint RPAREN
  ```
  Sample sentence (implementation):
  ```ocaml
  [: UIdent for false = ~ lident , UIdent , ~ ( lident :> {%hello|world|} ) downto UIdent :] let false = UIdent
  ```
- Derivation (5 occurrences):
  ```
  comprehension_clause_binding: list(attribute) LOCAL pattern IN . fun_expr
    fun_expr: . reversed_labeled_tuple_body
      reversed_labeled_tuple_body: . reversed_labeled_tuple_body COMMA TILDE LPAREN LIDENT type_constraint RPAREN
  ```
  Sample sentence (implementation):
  ```ocaml
  [: UIdent for local_ false in ~ lident , UIdent , ~ ( lident :> {%hello|world|} ) :] let false = UIdent
  ```
- Derivation (5 occurrences):
  ```
  comprehension_clause: WHEN . fun_expr
    fun_expr: . reversed_labeled_tuple_body
      reversed_labeled_tuple_body: . reversed_labeled_tuple_body COMMA TILDE LPAREN LIDENT type_constraint RPAREN
  ```
  Sample sentence (implementation):
  ```ocaml
  [: UIdent when ~ lident , UIdent , ~ ( lident :> {%hello|world|} ) :] let false = UIdent
  ```
- Derivation (1 occurrence):
  ```
  fun_expr: fun_expr OR . fun_expr
    fun_expr: . reversed_labeled_tuple_body
      reversed_labeled_tuple_body: . reversed_labeled_tuple_body COMMA TILDE LPAREN LIDENT type_constraint RPAREN
  ```
  Sample sentence (implementation):
  ```ocaml
  UIdent or ~ lident , UIdent , ~ ( lident :> {%hello|world|} ) [@@ and ] let false = UIdent
  ```
- Derivation (1 occurrence):
  ```
  fun_expr: fun_expr MOD . fun_expr
    fun_expr: . reversed_labeled_tuple_body
      reversed_labeled_tuple_body: . reversed_labeled_tuple_body COMMA TILDE LPAREN LIDENT type_constraint RPAREN
  ```
  Sample sentence (implementation):
  ```ocaml
  UIdent mod ~ lident , UIdent , ~ ( lident :> {%hello|world|} ) [@@ and ] let false = UIdent
  ```


### Item `possibly_poly(core_type): . reversed_nonempty_llist(typevar) DOT core_type` (in 45 errors)

- Derivation (9 occurrences):
  ```
  primitive_declaration: EXTERNAL ext list(attribute) val_ident COLON . possibly_poly(core_type) optional_atat_modalities_expr EQUAL nonempty_list(raw_string) list(post_item_attribute)
    possibly_poly(core_type): . reversed_nonempty_llist(typevar) DOT core_type
      reversed_nonempty_llist(typevar): . QUOTE ident
  ```
  Sample sentence (implementation):
  ```ocaml
  external lident : ' lident . {%hello|world|} = "hello" let false = UIdent
  ```
- Derivation (6 occurrences):
  ```
  value_description: VAL ext list(attribute) val_ident COLON . possibly_poly(core_type) optional_atat_modalities_expr list(post_item_attribute)
    possibly_poly(core_type): . reversed_nonempty_llist(typevar) DOT core_type
  ```
  Sample sentence (implementation):
  ```ocaml
  include struct val lident : ' lident ' lident . {%hello|world|} end let false = UIdent
  ```
- Derivation (4 occurrences):
  ```
  primitive_declaration: EXTERNAL ext list(attribute) val_ident COLON . possibly_poly(core_type) optional_atat_modalities_expr EQUAL nonempty_list(raw_string) list(post_item_attribute)
    possibly_poly(core_type): . reversed_nonempty_llist(typevar) DOT core_type
      reversed_nonempty_llist(typevar): . reversed_nonempty_llist(typevar) LPAREN QUOTE ident COLON jkind_annotation RPAREN
        reversed_nonempty_llist(typevar): . QUOTE ident
  ```
  Sample sentence (implementation):
  ```ocaml
  external lident : ' lident ( ' lident : lident ) . {%hello|world|} @@ lident = "hello" let false = UIdent
  ```
- Derivation (4 occurrences):
  ```
  primitive_declaration: EXTERNAL ext list(attribute) val_ident COLON . possibly_poly(core_type) optional_atat_modalities_expr EQUAL nonempty_list(raw_string) list(post_item_attribute)
    possibly_poly(core_type): . reversed_nonempty_llist(typevar) DOT core_type
      reversed_nonempty_llist(typevar): . reversed_nonempty_llist(typevar) QUOTE ident
        reversed_nonempty_llist(typevar): . QUOTE ident
  ```
  Sample sentence (implementation):
  ```ocaml
  external lident : ' lident ' lident . {%hello|world|} @@ lident = "hello" let false = UIdent
  ```
- Derivation (4 occurrences):
  ```
  primitive_declaration: EXTERNAL ext list(attribute) val_ident COLON . possibly_poly(core_type) optional_atat_modalities_expr EQUAL nonempty_list(raw_string) list(post_item_attribute)
    possibly_poly(core_type): . reversed_nonempty_llist(typevar) DOT core_type
  ```
  Sample sentence (implementation):
  ```ocaml
  external lident : ( ' lident : lident ) . {%hello|world|} @@ lident = "hello" let false = UIdent
  ```
- Derivation (3 occurrences):
  ```
  method_: BANG list(attribute) private_flag LIDENT . COLON possibly_poly(core_type) EQUAL seq_expr
    possibly_poly(core_type): . reversed_nonempty_llist(typevar) DOT core_type
      reversed_nonempty_llist(typevar): . QUOTE ident
  ```
  Sample sentence (implementation):
  ```ocaml
  object method ! lident : ' lident . {%hello|world|} = UIdent inherit lident end let false = UIdent
  ```
- Derivation (3 occurrences):
  ```
  method_: list(attribute) private_flag LIDENT . COLON possibly_poly(core_type) EQUAL seq_expr
    possibly_poly(core_type): . reversed_nonempty_llist(typevar) DOT core_type
      reversed_nonempty_llist(typevar): . QUOTE ident
  ```
  Sample sentence (implementation):
  ```ocaml
  object method lident : ' lident . {%hello|world|} = UIdent inherit lident end let false = UIdent
  ```
- Derivation (2 occurrences):
  ```
  method_: BANG list(attribute) private_flag LIDENT . COLON possibly_poly(core_type) EQUAL seq_expr
    possibly_poly(core_type): . reversed_nonempty_llist(typevar) DOT core_type
      reversed_nonempty_llist(typevar): . reversed_nonempty_llist(typevar) LPAREN QUOTE ident COLON jkind_annotation RPAREN
        reversed_nonempty_llist(typevar): . QUOTE ident
  ```
  Sample sentence (implementation):
  ```ocaml
  object method ! lident : ' lident ( ' lident : lident ) . {%hello|world|} = UIdent inherit lident end let false = UIdent
  ```
- Derivation (2 occurrences):
  ```
  method_: list(attribute) private_flag LIDENT . COLON possibly_poly(core_type) EQUAL seq_expr
    possibly_poly(core_type): . reversed_nonempty_llist(typevar) DOT core_type
      reversed_nonempty_llist(typevar): . reversed_nonempty_llist(typevar) LPAREN QUOTE ident COLON jkind_annotation RPAREN
        reversed_nonempty_llist(typevar): . QUOTE ident
  ```
  Sample sentence (implementation):
  ```ocaml
  object method lident : ' lident ( ' lident : lident ) . {%hello|world|} = UIdent inherit lident end let false = UIdent
  ```
- Derivation (2 occurrences):
  ```
  method_: BANG list(attribute) private_flag LIDENT . COLON possibly_poly(core_type) EQUAL seq_expr
    possibly_poly(core_type): . reversed_nonempty_llist(typevar) DOT core_type
      reversed_nonempty_llist(typevar): . reversed_nonempty_llist(typevar) QUOTE ident
        reversed_nonempty_llist(typevar): . QUOTE ident
  ```
  Sample sentence (implementation):
  ```ocaml
  object method ! lident : ' lident ' lident . {%hello|world|} = UIdent inherit lident end let false = UIdent
  ```
- Derivation (2 occurrences):
  ```
  method_: list(attribute) private_flag LIDENT . COLON possibly_poly(core_type) EQUAL seq_expr
    possibly_poly(core_type): . reversed_nonempty_llist(typevar) DOT core_type
      reversed_nonempty_llist(typevar): . reversed_nonempty_llist(typevar) QUOTE ident
        reversed_nonempty_llist(typevar): . QUOTE ident
  ```
  Sample sentence (implementation):
  ```ocaml
  object method lident : ' lident ' lident . {%hello|world|} = UIdent inherit lident end let false = UIdent
  ```
- Derivation (2 occurrences):
  ```
  method_: BANG list(attribute) private_flag LIDENT . COLON possibly_poly(core_type) EQUAL seq_expr
    possibly_poly(core_type): . reversed_nonempty_llist(typevar) DOT core_type
  ```
  Sample sentence (implementation):
  ```ocaml
  object method ! lident : ( ' lident : lident ) . {%hello|world|} = UIdent inherit lident end let false = UIdent
  ```
- Derivation (2 occurrences):
  ```
  method_: list(attribute) private_flag LIDENT . COLON possibly_poly(core_type) EQUAL seq_expr
    possibly_poly(core_type): . reversed_nonempty_llist(typevar) DOT core_type
  ```
  Sample sentence (implementation):
  ```ocaml
  object method lident : ( ' lident : lident ) . {%hello|world|} = UIdent inherit lident end let false = UIdent
  ```


### Item `list(structure_element): . structure_item list(structure_element)` (in 44 errors)

- Derivation (4 occurrences):
  ```
  implementation: . structure EOF
    structure: . list(structure_element)
      list(structure_element): . structure_item list(structure_element)
        structure_item: . item_extension list(post_item_attribute)
          item_extension: . QUOTED_STRING_ITEM
  ```
  Sample sentence (implementation):
  ```ocaml
  {%%hello|world|}
  ```
- Derivation (2 occurrences):
  ```
  structure: seq_expr list(post_item_attribute) . list(structure_element)
    list(structure_element): . structure_item list(structure_element)
      structure_item: . value_description
  ```
  Sample sentence (implementation):
  ```ocaml
  UIdent val lident : {%hello|world|}
  ```
- Derivation (2 occurrences):
  ```
  item_extension: LBRACKETPERCENTPERCENT attr_id . payload RBRACKET
    payload: . structure
      structure: . list(structure_element)
        list(structure_element): . structure_item list(structure_element)
          structure_item: . value_description
  ```
  Sample sentence (implementation):
  ```ocaml
  [%% and val lident : {%hello|world|} ] let false = UIdent
  ```
- Derivation (2 occurrences):
  ```
  extension: LBRACKETPERCENT attr_id . payload RBRACKET
    payload: . structure
      structure: . list(structure_element)
        list(structure_element): . structure_item list(structure_element)
          structure_item: . value_description
  ```
  Sample sentence (implementation):
  ```ocaml
  include [% and val lident : {%hello|world|} ] let false = UIdent
  ```
- Derivation (2 occurrences):
  ```
  post_item_attribute: LBRACKETATAT attr_id . attr_payload RBRACKET
    attr_payload: . payload
      payload: . structure
        structure: . list(structure_element)
          list(structure_element): . structure_item list(structure_element)
            structure_item: . value_description
  ```
  Sample sentence (implementation):
  ```ocaml
  UIdent [@@ and val lident : {%hello|world|} ]
  ```
- Derivation (2 occurrences):
  ```
  floating_attribute: LBRACKETATATAT attr_id . attr_payload RBRACKET
    attr_payload: . payload
      payload: . structure
        structure: . list(structure_element)
          list(structure_element): . structure_item list(structure_element)
            structure_item: . value_description
  ```
  Sample sentence (implementation):
  ```ocaml
  [@@@ and val lident : {%hello|world|} ] let false = UIdent
  ```
- Derivation (2 occurrences):
  ```
  attribute: LBRACKETAT attr_id . attr_payload RBRACKET
    attr_payload: . payload
      payload: . structure
        structure: . list(structure_element)
          list(structure_element): . structure_item list(structure_element)
            structure_item: . value_description
  ```
  Sample sentence (implementation):
  ```ocaml
  UIdent [@ and val lident : {%hello|world|} ] let false = UIdent
  ```
- Derivation (2 occurrences):
  ```
  list(structure_element): structure_item . list(structure_element)
    list(structure_element): . structure_item list(structure_element)
      structure_item: . value_description
  ```
  Sample sentence (implementation):
  ```ocaml
  {%%hello|world|} val lident : {%hello|world|}
  ```
- Derivation (2 occurrences):
  ```
  list(structure_element): SEMISEMI seq_expr list(post_item_attribute) . list(structure_element)
    list(structure_element): . structure_item list(structure_element)
      structure_item: . value_description
  ```
  Sample sentence (implementation):
  ```ocaml
  ;; UIdent val lident : {%hello|world|}
  ```
- Derivation (2 occurrences):
  ```
  list(structure_element): SEMISEMI . list(structure_element)
    list(structure_element): . structure_item list(structure_element)
      structure_item: . value_description
  ```
  Sample sentence (implementation):
  ```ocaml
  ;; val lident : {%hello|world|}
  ```
- Derivation (2 occurrences):
  ```
  structure: seq_expr list(post_item_attribute) . list(structure_element)
    list(structure_element): . structure_item list(structure_element)
      structure_item: . primitive_declaration
        primitive_declaration: . EXTERNAL ext list(attribute) val_ident COLON possibly_poly(core_type) optional_atat_modalities_expr EQUAL nonempty_list(raw_string) list(post_item_attribute)
  ```
  Sample sentence (implementation):
  ```ocaml
  UIdent external lident : {%hello|world|} = "hello" let false = UIdent
  ```
- Derivation (2 occurrences):
  ```
  item_extension: LBRACKETPERCENTPERCENT attr_id . payload RBRACKET
    payload: . structure
      structure: . list(structure_element)
        list(structure_element): . structure_item list(structure_element)
          structure_item: . primitive_declaration
            primitive_declaration: . EXTERNAL ext list(attribute) val_ident COLON possibly_poly(core_type) optional_atat_modalities_expr EQUAL nonempty_list(raw_string) list(post_item_attribute)
  ```
  Sample sentence (implementation):
  ```ocaml
  [%% and external lident : {%hello|world|} = "hello" let false = UIdent ] let false = UIdent
  ```
- Derivation (2 occurrences):
  ```
  extension: LBRACKETPERCENT attr_id . payload RBRACKET
    payload: . structure
      structure: . list(structure_element)
        list(structure_element): . structure_item list(structure_element)
          structure_item: . primitive_declaration
            primitive_declaration: . EXTERNAL ext list(attribute) val_ident COLON possibly_poly(core_type) optional_atat_modalities_expr EQUAL nonempty_list(raw_string) list(post_item_attribute)
  ```
  Sample sentence (implementation):
  ```ocaml
  include [% and external lident : {%hello|world|} = "hello" let false = UIdent ] let false = UIdent
  ```
- Derivation (2 occurrences):
  ```
  post_item_attribute: LBRACKETATAT attr_id . attr_payload RBRACKET
    attr_payload: . payload
      payload: . structure
        structure: . list(structure_element)
          list(structure_element): . structure_item list(structure_element)
            structure_item: . primitive_declaration
              primitive_declaration: . EXTERNAL ext list(attribute) val_ident COLON possibly_poly(core_type) optional_atat_modalities_expr EQUAL nonempty_list(raw_string) list(post_item_attribute)
  ```
  Sample sentence (implementation):
  ```ocaml
  UIdent [@@ and external lident : {%hello|world|} = "hello" let false = UIdent ]
  ```
- Derivation (2 occurrences):
  ```
  floating_attribute: LBRACKETATATAT attr_id . attr_payload RBRACKET
    attr_payload: . payload
      payload: . structure
        structure: . list(structure_element)
          list(structure_element): . structure_item list(structure_element)
            structure_item: . primitive_declaration
              primitive_declaration: . EXTERNAL ext list(attribute) val_ident COLON possibly_poly(core_type) optional_atat_modalities_expr EQUAL nonempty_list(raw_string) list(post_item_attribute)
  ```
  Sample sentence (implementation):
  ```ocaml
  [@@@ and external lident : {%hello|world|} = "hello" let false = UIdent ] let false = UIdent
  ```
- Derivation (2 occurrences):
  ```
  attribute: LBRACKETAT attr_id . attr_payload RBRACKET
    attr_payload: . payload
      payload: . structure
        structure: . list(structure_element)
          list(structure_element): . structure_item list(structure_element)
            structure_item: . primitive_declaration
              primitive_declaration: . EXTERNAL ext list(attribute) val_ident COLON possibly_poly(core_type) optional_atat_modalities_expr EQUAL nonempty_list(raw_string) list(post_item_attribute)
  ```
  Sample sentence (implementation):
  ```ocaml
  UIdent [@ and external lident : {%hello|world|} = "hello" let false = UIdent ] let false = UIdent
  ```
- Derivation (2 occurrences):
  ```
  list(structure_element): structure_item . list(structure_element)
    list(structure_element): . structure_item list(structure_element)
      structure_item: . primitive_declaration
        primitive_declaration: . EXTERNAL ext list(attribute) val_ident COLON possibly_poly(core_type) optional_atat_modalities_expr EQUAL nonempty_list(raw_string) list(post_item_attribute)
  ```
  Sample sentence (implementation):
  ```ocaml
  {%%hello|world|} external lident : {%hello|world|} = "hello" let false = UIdent
  ```
- Derivation (2 occurrences):
  ```
  list(structure_element): SEMISEMI seq_expr list(post_item_attribute) . list(structure_element)
    list(structure_element): . structure_item list(structure_element)
      structure_item: . primitive_declaration
        primitive_declaration: . EXTERNAL ext list(attribute) val_ident COLON possibly_poly(core_type) optional_atat_modalities_expr EQUAL nonempty_list(raw_string) list(post_item_attribute)
  ```
  Sample sentence (implementation):
  ```ocaml
  ;; UIdent external lident : {%hello|world|} = "hello" let false = UIdent
  ```
- Derivation (2 occurrences):
  ```
  list(structure_element): SEMISEMI . list(structure_element)
    list(structure_element): . structure_item list(structure_element)
      structure_item: . primitive_declaration
        primitive_declaration: . EXTERNAL ext list(attribute) val_ident COLON possibly_poly(core_type) optional_atat_modalities_expr EQUAL nonempty_list(raw_string) list(post_item_attribute)
  ```
  Sample sentence (implementation):
  ```ocaml
  ;; external lident : {%hello|world|} = "hello" let false = UIdent
  ```
- Derivation (2 occurrences):
  ```
  list(structure_element): SEMISEMI . list(structure_element)
    list(structure_element): . structure_item list(structure_element)
      structure_item: . item_extension list(post_item_attribute)
        item_extension: . QUOTED_STRING_ITEM
  ```
  Sample sentence (implementation):
  ```ocaml
  ;; {%%hello|world|}
  ```
- Derivation (1 occurrence):
  ```
  module_expr: STRUCT list(attribute) . structure END
    structure: . list(structure_element)
      list(structure_element): . structure_item list(structure_element)
        structure_item: . value_description
  ```
  Sample sentence (implementation):
  ```ocaml
  include ( struct val lident : {%hello|world|} end ) let false = UIdent
  ```
- ...


### Item `val_ident: . val_extra_ident` (in 44 errors)

- Derivation (37 occurrences):
  ```
  let_binding_body_no_punning: LPAREN . val_ident at_mode_expr RPAREN COLONGREATER tuple_type at_mode_expr EQUAL seq_expr
    val_ident: . val_extra_ident
  ```
  Sample sentence (implementation):
  ```ocaml
  let ( ( - ) @ lident ) :> {%hello|world|} @ lident = UIdent [@@ and ] let false = UIdent
  ```
- Derivation (2 occurrences):
  ```
  labeled_tuple_pat_element_list(pattern): TILDE LPAREN LIDENT COLON core_type RPAREN COMMA LABEL . simple_pattern
    simple_pattern: . val_ident
      val_ident: . val_extra_ident
        val_extra_ident: . LPAREN operator RPAREN
  ```
  Sample sentence (implementation):
  ```ocaml
  function ~ ( lident : {%hello|world|} ) , ~label: ( - ) -> UIdent let false = UIdent
  ```
- Derivation (2 occurrences):
  ```
  primitive_declaration: EXTERNAL ext list(attribute) . val_ident COLON possibly_poly(core_type) optional_atat_modalities_expr EQUAL nonempty_list(raw_string) list(post_item_attribute)
    val_ident: . val_extra_ident
      val_extra_ident: . LPAREN operator RPAREN
  ```
  Sample sentence (implementation):
  ```ocaml
  external ( && ) : {%hello|world|} = "hello" let false = UIdent
  ```
- Derivation (1 occurrence):
  ```
  value_description: VAL ext list(attribute) . val_ident COLON possibly_poly(core_type) optional_atat_modalities_expr list(post_item_attribute)
    val_ident: . val_extra_ident
      val_extra_ident: . LPAREN operator RPAREN
  ```
  Sample sentence (implementation):
  ```ocaml
  include struct val ( && ) : {%hello|world|} end let false = UIdent
  ```
- Derivation (1 occurrence):
  ```
  labeled_tuple_pat_element_list(pattern_no_exn): TILDE LPAREN LIDENT COLON core_type RPAREN COMMA . pattern_no_exn
    pattern_no_exn: . pattern_gen
      pattern_gen: . simple_pattern
        simple_pattern: . val_ident
          val_ident: . val_extra_ident
            val_extra_ident: . LPAREN operator RPAREN
  ```
  Sample sentence (implementation):
  ```ocaml
  let ~ ( lident : {%hello|world|} ) , ( - ) = UIdent [@@ and ] let false = UIdent
  ```
- Derivation (1 occurrence):
  ```
  labeled_tuple_pat_element_list(pattern_no_exn): TILDE LPAREN LIDENT COLON core_type RPAREN COMMA LABEL . simple_pattern
    simple_pattern: . val_ident
      val_ident: . val_extra_ident
        val_extra_ident: . LPAREN operator RPAREN
  ```
  Sample sentence (implementation):
  ```ocaml
  let ~ ( lident : {%hello|world|} ) , ~label: ( - ) = UIdent [@@ and ] let false = UIdent
  ```


### Item `tuple_type: atomic_type STAR . reversed_separated_nonempty_llist(STAR,labeled_tuple_typ_element)` (in 43 errors)

- Derivation (26 occurrences):
  ```
  tuple_type: atomic_type STAR . reversed_separated_nonempty_llist(STAR,labeled_tuple_typ_element)
  ```
  Sample sentence (implementation):
  ```ocaml
  #{ lident :> {%hello|world|} * {%hello|world|} ; } let false = UIdent
  ```
- Derivation (17 occurrences):
  ```
  tuple_type: atomic_type STAR . reversed_separated_nonempty_llist(STAR,labeled_tuple_typ_element)
    reversed_separated_nonempty_llist(STAR,labeled_tuple_typ_element): . LIDENT COLON atomic_type
  ```
  Sample sentence (implementation):
  ```ocaml
  ( UIdent : {%hello|world|} * lident : _ @ lident ) let false = UIdent
  ```


### Item `attribute: . LBRACKETAT attr_id attr_payload RBRACKET` (in 42 errors)

- Derivation (4 occurrences):
  ```
  signature_item: CLASS ext . list(attribute) virtual_flag formal_class_parameters LIDENT COLON class_type list(post_item_attribute) list(and_class_description)
    list(attribute): . attribute list(attribute)
      attribute: . LBRACKETAT attr_id attr_payload RBRACKET
  ```
  Sample sentence (interface):
  ```ocaml
  class [@ and ] lident : {%hello|world|}
  ```
- Derivation (4 occurrences):
  ```
  primitive_declaration: EXTERNAL ext . list(attribute) val_ident COLON possibly_poly(core_type) optional_atat_modalities_expr EQUAL nonempty_list(raw_string) list(post_item_attribute)
    list(attribute): . attribute list(attribute)
      attribute: . LBRACKETAT attr_id attr_payload RBRACKET
  ```
  Sample sentence (implementation):
  ```ocaml
  external [@ and ] lident : {%hello|world|} = "hello" let false = UIdent
  ```
- Derivation (4 occurrences):
  ```
  open_declaration: OPEN BANG ext . list(attribute) module_expr list(post_item_attribute)
    list(attribute): . attribute list(attribute)
      attribute: . LBRACKETAT attr_id attr_payload RBRACKET
  ```
  Sample sentence (implementation):
  ```ocaml
  open ! [@ and ] {%hello|world|} let false = UIdent
  ```
- Derivation (4 occurrences):
  ```
  list(and_class_description): AND . list(attribute) virtual_flag formal_class_parameters LIDENT COLON class_type list(post_item_attribute) list(and_class_description)
    list(attribute): . attribute list(attribute)
      attribute: . LBRACKETAT attr_id attr_payload RBRACKET
  ```
  Sample sentence (interface):
  ```ocaml
  class lident : {%hello|world|} and [@ and ] lident : {%hello|world|}
  ```
- Derivation (2 occurrences):
  ```
  pattern_no_exn: pattern_no_exn . attribute
    attribute: . LBRACKETAT attr_id attr_payload RBRACKET
  ```
  Sample sentence (implementation):
  ```ocaml
  let ~ ( lident : {%hello|world|} ) , false false [@ and ] = UIdent [@@ and ] let false = UIdent
  ```
- Derivation (2 occurrences):
  ```
  pattern: pattern . attribute
    attribute: . LBRACKETAT attr_id attr_payload RBRACKET
  ```
  Sample sentence (implementation):
  ```ocaml
  function ~ ( lident : {%hello|world|} ) , exception false [@ and ] -> UIdent let false = UIdent
  ```
- Derivation (2 occurrences):
  ```
  value_description: VAL ext . list(attribute) val_ident COLON possibly_poly(core_type) optional_atat_modalities_expr list(post_item_attribute)
    list(attribute): . attribute list(attribute)
      attribute: . LBRACKETAT attr_id attr_payload RBRACKET
  ```
  Sample sentence (implementation):
  ```ocaml
  include struct val [@ and ] lident : {%hello|world|} end let false = UIdent
  ```
- Derivation (2 occurrences):
  ```
  simple_expr: LPAREN MODULE ext . list(attribute) module_expr RPAREN
    list(attribute): . attribute list(attribute)
      attribute: . LBRACKETAT attr_id attr_payload RBRACKET
  ```
  Sample sentence (implementation):
  ```ocaml
  ( module [@ and ] {%hello|world|} ) let false = UIdent
  ```
- Derivation (2 occurrences):
  ```
  module_type: MODULE TYPE OF . list(attribute) module_expr
    list(attribute): . attribute list(attribute)
      attribute: . LBRACKETAT attr_id attr_payload RBRACKET
  ```
  Sample sentence (interface):
  ```ocaml
  module type lident := module type of [@ and ] {%hello|world|}
  ```
- Derivation (2 occurrences):
  ```
  module_expr: FUNCTOR . list(attribute) reversed_nonempty_llist(functor_arg) MINUSGREATER module_expr
    list(attribute): . attribute list(attribute)
      attribute: . LBRACKETAT attr_id attr_payload RBRACKET
  ```
  Sample sentence (implementation):
  ```ocaml
  include ( functor [@ and ] ( ) -> {%hello|world|} ) let false = UIdent
  ```
- Derivation (2 occurrences):
  ```
  label_declaration_semi: mutable_or_global_flag LIDENT COLON possibly_poly(core_type_no_attr) optional_atat_modalities_expr list(attribute) SEMI . list(attribute)
    list(attribute): . attribute list(attribute)
      attribute: . LBRACKETAT attr_id attr_payload RBRACKET
  ```
  Sample sentence (interface):
  ```ocaml
  type lident := { lident : {%hello|world|} ; [@ and ] }
  ```
- Derivation (2 occurrences):
  ```
  fun_expr: LET OPEN BANG ext . list(attribute) module_expr IN seq_expr
    list(attribute): . attribute list(attribute)
      attribute: . LBRACKETAT attr_id attr_payload RBRACKET
  ```
  Sample sentence (implementation):
  ```ocaml
  let open ! [@ and ] {%hello|world|} in UIdent [@@ and ] let false = UIdent
  ```
- Derivation (2 occurrences):
  ```
  fun_expr: LET OPEN ext . list(attribute) module_expr IN seq_expr
    list(attribute): . attribute list(attribute)
      attribute: . LBRACKETAT attr_id attr_payload RBRACKET
  ```
  Sample sentence (implementation):
  ```ocaml
  let open [@ and ] {%hello|world|} in UIdent [@@ and ] let false = UIdent
  ```
- Derivation (2 occurrences):
  ```
  class_sig_field: CONSTRAINT . list(attribute) constrain_field list(post_item_attribute)
    list(attribute): . attribute list(attribute)
      attribute: . LBRACKETAT attr_id attr_payload RBRACKET
  ```
  Sample sentence (implementation):
  ```ocaml
  class type lident = object constraint [@ and ] {%hello|world|} = {%hello|world|} inherit lident end let false = UIdent
  ```
- Derivation (2 occurrences):
  ```
  class_sig_field: METHOD . list(attribute) private_virtual_flags LIDENT COLON possibly_poly(core_type) list(post_item_attribute)
    list(attribute): . attribute list(attribute)
      attribute: . LBRACKETAT attr_id attr_payload RBRACKET
  ```
  Sample sentence (implementation):
  ```ocaml
  class type lident = object method [@ and ] lident : {%hello|world|} end let false = UIdent
  ```
- Derivation (2 occurrences):
  ```
  class_sig_field: VAL . list(attribute) mutable_virtual_flags LIDENT COLON core_type list(post_item_attribute)
    list(attribute): . attribute list(attribute)
      attribute: . LBRACKETAT attr_id attr_payload RBRACKET
  ```
  Sample sentence (implementation):
  ```ocaml
  class type lident = object val [@ and ] lident : {%hello|world|} end let false = UIdent
  ```
- Derivation (2 occurrences):
  ```
  class_field: CONSTRAINT . list(attribute) constrain_field list(post_item_attribute)
    list(attribute): . attribute list(attribute)
      attribute: . LBRACKETAT attr_id attr_payload RBRACKET
  ```
  Sample sentence (implementation):
  ```ocaml
  object constraint [@ and ] {%hello|world|} = {%hello|world|} inherit lident end let false = UIdent
  ```


### Item `constr_extra_nonprefix_ident: . FALSE` (in 41 errors)

- Derivation (12 occurrences):
  ```
  nonempty_type_kind: core_type EQUAL . constructor_declarations
    constructor_declarations: . reversed_bar_llist(constructor_declaration)
      reversed_bar_llist(constructor_declaration): . generic_constructor_declaration(epsilon)
        generic_constructor_declaration(epsilon): . constr_ident generalized_constructor_arguments list(attribute)
          constr_ident: . constr_extra_nonprefix_ident
            constr_extra_nonprefix_ident: . FALSE
  ```
  Sample sentence (interface):
  ```ocaml
  type lident := {%hello|world|} = false
  ```
- Derivation (10 occurrences):
  ```
  nonempty_type_kind: core_type EQUAL PRIVATE . constructor_declarations
    constructor_declarations: . reversed_bar_llist(constructor_declaration)
      reversed_bar_llist(constructor_declaration): . generic_constructor_declaration(epsilon)
        generic_constructor_declaration(epsilon): . constr_ident generalized_constructor_arguments list(attribute)
          constr_ident: . constr_extra_nonprefix_ident
            constr_extra_nonprefix_ident: . FALSE
  ```
  Sample sentence (interface):
  ```ocaml
  type lident := {%hello|world|} = private false
  ```
- Derivation (5 occurrences):
  ```
  labeled_tuple_pat_element_list(pattern_no_exn): TILDE LPAREN LIDENT COLON core_type RPAREN COMMA . pattern_no_exn
    pattern_no_exn: . pattern_gen
      pattern_gen: . constr_longident pattern
        constr_longident: . constr_extra_nonprefix_ident
          constr_extra_nonprefix_ident: . FALSE
  ```
  Sample sentence (implementation):
  ```ocaml
  let ~ ( lident : {%hello|world|} ) , false false = UIdent [@@ and ] let false = UIdent
  ```
- Derivation (3 occurrences):
  ```
  labeled_tuple_pat_element_list(pattern_no_exn): TILDE LPAREN LIDENT COLON core_type RPAREN COMMA . pattern_no_exn
    pattern_no_exn: . pattern_gen
      pattern_gen: . constr_longident LPAREN TYPE newtypes RPAREN simple_pattern
        constr_longident: . constr_extra_nonprefix_ident
          constr_extra_nonprefix_ident: . FALSE
  ```
  Sample sentence (implementation):
  ```ocaml
  let ~ ( lident : {%hello|world|} ) , false ( type lident ) false = UIdent [@@ and ] let false = UIdent
  ```
- Derivation (3 occurrences):
  ```
  nonempty_type_kind: core_type EQUAL PRIVATE . constructor_declarations
    constructor_declarations: . reversed_bar_llist(constructor_declaration)
      reversed_bar_llist(constructor_declaration): . reversed_bar_llist(constructor_declaration) generic_constructor_declaration(BAR)
        reversed_bar_llist(constructor_declaration): . generic_constructor_declaration(epsilon)
          generic_constructor_declaration(epsilon): . constr_ident generalized_constructor_arguments list(attribute)
            constr_ident: . constr_extra_nonprefix_ident
              constr_extra_nonprefix_ident: . FALSE
  ```
  Sample sentence (interface):
  ```ocaml
  type lident := {%hello|world|} = private false | false
  ```
- Derivation (3 occurrences):
  ```
  nonempty_type_kind: core_type EQUAL . constructor_declarations
    constructor_declarations: . reversed_bar_llist(constructor_declaration)
      reversed_bar_llist(constructor_declaration): . reversed_bar_llist(constructor_declaration) generic_constructor_declaration(BAR)
        reversed_bar_llist(constructor_declaration): . generic_constructor_declaration(epsilon)
          generic_constructor_declaration(epsilon): . constr_ident generalized_constructor_arguments list(attribute)
            constr_ident: . constr_extra_nonprefix_ident
              constr_extra_nonprefix_ident: . FALSE
  ```
  Sample sentence (interface):
  ```ocaml
  type lident := {%hello|world|} = false | false
  ```
- Derivation (2 occurrences):
  ```
  labeled_tuple_pat_element_list(pattern_no_exn): TILDE LPAREN LIDENT COLON core_type RPAREN COMMA . pattern_no_exn
    pattern_no_exn: . pattern_gen
      pattern_gen: . constr_longident LPAREN TYPE LIDENT COLON jkind_annotation RPAREN simple_pattern
        constr_longident: . constr_extra_nonprefix_ident
          constr_extra_nonprefix_ident: . FALSE
  ```
  Sample sentence (implementation):
  ```ocaml
  let ~ ( lident : {%hello|world|} ) , false ( type lident : lident ) false = UIdent [@@ and ] let false = UIdent
  ```
- Derivation (1 occurrence):
  ```
  labeled_tuple_pat_element_list(pattern_no_exn): TILDE LPAREN LIDENT COLON core_type RPAREN COMMA . pattern_no_exn
    pattern_no_exn: . pattern_no_exn COLONCOLON pattern
      pattern_no_exn: . pattern_gen
        pattern_gen: . constr_longident LPAREN TYPE LIDENT COLON jkind_annotation RPAREN simple_pattern
          constr_longident: . constr_extra_nonprefix_ident
            constr_extra_nonprefix_ident: . FALSE
  ```
  Sample sentence (implementation):
  ```ocaml
  let ~ ( lident : {%hello|world|} ) , false ( type lident : lident ) false :: false = UIdent [@@ and ] let false = UIdent
  ```
- Derivation (1 occurrence):
  ```
  labeled_tuple_pat_element_list(pattern_no_exn): TILDE LPAREN LIDENT COLON core_type RPAREN COMMA . pattern_no_exn
    pattern_no_exn: . pattern_no_exn COLONCOLON pattern
      pattern_no_exn: . pattern_gen
        pattern_gen: . constr_longident LPAREN TYPE newtypes RPAREN simple_pattern
          constr_longident: . constr_extra_nonprefix_ident
            constr_extra_nonprefix_ident: . FALSE
  ```
  Sample sentence (implementation):
  ```ocaml
  let ~ ( lident : {%hello|world|} ) , false ( type lident ) false :: false = UIdent [@@ and ] let false = UIdent
  ```
- Derivation (1 occurrence):
  ```
  labeled_tuple_pat_element_list(pattern_no_exn): TILDE LPAREN LIDENT COLON core_type RPAREN COMMA . pattern_no_exn
    pattern_no_exn: . pattern_no_exn COLONCOLON pattern
      pattern_no_exn: . pattern_gen
        pattern_gen: . constr_longident pattern
          constr_longident: . constr_extra_nonprefix_ident
            constr_extra_nonprefix_ident: . FALSE
  ```
  Sample sentence (implementation):
  ```ocaml
  let ~ ( lident : {%hello|world|} ) , false false :: false = UIdent [@@ and ] let false = UIdent
  ```


### Item `paren_module_expr: LPAREN . module_expr RPAREN` (in 39 errors)

- Derivation (17 occurrences):
  ```
  paren_module_expr: LPAREN . module_expr RPAREN
    module_expr: . FUNCTOR list(attribute) reversed_nonempty_llist(functor_arg) MINUSGREATER module_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  include ( functor ( ) -> {%hello|world|} ) let false = UIdent
  ```
- Derivation (4 occurrences):
  ```
  paren_module_expr: LPAREN . module_expr RPAREN
    module_expr: . STRUCT list(attribute) structure END
  ```
  Sample sentence (implementation):
  ```ocaml
  include {%hello|world|} ( struct end ) let false = UIdent
  ```
- Derivation (4 occurrences):
  ```
  paren_module_expr: LPAREN . module_expr RPAREN
    module_expr: . mod_longident
      mod_longident: . mk_longident(mod_longident,UIDENT)
        mk_longident(mod_longident,UIDENT): . UIDENT
  ```
  Sample sentence (implementation):
  ```ocaml
  include {%hello|world|} ( UIdent ) let false = UIdent
  ```
- Derivation (4 occurrences):
  ```
  paren_module_expr: LPAREN . module_expr RPAREN
    module_expr: . extension
      extension: . LBRACKETPERCENT attr_id payload RBRACKET
  ```
  Sample sentence (implementation):
  ```ocaml
  include {%hello|world|} ( [% and ] ) let false = UIdent
  ```
- Derivation (2 occurrences):
  ```
  paren_module_expr: LPAREN . module_expr RPAREN
    module_expr: . paren_module_expr
      paren_module_expr: . LPAREN VAL list(attribute) STACK FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case) RPAREN
  ```
  Sample sentence (implementation):
  ```ocaml
  include {%hello|world|} ( ( val stack_ function false -> UIdent ) ) let false = UIdent
  ```
- Derivation (2 occurrences):
  ```
  paren_module_expr: LPAREN . module_expr RPAREN
    module_expr: . paren_module_expr
      paren_module_expr: . LPAREN VAL list(attribute) FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case) RPAREN
  ```
  Sample sentence (implementation):
  ```ocaml
  include {%hello|world|} ( ( val function false -> UIdent ) ) let false = UIdent
  ```
- Derivation (2 occurrences):
  ```
  paren_module_expr: LPAREN . module_expr RPAREN
    module_expr: . paren_module_expr
      paren_module_expr: . LPAREN VAL list(attribute) fun_expr RPAREN
  ```
  Sample sentence (implementation):
  ```ocaml
  include {%hello|world|} ( ( val UIdent ) ) let false = UIdent
  ```
- Derivation (2 occurrences):
  ```
  paren_module_expr: LPAREN . module_expr RPAREN
    module_expr: . paren_module_expr
      paren_module_expr: . LPAREN module_expr RPAREN
  ```
  Sample sentence (implementation):
  ```ocaml
  include {%hello|world|} ( ( {%hello|world|} ) ) let false = UIdent
  ```
- Derivation (2 occurrences):
  ```
  paren_module_expr: LPAREN . module_expr RPAREN
    module_expr: . mod_longident
      mod_longident: . mk_longident(mod_longident,UIDENT)
        mk_longident(mod_longident,UIDENT): . mod_longident DOT UIDENT
          mod_longident: . mk_longident(mod_longident,UIDENT)
            mk_longident(mod_longident,UIDENT): . UIDENT
  ```
  Sample sentence (implementation):
  ```ocaml
  include {%hello|world|} ( UIdent . UIdent ) let false = UIdent
  ```


### Item `constructor_arguments: reversed_separated_nonempty_llist(STAR,constructor_argument) . STAR atomic_type optional_atat_modalities_expr` (in 36 errors)

- Derivation (36 occurrences):
  ```
  constructor_arguments: reversed_separated_nonempty_llist(STAR,constructor_argument) . STAR atomic_type optional_atat_modalities_expr
  ```
  Sample sentence (interface):
  ```ocaml
  exception false of {%hello|world|} * _
  ```


### Item `constructor_arguments: reversed_separated_nonempty_llist(STAR,constructor_argument) . STAR GLOBAL atomic_type optional_atat_modalities_expr` (in 36 errors)

- Derivation (36 occurrences):
  ```
  constructor_arguments: reversed_separated_nonempty_llist(STAR,constructor_argument) . STAR GLOBAL atomic_type optional_atat_modalities_expr
  ```
  Sample sentence (interface):
  ```ocaml
  exception false of {%hello|world|} * global_ _
  ```


### Item `label_declarations: . label_declaration_semi` (in 32 errors)

- Derivation (2 occurrences):
  ```
  constructor_arguments: LBRACE . label_declarations RBRACE
    label_declarations: . label_declaration_semi
      label_declaration_semi: . mutable_or_global_flag LIDENT COLON possibly_poly(core_type_no_attr) optional_atat_modalities_expr list(attribute) SEMI list(attribute)
        mutable_or_global_flag: . GLOBAL
  ```
  Sample sentence (implementation):
  ```ocaml
  exception false of { global_ lident : {%hello|world|} ; } let false = UIdent
  ```
- Derivation (2 occurrences):
  ```
  constructor_arguments: LBRACE . label_declarations RBRACE
    label_declarations: . label_declaration_semi
      label_declaration_semi: . mutable_or_global_flag LIDENT COLON possibly_poly(core_type_no_attr) optional_atat_modalities_expr list(attribute) SEMI list(attribute)
        mutable_or_global_flag: . MUTABLE
  ```
  Sample sentence (implementation):
  ```ocaml
  exception false of { mutable lident : {%hello|world|} ; } let false = UIdent
  ```
- Derivation (1 occurrence):
  ```
  nonempty_type_kind: core_type EQUAL PRIVATE HASHLBRACE . label_declarations RBRACE
    label_declarations: . label_declaration_semi
      label_declaration_semi: . mutable_or_global_flag LIDENT COLON possibly_poly(core_type_no_attr) optional_atat_modalities_expr list(attribute) SEMI list(attribute)
        mutable_or_global_flag: . GLOBAL
  ```
  Sample sentence (interface):
  ```ocaml
  type lident := {%hello|world|} = private #{ global_ lident : {%hello|world|} ; }
  ```
- Derivation (1 occurrence):
  ```
  nonempty_type_kind: core_type EQUAL HASHLBRACE . label_declarations RBRACE
    label_declarations: . label_declaration_semi
      label_declaration_semi: . mutable_or_global_flag LIDENT COLON possibly_poly(core_type_no_attr) optional_atat_modalities_expr list(attribute) SEMI list(attribute)
        mutable_or_global_flag: . GLOBAL
  ```
  Sample sentence (interface):
  ```ocaml
  type lident := {%hello|world|} = #{ global_ lident : {%hello|world|} ; }
  ```
- Derivation (1 occurrence):
  ```
  nonempty_type_kind: PRIVATE HASHLBRACE . label_declarations RBRACE
    label_declarations: . label_declaration_semi
      label_declaration_semi: . mutable_or_global_flag LIDENT COLON possibly_poly(core_type_no_attr) optional_atat_modalities_expr list(attribute) SEMI list(attribute)
        mutable_or_global_flag: . GLOBAL
  ```
  Sample sentence (interface):
  ```ocaml
  type lident := private #{ global_ lident : {%hello|world|} ; }
  ```
- Derivation (1 occurrence):
  ```
  nonempty_type_kind: HASHLBRACE . label_declarations RBRACE
    label_declarations: . label_declaration_semi
      label_declaration_semi: . mutable_or_global_flag LIDENT COLON possibly_poly(core_type_no_attr) optional_atat_modalities_expr list(attribute) SEMI list(attribute)
        mutable_or_global_flag: . GLOBAL
  ```
  Sample sentence (interface):
  ```ocaml
  type lident := #{ global_ lident : {%hello|world|} ; }
  ```
- Derivation (1 occurrence):
  ```
  nonempty_type_kind: core_type EQUAL PRIVATE LBRACE . label_declarations RBRACE
    label_declarations: . label_declaration_semi
      label_declaration_semi: . mutable_or_global_flag LIDENT COLON possibly_poly(core_type_no_attr) optional_atat_modalities_expr list(attribute) SEMI list(attribute)
        mutable_or_global_flag: . GLOBAL
  ```
  Sample sentence (interface):
  ```ocaml
  type lident := {%hello|world|} = private { global_ lident : {%hello|world|} ; }
  ```
- Derivation (1 occurrence):
  ```
  nonempty_type_kind: core_type EQUAL LBRACE . label_declarations RBRACE
    label_declarations: . label_declaration_semi
      label_declaration_semi: . mutable_or_global_flag LIDENT COLON possibly_poly(core_type_no_attr) optional_atat_modalities_expr list(attribute) SEMI list(attribute)
        mutable_or_global_flag: . GLOBAL
  ```
  Sample sentence (interface):
  ```ocaml
  type lident := {%hello|world|} = { global_ lident : {%hello|world|} ; }
  ```
- Derivation (1 occurrence):
  ```
  nonempty_type_kind: PRIVATE LBRACE . label_declarations RBRACE
    label_declarations: . label_declaration_semi
      label_declaration_semi: . mutable_or_global_flag LIDENT COLON possibly_poly(core_type_no_attr) optional_atat_modalities_expr list(attribute) SEMI list(attribute)
        mutable_or_global_flag: . GLOBAL
  ```
  Sample sentence (interface):
  ```ocaml
  type lident := private { global_ lident : {%hello|world|} ; }
  ```
- Derivation (1 occurrence):
  ```
  nonempty_type_kind: LBRACE . label_declarations RBRACE
    label_declarations: . label_declaration_semi
      label_declaration_semi: . mutable_or_global_flag LIDENT COLON possibly_poly(core_type_no_attr) optional_atat_modalities_expr list(attribute) SEMI list(attribute)
        mutable_or_global_flag: . GLOBAL
  ```
  Sample sentence (interface):
  ```ocaml
  type lident := { global_ lident : {%hello|world|} ; }
  ```
- Derivation (1 occurrence):
  ```
  label_declarations: label_declaration_semi . label_declarations
    label_declarations: . label_declaration_semi
      label_declaration_semi: . mutable_or_global_flag LIDENT COLON possibly_poly(core_type_no_attr) optional_atat_modalities_expr list(attribute) SEMI list(attribute)
        mutable_or_global_flag: . GLOBAL
  ```
  Sample sentence (implementation):
  ```ocaml
  exception false of { lident : {%hello|world|} ; global_ lident : {%hello|world|} ; } let false = UIdent
  ```
- Derivation (1 occurrence):
  ```
  nonempty_type_kind: core_type EQUAL PRIVATE HASHLBRACE . label_declarations RBRACE
    label_declarations: . label_declaration_semi
      label_declaration_semi: . mutable_or_global_flag LIDENT COLON possibly_poly(core_type_no_attr) optional_atat_modalities_expr list(attribute) SEMI list(attribute)
        mutable_or_global_flag: . MUTABLE
  ```
  Sample sentence (interface):
  ```ocaml
  type lident := {%hello|world|} = private #{ mutable lident : {%hello|world|} ; }
  ```
- Derivation (1 occurrence):
  ```
  nonempty_type_kind: core_type EQUAL HASHLBRACE . label_declarations RBRACE
    label_declarations: . label_declaration_semi
      label_declaration_semi: . mutable_or_global_flag LIDENT COLON possibly_poly(core_type_no_attr) optional_atat_modalities_expr list(attribute) SEMI list(attribute)
        mutable_or_global_flag: . MUTABLE
  ```
  Sample sentence (interface):
  ```ocaml
  type lident := {%hello|world|} = #{ mutable lident : {%hello|world|} ; }
  ```
- Derivation (1 occurrence):
  ```
  nonempty_type_kind: PRIVATE HASHLBRACE . label_declarations RBRACE
    label_declarations: . label_declaration_semi
      label_declaration_semi: . mutable_or_global_flag LIDENT COLON possibly_poly(core_type_no_attr) optional_atat_modalities_expr list(attribute) SEMI list(attribute)
        mutable_or_global_flag: . MUTABLE
  ```
  Sample sentence (interface):
  ```ocaml
  type lident := private #{ mutable lident : {%hello|world|} ; }
  ```
- Derivation (1 occurrence):
  ```
  nonempty_type_kind: HASHLBRACE . label_declarations RBRACE
    label_declarations: . label_declaration_semi
      label_declaration_semi: . mutable_or_global_flag LIDENT COLON possibly_poly(core_type_no_attr) optional_atat_modalities_expr list(attribute) SEMI list(attribute)
        mutable_or_global_flag: . MUTABLE
  ```
  Sample sentence (interface):
  ```ocaml
  type lident := #{ mutable lident : {%hello|world|} ; }
  ```
- Derivation (1 occurrence):
  ```
  nonempty_type_kind: core_type EQUAL PRIVATE LBRACE . label_declarations RBRACE
    label_declarations: . label_declaration_semi
      label_declaration_semi: . mutable_or_global_flag LIDENT COLON possibly_poly(core_type_no_attr) optional_atat_modalities_expr list(attribute) SEMI list(attribute)
        mutable_or_global_flag: . MUTABLE
  ```
  Sample sentence (interface):
  ```ocaml
  type lident := {%hello|world|} = private { mutable lident : {%hello|world|} ; }
  ```
- Derivation (1 occurrence):
  ```
  nonempty_type_kind: core_type EQUAL LBRACE . label_declarations RBRACE
    label_declarations: . label_declaration_semi
      label_declaration_semi: . mutable_or_global_flag LIDENT COLON possibly_poly(core_type_no_attr) optional_atat_modalities_expr list(attribute) SEMI list(attribute)
        mutable_or_global_flag: . MUTABLE
  ```
  Sample sentence (interface):
  ```ocaml
  type lident := {%hello|world|} = { mutable lident : {%hello|world|} ; }
  ```
- Derivation (1 occurrence):
  ```
  nonempty_type_kind: PRIVATE LBRACE . label_declarations RBRACE
    label_declarations: . label_declaration_semi
      label_declaration_semi: . mutable_or_global_flag LIDENT COLON possibly_poly(core_type_no_attr) optional_atat_modalities_expr list(attribute) SEMI list(attribute)
        mutable_or_global_flag: . MUTABLE
  ```
  Sample sentence (interface):
  ```ocaml
  type lident := private { mutable lident : {%hello|world|} ; }
  ```
- Derivation (1 occurrence):
  ```
  nonempty_type_kind: LBRACE . label_declarations RBRACE
    label_declarations: . label_declaration_semi
      label_declaration_semi: . mutable_or_global_flag LIDENT COLON possibly_poly(core_type_no_attr) optional_atat_modalities_expr list(attribute) SEMI list(attribute)
        mutable_or_global_flag: . MUTABLE
  ```
  Sample sentence (interface):
  ```ocaml
  type lident := { mutable lident : {%hello|world|} ; }
  ```
- Derivation (1 occurrence):
  ```
  label_declarations: label_declaration_semi . label_declarations
    label_declarations: . label_declaration_semi
      label_declaration_semi: . mutable_or_global_flag LIDENT COLON possibly_poly(core_type_no_attr) optional_atat_modalities_expr list(attribute) SEMI list(attribute)
        mutable_or_global_flag: . MUTABLE
  ```
  Sample sentence (implementation):
  ```ocaml
  exception false of { lident : {%hello|world|} ; mutable lident : {%hello|world|} ; } let false = UIdent
  ```
- Derivation (1 occurrence):
  ```
  nonempty_type_kind: PRIVATE HASHLBRACE . label_declarations RBRACE
    label_declarations: . label_declaration_semi
  ```
  Sample sentence (interface):
  ```ocaml
  type lident := private #{ lident : {%hello|world|} ; }
  ```
- ...


### Item `strict_binding_modes: . fun_params option(constraint_) EQUAL fun_body` (in 32 errors)

- Derivation (16 occurrences):
  ```
  let_binding_body_no_punning: LPAREN val_ident at_mode_expr RPAREN . strict_binding_modes
    strict_binding_modes: . fun_params option(constraint_) EQUAL fun_body
  ```
  Sample sentence (implementation):
  ```ocaml
  let ( lident @ lident ) false : {%hello|world|} = UIdent [@@ and ] let false = UIdent
  ```
- Derivation (4 occurrences):
  ```
  let_binding_body_no_punning: nonempty_list(mode_legacy) val_ident . strict_binding_modes
    strict_binding_modes: . fun_params option(constraint_) EQUAL fun_body
      fun_params: . reversed_nonempty_concat(fun_param_as_list)
        reversed_nonempty_concat(fun_param_as_list): . fun_param_as_list
  ```
  Sample sentence (implementation):
  ```ocaml
  let local_ lident ( type lident ) : {%hello|world|} = UIdent [@@ and ] let false = UIdent
  ```
- Derivation (4 occurrences):
  ```
  let_binding_body_no_punning: val_ident . strict_binding_modes
    strict_binding_modes: . fun_params option(constraint_) EQUAL fun_body
      fun_params: . reversed_nonempty_concat(fun_param_as_list)
        reversed_nonempty_concat(fun_param_as_list): . fun_param_as_list
  ```
  Sample sentence (implementation):
  ```ocaml
  let lident ( type lident ) : {%hello|world|} = UIdent [@@ and ] let false = UIdent
  ```
- Derivation (2 occurrences):
  ```
  method_: BANG list(attribute) private_flag . LIDENT strict_binding_modes
    strict_binding_modes: . fun_params option(constraint_) EQUAL fun_body
      fun_params: . reversed_nonempty_concat(fun_param_as_list)
        reversed_nonempty_concat(fun_param_as_list): . fun_param_as_list
  ```
  Sample sentence (implementation):
  ```ocaml
  object method ! lident ( type lident ) : {%hello|world|} = UIdent inherit lident end let false = UIdent
  ```
- Derivation (2 occurrences):
  ```
  method_: list(attribute) private_flag . LIDENT strict_binding_modes
    strict_binding_modes: . fun_params option(constraint_) EQUAL fun_body
      fun_params: . reversed_nonempty_concat(fun_param_as_list)
        reversed_nonempty_concat(fun_param_as_list): . fun_param_as_list
  ```
  Sample sentence (implementation):
  ```ocaml
  object method lident ( type lident ) : {%hello|world|} = UIdent inherit lident end let false = UIdent
  ```
- Derivation (2 occurrences):
  ```
  letop_binding_body: val_ident . strict_binding_modes
    strict_binding_modes: . fun_params option(constraint_) EQUAL fun_body
      fun_params: . reversed_nonempty_concat(fun_param_as_list)
        reversed_nonempty_concat(fun_param_as_list): . fun_param_as_list
  ```
  Sample sentence (implementation):
  ```ocaml
  let* lident ( type lident ) : {%hello|world|} = UIdent in UIdent [@@ and ] let false = UIdent
  ```
- Derivation (2 occurrences):
  ```
  let_binding_body_no_punning: LPAREN val_ident at_mode_expr RPAREN . strict_binding_modes
    strict_binding_modes: . fun_params option(constraint_) EQUAL fun_body
      fun_params: . reversed_nonempty_concat(fun_param_as_list)
        reversed_nonempty_concat(fun_param_as_list): . fun_param_as_list
  ```
  Sample sentence (implementation):
  ```ocaml
  include struct let ( lident @ lident ) ( type lident ) : {%hello|world|} = UIdent end let false = UIdent
  ```


### Item `nonempty_list(mode_legacy): . LOCAL` (in 30 errors)

- Derivation (3 occurrences):
  ```
  strict_function_or_labeled_tuple_type: tuple_type MINUSGREATER . strict_function_or_labeled_tuple_type
    strict_function_or_labeled_tuple_type: . nonempty_list(mode_legacy) LPAREN reversed_nonempty_llist(typevar) DOT core_type RPAREN at_mode_expr MINUSGREATER tuple_type
      nonempty_list(mode_legacy): . LOCAL
  ```
  Sample sentence (implementation):
  ```ocaml
  kind_abbrev_ lident = kind_of_ {%hello|world|} -> local_ ( ' lident . {%hello|world|} ) @ lident -> {%hello|world|} let false = UIdent
  ```
- Derivation (3 occurrences):
  ```
  strict_function_or_labeled_tuple_type: LPAREN reversed_nonempty_llist(typevar) DOT core_type RPAREN at_mode_expr MINUSGREATER . strict_function_or_labeled_tuple_type
    strict_function_or_labeled_tuple_type: . nonempty_list(mode_legacy) LPAREN reversed_nonempty_llist(typevar) DOT core_type RPAREN at_mode_expr MINUSGREATER tuple_type
      nonempty_list(mode_legacy): . LOCAL
  ```
  Sample sentence (implementation):
  ```ocaml
  kind_abbrev_ lident = kind_of_ ( ' lident . {%hello|world|} ) @ lident -> local_ ( ' lident . {%hello|world|} ) @ lident -> {%hello|world|} let false = UIdent
  ```
- Derivation (3 occurrences):
  ```
  strict_function_or_labeled_tuple_type: LPAREN reversed_nonempty_llist(typevar) DOT core_type RPAREN MINUSGREATER . strict_function_or_labeled_tuple_type
    strict_function_or_labeled_tuple_type: . nonempty_list(mode_legacy) LPAREN reversed_nonempty_llist(typevar) DOT core_type RPAREN at_mode_expr MINUSGREATER tuple_type
      nonempty_list(mode_legacy): . LOCAL
  ```
  Sample sentence (implementation):
  ```ocaml
  kind_abbrev_ lident = kind_of_ ( ' lident . {%hello|world|} ) -> local_ ( ' lident . {%hello|world|} ) @ lident -> {%hello|world|} let false = UIdent
  ```
- Derivation (3 occurrences):
  ```
  strict_function_or_labeled_tuple_type: LIDENT COLON nonempty_list(mode_legacy) tuple_type at_mode_expr MINUSGREATER . strict_function_or_labeled_tuple_type
    strict_function_or_labeled_tuple_type: . nonempty_list(mode_legacy) LPAREN reversed_nonempty_llist(typevar) DOT core_type RPAREN at_mode_expr MINUSGREATER tuple_type
      nonempty_list(mode_legacy): . LOCAL
  ```
  Sample sentence (implementation):
  ```ocaml
  kind_abbrev_ lident = kind_of_ lident : local_ {%hello|world|} @ lident -> local_ ( ' lident . {%hello|world|} ) @ lident -> {%hello|world|} let false = UIdent
  ```
- Derivation (3 occurrences):
  ```
  strict_function_or_labeled_tuple_type: LIDENT COLON nonempty_list(mode_legacy) tuple_type MINUSGREATER . strict_function_or_labeled_tuple_type
    strict_function_or_labeled_tuple_type: . nonempty_list(mode_legacy) LPAREN reversed_nonempty_llist(typevar) DOT core_type RPAREN at_mode_expr MINUSGREATER tuple_type
      nonempty_list(mode_legacy): . LOCAL
  ```
  Sample sentence (implementation):
  ```ocaml
  kind_abbrev_ lident = kind_of_ lident : local_ {%hello|world|} -> local_ ( ' lident . {%hello|world|} ) @ lident -> {%hello|world|} let false = UIdent
  ```
- Derivation (3 occurrences):
  ```
  strict_function_or_labeled_tuple_type: LIDENT COLON nonempty_list(mode_legacy) LPAREN reversed_nonempty_llist(typevar) DOT core_type RPAREN at_mode_expr MINUSGREATER . strict_function_or_labeled_tuple_type
    strict_function_or_labeled_tuple_type: . nonempty_list(mode_legacy) LPAREN reversed_nonempty_llist(typevar) DOT core_type RPAREN at_mode_expr MINUSGREATER tuple_type
      nonempty_list(mode_legacy): . LOCAL
  ```
  Sample sentence (implementation):
  ```ocaml
  kind_abbrev_ lident = kind_of_ lident : local_ ( ' lident . {%hello|world|} ) @ lident -> local_ ( ' lident . {%hello|world|} ) @ lident -> {%hello|world|} let false = UIdent
  ```
- Derivation (3 occurrences):
  ```
  strict_function_or_labeled_tuple_type: LIDENT COLON nonempty_list(mode_legacy) LPAREN reversed_nonempty_llist(typevar) DOT core_type RPAREN MINUSGREATER . strict_function_or_labeled_tuple_type
    strict_function_or_labeled_tuple_type: . nonempty_list(mode_legacy) LPAREN reversed_nonempty_llist(typevar) DOT core_type RPAREN at_mode_expr MINUSGREATER tuple_type
      nonempty_list(mode_legacy): . LOCAL
  ```
  Sample sentence (implementation):
  ```ocaml
  kind_abbrev_ lident = kind_of_ lident : local_ ( ' lident . {%hello|world|} ) -> local_ ( ' lident . {%hello|world|} ) @ lident -> {%hello|world|} let false = UIdent
  ```
- Derivation (3 occurrences):
  ```
  strict_function_or_labeled_tuple_type: LIDENT COLON tuple_type MINUSGREATER . strict_function_or_labeled_tuple_type
    strict_function_or_labeled_tuple_type: . nonempty_list(mode_legacy) LPAREN reversed_nonempty_llist(typevar) DOT core_type RPAREN at_mode_expr MINUSGREATER tuple_type
      nonempty_list(mode_legacy): . LOCAL
  ```
  Sample sentence (implementation):
  ```ocaml
  kind_abbrev_ lident = kind_of_ lident : {%hello|world|} -> local_ ( ' lident . {%hello|world|} ) @ lident -> {%hello|world|} let false = UIdent
  ```
- Derivation (3 occurrences):
  ```
  strict_function_or_labeled_tuple_type: LIDENT COLON LPAREN reversed_nonempty_llist(typevar) DOT core_type RPAREN at_mode_expr MINUSGREATER . strict_function_or_labeled_tuple_type
    strict_function_or_labeled_tuple_type: . nonempty_list(mode_legacy) LPAREN reversed_nonempty_llist(typevar) DOT core_type RPAREN at_mode_expr MINUSGREATER tuple_type
      nonempty_list(mode_legacy): . LOCAL
  ```
  Sample sentence (implementation):
  ```ocaml
  kind_abbrev_ lident = kind_of_ lident : ( ' lident . {%hello|world|} ) @ lident -> local_ ( ' lident . {%hello|world|} ) @ lident -> {%hello|world|} let false = UIdent
  ```
- Derivation (3 occurrences):
  ```
  strict_function_or_labeled_tuple_type: LIDENT COLON LPAREN reversed_nonempty_llist(typevar) DOT core_type RPAREN MINUSGREATER . strict_function_or_labeled_tuple_type
    strict_function_or_labeled_tuple_type: . nonempty_list(mode_legacy) LPAREN reversed_nonempty_llist(typevar) DOT core_type RPAREN at_mode_expr MINUSGREATER tuple_type
      nonempty_list(mode_legacy): . LOCAL
  ```
  Sample sentence (implementation):
  ```ocaml
  kind_abbrev_ lident = kind_of_ lident : ( ' lident . {%hello|world|} ) -> local_ ( ' lident . {%hello|world|} ) @ lident -> {%hello|world|} let false = UIdent
  ```


### Item `strict_function_or_labeled_tuple_type: . LPAREN reversed_nonempty_llist(typevar) DOT core_type RPAREN at_mode_expr MINUSGREATER tuple_type` (in 30 errors)

- Derivation (3 occurrences):
  ```
  strict_function_or_labeled_tuple_type: tuple_type MINUSGREATER . strict_function_or_labeled_tuple_type
    strict_function_or_labeled_tuple_type: . LPAREN reversed_nonempty_llist(typevar) DOT core_type RPAREN at_mode_expr MINUSGREATER tuple_type
  ```
  Sample sentence (implementation):
  ```ocaml
  kind_abbrev_ lident = kind_of_ {%hello|world|} -> ( ' lident . {%hello|world|} ) @ lident -> {%hello|world|} let false = UIdent
  ```
- Derivation (3 occurrences):
  ```
  strict_function_or_labeled_tuple_type: LPAREN reversed_nonempty_llist(typevar) DOT core_type RPAREN at_mode_expr MINUSGREATER . strict_function_or_labeled_tuple_type
    strict_function_or_labeled_tuple_type: . LPAREN reversed_nonempty_llist(typevar) DOT core_type RPAREN at_mode_expr MINUSGREATER tuple_type
  ```
  Sample sentence (implementation):
  ```ocaml
  kind_abbrev_ lident = kind_of_ ( ' lident . {%hello|world|} ) @ lident -> ( ' lident . {%hello|world|} ) @ lident -> {%hello|world|} let false = UIdent
  ```
- Derivation (3 occurrences):
  ```
  strict_function_or_labeled_tuple_type: LPAREN reversed_nonempty_llist(typevar) DOT core_type RPAREN MINUSGREATER . strict_function_or_labeled_tuple_type
    strict_function_or_labeled_tuple_type: . LPAREN reversed_nonempty_llist(typevar) DOT core_type RPAREN at_mode_expr MINUSGREATER tuple_type
  ```
  Sample sentence (implementation):
  ```ocaml
  kind_abbrev_ lident = kind_of_ ( ' lident . {%hello|world|} ) -> ( ' lident . {%hello|world|} ) @ lident -> {%hello|world|} let false = UIdent
  ```
- Derivation (3 occurrences):
  ```
  strict_function_or_labeled_tuple_type: LIDENT COLON nonempty_list(mode_legacy) tuple_type at_mode_expr MINUSGREATER . strict_function_or_labeled_tuple_type
    strict_function_or_labeled_tuple_type: . LPAREN reversed_nonempty_llist(typevar) DOT core_type RPAREN at_mode_expr MINUSGREATER tuple_type
  ```
  Sample sentence (implementation):
  ```ocaml
  kind_abbrev_ lident = kind_of_ lident : local_ {%hello|world|} @ lident -> ( ' lident . {%hello|world|} ) @ lident -> {%hello|world|} let false = UIdent
  ```
- Derivation (3 occurrences):
  ```
  strict_function_or_labeled_tuple_type: LIDENT COLON nonempty_list(mode_legacy) tuple_type MINUSGREATER . strict_function_or_labeled_tuple_type
    strict_function_or_labeled_tuple_type: . LPAREN reversed_nonempty_llist(typevar) DOT core_type RPAREN at_mode_expr MINUSGREATER tuple_type
  ```
  Sample sentence (implementation):
  ```ocaml
  kind_abbrev_ lident = kind_of_ lident : local_ {%hello|world|} -> ( ' lident . {%hello|world|} ) @ lident -> {%hello|world|} let false = UIdent
  ```
- Derivation (3 occurrences):
  ```
  strict_function_or_labeled_tuple_type: LIDENT COLON nonempty_list(mode_legacy) LPAREN reversed_nonempty_llist(typevar) DOT core_type RPAREN at_mode_expr MINUSGREATER . strict_function_or_labeled_tuple_type
    strict_function_or_labeled_tuple_type: . LPAREN reversed_nonempty_llist(typevar) DOT core_type RPAREN at_mode_expr MINUSGREATER tuple_type
  ```
  Sample sentence (implementation):
  ```ocaml
  kind_abbrev_ lident = kind_of_ lident : local_ ( ' lident . {%hello|world|} ) @ lident -> ( ' lident . {%hello|world|} ) @ lident -> {%hello|world|} let false = UIdent
  ```
- Derivation (3 occurrences):
  ```
  strict_function_or_labeled_tuple_type: LIDENT COLON nonempty_list(mode_legacy) LPAREN reversed_nonempty_llist(typevar) DOT core_type RPAREN MINUSGREATER . strict_function_or_labeled_tuple_type
    strict_function_or_labeled_tuple_type: . LPAREN reversed_nonempty_llist(typevar) DOT core_type RPAREN at_mode_expr MINUSGREATER tuple_type
  ```
  Sample sentence (implementation):
  ```ocaml
  kind_abbrev_ lident = kind_of_ lident : local_ ( ' lident . {%hello|world|} ) -> ( ' lident . {%hello|world|} ) @ lident -> {%hello|world|} let false = UIdent
  ```
- Derivation (3 occurrences):
  ```
  strict_function_or_labeled_tuple_type: LIDENT COLON tuple_type MINUSGREATER . strict_function_or_labeled_tuple_type
    strict_function_or_labeled_tuple_type: . LPAREN reversed_nonempty_llist(typevar) DOT core_type RPAREN at_mode_expr MINUSGREATER tuple_type
  ```
  Sample sentence (implementation):
  ```ocaml
  kind_abbrev_ lident = kind_of_ lident : {%hello|world|} -> ( ' lident . {%hello|world|} ) @ lident -> {%hello|world|} let false = UIdent
  ```
- Derivation (3 occurrences):
  ```
  strict_function_or_labeled_tuple_type: LIDENT COLON LPAREN reversed_nonempty_llist(typevar) DOT core_type RPAREN at_mode_expr MINUSGREATER . strict_function_or_labeled_tuple_type
    strict_function_or_labeled_tuple_type: . LPAREN reversed_nonempty_llist(typevar) DOT core_type RPAREN at_mode_expr MINUSGREATER tuple_type
  ```
  Sample sentence (implementation):
  ```ocaml
  kind_abbrev_ lident = kind_of_ lident : ( ' lident . {%hello|world|} ) @ lident -> ( ' lident . {%hello|world|} ) @ lident -> {%hello|world|} let false = UIdent
  ```
- Derivation (3 occurrences):
  ```
  strict_function_or_labeled_tuple_type: LIDENT COLON LPAREN reversed_nonempty_llist(typevar) DOT core_type RPAREN MINUSGREATER . strict_function_or_labeled_tuple_type
    strict_function_or_labeled_tuple_type: . LPAREN reversed_nonempty_llist(typevar) DOT core_type RPAREN at_mode_expr MINUSGREATER tuple_type
  ```
  Sample sentence (implementation):
  ```ocaml
  kind_abbrev_ lident = kind_of_ lident : ( ' lident . {%hello|world|} ) -> ( ' lident . {%hello|world|} ) @ lident -> {%hello|world|} let false = UIdent
  ```


### Item `list(signature_element): . signature_item list(signature_element)` (in 28 errors)

- Derivation (6 occurrences):
  ```
  list(signature_element): signature_item . list(signature_element)
    list(signature_element): . signature_item list(signature_element)
      signature_item: . item_extension list(post_item_attribute)
        item_extension: . QUOTED_STRING_ITEM
  ```
  Sample sentence (interface):
  ```ocaml
  {%%hello|world|} {%%hello|world|}
  ```
- Derivation (6 occurrences):
  ```
  list(signature_element): SEMISEMI . list(signature_element)
    list(signature_element): . signature_item list(signature_element)
      signature_item: . item_extension list(post_item_attribute)
        item_extension: . QUOTED_STRING_ITEM
  ```
  Sample sentence (interface):
  ```ocaml
  ;; {%%hello|world|}
  ```
- Derivation (3 occurrences):
  ```
  list(signature_element): SEMISEMI . list(signature_element)
    list(signature_element): . signature_item list(signature_element)
      signature_item: . value_description
        value_description: . VAL ext list(attribute) val_ident COLON possibly_poly(core_type) optional_atat_modalities_expr list(post_item_attribute)
  ```
  Sample sentence (interface):
  ```ocaml
  ;; val lident : {%hello|world|}
  ```
- Derivation (3 occurrences):
  ```
  signature: optional_atat_modalities_expr . list(signature_element)
    list(signature_element): . signature_item list(signature_element)
      signature_item: . item_extension list(post_item_attribute)
        item_extension: . QUOTED_STRING_ITEM
  ```
  Sample sentence (interface):
  ```ocaml
  {%%hello|world|}
  ```
- Derivation (2 occurrences):
  ```
  signature: optional_atat_modalities_expr . list(signature_element)
    list(signature_element): . signature_item list(signature_element)
      signature_item: . value_description
        value_description: . VAL ext list(attribute) val_ident COLON possibly_poly(core_type) optional_atat_modalities_expr list(post_item_attribute)
  ```
  Sample sentence (interface):
  ```ocaml
  val lident : {%hello|world|}
  ```
- Derivation (2 occurrences):
  ```
  list(signature_element): signature_item . list(signature_element)
    list(signature_element): . signature_item list(signature_element)
      signature_item: . value_description
        value_description: . VAL ext list(attribute) val_ident COLON possibly_poly(core_type) optional_atat_modalities_expr list(post_item_attribute)
  ```
  Sample sentence (interface):
  ```ocaml
  {%%hello|world|} val lident : {%hello|world|}
  ```
- Derivation (2 occurrences):
  ```
  signature: optional_atat_modalities_expr . list(signature_element)
    list(signature_element): . signature_item list(signature_element)
      signature_item: . primitive_declaration
        primitive_declaration: . EXTERNAL ext list(attribute) val_ident COLON possibly_poly(core_type) optional_atat_modalities_expr EQUAL nonempty_list(raw_string) list(post_item_attribute)
  ```
  Sample sentence (interface):
  ```ocaml
  external lident : {%hello|world|} = "hello"
  ```
- Derivation (2 occurrences):
  ```
  list(signature_element): signature_item . list(signature_element)
    list(signature_element): . signature_item list(signature_element)
      signature_item: . primitive_declaration
        primitive_declaration: . EXTERNAL ext list(attribute) val_ident COLON possibly_poly(core_type) optional_atat_modalities_expr EQUAL nonempty_list(raw_string) list(post_item_attribute)
  ```
  Sample sentence (interface):
  ```ocaml
  {%%hello|world|} external lident : {%hello|world|} = "hello"
  ```
- Derivation (2 occurrences):
  ```
  list(signature_element): SEMISEMI . list(signature_element)
    list(signature_element): . signature_item list(signature_element)
      signature_item: . primitive_declaration
        primitive_declaration: . EXTERNAL ext list(attribute) val_ident COLON possibly_poly(core_type) optional_atat_modalities_expr EQUAL nonempty_list(raw_string) list(post_item_attribute)
  ```
  Sample sentence (interface):
  ```ocaml
  ;; external lident : {%hello|world|} = "hello"
  ```


### Item `newtype: . LPAREN LIDENT COLON jkind_annotation RPAREN` (in 28 errors)

- Derivation (18 occurrences):
  ```
  let_binding_body_no_punning: val_ident COLON TYPE . newtypes DOT tuple_type at_mode_expr EQUAL seq_expr
    newtypes: . nonempty_list(newtype)
      nonempty_list(newtype): . newtype
        newtype: . LPAREN LIDENT COLON jkind_annotation RPAREN
  ```
  Sample sentence (implementation):
  ```ocaml
  include struct let lident : type ( lident : lident ) . {%hello|world|} @ lident = UIdent end let false = UIdent
  ```
- Derivation (4 occurrences):
  ```
  let_binding_body_no_punning: LPAREN val_ident at_mode_expr RPAREN COLON TYPE . newtypes DOT tuple_type at_mode_expr EQUAL seq_expr
    newtypes: . nonempty_list(newtype)
      nonempty_list(newtype): . newtype
        newtype: . LPAREN LIDENT COLON jkind_annotation RPAREN
  ```
  Sample sentence (implementation):
  ```ocaml
  include struct let ( lident @ lident ) : type ( lident : lident ) . {%hello|world|} @ lident = UIdent end let false = UIdent
  ```
- Derivation (4 occurrences):
  ```
  let_binding_body_no_punning: nonempty_list(mode_legacy) val_ident COLON TYPE . newtypes DOT core_type EQUAL seq_expr
    newtypes: . nonempty_list(newtype)
      nonempty_list(newtype): . newtype
        newtype: . LPAREN LIDENT COLON jkind_annotation RPAREN
  ```
  Sample sentence (implementation):
  ```ocaml
  include struct let local_ lident : type ( lident : lident ) . {%hello|world|} = UIdent end let false = UIdent
  ```
- Derivation (2 occurrences):
  ```
  nonempty_list(newtype): newtype . nonempty_list(newtype)
    nonempty_list(newtype): . newtype
      newtype: . LPAREN LIDENT COLON jkind_annotation RPAREN
  ```
  Sample sentence (implementation):
  ```ocaml
  let lident : type lident ( lident : lident ) . {%hello|world|} @ lident = UIdent [@@ and ] let false = UIdent
  ```


### Item `fun_expr: LET . MODULE ext list(attribute) module_name_modal(at_mode_expr) module_binding_body IN seq_expr` (in 27 errors)

- Derivation (27 occurrences):
  ```
  fun_expr: LET . MODULE ext list(attribute) module_name_modal(at_mode_expr) module_binding_body IN seq_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  let module UIdent = {%hello|world|} in stack_ function false -> UIdent let false = UIdent
  ```


### Item `class_signature: . LBRACKET reversed_separated_nonempty_llist(COMMA,core_type) RBRACKET clty_longident` (in 21 errors)

- Derivation (6 occurrences):
  ```
  class_fun_binding: COLON . class_type EQUAL class_expr
    class_type: . class_signature
      class_signature: . LBRACKET reversed_separated_nonempty_llist(COMMA,core_type) RBRACKET clty_longident
  ```
  Sample sentence (implementation):
  ```ocaml
  class lident : [ {%hello|world|} ] lident = lident let false = UIdent
  ```
- Derivation (4 occurrences):
  ```
  list(and_class_type_declaration): AND list(attribute) virtual_flag formal_class_parameters LIDENT . EQUAL class_signature list(post_item_attribute) list(and_class_type_declaration)
    class_signature: . LBRACKET reversed_separated_nonempty_llist(COMMA,core_type) RBRACKET clty_longident
  ```
  Sample sentence (implementation):
  ```ocaml
  class type lident = lident and lident = [ {%hello|world|} ] lident let false = UIdent
  ```
- Derivation (4 occurrences):
  ```
  class_signature: LET OPEN BANG list(attribute) mod_longident IN . class_signature
    class_signature: . LBRACKET reversed_separated_nonempty_llist(COMMA,core_type) RBRACKET clty_longident
  ```
  Sample sentence (implementation):
  ```ocaml
  class type lident = let open ! UIdent in [ {%hello|world|} ] lident let false = UIdent
  ```
- Derivation (4 occurrences):
  ```
  class_signature: LET OPEN list(attribute) mod_longident IN . class_signature
    class_signature: . LBRACKET reversed_separated_nonempty_llist(COMMA,core_type) RBRACKET clty_longident
  ```
  Sample sentence (implementation):
  ```ocaml
  class type lident = let open UIdent in [ {%hello|world|} ] lident let false = UIdent
  ```
- Derivation (3 occurrences):
  ```
  list(and_class_description): AND list(attribute) virtual_flag formal_class_parameters LIDENT . COLON class_type list(post_item_attribute) list(and_class_description)
    class_type: . class_signature
      class_signature: . LBRACKET reversed_separated_nonempty_llist(COMMA,core_type) RBRACKET clty_longident
  ```
  Sample sentence (interface):
  ```ocaml
  class lident : {%hello|world|} and lident : [ {%hello|world|} ] lident
  ```


### Item `reversed_nonempty_llist(typevar): reversed_nonempty_llist(typevar) . QUOTE ident` (in 21 errors)

- Derivation (21 occurrences):
  ```
  reversed_nonempty_llist(typevar): reversed_nonempty_llist(typevar) . QUOTE ident
  ```
  Sample sentence (implementation):
  ```ocaml
  include struct let lident : ' lident ' lident . {%hello|world|} = UIdent end let false = UIdent
  ```


### Item `reversed_nonempty_llist(typevar): reversed_nonempty_llist(typevar) . LPAREN QUOTE ident COLON jkind_annotation RPAREN` (in 21 errors)

- Derivation (21 occurrences):
  ```
  reversed_nonempty_llist(typevar): reversed_nonempty_llist(typevar) . LPAREN QUOTE ident COLON jkind_annotation RPAREN
  ```
  Sample sentence (implementation):
  ```ocaml
  include struct let lident : ' lident ( ' lident : lident ) . {%hello|world|} = UIdent end let false = UIdent
  ```


### Item `strict_function_or_labeled_tuple_type: . LIDENT COLON LPAREN reversed_nonempty_llist(typevar) DOT core_type RPAREN at_mode_expr MINUSGREATER tuple_type` (in 20 errors)

- Derivation (2 occurrences):
  ```
  strict_function_or_labeled_tuple_type: tuple_type MINUSGREATER . strict_function_or_labeled_tuple_type
    strict_function_or_labeled_tuple_type: . LIDENT COLON LPAREN reversed_nonempty_llist(typevar) DOT core_type RPAREN at_mode_expr MINUSGREATER tuple_type
  ```
  Sample sentence (implementation):
  ```ocaml
  kind_abbrev_ lident = kind_of_ {%hello|world|} -> lident : ( ' lident . {%hello|world|} ) @ lident -> {%hello|world|} let false = UIdent
  ```
- Derivation (2 occurrences):
  ```
  strict_function_or_labeled_tuple_type: LPAREN reversed_nonempty_llist(typevar) DOT core_type RPAREN at_mode_expr MINUSGREATER . strict_function_or_labeled_tuple_type
    strict_function_or_labeled_tuple_type: . LIDENT COLON LPAREN reversed_nonempty_llist(typevar) DOT core_type RPAREN at_mode_expr MINUSGREATER tuple_type
  ```
  Sample sentence (implementation):
  ```ocaml
  kind_abbrev_ lident = kind_of_ ( ' lident . {%hello|world|} ) @ lident -> lident : ( ' lident . {%hello|world|} ) @ lident -> {%hello|world|} let false = UIdent
  ```
- Derivation (2 occurrences):
  ```
  strict_function_or_labeled_tuple_type: LPAREN reversed_nonempty_llist(typevar) DOT core_type RPAREN MINUSGREATER . strict_function_or_labeled_tuple_type
    strict_function_or_labeled_tuple_type: . LIDENT COLON LPAREN reversed_nonempty_llist(typevar) DOT core_type RPAREN at_mode_expr MINUSGREATER tuple_type
  ```
  Sample sentence (implementation):
  ```ocaml
  kind_abbrev_ lident = kind_of_ ( ' lident . {%hello|world|} ) -> lident : ( ' lident . {%hello|world|} ) @ lident -> {%hello|world|} let false = UIdent
  ```
- Derivation (2 occurrences):
  ```
  strict_function_or_labeled_tuple_type: LIDENT COLON nonempty_list(mode_legacy) tuple_type at_mode_expr MINUSGREATER . strict_function_or_labeled_tuple_type
    strict_function_or_labeled_tuple_type: . LIDENT COLON LPAREN reversed_nonempty_llist(typevar) DOT core_type RPAREN at_mode_expr MINUSGREATER tuple_type
  ```
  Sample sentence (implementation):
  ```ocaml
  kind_abbrev_ lident = kind_of_ lident : local_ {%hello|world|} @ lident -> lident : ( ' lident . {%hello|world|} ) @ lident -> {%hello|world|} let false = UIdent
  ```
- Derivation (2 occurrences):
  ```
  strict_function_or_labeled_tuple_type: LIDENT COLON nonempty_list(mode_legacy) tuple_type MINUSGREATER . strict_function_or_labeled_tuple_type
    strict_function_or_labeled_tuple_type: . LIDENT COLON LPAREN reversed_nonempty_llist(typevar) DOT core_type RPAREN at_mode_expr MINUSGREATER tuple_type
  ```
  Sample sentence (implementation):
  ```ocaml
  kind_abbrev_ lident = kind_of_ lident : local_ {%hello|world|} -> lident : ( ' lident . {%hello|world|} ) @ lident -> {%hello|world|} let false = UIdent
  ```
- Derivation (2 occurrences):
  ```
  strict_function_or_labeled_tuple_type: LIDENT COLON nonempty_list(mode_legacy) LPAREN reversed_nonempty_llist(typevar) DOT core_type RPAREN at_mode_expr MINUSGREATER . strict_function_or_labeled_tuple_type
    strict_function_or_labeled_tuple_type: . LIDENT COLON LPAREN reversed_nonempty_llist(typevar) DOT core_type RPAREN at_mode_expr MINUSGREATER tuple_type
  ```
  Sample sentence (implementation):
  ```ocaml
  kind_abbrev_ lident = kind_of_ lident : local_ ( ' lident . {%hello|world|} ) @ lident -> lident : ( ' lident . {%hello|world|} ) @ lident -> {%hello|world|} let false = UIdent
  ```
- Derivation (2 occurrences):
  ```
  strict_function_or_labeled_tuple_type: LIDENT COLON nonempty_list(mode_legacy) LPAREN reversed_nonempty_llist(typevar) DOT core_type RPAREN MINUSGREATER . strict_function_or_labeled_tuple_type
    strict_function_or_labeled_tuple_type: . LIDENT COLON LPAREN reversed_nonempty_llist(typevar) DOT core_type RPAREN at_mode_expr MINUSGREATER tuple_type
  ```
  Sample sentence (implementation):
  ```ocaml
  kind_abbrev_ lident = kind_of_ lident : local_ ( ' lident . {%hello|world|} ) -> lident : ( ' lident . {%hello|world|} ) @ lident -> {%hello|world|} let false = UIdent
  ```
- Derivation (2 occurrences):
  ```
  strict_function_or_labeled_tuple_type: LIDENT COLON tuple_type MINUSGREATER . strict_function_or_labeled_tuple_type
    strict_function_or_labeled_tuple_type: . LIDENT COLON LPAREN reversed_nonempty_llist(typevar) DOT core_type RPAREN at_mode_expr MINUSGREATER tuple_type
  ```
  Sample sentence (implementation):
  ```ocaml
  kind_abbrev_ lident = kind_of_ lident : {%hello|world|} -> lident : ( ' lident . {%hello|world|} ) @ lident -> {%hello|world|} let false = UIdent
  ```
- Derivation (2 occurrences):
  ```
  strict_function_or_labeled_tuple_type: LIDENT COLON LPAREN reversed_nonempty_llist(typevar) DOT core_type RPAREN at_mode_expr MINUSGREATER . strict_function_or_labeled_tuple_type
    strict_function_or_labeled_tuple_type: . LIDENT COLON LPAREN reversed_nonempty_llist(typevar) DOT core_type RPAREN at_mode_expr MINUSGREATER tuple_type
  ```
  Sample sentence (implementation):
  ```ocaml
  kind_abbrev_ lident = kind_of_ lident : ( ' lident . {%hello|world|} ) @ lident -> lident : ( ' lident . {%hello|world|} ) @ lident -> {%hello|world|} let false = UIdent
  ```
- Derivation (2 occurrences):
  ```
  strict_function_or_labeled_tuple_type: LIDENT COLON LPAREN reversed_nonempty_llist(typevar) DOT core_type RPAREN MINUSGREATER . strict_function_or_labeled_tuple_type
    strict_function_or_labeled_tuple_type: . LIDENT COLON LPAREN reversed_nonempty_llist(typevar) DOT core_type RPAREN at_mode_expr MINUSGREATER tuple_type
  ```
  Sample sentence (implementation):
  ```ocaml
  kind_abbrev_ lident = kind_of_ lident : ( ' lident . {%hello|world|} ) -> lident : ( ' lident . {%hello|world|} ) @ lident -> {%hello|world|} let false = UIdent
  ```


### Item `strict_function_or_labeled_tuple_type: . LIDENT COLON tuple_type MINUSGREATER tuple_type` (in 20 errors)

- Derivation (2 occurrences):
  ```
  strict_function_or_labeled_tuple_type: tuple_type MINUSGREATER . strict_function_or_labeled_tuple_type
    strict_function_or_labeled_tuple_type: . LIDENT COLON tuple_type MINUSGREATER tuple_type
  ```
  Sample sentence (implementation):
  ```ocaml
  kind_abbrev_ lident = kind_of_ {%hello|world|} -> lident : {%hello|world|} -> {%hello|world|} let false = UIdent
  ```
- Derivation (2 occurrences):
  ```
  strict_function_or_labeled_tuple_type: LPAREN reversed_nonempty_llist(typevar) DOT core_type RPAREN at_mode_expr MINUSGREATER . strict_function_or_labeled_tuple_type
    strict_function_or_labeled_tuple_type: . LIDENT COLON tuple_type MINUSGREATER tuple_type
  ```
  Sample sentence (implementation):
  ```ocaml
  kind_abbrev_ lident = kind_of_ ( ' lident . {%hello|world|} ) @ lident -> lident : {%hello|world|} -> {%hello|world|} let false = UIdent
  ```
- Derivation (2 occurrences):
  ```
  strict_function_or_labeled_tuple_type: LPAREN reversed_nonempty_llist(typevar) DOT core_type RPAREN MINUSGREATER . strict_function_or_labeled_tuple_type
    strict_function_or_labeled_tuple_type: . LIDENT COLON tuple_type MINUSGREATER tuple_type
  ```
  Sample sentence (implementation):
  ```ocaml
  kind_abbrev_ lident = kind_of_ ( ' lident . {%hello|world|} ) -> lident : {%hello|world|} -> {%hello|world|} let false = UIdent
  ```
- Derivation (2 occurrences):
  ```
  strict_function_or_labeled_tuple_type: LIDENT COLON nonempty_list(mode_legacy) tuple_type at_mode_expr MINUSGREATER . strict_function_or_labeled_tuple_type
    strict_function_or_labeled_tuple_type: . LIDENT COLON tuple_type MINUSGREATER tuple_type
  ```
  Sample sentence (implementation):
  ```ocaml
  kind_abbrev_ lident = kind_of_ lident : local_ {%hello|world|} @ lident -> lident : {%hello|world|} -> {%hello|world|} let false = UIdent
  ```
- Derivation (2 occurrences):
  ```
  strict_function_or_labeled_tuple_type: LIDENT COLON nonempty_list(mode_legacy) tuple_type MINUSGREATER . strict_function_or_labeled_tuple_type
    strict_function_or_labeled_tuple_type: . LIDENT COLON tuple_type MINUSGREATER tuple_type
  ```
  Sample sentence (implementation):
  ```ocaml
  kind_abbrev_ lident = kind_of_ lident : local_ {%hello|world|} -> lident : {%hello|world|} -> {%hello|world|} let false = UIdent
  ```
- Derivation (2 occurrences):
  ```
  strict_function_or_labeled_tuple_type: LIDENT COLON nonempty_list(mode_legacy) LPAREN reversed_nonempty_llist(typevar) DOT core_type RPAREN at_mode_expr MINUSGREATER . strict_function_or_labeled_tuple_type
    strict_function_or_labeled_tuple_type: . LIDENT COLON tuple_type MINUSGREATER tuple_type
  ```
  Sample sentence (implementation):
  ```ocaml
  kind_abbrev_ lident = kind_of_ lident : local_ ( ' lident . {%hello|world|} ) @ lident -> lident : {%hello|world|} -> {%hello|world|} let false = UIdent
  ```
- Derivation (2 occurrences):
  ```
  strict_function_or_labeled_tuple_type: LIDENT COLON nonempty_list(mode_legacy) LPAREN reversed_nonempty_llist(typevar) DOT core_type RPAREN MINUSGREATER . strict_function_or_labeled_tuple_type
    strict_function_or_labeled_tuple_type: . LIDENT COLON tuple_type MINUSGREATER tuple_type
  ```
  Sample sentence (implementation):
  ```ocaml
  kind_abbrev_ lident = kind_of_ lident : local_ ( ' lident . {%hello|world|} ) -> lident : {%hello|world|} -> {%hello|world|} let false = UIdent
  ```
- Derivation (2 occurrences):
  ```
  strict_function_or_labeled_tuple_type: LIDENT COLON tuple_type MINUSGREATER . strict_function_or_labeled_tuple_type
    strict_function_or_labeled_tuple_type: . LIDENT COLON tuple_type MINUSGREATER tuple_type
  ```
  Sample sentence (implementation):
  ```ocaml
  kind_abbrev_ lident = kind_of_ lident : {%hello|world|} -> lident : {%hello|world|} -> {%hello|world|} let false = UIdent
  ```
- Derivation (2 occurrences):
  ```
  strict_function_or_labeled_tuple_type: LIDENT COLON LPAREN reversed_nonempty_llist(typevar) DOT core_type RPAREN at_mode_expr MINUSGREATER . strict_function_or_labeled_tuple_type
    strict_function_or_labeled_tuple_type: . LIDENT COLON tuple_type MINUSGREATER tuple_type
  ```
  Sample sentence (implementation):
  ```ocaml
  kind_abbrev_ lident = kind_of_ lident : ( ' lident . {%hello|world|} ) @ lident -> lident : {%hello|world|} -> {%hello|world|} let false = UIdent
  ```
- Derivation (2 occurrences):
  ```
  strict_function_or_labeled_tuple_type: LIDENT COLON LPAREN reversed_nonempty_llist(typevar) DOT core_type RPAREN MINUSGREATER . strict_function_or_labeled_tuple_type
    strict_function_or_labeled_tuple_type: . LIDENT COLON tuple_type MINUSGREATER tuple_type
  ```
  Sample sentence (implementation):
  ```ocaml
  kind_abbrev_ lident = kind_of_ lident : ( ' lident . {%hello|world|} ) -> lident : {%hello|world|} -> {%hello|world|} let false = UIdent
  ```


### Item `strict_function_or_labeled_tuple_type: . LIDENT COLON nonempty_list(mode_legacy) LPAREN reversed_nonempty_llist(typevar) DOT core_type RPAREN at_mode_expr MINUSGREATER tuple_type` (in 20 errors)

- Derivation (2 occurrences):
  ```
  strict_function_or_labeled_tuple_type: tuple_type MINUSGREATER . strict_function_or_labeled_tuple_type
    strict_function_or_labeled_tuple_type: . LIDENT COLON nonempty_list(mode_legacy) LPAREN reversed_nonempty_llist(typevar) DOT core_type RPAREN at_mode_expr MINUSGREATER tuple_type
  ```
  Sample sentence (implementation):
  ```ocaml
  kind_abbrev_ lident = kind_of_ {%hello|world|} -> lident : local_ ( ' lident . {%hello|world|} ) @ lident -> {%hello|world|} let false = UIdent
  ```
- Derivation (2 occurrences):
  ```
  strict_function_or_labeled_tuple_type: LPAREN reversed_nonempty_llist(typevar) DOT core_type RPAREN at_mode_expr MINUSGREATER . strict_function_or_labeled_tuple_type
    strict_function_or_labeled_tuple_type: . LIDENT COLON nonempty_list(mode_legacy) LPAREN reversed_nonempty_llist(typevar) DOT core_type RPAREN at_mode_expr MINUSGREATER tuple_type
  ```
  Sample sentence (implementation):
  ```ocaml
  kind_abbrev_ lident = kind_of_ ( ' lident . {%hello|world|} ) @ lident -> lident : local_ ( ' lident . {%hello|world|} ) @ lident -> {%hello|world|} let false = UIdent
  ```
- Derivation (2 occurrences):
  ```
  strict_function_or_labeled_tuple_type: LPAREN reversed_nonempty_llist(typevar) DOT core_type RPAREN MINUSGREATER . strict_function_or_labeled_tuple_type
    strict_function_or_labeled_tuple_type: . LIDENT COLON nonempty_list(mode_legacy) LPAREN reversed_nonempty_llist(typevar) DOT core_type RPAREN at_mode_expr MINUSGREATER tuple_type
  ```
  Sample sentence (implementation):
  ```ocaml
  kind_abbrev_ lident = kind_of_ ( ' lident . {%hello|world|} ) -> lident : local_ ( ' lident . {%hello|world|} ) @ lident -> {%hello|world|} let false = UIdent
  ```
- Derivation (2 occurrences):
  ```
  strict_function_or_labeled_tuple_type: LIDENT COLON nonempty_list(mode_legacy) tuple_type at_mode_expr MINUSGREATER . strict_function_or_labeled_tuple_type
    strict_function_or_labeled_tuple_type: . LIDENT COLON nonempty_list(mode_legacy) LPAREN reversed_nonempty_llist(typevar) DOT core_type RPAREN at_mode_expr MINUSGREATER tuple_type
  ```
  Sample sentence (implementation):
  ```ocaml
  kind_abbrev_ lident = kind_of_ lident : local_ {%hello|world|} @ lident -> lident : local_ ( ' lident . {%hello|world|} ) @ lident -> {%hello|world|} let false = UIdent
  ```
- Derivation (2 occurrences):
  ```
  strict_function_or_labeled_tuple_type: LIDENT COLON nonempty_list(mode_legacy) tuple_type MINUSGREATER . strict_function_or_labeled_tuple_type
    strict_function_or_labeled_tuple_type: . LIDENT COLON nonempty_list(mode_legacy) LPAREN reversed_nonempty_llist(typevar) DOT core_type RPAREN at_mode_expr MINUSGREATER tuple_type
  ```
  Sample sentence (implementation):
  ```ocaml
  kind_abbrev_ lident = kind_of_ lident : local_ {%hello|world|} -> lident : local_ ( ' lident . {%hello|world|} ) @ lident -> {%hello|world|} let false = UIdent
  ```
- Derivation (2 occurrences):
  ```
  strict_function_or_labeled_tuple_type: LIDENT COLON nonempty_list(mode_legacy) LPAREN reversed_nonempty_llist(typevar) DOT core_type RPAREN at_mode_expr MINUSGREATER . strict_function_or_labeled_tuple_type
    strict_function_or_labeled_tuple_type: . LIDENT COLON nonempty_list(mode_legacy) LPAREN reversed_nonempty_llist(typevar) DOT core_type RPAREN at_mode_expr MINUSGREATER tuple_type
  ```
  Sample sentence (implementation):
  ```ocaml
  kind_abbrev_ lident = kind_of_ lident : local_ ( ' lident . {%hello|world|} ) @ lident -> lident : local_ ( ' lident . {%hello|world|} ) @ lident -> {%hello|world|} let false = UIdent
  ```
- Derivation (2 occurrences):
  ```
  strict_function_or_labeled_tuple_type: LIDENT COLON nonempty_list(mode_legacy) LPAREN reversed_nonempty_llist(typevar) DOT core_type RPAREN MINUSGREATER . strict_function_or_labeled_tuple_type
    strict_function_or_labeled_tuple_type: . LIDENT COLON nonempty_list(mode_legacy) LPAREN reversed_nonempty_llist(typevar) DOT core_type RPAREN at_mode_expr MINUSGREATER tuple_type
  ```
  Sample sentence (implementation):
  ```ocaml
  kind_abbrev_ lident = kind_of_ lident : local_ ( ' lident . {%hello|world|} ) -> lident : local_ ( ' lident . {%hello|world|} ) @ lident -> {%hello|world|} let false = UIdent
  ```
- Derivation (2 occurrences):
  ```
  strict_function_or_labeled_tuple_type: LIDENT COLON tuple_type MINUSGREATER . strict_function_or_labeled_tuple_type
    strict_function_or_labeled_tuple_type: . LIDENT COLON nonempty_list(mode_legacy) LPAREN reversed_nonempty_llist(typevar) DOT core_type RPAREN at_mode_expr MINUSGREATER tuple_type
  ```
  Sample sentence (implementation):
  ```ocaml
  kind_abbrev_ lident = kind_of_ lident : {%hello|world|} -> lident : local_ ( ' lident . {%hello|world|} ) @ lident -> {%hello|world|} let false = UIdent
  ```
- Derivation (2 occurrences):
  ```
  strict_function_or_labeled_tuple_type: LIDENT COLON LPAREN reversed_nonempty_llist(typevar) DOT core_type RPAREN at_mode_expr MINUSGREATER . strict_function_or_labeled_tuple_type
    strict_function_or_labeled_tuple_type: . LIDENT COLON nonempty_list(mode_legacy) LPAREN reversed_nonempty_llist(typevar) DOT core_type RPAREN at_mode_expr MINUSGREATER tuple_type
  ```
  Sample sentence (implementation):
  ```ocaml
  kind_abbrev_ lident = kind_of_ lident : ( ' lident . {%hello|world|} ) @ lident -> lident : local_ ( ' lident . {%hello|world|} ) @ lident -> {%hello|world|} let false = UIdent
  ```
- Derivation (2 occurrences):
  ```
  strict_function_or_labeled_tuple_type: LIDENT COLON LPAREN reversed_nonempty_llist(typevar) DOT core_type RPAREN MINUSGREATER . strict_function_or_labeled_tuple_type
    strict_function_or_labeled_tuple_type: . LIDENT COLON nonempty_list(mode_legacy) LPAREN reversed_nonempty_llist(typevar) DOT core_type RPAREN at_mode_expr MINUSGREATER tuple_type
  ```
  Sample sentence (implementation):
  ```ocaml
  kind_abbrev_ lident = kind_of_ lident : ( ' lident . {%hello|world|} ) -> lident : local_ ( ' lident . {%hello|world|} ) @ lident -> {%hello|world|} let false = UIdent
  ```


### Item `strict_function_or_labeled_tuple_type: . LIDENT COLON nonempty_list(mode_legacy) tuple_type MINUSGREATER tuple_type` (in 20 errors)

- Derivation (2 occurrences):
  ```
  strict_function_or_labeled_tuple_type: tuple_type MINUSGREATER . strict_function_or_labeled_tuple_type
    strict_function_or_labeled_tuple_type: . LIDENT COLON nonempty_list(mode_legacy) tuple_type MINUSGREATER tuple_type
  ```
  Sample sentence (implementation):
  ```ocaml
  kind_abbrev_ lident = kind_of_ {%hello|world|} -> lident : local_ {%hello|world|} -> {%hello|world|} let false = UIdent
  ```
- Derivation (2 occurrences):
  ```
  strict_function_or_labeled_tuple_type: LPAREN reversed_nonempty_llist(typevar) DOT core_type RPAREN at_mode_expr MINUSGREATER . strict_function_or_labeled_tuple_type
    strict_function_or_labeled_tuple_type: . LIDENT COLON nonempty_list(mode_legacy) tuple_type MINUSGREATER tuple_type
  ```
  Sample sentence (implementation):
  ```ocaml
  kind_abbrev_ lident = kind_of_ ( ' lident . {%hello|world|} ) @ lident -> lident : local_ {%hello|world|} -> {%hello|world|} let false = UIdent
  ```
- Derivation (2 occurrences):
  ```
  strict_function_or_labeled_tuple_type: LPAREN reversed_nonempty_llist(typevar) DOT core_type RPAREN MINUSGREATER . strict_function_or_labeled_tuple_type
    strict_function_or_labeled_tuple_type: . LIDENT COLON nonempty_list(mode_legacy) tuple_type MINUSGREATER tuple_type
  ```
  Sample sentence (implementation):
  ```ocaml
  kind_abbrev_ lident = kind_of_ ( ' lident . {%hello|world|} ) -> lident : local_ {%hello|world|} -> {%hello|world|} let false = UIdent
  ```
- Derivation (2 occurrences):
  ```
  strict_function_or_labeled_tuple_type: LIDENT COLON nonempty_list(mode_legacy) tuple_type at_mode_expr MINUSGREATER . strict_function_or_labeled_tuple_type
    strict_function_or_labeled_tuple_type: . LIDENT COLON nonempty_list(mode_legacy) tuple_type MINUSGREATER tuple_type
  ```
  Sample sentence (implementation):
  ```ocaml
  kind_abbrev_ lident = kind_of_ lident : local_ {%hello|world|} @ lident -> lident : local_ {%hello|world|} -> {%hello|world|} let false = UIdent
  ```
- Derivation (2 occurrences):
  ```
  strict_function_or_labeled_tuple_type: LIDENT COLON nonempty_list(mode_legacy) tuple_type MINUSGREATER . strict_function_or_labeled_tuple_type
    strict_function_or_labeled_tuple_type: . LIDENT COLON nonempty_list(mode_legacy) tuple_type MINUSGREATER tuple_type
  ```
  Sample sentence (implementation):
  ```ocaml
  kind_abbrev_ lident = kind_of_ lident : local_ {%hello|world|} -> lident : local_ {%hello|world|} -> {%hello|world|} let false = UIdent
  ```
- Derivation (2 occurrences):
  ```
  strict_function_or_labeled_tuple_type: LIDENT COLON nonempty_list(mode_legacy) LPAREN reversed_nonempty_llist(typevar) DOT core_type RPAREN at_mode_expr MINUSGREATER . strict_function_or_labeled_tuple_type
    strict_function_or_labeled_tuple_type: . LIDENT COLON nonempty_list(mode_legacy) tuple_type MINUSGREATER tuple_type
  ```
  Sample sentence (implementation):
  ```ocaml
  kind_abbrev_ lident = kind_of_ lident : local_ ( ' lident . {%hello|world|} ) @ lident -> lident : local_ {%hello|world|} -> {%hello|world|} let false = UIdent
  ```
- Derivation (2 occurrences):
  ```
  strict_function_or_labeled_tuple_type: LIDENT COLON nonempty_list(mode_legacy) LPAREN reversed_nonempty_llist(typevar) DOT core_type RPAREN MINUSGREATER . strict_function_or_labeled_tuple_type
    strict_function_or_labeled_tuple_type: . LIDENT COLON nonempty_list(mode_legacy) tuple_type MINUSGREATER tuple_type
  ```
  Sample sentence (implementation):
  ```ocaml
  kind_abbrev_ lident = kind_of_ lident : local_ ( ' lident . {%hello|world|} ) -> lident : local_ {%hello|world|} -> {%hello|world|} let false = UIdent
  ```
- Derivation (2 occurrences):
  ```
  strict_function_or_labeled_tuple_type: LIDENT COLON tuple_type MINUSGREATER . strict_function_or_labeled_tuple_type
    strict_function_or_labeled_tuple_type: . LIDENT COLON nonempty_list(mode_legacy) tuple_type MINUSGREATER tuple_type
  ```
  Sample sentence (implementation):
  ```ocaml
  kind_abbrev_ lident = kind_of_ lident : {%hello|world|} -> lident : local_ {%hello|world|} -> {%hello|world|} let false = UIdent
  ```
- Derivation (2 occurrences):
  ```
  strict_function_or_labeled_tuple_type: LIDENT COLON LPAREN reversed_nonempty_llist(typevar) DOT core_type RPAREN at_mode_expr MINUSGREATER . strict_function_or_labeled_tuple_type
    strict_function_or_labeled_tuple_type: . LIDENT COLON nonempty_list(mode_legacy) tuple_type MINUSGREATER tuple_type
  ```
  Sample sentence (implementation):
  ```ocaml
  kind_abbrev_ lident = kind_of_ lident : ( ' lident . {%hello|world|} ) @ lident -> lident : local_ {%hello|world|} -> {%hello|world|} let false = UIdent
  ```
- Derivation (2 occurrences):
  ```
  strict_function_or_labeled_tuple_type: LIDENT COLON LPAREN reversed_nonempty_llist(typevar) DOT core_type RPAREN MINUSGREATER . strict_function_or_labeled_tuple_type
    strict_function_or_labeled_tuple_type: . LIDENT COLON nonempty_list(mode_legacy) tuple_type MINUSGREATER tuple_type
  ```
  Sample sentence (implementation):
  ```ocaml
  kind_abbrev_ lident = kind_of_ lident : ( ' lident . {%hello|world|} ) -> lident : local_ {%hello|world|} -> {%hello|world|} let false = UIdent
  ```


### Item `strict_function_or_labeled_tuple_type: . LIDENT COLON nonempty_list(mode_legacy) tuple_type at_mode_expr MINUSGREATER tuple_type` (in 20 errors)

- Derivation (2 occurrences):
  ```
  strict_function_or_labeled_tuple_type: tuple_type MINUSGREATER . strict_function_or_labeled_tuple_type
    strict_function_or_labeled_tuple_type: . LIDENT COLON nonempty_list(mode_legacy) tuple_type at_mode_expr MINUSGREATER tuple_type
  ```
  Sample sentence (implementation):
  ```ocaml
  kind_abbrev_ lident = kind_of_ {%hello|world|} -> lident : local_ {%hello|world|} @ lident -> {%hello|world|} let false = UIdent
  ```
- Derivation (2 occurrences):
  ```
  strict_function_or_labeled_tuple_type: LPAREN reversed_nonempty_llist(typevar) DOT core_type RPAREN at_mode_expr MINUSGREATER . strict_function_or_labeled_tuple_type
    strict_function_or_labeled_tuple_type: . LIDENT COLON nonempty_list(mode_legacy) tuple_type at_mode_expr MINUSGREATER tuple_type
  ```
  Sample sentence (implementation):
  ```ocaml
  kind_abbrev_ lident = kind_of_ ( ' lident . {%hello|world|} ) @ lident -> lident : local_ {%hello|world|} @ lident -> {%hello|world|} let false = UIdent
  ```
- Derivation (2 occurrences):
  ```
  strict_function_or_labeled_tuple_type: LPAREN reversed_nonempty_llist(typevar) DOT core_type RPAREN MINUSGREATER . strict_function_or_labeled_tuple_type
    strict_function_or_labeled_tuple_type: . LIDENT COLON nonempty_list(mode_legacy) tuple_type at_mode_expr MINUSGREATER tuple_type
  ```
  Sample sentence (implementation):
  ```ocaml
  kind_abbrev_ lident = kind_of_ ( ' lident . {%hello|world|} ) -> lident : local_ {%hello|world|} @ lident -> {%hello|world|} let false = UIdent
  ```
- Derivation (2 occurrences):
  ```
  strict_function_or_labeled_tuple_type: LIDENT COLON nonempty_list(mode_legacy) tuple_type at_mode_expr MINUSGREATER . strict_function_or_labeled_tuple_type
    strict_function_or_labeled_tuple_type: . LIDENT COLON nonempty_list(mode_legacy) tuple_type at_mode_expr MINUSGREATER tuple_type
  ```
  Sample sentence (implementation):
  ```ocaml
  kind_abbrev_ lident = kind_of_ lident : local_ {%hello|world|} @ lident -> lident : local_ {%hello|world|} @ lident -> {%hello|world|} let false = UIdent
  ```
- Derivation (2 occurrences):
  ```
  strict_function_or_labeled_tuple_type: LIDENT COLON nonempty_list(mode_legacy) tuple_type MINUSGREATER . strict_function_or_labeled_tuple_type
    strict_function_or_labeled_tuple_type: . LIDENT COLON nonempty_list(mode_legacy) tuple_type at_mode_expr MINUSGREATER tuple_type
  ```
  Sample sentence (implementation):
  ```ocaml
  kind_abbrev_ lident = kind_of_ lident : local_ {%hello|world|} -> lident : local_ {%hello|world|} @ lident -> {%hello|world|} let false = UIdent
  ```
- Derivation (2 occurrences):
  ```
  strict_function_or_labeled_tuple_type: LIDENT COLON nonempty_list(mode_legacy) LPAREN reversed_nonempty_llist(typevar) DOT core_type RPAREN at_mode_expr MINUSGREATER . strict_function_or_labeled_tuple_type
    strict_function_or_labeled_tuple_type: . LIDENT COLON nonempty_list(mode_legacy) tuple_type at_mode_expr MINUSGREATER tuple_type
  ```
  Sample sentence (implementation):
  ```ocaml
  kind_abbrev_ lident = kind_of_ lident : local_ ( ' lident . {%hello|world|} ) @ lident -> lident : local_ {%hello|world|} @ lident -> {%hello|world|} let false = UIdent
  ```
- Derivation (2 occurrences):
  ```
  strict_function_or_labeled_tuple_type: LIDENT COLON nonempty_list(mode_legacy) LPAREN reversed_nonempty_llist(typevar) DOT core_type RPAREN MINUSGREATER . strict_function_or_labeled_tuple_type
    strict_function_or_labeled_tuple_type: . LIDENT COLON nonempty_list(mode_legacy) tuple_type at_mode_expr MINUSGREATER tuple_type
  ```
  Sample sentence (implementation):
  ```ocaml
  kind_abbrev_ lident = kind_of_ lident : local_ ( ' lident . {%hello|world|} ) -> lident : local_ {%hello|world|} @ lident -> {%hello|world|} let false = UIdent
  ```
- Derivation (2 occurrences):
  ```
  strict_function_or_labeled_tuple_type: LIDENT COLON tuple_type MINUSGREATER . strict_function_or_labeled_tuple_type
    strict_function_or_labeled_tuple_type: . LIDENT COLON nonempty_list(mode_legacy) tuple_type at_mode_expr MINUSGREATER tuple_type
  ```
  Sample sentence (implementation):
  ```ocaml
  kind_abbrev_ lident = kind_of_ lident : {%hello|world|} -> lident : local_ {%hello|world|} @ lident -> {%hello|world|} let false = UIdent
  ```
- Derivation (2 occurrences):
  ```
  strict_function_or_labeled_tuple_type: LIDENT COLON LPAREN reversed_nonempty_llist(typevar) DOT core_type RPAREN at_mode_expr MINUSGREATER . strict_function_or_labeled_tuple_type
    strict_function_or_labeled_tuple_type: . LIDENT COLON nonempty_list(mode_legacy) tuple_type at_mode_expr MINUSGREATER tuple_type
  ```
  Sample sentence (implementation):
  ```ocaml
  kind_abbrev_ lident = kind_of_ lident : ( ' lident . {%hello|world|} ) @ lident -> lident : local_ {%hello|world|} @ lident -> {%hello|world|} let false = UIdent
  ```
- Derivation (2 occurrences):
  ```
  strict_function_or_labeled_tuple_type: LIDENT COLON LPAREN reversed_nonempty_llist(typevar) DOT core_type RPAREN MINUSGREATER . strict_function_or_labeled_tuple_type
    strict_function_or_labeled_tuple_type: . LIDENT COLON nonempty_list(mode_legacy) tuple_type at_mode_expr MINUSGREATER tuple_type
  ```
  Sample sentence (implementation):
  ```ocaml
  kind_abbrev_ lident = kind_of_ lident : ( ' lident . {%hello|world|} ) -> lident : local_ {%hello|world|} @ lident -> {%hello|world|} let false = UIdent
  ```


### Item `strict_function_or_labeled_tuple_type: . LIDENT COLON atomic_type STAR reversed_separated_nonempty_llist(STAR,labeled_tuple_typ_element)` (in 20 errors)

- Derivation (2 occurrences):
  ```
  strict_function_or_labeled_tuple_type: tuple_type MINUSGREATER . strict_function_or_labeled_tuple_type
    strict_function_or_labeled_tuple_type: . LIDENT COLON atomic_type STAR reversed_separated_nonempty_llist(STAR,labeled_tuple_typ_element)
  ```
  Sample sentence (implementation):
  ```ocaml
  kind_abbrev_ lident = kind_of_ {%hello|world|} -> lident : {%hello|world|} * {%hello|world|} let false = UIdent
  ```
- Derivation (2 occurrences):
  ```
  strict_function_or_labeled_tuple_type: LPAREN reversed_nonempty_llist(typevar) DOT core_type RPAREN at_mode_expr MINUSGREATER . strict_function_or_labeled_tuple_type
    strict_function_or_labeled_tuple_type: . LIDENT COLON atomic_type STAR reversed_separated_nonempty_llist(STAR,labeled_tuple_typ_element)
  ```
  Sample sentence (implementation):
  ```ocaml
  kind_abbrev_ lident = kind_of_ ( ' lident . {%hello|world|} ) @ lident -> lident : {%hello|world|} * {%hello|world|} let false = UIdent
  ```
- Derivation (2 occurrences):
  ```
  strict_function_or_labeled_tuple_type: LPAREN reversed_nonempty_llist(typevar) DOT core_type RPAREN MINUSGREATER . strict_function_or_labeled_tuple_type
    strict_function_or_labeled_tuple_type: . LIDENT COLON atomic_type STAR reversed_separated_nonempty_llist(STAR,labeled_tuple_typ_element)
  ```
  Sample sentence (implementation):
  ```ocaml
  kind_abbrev_ lident = kind_of_ ( ' lident . {%hello|world|} ) -> lident : {%hello|world|} * {%hello|world|} let false = UIdent
  ```
- Derivation (2 occurrences):
  ```
  strict_function_or_labeled_tuple_type: LIDENT COLON nonempty_list(mode_legacy) tuple_type at_mode_expr MINUSGREATER . strict_function_or_labeled_tuple_type
    strict_function_or_labeled_tuple_type: . LIDENT COLON atomic_type STAR reversed_separated_nonempty_llist(STAR,labeled_tuple_typ_element)
  ```
  Sample sentence (implementation):
  ```ocaml
  kind_abbrev_ lident = kind_of_ lident : local_ {%hello|world|} @ lident -> lident : {%hello|world|} * {%hello|world|} let false = UIdent
  ```
- Derivation (2 occurrences):
  ```
  strict_function_or_labeled_tuple_type: LIDENT COLON nonempty_list(mode_legacy) tuple_type MINUSGREATER . strict_function_or_labeled_tuple_type
    strict_function_or_labeled_tuple_type: . LIDENT COLON atomic_type STAR reversed_separated_nonempty_llist(STAR,labeled_tuple_typ_element)
  ```
  Sample sentence (implementation):
  ```ocaml
  kind_abbrev_ lident = kind_of_ lident : local_ {%hello|world|} -> lident : {%hello|world|} * {%hello|world|} let false = UIdent
  ```
- Derivation (2 occurrences):
  ```
  strict_function_or_labeled_tuple_type: LIDENT COLON nonempty_list(mode_legacy) LPAREN reversed_nonempty_llist(typevar) DOT core_type RPAREN at_mode_expr MINUSGREATER . strict_function_or_labeled_tuple_type
    strict_function_or_labeled_tuple_type: . LIDENT COLON atomic_type STAR reversed_separated_nonempty_llist(STAR,labeled_tuple_typ_element)
  ```
  Sample sentence (implementation):
  ```ocaml
  kind_abbrev_ lident = kind_of_ lident : local_ ( ' lident . {%hello|world|} ) @ lident -> lident : {%hello|world|} * {%hello|world|} let false = UIdent
  ```
- Derivation (2 occurrences):
  ```
  strict_function_or_labeled_tuple_type: LIDENT COLON nonempty_list(mode_legacy) LPAREN reversed_nonempty_llist(typevar) DOT core_type RPAREN MINUSGREATER . strict_function_or_labeled_tuple_type
    strict_function_or_labeled_tuple_type: . LIDENT COLON atomic_type STAR reversed_separated_nonempty_llist(STAR,labeled_tuple_typ_element)
  ```
  Sample sentence (implementation):
  ```ocaml
  kind_abbrev_ lident = kind_of_ lident : local_ ( ' lident . {%hello|world|} ) -> lident : {%hello|world|} * {%hello|world|} let false = UIdent
  ```
- Derivation (2 occurrences):
  ```
  strict_function_or_labeled_tuple_type: LIDENT COLON tuple_type MINUSGREATER . strict_function_or_labeled_tuple_type
    strict_function_or_labeled_tuple_type: . LIDENT COLON atomic_type STAR reversed_separated_nonempty_llist(STAR,labeled_tuple_typ_element)
  ```
  Sample sentence (implementation):
  ```ocaml
  kind_abbrev_ lident = kind_of_ lident : {%hello|world|} -> lident : {%hello|world|} * {%hello|world|} let false = UIdent
  ```
- Derivation (2 occurrences):
  ```
  strict_function_or_labeled_tuple_type: LIDENT COLON LPAREN reversed_nonempty_llist(typevar) DOT core_type RPAREN at_mode_expr MINUSGREATER . strict_function_or_labeled_tuple_type
    strict_function_or_labeled_tuple_type: . LIDENT COLON atomic_type STAR reversed_separated_nonempty_llist(STAR,labeled_tuple_typ_element)
  ```
  Sample sentence (implementation):
  ```ocaml
  kind_abbrev_ lident = kind_of_ lident : ( ' lident . {%hello|world|} ) @ lident -> lident : {%hello|world|} * {%hello|world|} let false = UIdent
  ```
- Derivation (2 occurrences):
  ```
  strict_function_or_labeled_tuple_type: LIDENT COLON LPAREN reversed_nonempty_llist(typevar) DOT core_type RPAREN MINUSGREATER . strict_function_or_labeled_tuple_type
    strict_function_or_labeled_tuple_type: . LIDENT COLON atomic_type STAR reversed_separated_nonempty_llist(STAR,labeled_tuple_typ_element)
  ```
  Sample sentence (implementation):
  ```ocaml
  kind_abbrev_ lident = kind_of_ lident : ( ' lident . {%hello|world|} ) -> lident : {%hello|world|} * {%hello|world|} let false = UIdent
  ```


### Item `labeled_tuple_pat_element_list(pattern_no_exn): TILDE LPAREN LIDENT COLON core_type RPAREN COMMA . pattern_no_exn` (in 19 errors)

- Derivation (4 occurrences):
  ```
  labeled_tuple_pat_element_list(pattern_no_exn): TILDE LPAREN LIDENT COLON core_type RPAREN COMMA . pattern_no_exn
    pattern_no_exn: . pattern_gen
      pattern_gen: . name_tag pattern
        name_tag: . BACKQUOTE ident
  ```
  Sample sentence (implementation):
  ```ocaml
  let ~ ( lident : {%hello|world|} ) , ` lident false = UIdent [@@ and ] let false = UIdent
  ```
- Derivation (3 occurrences):
  ```
  labeled_tuple_pat_element_list(pattern_no_exn): TILDE LPAREN LIDENT COLON core_type RPAREN COMMA . pattern_no_exn
    pattern_no_exn: . pattern_gen
      pattern_gen: . LAZY ext list(attribute) simple_pattern
  ```
  Sample sentence (implementation):
  ```ocaml
  let ~ ( lident : {%hello|world|} ) , lazy false = UIdent [@@ and ] let false = UIdent
  ```
- Derivation (2 occurrences):
  ```
  labeled_tuple_pat_element_list(pattern_no_exn): TILDE LPAREN LIDENT COLON core_type RPAREN COMMA . pattern_no_exn
    pattern_no_exn: . pattern_gen
      pattern_gen: . constr_longident pattern
        constr_longident: . mod_longident
          mod_longident: . mk_longident(mod_longident,UIDENT)
            mk_longident(mod_longident,UIDENT): . UIDENT
  ```
  Sample sentence (implementation):
  ```ocaml
  let ~ ( lident : {%hello|world|} ) , UIdent false = UIdent [@@ and ] let false = UIdent
  ```
- Derivation (2 occurrences):
  ```
  labeled_tuple_pat_element_list(pattern_no_exn): TILDE LPAREN LIDENT COLON core_type RPAREN COMMA . pattern_no_exn
    pattern_no_exn: . pattern_gen
      pattern_gen: . constr_longident pattern
        constr_longident: . constr_extra_nonprefix_ident
          constr_extra_nonprefix_ident: . LBRACKET RBRACKET
  ```
  Sample sentence (implementation):
  ```ocaml
  let ~ ( lident : {%hello|world|} ) , [ ] false = UIdent [@@ and ] let false = UIdent
  ```
- Derivation (1 occurrence):
  ```
  labeled_tuple_pat_element_list(pattern_no_exn): TILDE LPAREN LIDENT COLON core_type RPAREN COMMA . pattern_no_exn
    pattern_no_exn: . pattern_gen
      pattern_gen: . simple_pattern
        simple_pattern: . val_ident
          val_ident: . LIDENT
  ```
  Sample sentence (implementation):
  ```ocaml
  let ~ ( lident : {%hello|world|} ) , lident = UIdent [@@ and ] let false = UIdent
  ```
- Derivation (1 occurrence):
  ```
  labeled_tuple_pat_element_list(pattern_no_exn): TILDE LPAREN LIDENT COLON core_type RPAREN COMMA . pattern_no_exn
    pattern_no_exn: . pattern_no_exn COLONCOLON pattern
      pattern_no_exn: . pattern_gen
        pattern_gen: . LAZY ext list(attribute) simple_pattern
  ```
  Sample sentence (implementation):
  ```ocaml
  let ~ ( lident : {%hello|world|} ) , lazy false :: false = UIdent [@@ and ] let false = UIdent
  ```
- Derivation (1 occurrence):
  ```
  labeled_tuple_pat_element_list(pattern_no_exn): TILDE LPAREN LIDENT COLON core_type RPAREN COMMA . pattern_no_exn
    pattern_no_exn: . pattern_no_exn COLONCOLON pattern
      pattern_no_exn: . pattern_gen
        pattern_gen: . name_tag pattern
          name_tag: . BACKQUOTE ident
  ```
  Sample sentence (implementation):
  ```ocaml
  let ~ ( lident : {%hello|world|} ) , ` lident false :: false = UIdent [@@ and ] let false = UIdent
  ```
- Derivation (1 occurrence):
  ```
  labeled_tuple_pat_element_list(pattern_no_exn): TILDE LPAREN LIDENT COLON core_type RPAREN COMMA . pattern_no_exn
    pattern_no_exn: . pattern_gen
      pattern_gen: . constr_longident pattern
        constr_longident: . mod_longident
          mod_longident: . mk_longident(mod_longident,UIDENT)
            mk_longident(mod_longident,UIDENT): . mod_longident DOT UIDENT
              mod_longident: . mk_longident(mod_longident,UIDENT)
                mk_longident(mod_longident,UIDENT): . UIDENT
  ```
  Sample sentence (implementation):
  ```ocaml
  let ~ ( lident : {%hello|world|} ) , UIdent . UIdent false = UIdent [@@ and ] let false = UIdent
  ```
- Derivation (1 occurrence):
  ```
  labeled_tuple_pat_element_list(pattern_no_exn): TILDE LPAREN LIDENT COLON core_type RPAREN COMMA . pattern_no_exn
    pattern_no_exn: . pattern_gen
      pattern_gen: . constr_longident pattern
        constr_longident: . mod_longident DOT LPAREN COLONCOLON RPAREN
          mod_longident: . mk_longident(mod_longident,UIDENT)
            mk_longident(mod_longident,UIDENT): . UIDENT
  ```
  Sample sentence (implementation):
  ```ocaml
  let ~ ( lident : {%hello|world|} ) , UIdent . ( :: ) false = UIdent [@@ and ] let false = UIdent
  ```
- Derivation (1 occurrence):
  ```
  labeled_tuple_pat_element_list(pattern_no_exn): TILDE LPAREN LIDENT COLON core_type RPAREN COMMA . pattern_no_exn
    pattern_no_exn: . pattern_gen
      pattern_gen: . constr_longident pattern
        constr_longident: . LPAREN COLONCOLON RPAREN
  ```
  Sample sentence (implementation):
  ```ocaml
  let ~ ( lident : {%hello|world|} ) , ( :: ) false = UIdent [@@ and ] let false = UIdent
  ```
- Derivation (1 occurrence):
  ```
  labeled_tuple_pat_element_list(pattern_no_exn): TILDE LPAREN LIDENT COLON core_type RPAREN COMMA . pattern_no_exn
    pattern_no_exn: . pattern_gen
      pattern_gen: . constr_longident pattern
        constr_longident: . constr_extra_nonprefix_ident
          constr_extra_nonprefix_ident: . TRUE
  ```
  Sample sentence (implementation):
  ```ocaml
  let ~ ( lident : {%hello|world|} ) , true false = UIdent [@@ and ] let false = UIdent
  ```
- Derivation (1 occurrence):
  ```
  labeled_tuple_pat_element_list(pattern_no_exn): TILDE LPAREN LIDENT COLON core_type RPAREN COMMA . pattern_no_exn
    pattern_no_exn: . pattern_gen
      pattern_gen: . constr_longident pattern
        constr_longident: . constr_extra_nonprefix_ident
          constr_extra_nonprefix_ident: . LPAREN RPAREN
  ```
  Sample sentence (implementation):
  ```ocaml
  let ~ ( lident : {%hello|world|} ) , ( ) false = UIdent [@@ and ] let false = UIdent
  ```


### Item `class_self_pattern: LPAREN . pattern COLON core_type RPAREN` (in 18 errors)

- Derivation (11 occurrences):
  ```
  class_self_pattern: LPAREN . pattern COLON core_type RPAREN
  ```
  Sample sentence (implementation):
  ```ocaml
  object (# lident : {%hello|world|} ) end let false = UIdent
  ```
- Derivation (7 occurrences):
  ```
  class_self_pattern: LPAREN . pattern COLON core_type RPAREN
    pattern: . reversed_labeled_tuple_pattern(pattern)
      reversed_labeled_tuple_pattern(pattern): . labeled_tuple_pat_element_list(pattern)
  ```
  Sample sentence (implementation):
  ```ocaml
  object ( false , false : {%hello|world|} ) end let false = UIdent
  ```


### Item `labeled_tuple_pat_element_list(pattern): TILDE LPAREN LIDENT COLON core_type RPAREN COMMA . pattern` (in 18 errors)

- Derivation (16 occurrences):
  ```
  labeled_tuple_pat_element_list(pattern): TILDE LPAREN LIDENT COLON core_type RPAREN COMMA . pattern
    pattern: . EXCEPTION ext list(attribute) pattern
  ```
  Sample sentence (implementation):
  ```ocaml
  function ~ ( lident : {%hello|world|} ) , exception false -> UIdent let false = UIdent
  ```
- Derivation (2 occurrences):
  ```
  labeled_tuple_pat_element_list(pattern): TILDE LPAREN LIDENT COLON core_type RPAREN COMMA . pattern
    pattern: . pattern COLONCOLON pattern
      pattern: . EXCEPTION ext list(attribute) pattern
  ```
  Sample sentence (implementation):
  ```ocaml
  function ~ ( lident : {%hello|world|} ) , exception false :: false -> UIdent let false = UIdent
  ```


### Item `module_expr: . paren_module_expr` (in 17 errors)

- Derivation (2 occurrences):
  ```
  open_declaration: OPEN BANG ext . list(attribute) module_expr list(post_item_attribute)
    module_expr: . paren_module_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  open ! ( {%hello|world|} ) let false = UIdent
  ```
- Derivation (2 occurrences):
  ```
  open_declaration: OPEN ext . list(attribute) module_expr list(post_item_attribute)
    module_expr: . paren_module_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  open ( {%hello|world|} ) let false = UIdent
  ```
- Derivation (2 occurrences):
  ```
  module_binding_body: at_mode_expr EQUAL . module_expr
    module_expr: . paren_module_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  module UIdent @ lident = ( {%hello|world|} ) let false = UIdent
  ```
- Derivation (2 occurrences):
  ```
  module_binding_body: COLON module_type_atomic at_mode_expr EQUAL . module_expr
    module_expr: . paren_module_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  module UIdent : UIdent @ lident = ( {%hello|world|} ) let false = UIdent
  ```
- Derivation (2 occurrences):
  ```
  module_binding_body: COLON module_type EQUAL . module_expr
    module_expr: . paren_module_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  module UIdent : UIdent = ( {%hello|world|} ) let false = UIdent
  ```
- Derivation (2 occurrences):
  ```
  module_binding_body: EQUAL . module_expr
    module_expr: . paren_module_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  module UIdent = ( {%hello|world|} ) let false = UIdent
  ```
- Derivation (1 occurrence):
  ```
  module_expr: FUNCTOR list(attribute) reversed_nonempty_llist(functor_arg) MINUSGREATER . module_expr
    module_expr: . paren_module_expr
      paren_module_expr: . LPAREN module_expr RPAREN
  ```
  Sample sentence (implementation):
  ```ocaml
  include functor functor ( ) -> ( {%hello|world|} ) let false = UIdent
  ```
- Derivation (1 occurrence):
  ```
  structure_item: include_kind ext . list(attribute) module_expr list(post_item_attribute)
    module_expr: . paren_module_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  include struct include ( {%hello|world|} ) let false = UIdent end let false = UIdent
  ```
- Derivation (1 occurrence):
  ```
  module_type: MODULE TYPE OF list(attribute) . module_expr
    module_expr: . paren_module_expr
  ```
  Sample sentence (interface):
  ```ocaml
  module type lident := module type of ( {%hello|world|} )
  ```
- Derivation (1 occurrence):
  ```
  fun_expr: LET OPEN BANG ext list(attribute) . module_expr IN seq_expr
    module_expr: . paren_module_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  let open ! ( {%hello|world|} ) in UIdent [@@ and ] let false = UIdent
  ```
- Derivation (1 occurrence):
  ```
  fun_expr: LET OPEN ext list(attribute) . module_expr IN seq_expr
    module_expr: . paren_module_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  let open ( {%hello|world|} ) in UIdent [@@ and ] let false = UIdent
  ```


### Item `type_constraint: . COLON core_type` (in 17 errors)

- Derivation (4 occurrences):
  ```
  reversed_labeled_tuple_body: FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case) COMMA TILDE LPAREN LIDENT . type_constraint RPAREN
    type_constraint: . COLON core_type
  ```
  Sample sentence (implementation):
  ```ocaml
  [ function false -> . , ~ ( lident : {%hello|world|} ) ] let false = UIdent
  ```
- Derivation (4 occurrences):
  ```
  labeled_simple_expr: TILDE LPAREN LIDENT . type_constraint RPAREN
    type_constraint: . COLON core_type
  ```
  Sample sentence (implementation):
  ```ocaml
  UIdent ~ ( lident : {%hello|world|} ) let false = UIdent
  ```
- Derivation (2 occurrences):
  ```
  reversed_labeled_tuple_body: TILDE LIDENT COMMA TILDE LPAREN LIDENT . type_constraint RPAREN
    type_constraint: . COLON core_type
  ```
  Sample sentence (implementation):
  ```ocaml
  ~ lident , ~ ( lident : {%hello|world|} ) [@@ and ] let false = UIdent
  ```
- Derivation (2 occurrences):
  ```
  reversed_labeled_tuple_body: LABEL simple_expr COMMA TILDE LPAREN LIDENT . type_constraint RPAREN
    type_constraint: . COLON core_type
  ```
  Sample sentence (implementation):
  ```ocaml
  ~label: #1.0 , ~ ( lident : {%hello|world|} ) [@@ and ] let false = UIdent
  ```
- Derivation (2 occurrences):
  ```
  reversed_labeled_tuple_body: STACK FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case) COMMA TILDE LPAREN LIDENT . type_constraint RPAREN
    type_constraint: . COLON core_type
  ```
  Sample sentence (implementation):
  ```ocaml
  stack_ function false -> . , ~ ( lident : {%hello|world|} ) [@@ and ] let false = UIdent
  ```
- Derivation (2 occurrences):
  ```
  reversed_labeled_tuple_body: fun_expr COMMA TILDE LPAREN LIDENT . type_constraint RPAREN
    type_constraint: . COLON core_type
  ```
  Sample sentence (implementation):
  ```ocaml
  UIdent , ~ ( lident : {%hello|world|} ) [@@ and ] let false = UIdent
  ```
- Derivation (1 occurrence):
  ```
  reversed_labeled_tuple_body: TILDE LPAREN LIDENT . type_constraint RPAREN COMMA TILDE LIDENT
    type_constraint: . COLON core_type
  ```
  Sample sentence (implementation):
  ```ocaml
  ~ ( lident : {%hello|world|} ) , ~ lident [@@ and ] let false = UIdent
  ```


### Item `ext: . PERCENT attr_id` (in 16 errors)

- Derivation (4 occurrences):
  ```
  signature_item: CLASS . ext list(attribute) virtual_flag formal_class_parameters LIDENT COLON class_type list(post_item_attribute) list(and_class_description)
    ext: . PERCENT attr_id
  ```
  Sample sentence (interface):
  ```ocaml
  class % and lident : {%hello|world|}
  ```
- Derivation (4 occurrences):
  ```
  primitive_declaration: EXTERNAL . ext list(attribute) val_ident COLON possibly_poly(core_type) optional_atat_modalities_expr EQUAL nonempty_list(raw_string) list(post_item_attribute)
    ext: . PERCENT attr_id
  ```
  Sample sentence (implementation):
  ```ocaml
  external % and lident : {%hello|world|} = "hello" let false = UIdent
  ```
- Derivation (2 occurrences):
  ```
  value_description: VAL . ext list(attribute) val_ident COLON possibly_poly(core_type) optional_atat_modalities_expr list(post_item_attribute)
    ext: . PERCENT attr_id
  ```
  Sample sentence (implementation):
  ```ocaml
  include struct val % and lident : {%hello|world|} end let false = UIdent
  ```
- Derivation (2 occurrences):
  ```
  simple_expr: LPAREN MODULE . ext list(attribute) module_expr RPAREN
    ext: . PERCENT attr_id
  ```
  Sample sentence (implementation):
  ```ocaml
  ( module % and {%hello|world|} ) let false = UIdent
  ```
- Derivation (2 occurrences):
  ```
  fun_expr: LET OPEN BANG . ext list(attribute) module_expr IN seq_expr
    ext: . PERCENT attr_id
  ```
  Sample sentence (implementation):
  ```ocaml
  let open ! % and {%hello|world|} in UIdent [@@ and ] let false = UIdent
  ```
- Derivation (2 occurrences):
  ```
  fun_expr: LET OPEN . ext list(attribute) module_expr IN seq_expr
    ext: . PERCENT attr_id
  ```
  Sample sentence (implementation):
  ```ocaml
  let open % and {%hello|world|} in UIdent [@@ and ] let false = UIdent
  ```


### Item `atat_modalities_expr: . ATAT nonempty_list(modality)` (in 15 errors)

- Derivation (4 occurrences):
  ```
  value_description: VAL ext list(attribute) val_ident COLON possibly_poly(core_type) . optional_atat_modalities_expr list(post_item_attribute)
    optional_atat_modalities_expr: . atat_modalities_expr
      atat_modalities_expr: . ATAT nonempty_list(modality)
  ```
  Sample sentence (implementation):
  ```ocaml
  val lident : {%hello|world|} @@ lident
  ```
- Derivation (4 occurrences):
  ```
  constructor_arguments: GLOBAL atomic_type . optional_atat_modalities_expr
    optional_atat_modalities_expr: . atat_modalities_expr
      atat_modalities_expr: . ATAT nonempty_list(modality)
  ```
  Sample sentence (interface):
  ```ocaml
  exception false of global_ {%hello|world|} @@ lident
  ```
- Derivation (4 occurrences):
  ```
  constructor_arguments: atomic_type . optional_atat_modalities_expr
    optional_atat_modalities_expr: . atat_modalities_expr
      atat_modalities_expr: . ATAT nonempty_list(modality)
  ```
  Sample sentence (implementation):
  ```ocaml
  exception false : {%hello|world|} @@ lident -> {%hello|world|} [@ and ] let false = UIdent
  ```
- Derivation (3 occurrences):
  ```
  jkind_desc: jkind_annotation WITH core_type . optional_atat_modalities_expr
    optional_atat_modalities_expr: . atat_modalities_expr
      atat_modalities_expr: . ATAT nonempty_list(modality)
  ```
  Sample sentence (implementation):
  ```ocaml
  include struct kind_abbrev_ lident = lident with {%hello|world|} @@ lident end let false = UIdent
  ```


### Item `labeled_tuple_pat_element_list(pattern_no_exn): TILDE LPAREN LIDENT COLON core_type RPAREN COMMA . TILDE LIDENT` (in 15 errors)

- Derivation (15 occurrences):
  ```
  labeled_tuple_pat_element_list(pattern_no_exn): TILDE LPAREN LIDENT COLON core_type RPAREN COMMA . TILDE LIDENT
  ```
  Sample sentence (implementation):
  ```ocaml
  let false = UIdent and ~ ( lident : {%hello|world|} ) , ~ lident = UIdent
  ```


### Item `module_type: . MODULE TYPE OF list(attribute) module_expr` (in 15 errors)

- Derivation (6 occurrences):
  ```
  module_binding_body: COLON . module_type EQUAL module_expr
    module_type: . MODULE TYPE OF list(attribute) module_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  module UIdent : module type of {%hello|world|} = {%hello|world|} let false = UIdent
  ```
- Derivation (3 occurrences):
  ```
  module_declaration_body(module_type_with_optional_modes): COLON . module_type
    module_type: . MODULE TYPE OF list(attribute) module_expr
  ```
  Sample sentence (interface):
  ```ocaml
  module UIdent ( ) : module type of {%hello|world|}
  ```
- Derivation (3 occurrences):
  ```
  module_declaration_body(__anonymous_8): COLON . module_type optional_atat_modalities_expr
    module_type: . MODULE TYPE OF list(attribute) module_expr
  ```
  Sample sentence (interface):
  ```ocaml
  module UIdent : module type of {%hello|world|} @@ lident
  ```
- Derivation (3 occurrences):
  ```
  functor_arg: LPAREN module_name COLON . module_type RPAREN
    module_type: . MODULE TYPE OF list(attribute) module_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  module UIdent ( UIdent : module type of {%hello|world|} ) = {%hello|world|} let false = UIdent
  ```


### Item `reversed_bar_llist(extension_constructor_declaration): . generic_constructor_declaration(BAR)` (in 14 errors)

- Derivation (14 occurrences):
  ```
  signature_item: TYPE ext list(attribute) type_parameters type_longident PLUSEQ private_flag . reversed_bar_llist(extension_constructor_declaration) list(post_item_attribute)
    reversed_bar_llist(extension_constructor_declaration): . generic_constructor_declaration(BAR)
  ```
  Sample sentence (interface):
  ```ocaml
  type lident += | false : {%hello|world|}
  ```


### Item `mod_ext_longident: mod_ext_longident . LPAREN mod_ext_longident RPAREN` (in 10 errors)

- Derivation (10 occurrences):
  ```
  mod_ext_longident: mod_ext_longident . LPAREN mod_ext_longident RPAREN
  ```
  Sample sentence (interface):
  ```ocaml
  exception false of {%hello|world|} UIdent ( UIdent ) . lident
  ```


### Item `label_declaration: . mutable_or_global_flag LIDENT COLON possibly_poly(core_type_no_attr) optional_atat_modalities_expr list(attribute)` (in 9 errors)

- Derivation (2 occurrences):
  ```
  nonempty_type_kind: core_type EQUAL PRIVATE HASHLBRACE . label_declarations RBRACE
    label_declarations: . label_declaration
      label_declaration: . mutable_or_global_flag LIDENT COLON possibly_poly(core_type_no_attr) optional_atat_modalities_expr list(attribute)
  ```
  Sample sentence (interface):
  ```ocaml
  type lident := {%hello|world|} = private #{ lident : {%hello|world|} [@ and ] }
  ```
- Derivation (2 occurrences):
  ```
  nonempty_type_kind: core_type EQUAL HASHLBRACE . label_declarations RBRACE
    label_declarations: . label_declaration
      label_declaration: . mutable_or_global_flag LIDENT COLON possibly_poly(core_type_no_attr) optional_atat_modalities_expr list(attribute)
  ```
  Sample sentence (interface):
  ```ocaml
  type lident := {%hello|world|} = #{ lident : {%hello|world|} [@ and ] }
  ```
- Derivation (2 occurrences):
  ```
  nonempty_type_kind: core_type EQUAL PRIVATE LBRACE . label_declarations RBRACE
    label_declarations: . label_declaration
      label_declaration: . mutable_or_global_flag LIDENT COLON possibly_poly(core_type_no_attr) optional_atat_modalities_expr list(attribute)
  ```
  Sample sentence (interface):
  ```ocaml
  type lident := {%hello|world|} = private { lident : {%hello|world|} [@ and ] }
  ```
- Derivation (2 occurrences):
  ```
  nonempty_type_kind: core_type EQUAL LBRACE . label_declarations RBRACE
    label_declarations: . label_declaration
      label_declaration: . mutable_or_global_flag LIDENT COLON possibly_poly(core_type_no_attr) optional_atat_modalities_expr list(attribute)
  ```
  Sample sentence (interface):
  ```ocaml
  type lident := {%hello|world|} = { lident : {%hello|world|} [@ and ] }
  ```
- Derivation (1 occurrence):
  ```
  label_declarations: label_declaration_semi . label_declarations
    label_declarations: . label_declaration
      label_declaration: . mutable_or_global_flag LIDENT COLON possibly_poly(core_type_no_attr) optional_atat_modalities_expr list(attribute)
  ```
  Sample sentence (implementation):
  ```ocaml
  exception false of { lident : {%hello|world|} ; lident : {%hello|world|} [@ and ] } let false = UIdent
  ```


### Item `formal_class_parameters: . LBRACKET reversed_separated_nonempty_llist(COMMA,type_parameter) RBRACKET` (in 8 errors)

- Derivation (4 occurrences):
  ```
  signature_item: CLASS ext . list(attribute) virtual_flag formal_class_parameters LIDENT COLON class_type list(post_item_attribute) list(and_class_description)
    formal_class_parameters: . LBRACKET reversed_separated_nonempty_llist(COMMA,type_parameter) RBRACKET
  ```
  Sample sentence (interface):
  ```ocaml
  class [ _ ] lident : {%hello|world|}
  ```
- Derivation (4 occurrences):
  ```
  list(and_class_description): AND list(attribute) . virtual_flag formal_class_parameters LIDENT COLON class_type list(post_item_attribute) list(and_class_description)
    formal_class_parameters: . LBRACKET reversed_separated_nonempty_llist(COMMA,type_parameter) RBRACKET
  ```
  Sample sentence (interface):
  ```ocaml
  class lident : {%hello|world|} and [ _ ] lident : {%hello|world|}
  ```


### Item `match_case: . pattern MINUSGREATER seq_expr` (in 8 errors)

- Derivation (2 occurrences):
  ```
  fun_expr: fun_expr OR STACK FUNCTION ext . list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
    reversed_preceded_or_separated_nonempty_llist(BAR,match_case): . match_case
      match_case: . pattern MINUSGREATER seq_expr
        pattern: . reversed_labeled_tuple_pattern(pattern)
          reversed_labeled_tuple_pattern(pattern): . labeled_tuple_pat_element_list(pattern)
            labeled_tuple_pat_element_list(pattern): . TILDE LIDENT COMMA TILDE LPAREN LIDENT COLON core_type RPAREN
  ```
  Sample sentence (implementation):
  ```ocaml
  UIdent or stack_ function ~ lident , ~ ( lident : {%hello|world|} ) -> UIdent let false = UIdent
  ```
- Derivation (2 occurrences):
  ```
  fun_expr: fun_expr MOD STACK FUNCTION ext . list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
    reversed_preceded_or_separated_nonempty_llist(BAR,match_case): . match_case
      match_case: . pattern MINUSGREATER seq_expr
        pattern: . reversed_labeled_tuple_pattern(pattern)
          reversed_labeled_tuple_pattern(pattern): . labeled_tuple_pat_element_list(pattern)
            labeled_tuple_pat_element_list(pattern): . TILDE LIDENT COMMA TILDE LPAREN LIDENT COLON core_type RPAREN
  ```
  Sample sentence (implementation):
  ```ocaml
  UIdent mod stack_ function ~ lident , ~ ( lident : {%hello|world|} ) -> UIdent let false = UIdent
  ```
- Derivation (2 occurrences):
  ```
  fun_expr: fun_expr OR STACK FUNCTION ext . list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
    reversed_preceded_or_separated_nonempty_llist(BAR,match_case): . match_case
      match_case: . pattern MINUSGREATER seq_expr
        pattern: . reversed_labeled_tuple_pattern(pattern)
          reversed_labeled_tuple_pattern(pattern): . labeled_tuple_pat_element_list(pattern)
            labeled_tuple_pat_element_list(pattern): . LABEL simple_pattern COMMA TILDE LPAREN LIDENT COLON core_type RPAREN
  ```
  Sample sentence (implementation):
  ```ocaml
  UIdent or stack_ function ~label: false , ~ ( lident : {%hello|world|} ) -> UIdent let false = UIdent
  ```
- Derivation (2 occurrences):
  ```
  fun_expr: fun_expr MOD STACK FUNCTION ext . list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
    reversed_preceded_or_separated_nonempty_llist(BAR,match_case): . match_case
      match_case: . pattern MINUSGREATER seq_expr
        pattern: . reversed_labeled_tuple_pattern(pattern)
          reversed_labeled_tuple_pattern(pattern): . labeled_tuple_pat_element_list(pattern)
            labeled_tuple_pat_element_list(pattern): . LABEL simple_pattern COMMA TILDE LPAREN LIDENT COLON core_type RPAREN
  ```
  Sample sentence (implementation):
  ```ocaml
  UIdent mod stack_ function ~label: false , ~ ( lident : {%hello|world|} ) -> UIdent let false = UIdent
  ```


### Item `mk_longident(mod_ext_longident,UIDENT): mod_ext_longident DOT . UIDENT` (in 8 errors)

- Derivation (8 occurrences):
  ```
  mk_longident(mod_ext_longident,UIDENT): mod_ext_longident DOT . UIDENT
  ```
  Sample sentence (interface):
  ```ocaml
  exception false of {%hello|world|} UIdent . UIdent . lident
  ```


### Item `module_expr: . FUNCTOR list(attribute) reversed_nonempty_llist(functor_arg) MINUSGREATER module_expr` (in 8 errors)

- Derivation (2 occurrences):
  ```
  simple_expr: LPAREN MODULE ext list(attribute) . module_expr RPAREN
    module_expr: . FUNCTOR list(attribute) reversed_nonempty_llist(functor_arg) MINUSGREATER module_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  ( module functor ( ) -> {%hello|world|} ) let false = UIdent
  ```
- Derivation (2 occurrences):
  ```
  module_type: MODULE TYPE OF list(attribute) . module_expr
    module_expr: . FUNCTOR list(attribute) reversed_nonempty_llist(functor_arg) MINUSGREATER module_expr
  ```
  Sample sentence (interface):
  ```ocaml
  module type lident := module type of functor ( ) -> {%hello|world|}
  ```
- Derivation (2 occurrences):
  ```
  fun_expr: LET OPEN BANG ext list(attribute) . module_expr IN seq_expr
    module_expr: . FUNCTOR list(attribute) reversed_nonempty_llist(functor_arg) MINUSGREATER module_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  let open ! functor ( ) -> {%hello|world|} in UIdent [@@ and ] let false = UIdent
  ```
- Derivation (2 occurrences):
  ```
  fun_expr: LET OPEN ext list(attribute) . module_expr IN seq_expr
    module_expr: . FUNCTOR list(attribute) reversed_nonempty_llist(functor_arg) MINUSGREATER module_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  let open functor ( ) -> {%hello|world|} in UIdent [@@ and ] let false = UIdent
  ```


### Item `module_type: . module_type_atomic` (in 8 errors)

- Derivation (4 occurrences):
  ```
  simple_expr: LPAREN MODULE ext list(attribute) module_expr COLON . module_type RPAREN
    module_type: . module_type_atomic
      module_type_atomic: . mty_longident
        mty_longident: . mk_longident(mod_ext_longident,ident)
          mk_longident(mod_ext_longident,ident): . mod_ext_longident DOT ident
            mod_ext_longident: . mk_longident(mod_ext_longident,UIDENT)
              mk_longident(mod_ext_longident,UIDENT): . UIDENT
  ```
  Sample sentence (implementation):
  ```ocaml
  ( module {%hello|world|} : UIdent . UIdent ) let false = UIdent
  ```
- Derivation (2 occurrences):
  ```
  simple_expr: LPAREN MODULE ext list(attribute) module_expr COLON . module_type RPAREN
    module_type: . module_type_atomic
      module_type_atomic: . mty_longident
        mty_longident: . mk_longident(mod_ext_longident,ident)
          mk_longident(mod_ext_longident,ident): . mod_ext_longident DOT ident
            mod_ext_longident: . mod_ext_longident LPAREN mod_ext_longident RPAREN
              mod_ext_longident: . mk_longident(mod_ext_longident,UIDENT)
                mk_longident(mod_ext_longident,UIDENT): . UIDENT
  ```
  Sample sentence (implementation):
  ```ocaml
  ( module {%hello|world|} : UIdent ( UIdent ) . UIdent ) let false = UIdent
  ```
- Derivation (1 occurrence):
  ```
  simple_expr: LPAREN MODULE ext list(attribute) module_expr COLON . module_type RPAREN
    module_type: . module_type_atomic
      module_type_atomic: . mty_longident
        mty_longident: . mk_longident(mod_ext_longident,ident)
          mk_longident(mod_ext_longident,ident): . mod_ext_longident DOT ident
            mod_ext_longident: . mk_longident(mod_ext_longident,UIDENT)
              mk_longident(mod_ext_longident,UIDENT): . mod_ext_longident DOT UIDENT
                mod_ext_longident: . mk_longident(mod_ext_longident,UIDENT)
                  mk_longident(mod_ext_longident,UIDENT): . UIDENT
  ```
  Sample sentence (implementation):
  ```ocaml
  ( module {%hello|world|} : UIdent . UIdent . UIdent ) let false = UIdent
  ```
- Derivation (1 occurrence):
  ```
  simple_expr: LPAREN MODULE ext list(attribute) module_expr COLON . module_type RPAREN
    module_type: . module_type_atomic
      module_type_atomic: . mty_longident
        mty_longident: . mk_longident(mod_ext_longident,ident)
          mk_longident(mod_ext_longident,ident): . ident
            ident: . UIDENT
  ```
  Sample sentence (implementation):
  ```ocaml
  ( module {%hello|world|} : UIdent ) let false = UIdent
  ```


### Item `class_sig_field: VAL . list(attribute) mutable_virtual_flags LIDENT COLON core_type list(post_item_attribute)` (in 7 errors)

- Derivation (7 occurrences):
  ```
  class_sig_field: VAL . list(attribute) mutable_virtual_flags LIDENT COLON core_type list(post_item_attribute)
  ```
  Sample sentence (implementation):
  ```ocaml
  class type lident = object val lident : {%hello|world|} end let false = UIdent
  ```


### Item `class_sig_field: METHOD . list(attribute) private_virtual_flags LIDENT COLON possibly_poly(core_type) list(post_item_attribute)` (in 7 errors)

- Derivation (7 occurrences):
  ```
  class_sig_field: METHOD . list(attribute) private_virtual_flags LIDENT COLON possibly_poly(core_type) list(post_item_attribute)
  ```
  Sample sentence (implementation):
  ```ocaml
  class type lident = object method lident : {%hello|world|} end let false = UIdent
  ```


### Item `let_binding_body_no_punning: val_ident COLON TYPE . newtypes DOT tuple_type at_mode_expr EQUAL seq_expr` (in 7 errors)

- Derivation (7 occurrences):
  ```
  let_binding_body_no_punning: val_ident COLON TYPE . newtypes DOT tuple_type at_mode_expr EQUAL seq_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  let lident : type lident . {%hello|world|} @ lident = UIdent [@@ and ] let false = UIdent
  ```


### Item `constructor_declarations: . reversed_bar_llist(constructor_declaration)` (in 6 errors)

- Derivation (3 occurrences):
  ```
  nonempty_type_kind: core_type EQUAL PRIVATE . constructor_declarations
    constructor_declarations: . reversed_bar_llist(constructor_declaration)
      reversed_bar_llist(constructor_declaration): . generic_constructor_declaration(BAR)
        generic_constructor_declaration(BAR): . BAR constr_ident generalized_constructor_arguments list(attribute)
  ```
  Sample sentence (interface):
  ```ocaml
  type lident := {%hello|world|} = private | false
  ```
- Derivation (3 occurrences):
  ```
  nonempty_type_kind: core_type EQUAL . constructor_declarations
    constructor_declarations: . reversed_bar_llist(constructor_declaration)
      reversed_bar_llist(constructor_declaration): . generic_constructor_declaration(BAR)
        generic_constructor_declaration(BAR): . BAR constr_ident generalized_constructor_arguments list(attribute)
  ```
  Sample sentence (interface):
  ```ocaml
  type lident := {%hello|world|} = | false
  ```


### Item `generalized_constructor_arguments: COLON reversed_nonempty_llist(typevar) DOT . atomic_type` (in 6 errors)

- Derivation (6 occurrences):
  ```
  generalized_constructor_arguments: COLON reversed_nonempty_llist(typevar) DOT . atomic_type
  ```
  Sample sentence (interface):
  ```ocaml
  exception false : ' lident . {%hello|world|}
  ```


### Item `nonempty_list(raw_string): . STRING` (in 6 errors)

- Derivation (6 occurrences):
  ```
  nonempty_list(raw_string): STRING . nonempty_list(raw_string)
    nonempty_list(raw_string): . STRING
  ```
  Sample sentence (implementation):
  ```ocaml
  external lident : {%hello|world|} = "hello" "hello" let false = UIdent
  ```


### Item `reverse_product_jkind: jkind_annotation AMPERSAND . jkind_annotation` (in 6 errors)

- Derivation (6 occurrences):
  ```
  reverse_product_jkind: jkind_annotation AMPERSAND . jkind_annotation
  ```
  Sample sentence (implementation):
  ```ocaml
  kind_abbrev_ lident = lident & kind_of_ {%hello|world|}
  ```


### Item `reverse_product_jkind: reverse_product_jkind AMPERSAND . jkind_annotation` (in 6 errors)

- Derivation (6 occurrences):
  ```
  reverse_product_jkind: reverse_product_jkind AMPERSAND . jkind_annotation
  ```
  Sample sentence (implementation):
  ```ocaml
  kind_abbrev_ lident = lident & lident & kind_of_ {%hello|world|}
  ```


### Item `list(text_csig(class_sig_field)): . class_sig_field list(text_csig(class_sig_field))` (in 5 errors)

- Derivation (4 occurrences):
  ```
  list(text_csig(class_sig_field)): class_sig_field . list(text_csig(class_sig_field))
    list(text_csig(class_sig_field)): . class_sig_field list(text_csig(class_sig_field))
  ```
  Sample sentence (implementation):
  ```ocaml
  class type lident = object {%%hello|world|} val lident : {%hello|world|} end let false = UIdent
  ```
- Derivation (1 occurrence):
  ```
  list(text_csig(class_sig_field)): class_sig_field . list(text_csig(class_sig_field))
    list(text_csig(class_sig_field)): . class_sig_field list(text_csig(class_sig_field))
      class_sig_field: . CONSTRAINT list(attribute) constrain_field list(post_item_attribute)
  ```
  Sample sentence (implementation):
  ```ocaml
  class type lident = object {%%hello|world|} constraint {%hello|world|} = {%hello|world|} inherit lident end let false = UIdent
  ```


### Item `optional_poly_type_and_modes: . COLON reversed_nonempty_llist(typevar) DOT tuple_type at_mode_expr` (in 5 errors)

- Derivation (4 occurrences):
  ```
  label_let_pattern: nonempty_list(mode_legacy) LIDENT . optional_poly_type_and_modes
    optional_poly_type_and_modes: . COLON reversed_nonempty_llist(typevar) DOT tuple_type at_mode_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  class lident ? ( local_ lident : ' lident . {%hello|world|} @ lident = UIdent ) = lident let false = UIdent
  ```
- Derivation (1 occurrence):
  ```
  let_pattern: nonempty_list(mode_legacy) pattern . optional_poly_type_and_modes
    optional_poly_type_and_modes: . COLON reversed_nonempty_llist(typevar) DOT tuple_type at_mode_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  class lident ?label: ( local_ false : ' lident . {%hello|world|} @ lident = UIdent ) = lident let false = UIdent
  ```


### Item `fun_expr: fun_expr MOD . fun_expr` (in 4 errors)

- Derivation (2 occurrences):
  ```
  fun_expr: fun_expr MOD . fun_expr
    fun_expr: . LET OPEN BANG ext list(attribute) module_expr IN seq_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  UIdent mod let open ! {%hello|world|} in UIdent [@@ and ] let false = UIdent
  ```
- Derivation (2 occurrences):
  ```
  fun_expr: fun_expr MOD . fun_expr
    fun_expr: . LET OPEN ext list(attribute) module_expr IN seq_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  UIdent mod let open {%hello|world|} in UIdent [@@ and ] let false = UIdent
  ```


### Item `let_binding_body_no_punning: val_ident COLON . reversed_nonempty_llist(typevar) DOT core_type EQUAL seq_expr` (in 4 errors)

- Derivation (4 occurrences):
  ```
  let_binding_body_no_punning: val_ident COLON . reversed_nonempty_llist(typevar) DOT core_type EQUAL seq_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  include struct let lident : ( ' lident : lident ) . {%hello|world|} = UIdent end let false = UIdent
  ```


### Item `let_binding_body_no_punning: nonempty_list(mode_legacy) val_ident COLON . reversed_nonempty_llist(typevar) DOT tuple_type at_mode_expr EQUAL seq_expr` (in 4 errors)

- Derivation (4 occurrences):
  ```
  let_binding_body_no_punning: nonempty_list(mode_legacy) val_ident COLON . reversed_nonempty_llist(typevar) DOT tuple_type at_mode_expr EQUAL seq_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  include struct let local_ lident : ( ' lident : lident ) . {%hello|world|} @ lident = UIdent end let false = UIdent
  ```


### Item `let_binding_body_no_punning: LPAREN val_ident at_mode_expr RPAREN COLON . reversed_nonempty_llist(typevar) DOT core_type EQUAL seq_expr` (in 4 errors)

- Derivation (4 occurrences):
  ```
  let_binding_body_no_punning: LPAREN val_ident at_mode_expr RPAREN COLON . reversed_nonempty_llist(typevar) DOT core_type EQUAL seq_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  include struct let ( lident @ lident ) : ( ' lident : lident ) . {%hello|world|} = UIdent end let false = UIdent
  ```


### Item `let_binding_body_no_punning: nonempty_list(mode_legacy) val_ident COLON TYPE . newtypes DOT core_type EQUAL seq_expr` (in 4 errors)

- Derivation (4 occurrences):
  ```
  let_binding_body_no_punning: nonempty_list(mode_legacy) val_ident COLON TYPE . newtypes DOT core_type EQUAL seq_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  let local_ lident : type lident . {%hello|world|} = UIdent [@@ and ] let false = UIdent
  ```


### Item `let_binding_body_no_punning: LPAREN val_ident at_mode_expr RPAREN COLON TYPE . newtypes DOT tuple_type at_mode_expr EQUAL seq_expr` (in 4 errors)

- Derivation (4 occurrences):
  ```
  let_binding_body_no_punning: LPAREN val_ident at_mode_expr RPAREN COLON TYPE . newtypes DOT tuple_type at_mode_expr EQUAL seq_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  let ( lident @ lident ) : type lident . {%hello|world|} @ lident = UIdent [@@ and ] let false = UIdent
  ```


### Item `list(and_class_description): . AND list(attribute) virtual_flag formal_class_parameters LIDENT COLON class_type list(post_item_attribute) list(and_class_description)` (in 4 errors)

- Derivation (4 occurrences):
  ```
  list(and_class_description): AND list(attribute) virtual_flag formal_class_parameters LIDENT COLON class_type . list(post_item_attribute) list(and_class_description)
    list(and_class_description): . AND list(attribute) virtual_flag formal_class_parameters LIDENT COLON class_type list(post_item_attribute) list(and_class_description)
  ```
  Sample sentence (interface):
  ```ocaml
  class lident : {%hello|world|} and lident : {%hello|world|} and lident : {%hello|world|}
  ```


### Item `list(and_class_description): AND . list(attribute) virtual_flag formal_class_parameters LIDENT COLON class_type list(post_item_attribute) list(and_class_description)` (in 4 errors)

- Derivation (4 occurrences):
  ```
  list(and_class_description): AND . list(attribute) virtual_flag formal_class_parameters LIDENT COLON class_type list(post_item_attribute) list(and_class_description)
  ```
  Sample sentence (interface):
  ```ocaml
  class lident : {%hello|world|} and lident : {%hello|world|}
  ```


### Item `list(post_item_attribute): . post_item_attribute list(post_item_attribute)` (in 4 errors)

- Derivation (4 occurrences):
  ```
  primitive_declaration: EXTERNAL ext list(attribute) val_ident COLON possibly_poly(core_type) optional_atat_modalities_expr EQUAL nonempty_list(raw_string) . list(post_item_attribute)
    list(post_item_attribute): . post_item_attribute list(post_item_attribute)
      post_item_attribute: . LBRACKETATAT attr_id attr_payload RBRACKET
  ```
  Sample sentence (implementation):
  ```ocaml
  external lident : {%hello|world|} = "hello" [@@ and ] let false = UIdent
  ```


### Item `nonempty_type_kind: core_type EQUAL . PRIVATE DOTDOT` (in 4 errors)

- Derivation (4 occurrences):
  ```
  nonempty_type_kind: core_type EQUAL . PRIVATE DOTDOT
  ```
  Sample sentence (interface):
  ```ocaml
  type lident := {%hello|world|} = private ..
  ```


### Item `sig_exception_declaration: EXCEPTION ext list(attribute) constr_ident . generalized_constructor_arguments list(attribute) list(post_item_attribute)` (in 4 errors)

- Derivation (2 occurrences):
  ```
  sig_exception_declaration: EXCEPTION ext list(attribute) constr_ident . generalized_constructor_arguments list(attribute) list(post_item_attribute)
    generalized_constructor_arguments: . COLON atomic_type
  ```
  Sample sentence (implementation):
  ```ocaml
  module type lident = sig exception false : {%hello|world|} end [@@ and ] let false = UIdent
  ```
- Derivation (2 occurrences):
  ```
  sig_exception_declaration: EXCEPTION ext list(attribute) constr_ident . generalized_constructor_arguments list(attribute) list(post_item_attribute)
    generalized_constructor_arguments: . OF constructor_arguments
  ```
  Sample sentence (implementation):
  ```ocaml
  module type lident = sig exception false of {%hello|world|} end [@@ and ] let false = UIdent
  ```


### Item `signature_item: CLASS . ext list(attribute) virtual_flag formal_class_parameters LIDENT COLON class_type list(post_item_attribute) list(and_class_description)` (in 4 errors)

- Derivation (4 occurrences):
  ```
  signature_item: CLASS . ext list(attribute) virtual_flag formal_class_parameters LIDENT COLON class_type list(post_item_attribute) list(and_class_description)
  ```
  Sample sentence (interface):
  ```ocaml
  class lident : {%hello|world|}
  ```


### Item `strict_function_or_labeled_tuple_type: LIDENT COLON LPAREN reversed_nonempty_llist(typevar) DOT core_type RPAREN at_mode_expr MINUSGREATER . tuple_type` (in 4 errors)

- Derivation (4 occurrences):
  ```
  strict_function_or_labeled_tuple_type: LIDENT COLON LPAREN reversed_nonempty_llist(typevar) DOT core_type RPAREN at_mode_expr MINUSGREATER . tuple_type
  ```
  Sample sentence (implementation):
  ```ocaml
  type nonrec lident = lident : ( ' lident . {%hello|world|} ) @ lident -> {%hello|world|} and lident
  ```


### Item `strict_function_or_labeled_tuple_type: LIDENT COLON tuple_type MINUSGREATER . tuple_type` (in 4 errors)

- Derivation (4 occurrences):
  ```
  strict_function_or_labeled_tuple_type: LIDENT COLON tuple_type MINUSGREATER . tuple_type
  ```
  Sample sentence (implementation):
  ```ocaml
  type nonrec lident = lident : {%hello|world|} -> {%hello|world|} and lident
  ```


### Item `strict_function_or_labeled_tuple_type: LIDENT COLON nonempty_list(mode_legacy) LPAREN reversed_nonempty_llist(typevar) DOT core_type RPAREN at_mode_expr MINUSGREATER . tuple_type` (in 4 errors)

- Derivation (4 occurrences):
  ```
  strict_function_or_labeled_tuple_type: LIDENT COLON nonempty_list(mode_legacy) LPAREN reversed_nonempty_llist(typevar) DOT core_type RPAREN at_mode_expr MINUSGREATER . tuple_type
  ```
  Sample sentence (implementation):
  ```ocaml
  type nonrec lident = lident : local_ ( ' lident . {%hello|world|} ) @ lident -> {%hello|world|} and lident
  ```


### Item `strict_function_or_labeled_tuple_type: LIDENT COLON nonempty_list(mode_legacy) tuple_type MINUSGREATER . tuple_type` (in 4 errors)

- Derivation (4 occurrences):
  ```
  strict_function_or_labeled_tuple_type: LIDENT COLON nonempty_list(mode_legacy) tuple_type MINUSGREATER . tuple_type
  ```
  Sample sentence (implementation):
  ```ocaml
  type nonrec lident = lident : local_ {%hello|world|} -> {%hello|world|} and lident
  ```


### Item `strict_function_or_labeled_tuple_type: LIDENT COLON nonempty_list(mode_legacy) tuple_type at_mode_expr MINUSGREATER . tuple_type` (in 4 errors)

- Derivation (4 occurrences):
  ```
  strict_function_or_labeled_tuple_type: LIDENT COLON nonempty_list(mode_legacy) tuple_type at_mode_expr MINUSGREATER . tuple_type
  ```
  Sample sentence (implementation):
  ```ocaml
  type nonrec lident = lident : local_ {%hello|world|} @ lident -> {%hello|world|} and lident
  ```


### Item `strict_function_or_labeled_tuple_type: LPAREN reversed_nonempty_llist(typevar) DOT core_type RPAREN at_mode_expr MINUSGREATER . tuple_type` (in 4 errors)

- Derivation (4 occurrences):
  ```
  strict_function_or_labeled_tuple_type: LPAREN reversed_nonempty_llist(typevar) DOT core_type RPAREN at_mode_expr MINUSGREATER . tuple_type
  ```
  Sample sentence (implementation):
  ```ocaml
  type nonrec lident = ( ' lident . {%hello|world|} ) @ lident -> {%hello|world|} and lident
  ```


### Item `strict_function_or_labeled_tuple_type: LIDENT COLON atomic_type STAR . reversed_separated_nonempty_llist(STAR,labeled_tuple_typ_element)` (in 4 errors)

- Derivation (4 occurrences):
  ```
  strict_function_or_labeled_tuple_type: LIDENT COLON atomic_type STAR . reversed_separated_nonempty_llist(STAR,labeled_tuple_typ_element)
  ```
  Sample sentence (implementation):
  ```ocaml
  type nonrec lident = lident : {%hello|world|} * {%hello|world|} and lident
  ```


### Item `reversed_llist(preceded(CONSTRAINT,constrain)): . reversed_llist(preceded(CONSTRAINT,constrain)) CONSTRAINT core_type EQUAL core_type` (in 3 errors)

- Derivation (2 occurrences):
  ```
  generic_type_declaration(nonrec_flag,type_kind): TYPE ext list(attribute) type_parameters LIDENT option(jkind_constraint) . type_kind reversed_llist(preceded(CONSTRAINT,constrain)) list(post_item_attribute)
    reversed_llist(preceded(CONSTRAINT,constrain)): . reversed_llist(preceded(CONSTRAINT,constrain)) CONSTRAINT core_type EQUAL core_type
  ```
  Sample sentence (implementation):
  ```ocaml
  type lident constraint {%hello|world|} = {%hello|world|} let false = UIdent
  ```
- Derivation (1 occurrence):
  ```
  list(generic_and_type_declaration(type_kind)): AND list(attribute) type_parameters LIDENT option(jkind_constraint) . type_kind reversed_llist(preceded(CONSTRAINT,constrain)) list(post_item_attribute) list(generic_and_type_declaration(type_kind))
    reversed_llist(preceded(CONSTRAINT,constrain)): . reversed_llist(preceded(CONSTRAINT,constrain)) CONSTRAINT core_type EQUAL core_type
  ```
  Sample sentence (implementation):
  ```ocaml
  type lident and lident constraint {%hello|world|} = {%hello|world|} let false = UIdent
  ```


### Item `simple_pattern: . val_ident` (in 3 errors)

- Derivation (2 occurrences):
  ```
  labeled_tuple_pat_element_list(pattern): TILDE LPAREN LIDENT COLON core_type RPAREN COMMA LABEL . simple_pattern
    simple_pattern: . val_ident
      val_ident: . LIDENT
  ```
  Sample sentence (implementation):
  ```ocaml
  function ~ ( lident : {%hello|world|} ) , ~label: lident -> UIdent let false = UIdent
  ```
- Derivation (1 occurrence):
  ```
  labeled_tuple_pat_element_list(pattern_no_exn): TILDE LPAREN LIDENT COLON core_type RPAREN COMMA LABEL . simple_pattern
    simple_pattern: . val_ident
      val_ident: . LIDENT
  ```
  Sample sentence (implementation):
  ```ocaml
  let ~ ( lident : {%hello|world|} ) , ~label: lident = UIdent [@@ and ] let false = UIdent
  ```


### Item `constructor_arguments: . GLOBAL atomic_type optional_atat_modalities_expr` (in 2 errors)

- Derivation (2 occurrences):
  ```
  generalized_constructor_arguments: COLON reversed_nonempty_llist(typevar) DOT . constructor_arguments MINUSGREATER atomic_type
    constructor_arguments: . GLOBAL atomic_type optional_atat_modalities_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  exception false : ' lident . global_ {%hello|world|} -> {%hello|world|} [@ and ] let false = UIdent
  ```


### Item `fun_: STACK FUN ext list(attribute) . fun_params optional_atomic_constraint_ MINUSGREATER fun_body` (in 2 errors)

- Derivation (2 occurrences):
  ```
  fun_: STACK FUN ext list(attribute) . fun_params optional_atomic_constraint_ MINUSGREATER fun_body
    fun_params: . reversed_nonempty_concat(fun_param_as_list)
      reversed_nonempty_concat(fun_param_as_list): . fun_param_as_list
  ```
  Sample sentence (implementation):
  ```ocaml
  stack_ fun ( type lident ) : {%hello|world|} -> UIdent let false = UIdent
  ```


### Item `jkind_desc: jkind_annotation WITH . core_type optional_atat_modalities_expr` (in 2 errors)

- Derivation (2 occurrences):
  ```
  jkind_desc: jkind_annotation WITH . core_type optional_atat_modalities_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  kind_abbrev_ lident = lident with {%hello|world|} mod lident let false = UIdent
  ```


### Item `jkind_desc: KIND_OF . core_type` (in 2 errors)

- Derivation (2 occurrences):
  ```
  jkind_desc: KIND_OF . core_type
  ```
  Sample sentence (implementation):
  ```ocaml
  kind_abbrev_ lident = kind_of_ {%hello|world|} mod lident let false = UIdent
  ```


### Item `class_field: . CONSTRAINT list(attribute) constrain_field list(post_item_attribute)` (in 1 error)

- Derivation (1 occurrence):
  ```
  list(text_cstr(class_field)): class_field . list(text_cstr(class_field))
    list(text_cstr(class_field)): . class_field list(text_cstr(class_field))
      class_field: . CONSTRAINT list(attribute) constrain_field list(post_item_attribute)
  ```
  Sample sentence (implementation):
  ```ocaml
  object {%%hello|world|} constraint {%hello|world|} = {%hello|world|} inherit lident end let false = UIdent
  ```


### Item `jkind_desc: jkind_annotation . WITH core_type optional_atat_modalities_expr` (in 1 error)

- Derivation (1 occurrence):
  ```
  jkind_desc: jkind_annotation . WITH core_type optional_atat_modalities_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  kind_abbrev_ lident = ( lident with {%hello|world|} @@ lident ) let false = UIdent
  ```


### Item `jkind_desc: jkind_annotation WITH core_type . optional_atat_modalities_expr` (in 1 error)

- Derivation (1 occurrence):
  ```
  jkind_desc: jkind_annotation WITH core_type . optional_atat_modalities_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  kind_abbrev_ lident = lident with {%hello|world|} @@ lident
  ```


### Item `list(generic_and_type_declaration(type_subst_kind)): AND list(attribute) type_parameters LIDENT option(jkind_constraint) COLONEQUAL . nonempty_type_kind reversed_llist(preceded(CONSTRAINT,constrain)) list(post_item_attribute) list(generic_and_type_declaration(type_subst_kind))` (in 1 error)

- Derivation (1 occurrence):
  ```
  list(generic_and_type_declaration(type_subst_kind)): AND list(attribute) type_parameters LIDENT option(jkind_constraint) COLONEQUAL . nonempty_type_kind reversed_llist(preceded(CONSTRAINT,constrain)) list(post_item_attribute) list(generic_and_type_declaration(type_subst_kind))
    nonempty_type_kind: . core_type EQUAL DOTDOT
  ```
  Sample sentence (interface):
  ```ocaml
  type lident := false and lident := {%hello|world|} = .. [@@ and ] and lident := false
  ```


### Item `strict_function_or_labeled_tuple_type: LPAREN . reversed_nonempty_llist(typevar) DOT core_type RPAREN at_mode_expr MINUSGREATER tuple_type` (in 1 error)

- Derivation (1 occurrence):
  ```
  strict_function_or_labeled_tuple_type: LPAREN . reversed_nonempty_llist(typevar) DOT core_type RPAREN at_mode_expr MINUSGREATER tuple_type
  ```
  Sample sentence (implementation):
  ```ocaml
  val lident : ( ' lident . {%hello|world|} ) @ lident -> {%hello|world|} let false = UIdent
  ```

## BUG: formatting did not stabilize after 10 iterations. (15260 errors)

### Item `pattern_gen: . simple_pattern` (in 9635 errors)

- Derivation (2114 occurrences):
  ```
  fun_expr: fun_expr MOD STACK FUNCTION ext . list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
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
  begin UIdent mod stack_ function false -> . ; end let false = UIdent
  ```
- Derivation (985 occurrences):
  ```
  fun_expr: fun_expr MOD STACK FUNCTION ext . list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
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
  UIdent mod stack_ function false -> UIdent let false = UIdent
  ```
- Derivation (852 occurrences):
  ```
  let_bindings(ext): LET ext . list(attribute) mutable_flag rec_flag let_binding_body list(post_item_attribute)
    let_binding_body: . let_binding_body_no_punning
      let_binding_body_no_punning: . pattern_no_exn EQUAL seq_expr
        pattern_no_exn: . pattern_gen
          pattern_gen: . simple_pattern
            simple_pattern: . simple_pattern_not_ident
              simple_pattern_not_ident: . constr_longident
                constr_longident: . constr_extra_nonprefix_ident
                  constr_extra_nonprefix_ident: . FALSE
  ```
  Sample sentence (implementation):
  ```ocaml
  UIdent or begin UIdent end let false = UIdent
  ```
- Derivation (246 occurrences):
  ```
  comprehension_clause_binding: list(attribute) . pattern comprehension_iterator
    pattern: . pattern_gen
      pattern_gen: . simple_pattern
        simple_pattern: . simple_pattern_not_ident
          simple_pattern_not_ident: . constr_longident
            constr_longident: . constr_extra_nonprefix_ident
              constr_extra_nonprefix_ident: . FALSE
  ```
  Sample sentence (implementation):
  ```ocaml
  [ UIdent or begin UIdent end for false in UIdent ] let false = UIdent
  ```
- Derivation (122 occurrences):
  ```
  fun_expr: fun_expr OR FUNCTION ext . list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
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
  UIdent , UIdent or function false -> . % UIdent let false = UIdent
  ```
- Derivation (100 occurrences):
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
  UIdent or if UIdent then stack_ function false -> UIdent else UIdent let false = UIdent
  ```
- Derivation (100 occurrences):
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
  UIdent or if UIdent then function false -> UIdent else UIdent let false = UIdent
  ```
- Derivation (78 occurrences):
  ```
  fun_expr: fun_expr MOD FUNCTION ext . list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
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
  {< lident = UIdent mod function false -> . land UIdent >} let false = UIdent
  ```
- Derivation (78 occurrences):
  ```
  seq_expr: FUNCTION ext . list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
    reversed_preceded_or_separated_nonempty_llist(BAR,match_case): . reversed_preceded_or_separated_nonempty_llist(BAR,match_case) BAR match_case
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
  ( function false when UIdent -> UIdent or ~label: #1.0 , UIdent | false -> UIdent ) let false = UIdent
  ```
- Derivation (60 occurrences):
  ```
  fun_expr: MATCH ext list(attribute) seq_expr WITH . reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
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
  UIdent or match UIdent with false -> UIdent let false = UIdent
  ```
- Derivation (56 occurrences):
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
  if UIdent then stack_ function false -> UIdent else stack_ function false | false -> UIdent let false = UIdent
  ```
- Derivation (56 occurrences):
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
  if UIdent then stack_ function false -> UIdent else function false | false -> UIdent let false = UIdent
  ```
- Derivation (56 occurrences):
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
  if UIdent then function false -> UIdent else stack_ function false | false -> UIdent let false = UIdent
  ```
- Derivation (56 occurrences):
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
  if UIdent then function false -> UIdent else function false | false -> UIdent let false = UIdent
  ```
- Derivation (35 occurrences):
  ```
  fun_expr: additive STACK FUNCTION ext . list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
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
  UIdent or + stack_ function false -> . , UIdent let false = UIdent
  ```
- Derivation (35 occurrences):
  ```
  fun_expr: additive FUNCTION ext . list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
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
  UIdent or + function false -> . , UIdent let false = UIdent
  ```
- Derivation (35 occurrences):
  ```
  fun_expr: subtractive STACK FUNCTION ext . list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
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
  UIdent or - stack_ function false -> . , UIdent let false = UIdent
  ```
- Derivation (35 occurrences):
  ```
  fun_expr: subtractive FUNCTION ext . list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
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
  UIdent or - function false -> . , UIdent let false = UIdent
  ```
- Derivation (34 occurrences):
  ```
  reversed_labeled_tuple_body: STACK FUNCTION ext list(attribute) . reversed_preceded_or_separated_nonempty_llist(BAR,match_case) COMMA STACK FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
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
  UIdent mod stack_ function false -> . , stack_ function false -> UIdent let false = UIdent
  ```
- Derivation (34 occurrences):
  ```
  reversed_labeled_tuple_body: STACK FUNCTION ext list(attribute) . reversed_preceded_or_separated_nonempty_llist(BAR,match_case) COMMA FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
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
  UIdent mod stack_ function false -> . , function false -> UIdent let false = UIdent
  ```
- Derivation (33 occurrences):
  ```
  reversed_labeled_tuple_body: TILDE LIDENT COMMA STACK FUNCTION ext . list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
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
  UIdent or ~ lident , stack_ function false -> . [@ and ] let false = UIdent
  ```
- ...


### Item `fun_expr: fun_expr OR STACK FUNCTION ext . list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)` (in 2659 errors)

- Derivation (1705 occurrences):
  ```
  fun_expr: fun_expr OR STACK FUNCTION ext . list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
  ```
  Sample sentence (implementation):
  ```ocaml
  UIdent or stack_ function | false -> UIdent let false = UIdent
  ```
- Derivation (795 occurrences):
  ```
  fun_expr: fun_expr OR STACK FUNCTION ext . list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
    reversed_preceded_or_separated_nonempty_llist(BAR,match_case): . match_case
  ```
  Sample sentence (implementation):
  ```ocaml
  UIdent or stack_ function false -> UIdent let false = UIdent
  ```
- Derivation (10 occurrences):
  ```
  fun_expr: fun_expr OR STACK FUNCTION ext . list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
    reversed_preceded_or_separated_nonempty_llist(BAR,match_case): . match_case
      match_case: . pattern MINUSGREATER seq_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  UIdent or stack_ function false false -> UIdent let false = UIdent
  ```
- Derivation (7 occurrences):
  ```
  fun_expr: fun_expr OR STACK FUNCTION ext . list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
    reversed_preceded_or_separated_nonempty_llist(BAR,match_case): . reversed_preceded_or_separated_nonempty_llist(BAR,match_case) BAR match_case
      reversed_preceded_or_separated_nonempty_llist(BAR,match_case): . match_case
  ```
  Sample sentence (implementation):
  ```ocaml
  [ UIdent or stack_ function false -> UIdent | false -> UIdent ] let false = UIdent
  ```
- Derivation (6 occurrences):
  ```
  fun_expr: fun_expr OR STACK FUNCTION ext . list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
    reversed_preceded_or_separated_nonempty_llist(BAR,match_case): . match_case
      match_case: . pattern MINUSGREATER seq_expr
        pattern: . pattern attribute
          pattern: . pattern_gen
  ```
  Sample sentence (implementation):
  ```ocaml
  UIdent or stack_ function false false [@ and ] -> UIdent let false = UIdent
  ```
- Derivation (5 occurrences):
  ```
  fun_expr: fun_expr OR STACK FUNCTION ext . list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
    reversed_preceded_or_separated_nonempty_llist(BAR,match_case): . BAR match_case
  ```
  Sample sentence (implementation):
  ```ocaml
  [ UIdent or stack_ function | false -> UIdent ] let false = UIdent
  ```
- Derivation (4 occurrences):
  ```
  fun_expr: fun_expr OR STACK FUNCTION ext . list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
    reversed_preceded_or_separated_nonempty_llist(BAR,match_case): . reversed_preceded_or_separated_nonempty_llist(BAR,match_case) BAR match_case
  ```
  Sample sentence (implementation):
  ```ocaml
  UIdent or stack_ function false -> UIdent | false -> UIdent [@@ and ] let false = UIdent
  ```
- Derivation (4 occurrences):
  ```
  fun_expr: fun_expr OR STACK FUNCTION ext . list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
    reversed_preceded_or_separated_nonempty_llist(BAR,match_case): . match_case
      match_case: . pattern MINUSGREATER seq_expr
        pattern: . reversed_labeled_tuple_pattern(pattern)
          reversed_labeled_tuple_pattern(pattern): . TILDE LPAREN LIDENT COLON core_type RPAREN COMMA DOTDOT
  ```
  Sample sentence (implementation):
  ```ocaml
  UIdent or stack_ function ~ ( lident : {%hello|world|} ) , .. -> UIdent let false = UIdent
  ```
- Derivation (4 occurrences):
  ```
  fun_expr: fun_expr OR STACK FUNCTION ext . list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
    reversed_preceded_or_separated_nonempty_llist(BAR,match_case): . match_case
      match_case: . pattern MINUSGREATER seq_expr
        pattern: . reversed_labeled_tuple_pattern(pattern)
          reversed_labeled_tuple_pattern(pattern): . LABEL simple_pattern COMMA DOTDOT
  ```
  Sample sentence (implementation):
  ```ocaml
  UIdent or stack_ function ~label: false , .. -> UIdent let false = UIdent
  ```
- Derivation (4 occurrences):
  ```
  fun_expr: fun_expr OR STACK FUNCTION ext . list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
    reversed_preceded_or_separated_nonempty_llist(BAR,match_case): . match_case
      match_case: . pattern MINUSGREATER seq_expr
        pattern: . pattern_gen
          pattern_gen: . LAZY ext list(attribute) simple_pattern
  ```
  Sample sentence (implementation):
  ```ocaml
  UIdent or stack_ function lazy false -> UIdent let false = UIdent
  ```
- Derivation (4 occurrences):
  ```
  fun_expr: fun_expr OR STACK FUNCTION ext . list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
    reversed_preceded_or_separated_nonempty_llist(BAR,match_case): . match_case
      match_case: . pattern MINUSGREATER seq_expr
        pattern: . EXCEPTION ext list(attribute) pattern
  ```
  Sample sentence (implementation):
  ```ocaml
  UIdent or stack_ function exception false -> UIdent let false = UIdent
  ```
- Derivation (4 occurrences):
  ```
  fun_expr: fun_expr OR STACK FUNCTION ext . list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
    reversed_preceded_or_separated_nonempty_llist(BAR,match_case): . match_case
      match_case: . pattern MINUSGREATER seq_expr
        pattern: . pattern_gen
          pattern_gen: . name_tag pattern
            name_tag: . BACKQUOTE ident
  ```
  Sample sentence (implementation):
  ```ocaml
  UIdent or stack_ function ` lident false -> UIdent let false = UIdent
  ```
- Derivation (4 occurrences):
  ```
  fun_expr: fun_expr OR STACK FUNCTION ext . list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
    reversed_preceded_or_separated_nonempty_llist(BAR,match_case): . match_case
      match_case: . pattern MINUSGREATER seq_expr
        pattern: . pattern_gen
          pattern_gen: . constr_longident pattern
            constr_longident: . mod_longident
              mod_longident: . mk_longident(mod_longident,UIDENT)
                mk_longident(mod_longident,UIDENT): . UIDENT
  ```
  Sample sentence (implementation):
  ```ocaml
  UIdent or stack_ function UIdent false -> UIdent let false = UIdent
  ```
- Derivation (4 occurrences):
  ```
  fun_expr: fun_expr OR STACK FUNCTION ext . list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
    reversed_preceded_or_separated_nonempty_llist(BAR,match_case): . match_case
      match_case: . pattern MINUSGREATER seq_expr
        pattern: . reversed_labeled_tuple_pattern(pattern)
          reversed_labeled_tuple_pattern(pattern): . labeled_tuple_pat_element_list(pattern)
            labeled_tuple_pat_element_list(pattern): . TILDE LIDENT COMMA LABEL simple_pattern
  ```
  Sample sentence (implementation):
  ```ocaml
  UIdent or stack_ function ~ lident , ~label: false -> UIdent let false = UIdent
  ```
- Derivation (4 occurrences):
  ```
  fun_expr: fun_expr OR STACK FUNCTION ext . list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
    reversed_preceded_or_separated_nonempty_llist(BAR,match_case): . match_case
      match_case: . pattern MINUSGREATER seq_expr
        pattern: . reversed_labeled_tuple_pattern(pattern)
          reversed_labeled_tuple_pattern(pattern): . labeled_tuple_pat_element_list(pattern)
            labeled_tuple_pat_element_list(pattern): . TILDE LIDENT COMMA pattern
  ```
  Sample sentence (implementation):
  ```ocaml
  UIdent or stack_ function ~ lident , false -> UIdent let false = UIdent
  ```
- Derivation (4 occurrences):
  ```
  fun_expr: fun_expr OR STACK FUNCTION ext . list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
    reversed_preceded_or_separated_nonempty_llist(BAR,match_case): . match_case
      match_case: . pattern MINUSGREATER seq_expr
        pattern: . reversed_labeled_tuple_pattern(pattern)
          reversed_labeled_tuple_pattern(pattern): . labeled_tuple_pat_element_list(pattern)
            labeled_tuple_pat_element_list(pattern): . LABEL simple_pattern COMMA LABEL simple_pattern
  ```
  Sample sentence (implementation):
  ```ocaml
  UIdent or stack_ function ~label: false , ~label: false -> UIdent let false = UIdent
  ```
- Derivation (4 occurrences):
  ```
  fun_expr: fun_expr OR STACK FUNCTION ext . list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
    reversed_preceded_or_separated_nonempty_llist(BAR,match_case): . match_case
      match_case: . pattern MINUSGREATER seq_expr
        pattern: . reversed_labeled_tuple_pattern(pattern)
          reversed_labeled_tuple_pattern(pattern): . labeled_tuple_pat_element_list(pattern)
            labeled_tuple_pat_element_list(pattern): . LABEL simple_pattern COMMA pattern
  ```
  Sample sentence (implementation):
  ```ocaml
  UIdent or stack_ function ~label: false , false -> UIdent let false = UIdent
  ```
- Derivation (4 occurrences):
  ```
  fun_expr: fun_expr OR STACK FUNCTION ext . list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
    reversed_preceded_or_separated_nonempty_llist(BAR,match_case): . match_case
      match_case: . pattern MINUSGREATER seq_expr
        pattern: . pattern_gen
          pattern_gen: . constr_longident pattern
            constr_longident: . constr_extra_nonprefix_ident
              constr_extra_nonprefix_ident: . LBRACKET RBRACKET
  ```
  Sample sentence (implementation):
  ```ocaml
  UIdent or stack_ function [ ] false -> UIdent let false = UIdent
  ```
- Derivation (3 occurrences):
  ```
  fun_expr: fun_expr OR STACK FUNCTION ext . list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
    reversed_preceded_or_separated_nonempty_llist(BAR,match_case): . match_case
      match_case: . pattern WHEN seq_expr MINUSGREATER seq_expr
        pattern: . pattern_gen
  ```
  Sample sentence (implementation):
  ```ocaml
  [ UIdent or stack_ function false false when UIdent -> UIdent for false in UIdent ] let false = UIdent
  ```
- Derivation (3 occurrences):
  ```
  fun_expr: fun_expr OR STACK FUNCTION ext . list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
    reversed_preceded_or_separated_nonempty_llist(BAR,match_case): . match_case
      match_case: . pattern MINUSGREATER seq_expr
        pattern: . pattern COLONCOLON pattern
  ```
  Sample sentence (implementation):
  ```ocaml
  UIdent or stack_ function false :: false -> UIdent let false = UIdent
  ```
- Derivation (3 occurrences):
  ```
  fun_expr: fun_expr OR STACK FUNCTION ext . list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
    reversed_preceded_or_separated_nonempty_llist(BAR,match_case): . match_case
      match_case: . pattern WHEN seq_expr MINUSGREATER seq_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  UIdent or stack_ function false false when UIdent -> UIdent let false = UIdent
  ```
- ...


### Item `fun_expr: fun_expr OR FUNCTION ext . list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)` (in 1027 errors)

- Derivation (1017 occurrences):
  ```
  fun_expr: fun_expr OR FUNCTION ext . list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
  ```
  Sample sentence (implementation):
  ```ocaml
  ( UIdent or function false -> . land UIdent ) let false = UIdent
  ```
- Derivation (10 occurrences):
  ```
  fun_expr: fun_expr OR FUNCTION ext . list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
    reversed_preceded_or_separated_nonempty_llist(BAR,match_case): . match_case
  ```
  Sample sentence (implementation):
  ```ocaml
  UIdent or function false -> UIdent ; land UIdent [@@ and ] let false = UIdent
  ```


### Item `pattern: pattern . BAR pattern` (in 482 errors)

- Derivation (482 occurrences):
  ```
  pattern: pattern . BAR pattern
  ```
  Sample sentence (implementation):
  ```ocaml
  [ function false | false -> . ] let false = UIdent
  ```


### Item `fun_expr: fun_expr MOD . fun_expr` (in 359 errors)

- Derivation (30 occurrences):
  ```
  fun_expr: fun_expr MOD . fun_expr
    fun_expr: . fun_
  ```
  Sample sentence (implementation):
  ```ocaml
  UIdent mod stack_ fun false -> UIdent let false = UIdent
  ```
- Derivation (28 occurrences):
  ```
  fun_expr: fun_expr MOD . fun_expr
    fun_expr: . let_bindings(ext) IN seq_expr
      let_bindings(ext): . LET ext list(attribute) mutable_flag rec_flag let_binding_body list(post_item_attribute)
  ```
  Sample sentence (implementation):
  ```ocaml
  UIdent mod let false = UIdent in UIdent let false = UIdent
  ```
- Derivation (26 occurrences):
  ```
  fun_expr: fun_expr MOD . fun_expr
    fun_expr: . LETOP letop_bindings IN seq_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  UIdent mod let* lident in UIdent let false = UIdent
  ```
- Derivation (26 occurrences):
  ```
  fun_expr: fun_expr MOD . fun_expr
    fun_expr: . TRY ext list(attribute) seq_expr WITH reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
  ```
  Sample sentence (implementation):
  ```ocaml
  UIdent mod try UIdent with false -> UIdent let false = UIdent
  ```
- Derivation (26 occurrences):
  ```
  fun_expr: fun_expr MOD . fun_expr
    fun_expr: . MATCH ext list(attribute) seq_expr WITH reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
  ```
  Sample sentence (implementation):
  ```ocaml
  UIdent mod match UIdent with false -> UIdent let false = UIdent
  ```
- Derivation (26 occurrences):
  ```
  fun_expr: fun_expr MOD . fun_expr
    fun_expr: . LET EXCEPTION ext list(attribute) constr_ident generalized_constructor_arguments list(attribute) IN seq_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  UIdent mod let exception false in UIdent let false = UIdent
  ```
- Derivation (24 occurrences):
  ```
  fun_expr: fun_expr MOD . fun_expr
    fun_expr: . reversed_labeled_tuple_body
      reversed_labeled_tuple_body: . reversed_labeled_tuple_body COMMA STACK FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
  ```
  Sample sentence (implementation):
  ```ocaml
  UIdent mod ~ lident , UIdent , stack_ function false -> UIdent let false = UIdent
  ```
- Derivation (24 occurrences):
  ```
  fun_expr: fun_expr MOD . fun_expr
    fun_expr: . reversed_labeled_tuple_body
      reversed_labeled_tuple_body: . reversed_labeled_tuple_body COMMA FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
  ```
  Sample sentence (implementation):
  ```ocaml
  UIdent mod ~ lident , UIdent , function false -> UIdent let false = UIdent
  ```
- Derivation (17 occurrences):
  ```
  fun_expr: fun_expr MOD . fun_expr
    fun_expr: . reversed_labeled_tuple_body
      reversed_labeled_tuple_body: . reversed_labeled_tuple_body COMMA fun_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  UIdent mod ~ lident , UIdent , UIdent let false = UIdent
  ```
- Derivation (7 occurrences):
  ```
  fun_expr: fun_expr MOD . fun_expr
    fun_expr: . reversed_labeled_tuple_body
      reversed_labeled_tuple_body: . reversed_labeled_tuple_body COMMA LABEL simple_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  [ UIdent mod ~ lident , UIdent , ~label: UIdent ] let false = UIdent
  ```
- Derivation (6 occurrences):
  ```
  fun_expr: fun_expr MOD . fun_expr
    fun_expr: . simple_expr
      simple_expr: . simple_expr DOT LPAREN seq_expr RPAREN
  ```
  Sample sentence (implementation):
  ```ocaml
  UIdent mod false . ( UIdent ) let false = UIdent
  ```
- Derivation (6 occurrences):
  ```
  fun_expr: fun_expr MOD . fun_expr
    fun_expr: . IF ext list(attribute) seq_expr THEN STACK FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
  ```
  Sample sentence (implementation):
  ```ocaml
  [ UIdent mod if UIdent then stack_ function false -> UIdent ] let false = UIdent
  ```
- Derivation (6 occurrences):
  ```
  fun_expr: fun_expr MOD . fun_expr
    fun_expr: . IF ext list(attribute) seq_expr THEN FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
  ```
  Sample sentence (implementation):
  ```ocaml
  [ UIdent mod if UIdent then function false -> UIdent ] let false = UIdent
  ```
- Derivation (6 occurrences):
  ```
  fun_expr: fun_expr MOD . fun_expr
    fun_expr: . IF ext list(attribute) seq_expr THEN STACK FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case) ELSE STACK FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
  ```
  Sample sentence (implementation):
  ```ocaml
  [ UIdent mod if UIdent then stack_ function false -> UIdent else stack_ function false -> UIdent ] let false = UIdent
  ```
- Derivation (6 occurrences):
  ```
  fun_expr: fun_expr MOD . fun_expr
    fun_expr: . IF ext list(attribute) seq_expr THEN STACK FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case) ELSE FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
  ```
  Sample sentence (implementation):
  ```ocaml
  [ UIdent mod if UIdent then stack_ function false -> UIdent else function false -> UIdent ] let false = UIdent
  ```
- Derivation (6 occurrences):
  ```
  fun_expr: fun_expr MOD . fun_expr
    fun_expr: . IF ext list(attribute) seq_expr THEN FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case) ELSE STACK FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
  ```
  Sample sentence (implementation):
  ```ocaml
  [ UIdent mod if UIdent then function false -> UIdent else stack_ function false -> UIdent ] let false = UIdent
  ```
- Derivation (6 occurrences):
  ```
  fun_expr: fun_expr MOD . fun_expr
    fun_expr: . IF ext list(attribute) seq_expr THEN FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case) ELSE FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
  ```
  Sample sentence (implementation):
  ```ocaml
  [ UIdent mod if UIdent then function false -> UIdent else function false -> UIdent ] let false = UIdent
  ```
- Derivation (6 occurrences):
  ```
  fun_expr: fun_expr MOD . fun_expr
    fun_expr: . IF ext list(attribute) seq_expr THEN fun_expr ELSE STACK FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
  ```
  Sample sentence (implementation):
  ```ocaml
  [ UIdent mod if UIdent then UIdent else stack_ function false -> UIdent ] let false = UIdent
  ```
- Derivation (6 occurrences):
  ```
  fun_expr: fun_expr MOD . fun_expr
    fun_expr: . IF ext list(attribute) seq_expr THEN fun_expr ELSE FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
  ```
  Sample sentence (implementation):
  ```ocaml
  [ UIdent mod if UIdent then UIdent else function false -> UIdent ] let false = UIdent
  ```
- Derivation (6 occurrences):
  ```
  fun_expr: fun_expr MOD . fun_expr
    fun_expr: . IF ext list(attribute) seq_expr THEN fun_expr ELSE fun_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  [ UIdent mod if UIdent then UIdent else UIdent ] let false = UIdent
  ```
- Derivation (5 occurrences):
  ```
  fun_expr: fun_expr MOD . fun_expr
    fun_expr: . IF ext list(attribute) seq_expr THEN fun_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  [ UIdent mod if UIdent then UIdent ] let false = UIdent
  ```
- ...


### Item `fun_expr: fun_expr MOD FUNCTION ext . list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)` (in 203 errors)

- Derivation (201 occurrences):
  ```
  fun_expr: fun_expr MOD FUNCTION ext . list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
  ```
  Sample sentence (implementation):
  ```ocaml
  ( UIdent mod function false -> . ** UIdent ) let false = UIdent
  ```
- Derivation (2 occurrences):
  ```
  fun_expr: fun_expr MOD FUNCTION ext . list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
    reversed_preceded_or_separated_nonempty_llist(BAR,match_case): . match_case
  ```
  Sample sentence (implementation):
  ```ocaml
  UIdent mod function false -> UIdent ; ** UIdent [@@ and ] let false = UIdent
  ```


### Item `fun_expr: fun_expr OR . fun_expr` (in 166 errors)

- Derivation (21 occurrences):
  ```
  fun_expr: fun_expr OR . fun_expr
    fun_expr: . fun_
  ```
  Sample sentence (implementation):
  ```ocaml
  UIdent or stack_ fun false -> UIdent let false = UIdent
  ```
- Derivation (17 occurrences):
  ```
  fun_expr: fun_expr OR . fun_expr
    fun_expr: . reversed_labeled_tuple_body
      reversed_labeled_tuple_body: . reversed_labeled_tuple_body COMMA fun_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  UIdent or ~ lident , UIdent , UIdent let false = UIdent
  ```
- Derivation (15 occurrences):
  ```
  fun_expr: fun_expr OR . fun_expr
    fun_expr: . reversed_labeled_tuple_body
      reversed_labeled_tuple_body: . reversed_labeled_tuple_body COMMA STACK FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
  ```
  Sample sentence (implementation):
  ```ocaml
  UIdent or ~ lident , UIdent , stack_ function false -> UIdent let false = UIdent
  ```
- Derivation (15 occurrences):
  ```
  fun_expr: fun_expr OR . fun_expr
    fun_expr: . reversed_labeled_tuple_body
      reversed_labeled_tuple_body: . reversed_labeled_tuple_body COMMA FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
  ```
  Sample sentence (implementation):
  ```ocaml
  UIdent or ~ lident , UIdent , function false -> UIdent let false = UIdent
  ```
- Derivation (7 occurrences):
  ```
  fun_expr: fun_expr OR . fun_expr
    fun_expr: . reversed_labeled_tuple_body
      reversed_labeled_tuple_body: . reversed_labeled_tuple_body COMMA LABEL simple_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  [ UIdent or ~ lident , UIdent , ~label: UIdent ] let false = UIdent
  ```
- Derivation (6 occurrences):
  ```
  fun_expr: fun_expr OR . fun_expr
    fun_expr: . simple_expr
      simple_expr: . simple_expr DOT LPAREN seq_expr RPAREN
  ```
  Sample sentence (implementation):
  ```ocaml
  UIdent or false . ( UIdent ) let false = UIdent
  ```
- Derivation (4 occurrences):
  ```
  fun_expr: fun_expr OR . fun_expr
    fun_expr: . simple_expr
      simple_expr: . NEW ext list(attribute) class_longident
  ```
  Sample sentence (implementation):
  ```ocaml
  UIdent or new lident let false = UIdent
  ```
- Derivation (4 occurrences):
  ```
  fun_expr: fun_expr OR . fun_expr
    fun_expr: . fun_expr COLONCOLON fun_expr
      fun_expr: . fun_
  ```
  Sample sentence (implementation):
  ```ocaml
  [ UIdent or fun false -> UIdent ; :: UIdent ] let false = UIdent
  ```
- Derivation (4 occurrences):
  ```
  fun_expr: fun_expr OR . fun_expr
    fun_expr: . fun_expr AMPERAMPER fun_expr
      fun_expr: . fun_
  ```
  Sample sentence (implementation):
  ```ocaml
  [ UIdent or fun false -> UIdent ; && UIdent ] let false = UIdent
  ```
- Derivation (4 occurrences):
  ```
  fun_expr: fun_expr OR . fun_expr
    fun_expr: . fun_expr EQUAL fun_expr
      fun_expr: . fun_
  ```
  Sample sentence (implementation):
  ```ocaml
  [ UIdent or fun false -> UIdent ; = UIdent ] let false = UIdent
  ```
- Derivation (4 occurrences):
  ```
  fun_expr: fun_expr OR . fun_expr
    fun_expr: . fun_expr INFIXOP4 fun_expr
      fun_expr: . fun_
  ```
  Sample sentence (implementation):
  ```ocaml
  [ UIdent or fun false -> UIdent ; ** UIdent ] let false = UIdent
  ```
- Derivation (4 occurrences):
  ```
  fun_expr: fun_expr OR . fun_expr
    fun_expr: . fun_expr INFIXOP3 fun_expr
      fun_expr: . fun_
  ```
  Sample sentence (implementation):
  ```ocaml
  [ UIdent or fun false -> UIdent ; land UIdent ] let false = UIdent
  ```
- Derivation (4 occurrences):
  ```
  fun_expr: fun_expr OR . fun_expr
    fun_expr: . FOR ext list(attribute) pattern EQUAL seq_expr direction_flag seq_expr DO seq_expr DONE
  ```
  Sample sentence (implementation):
  ```ocaml
  UIdent or for false = UIdent downto UIdent do UIdent done let false = UIdent
  ```
- Derivation (4 occurrences):
  ```
  fun_expr: fun_expr OR . fun_expr
    fun_expr: . WHILE ext list(attribute) seq_expr DO seq_expr DONE
  ```
  Sample sentence (implementation):
  ```ocaml
  UIdent or while UIdent do UIdent done let false = UIdent
  ```
- Derivation (2 occurrences):
  ```
  fun_expr: fun_expr OR . fun_expr
    fun_expr: . simple_expr
      simple_expr: . simple_expr DOTHASH label_longident
  ```
  Sample sentence (implementation):
  ```ocaml
  UIdent or UIdent .# lident .# lident let false = UIdent
  ```
- Derivation (2 occurrences):
  ```
  fun_expr: fun_expr OR . fun_expr
    fun_expr: . reversed_labeled_tuple_body
      reversed_labeled_tuple_body: . reversed_labeled_tuple_body COMMA TILDE LIDENT
  ```
  Sample sentence (implementation):
  ```ocaml
  [ UIdent or ~ lident , UIdent , ~ lident ] let false = UIdent
  ```
- Derivation (2 occurrences):
  ```
  fun_expr: fun_expr OR . fun_expr
    fun_expr: . fun_expr attribute
      fun_expr: . reversed_labeled_tuple_body
        reversed_labeled_tuple_body: . reversed_labeled_tuple_body COMMA STACK FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
  ```
  Sample sentence (implementation):
  ```ocaml
  UIdent or ~ lident , UIdent , stack_ function false -> . [@ and ] let false = UIdent
  ```
- Derivation (2 occurrences):
  ```
  fun_expr: fun_expr OR . fun_expr
    fun_expr: . fun_expr COLONCOLON fun_expr
      fun_expr: . reversed_labeled_tuple_body
        reversed_labeled_tuple_body: . reversed_labeled_tuple_body COMMA STACK FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
  ```
  Sample sentence (implementation):
  ```ocaml
  [ UIdent or ~ lident , UIdent , stack_ function false -> . :: UIdent ] let false = UIdent
  ```
- Derivation (2 occurrences):
  ```
  fun_expr: fun_expr OR . fun_expr
    fun_expr: . fun_expr AMPERAMPER fun_expr
      fun_expr: . reversed_labeled_tuple_body
        reversed_labeled_tuple_body: . reversed_labeled_tuple_body COMMA STACK FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
  ```
  Sample sentence (implementation):
  ```ocaml
  [ UIdent or ~ lident , UIdent , stack_ function false -> . && UIdent ] let false = UIdent
  ```
- Derivation (2 occurrences):
  ```
  fun_expr: fun_expr OR . fun_expr
    fun_expr: . fun_expr BARBAR fun_expr
      fun_expr: . reversed_labeled_tuple_body
        reversed_labeled_tuple_body: . reversed_labeled_tuple_body COMMA STACK FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
  ```
  Sample sentence (implementation):
  ```ocaml
  [ UIdent or ~ lident , UIdent , stack_ function false -> . || UIdent ] let false = UIdent
  ```
- Derivation (2 occurrences):
  ```
  fun_expr: fun_expr OR . fun_expr
    fun_expr: . fun_expr EQUAL fun_expr
      fun_expr: . reversed_labeled_tuple_body
        reversed_labeled_tuple_body: . reversed_labeled_tuple_body COMMA STACK FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
  ```
  Sample sentence (implementation):
  ```ocaml
  [ UIdent or ~ lident , UIdent , stack_ function false -> . = UIdent ] let false = UIdent
  ```
- ...


### Item `fun_expr: fun_expr MOD STACK . FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)` (in 157 errors)

- Derivation (157 occurrences):
  ```
  fun_expr: fun_expr MOD STACK . FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
  ```
  Sample sentence (implementation):
  ```ocaml
  UIdent mod stack_ function UIdent false -> UIdent let false = UIdent
  ```


### Item `simple_expr: . LBRACELESS GREATERRBRACE` (in 100 errors)

- Derivation (6 occurrences):
  ```
  simple_expr: simple_expr DOT mod_longident DOTOP LBRACKET . separated_or_terminated_nonempty_list(SEMI,expr) RBRACKET
    separated_or_terminated_nonempty_list(SEMI,expr): . fun_expr
      fun_expr: . simple_expr
        simple_expr: . LBRACELESS GREATERRBRACE
  ```
  Sample sentence (implementation):
  ```ocaml
  false . UIdent .+ [ {< >} ] let false = UIdent
  ```
- Derivation (6 occurrences):
  ```
  simple_expr: simple_expr DOTOP LBRACKET . separated_or_terminated_nonempty_list(SEMI,expr) RBRACKET
    separated_or_terminated_nonempty_list(SEMI,expr): . fun_expr
      fun_expr: . simple_expr
        simple_expr: . LBRACELESS GREATERRBRACE
  ```
  Sample sentence (implementation):
  ```ocaml
  UIdent .+ [ {< >} ] let false = UIdent
  ```
- Derivation (6 occurrences):
  ```
  simple_expr: simple_expr DOT mod_longident DOTOP LBRACE . separated_or_terminated_nonempty_list(SEMI,expr) RBRACE
    separated_or_terminated_nonempty_list(SEMI,expr): . fun_expr
      fun_expr: . simple_expr
        simple_expr: . LBRACELESS GREATERRBRACE
  ```
  Sample sentence (implementation):
  ```ocaml
  false . UIdent .+ { {< >} } let false = UIdent
  ```
- Derivation (6 occurrences):
  ```
  simple_expr: simple_expr DOTOP LBRACE . separated_or_terminated_nonempty_list(SEMI,expr) RBRACE
    separated_or_terminated_nonempty_list(SEMI,expr): . fun_expr
      fun_expr: . simple_expr
        simple_expr: . LBRACELESS GREATERRBRACE
  ```
  Sample sentence (implementation):
  ```ocaml
  UIdent .+ { {< >} } let false = UIdent
  ```
- Derivation (6 occurrences):
  ```
  simple_expr: simple_expr DOT mod_longident DOTOP LPAREN . separated_or_terminated_nonempty_list(SEMI,expr) RPAREN
    separated_or_terminated_nonempty_list(SEMI,expr): . fun_expr
      fun_expr: . simple_expr
        simple_expr: . LBRACELESS GREATERRBRACE
  ```
  Sample sentence (implementation):
  ```ocaml
  false . UIdent .+ ( {< >} ) let false = UIdent
  ```
- Derivation (6 occurrences):
  ```
  simple_expr: simple_expr DOTOP LPAREN . separated_or_terminated_nonempty_list(SEMI,expr) RPAREN
    separated_or_terminated_nonempty_list(SEMI,expr): . fun_expr
      fun_expr: . simple_expr
        simple_expr: . LBRACELESS GREATERRBRACE
  ```
  Sample sentence (implementation):
  ```ocaml
  UIdent .+ ( {< >} ) let false = UIdent
  ```
- Derivation (6 occurrences):
  ```
  simple_expr: simple_expr DOT LBRACKET . seq_expr RBRACKET
    seq_expr: . fun_seq_expr
      fun_seq_expr: . fun_expr
        fun_expr: . simple_expr
          simple_expr: . LBRACELESS GREATERRBRACE
  ```
  Sample sentence (implementation):
  ```ocaml
  false . [ {< >} ] let false = UIdent
  ```
- Derivation (6 occurrences):
  ```
  simple_expr: simple_expr DOT LBRACE . seq_expr RBRACE
    seq_expr: . fun_seq_expr
      fun_seq_expr: . fun_expr
        fun_expr: . simple_expr
          simple_expr: . LBRACELESS GREATERRBRACE
  ```
  Sample sentence (implementation):
  ```ocaml
  false . { {< >} } let false = UIdent
  ```
- Derivation (6 occurrences):
  ```
  simple_expr: simple_expr DOT LPAREN . seq_expr RPAREN
    seq_expr: . fun_seq_expr
      fun_seq_expr: . fun_expr
        fun_expr: . simple_expr
          simple_expr: . LBRACELESS GREATERRBRACE
  ```
  Sample sentence (implementation):
  ```ocaml
  false . ( {< >} ) let false = UIdent
  ```
- Derivation (4 occurrences):
  ```
  paren_module_expr: LPAREN VAL list(attribute) . fun_expr RPAREN
    fun_expr: . simple_expr
      simple_expr: . LBRACELESS GREATERRBRACE
  ```
  Sample sentence (implementation):
  ```ocaml
  include ( val {< >} ) let false = UIdent
  ```
- Derivation (4 occurrences):
  ```
  fun_expr: simple_expr DOT mod_longident DOTOP LBRACKET separated_or_terminated_nonempty_list(SEMI,expr) RBRACKET LESSMINUS . fun_expr
    fun_expr: . simple_expr
      simple_expr: . LBRACELESS GREATERRBRACE
  ```
  Sample sentence (implementation):
  ```ocaml
  false . UIdent .+ [ UIdent ] <- {< >} let false = UIdent
  ```
- Derivation (4 occurrences):
  ```
  fun_expr: simple_expr DOTOP LBRACKET separated_or_terminated_nonempty_list(SEMI,expr) RBRACKET LESSMINUS . fun_expr
    fun_expr: . simple_expr
      simple_expr: . LBRACELESS GREATERRBRACE
  ```
  Sample sentence (implementation):
  ```ocaml
  UIdent .+ [ UIdent ] <- {< >} let false = UIdent
  ```
- Derivation (4 occurrences):
  ```
  fun_expr: simple_expr DOT mod_longident DOTOP LBRACE separated_or_terminated_nonempty_list(SEMI,expr) RBRACE LESSMINUS . fun_expr
    fun_expr: . simple_expr
      simple_expr: . LBRACELESS GREATERRBRACE
  ```
  Sample sentence (implementation):
  ```ocaml
  false . UIdent .+ { UIdent } <- {< >} let false = UIdent
  ```
- Derivation (4 occurrences):
  ```
  fun_expr: simple_expr DOTOP LBRACE separated_or_terminated_nonempty_list(SEMI,expr) RBRACE LESSMINUS . fun_expr
    fun_expr: . simple_expr
      simple_expr: . LBRACELESS GREATERRBRACE
  ```
  Sample sentence (implementation):
  ```ocaml
  UIdent .+ { UIdent } <- {< >} let false = UIdent
  ```
- Derivation (4 occurrences):
  ```
  fun_expr: simple_expr DOT mod_longident DOTOP LPAREN separated_or_terminated_nonempty_list(SEMI,expr) RPAREN LESSMINUS . fun_expr
    fun_expr: . simple_expr
      simple_expr: . LBRACELESS GREATERRBRACE
  ```
  Sample sentence (implementation):
  ```ocaml
  false . UIdent .+ ( UIdent ) <- {< >} let false = UIdent
  ```
- Derivation (4 occurrences):
  ```
  fun_expr: simple_expr DOTOP LPAREN separated_or_terminated_nonempty_list(SEMI,expr) RPAREN LESSMINUS . fun_expr
    fun_expr: . simple_expr
      simple_expr: . LBRACELESS GREATERRBRACE
  ```
  Sample sentence (implementation):
  ```ocaml
  UIdent .+ ( UIdent ) <- {< >} let false = UIdent
  ```
- Derivation (4 occurrences):
  ```
  fun_expr: simple_expr DOT LBRACKET seq_expr RBRACKET LESSMINUS . fun_expr
    fun_expr: . simple_expr
      simple_expr: . LBRACELESS GREATERRBRACE
  ```
  Sample sentence (implementation):
  ```ocaml
  false . [ UIdent ] <- {< >} let false = UIdent
  ```
- Derivation (4 occurrences):
  ```
  fun_expr: simple_expr DOT LBRACE seq_expr RBRACE LESSMINUS . fun_expr
    fun_expr: . simple_expr
      simple_expr: . LBRACELESS GREATERRBRACE
  ```
  Sample sentence (implementation):
  ```ocaml
  false . { UIdent } <- {< >} let false = UIdent
  ```
- Derivation (4 occurrences):
  ```
  fun_expr: simple_expr DOT LPAREN seq_expr RPAREN LESSMINUS . fun_expr
    fun_expr: . simple_expr
      simple_expr: . LBRACELESS GREATERRBRACE
  ```
  Sample sentence (implementation):
  ```ocaml
  false . ( UIdent ) <- {< >} let false = UIdent
  ```
- Derivation (2 occurrences):
  ```
  fun_expr: STACK . simple_expr
    simple_expr: . LBRACELESS GREATERRBRACE
  ```
  Sample sentence (implementation):
  ```ocaml
  ( stack_ {< >} ) let false = UIdent
  ```
- Derivation (2 occurrences):
  ```
  strict_binding_modes: EQUAL . seq_expr
    seq_expr: . fun_seq_expr
      fun_seq_expr: . fun_expr
        fun_expr: . simple_expr
          simple_expr: . LBRACELESS GREATERRBRACE
  ```
  Sample sentence (implementation):
  ```ocaml
  let ( lident @ lident ) = {< >} let false = UIdent
  ```
- ...


### Item `fun_expr: . fun_` (in 64 errors)

- Derivation (3 occurrences):
  ```
  simple_expr: simple_expr DOT mod_longident DOTOP LBRACKET . separated_or_terminated_nonempty_list(SEMI,expr) RBRACKET
    separated_or_terminated_nonempty_list(SEMI,expr): . fun_expr
      fun_expr: . fun_expr attribute
        fun_expr: . fun_
  ```
  Sample sentence (implementation):
  ```ocaml
  false . UIdent .+ [ fun false -> UIdent ; [@ and ] ] let false = UIdent
  ```
- Derivation (3 occurrences):
  ```
  simple_expr: simple_expr DOTOP LBRACKET . separated_or_terminated_nonempty_list(SEMI,expr) RBRACKET
    separated_or_terminated_nonempty_list(SEMI,expr): . fun_expr
      fun_expr: . fun_expr attribute
        fun_expr: . fun_
  ```
  Sample sentence (implementation):
  ```ocaml
  UIdent .+ [ fun false -> UIdent ; [@ and ] ] let false = UIdent
  ```
- Derivation (3 occurrences):
  ```
  simple_expr: simple_expr DOT mod_longident DOTOP LBRACE . separated_or_terminated_nonempty_list(SEMI,expr) RBRACE
    separated_or_terminated_nonempty_list(SEMI,expr): . fun_expr
      fun_expr: . fun_expr attribute
        fun_expr: . fun_
  ```
  Sample sentence (implementation):
  ```ocaml
  false . UIdent .+ { fun false -> UIdent ; [@ and ] } let false = UIdent
  ```
- Derivation (3 occurrences):
  ```
  simple_expr: simple_expr DOTOP LBRACE . separated_or_terminated_nonempty_list(SEMI,expr) RBRACE
    separated_or_terminated_nonempty_list(SEMI,expr): . fun_expr
      fun_expr: . fun_expr attribute
        fun_expr: . fun_
  ```
  Sample sentence (implementation):
  ```ocaml
  UIdent .+ { fun false -> UIdent ; [@ and ] } let false = UIdent
  ```
- Derivation (3 occurrences):
  ```
  simple_expr: simple_expr DOT mod_longident DOTOP LPAREN . separated_or_terminated_nonempty_list(SEMI,expr) RPAREN
    separated_or_terminated_nonempty_list(SEMI,expr): . fun_expr
      fun_expr: . fun_expr attribute
        fun_expr: . fun_
  ```
  Sample sentence (implementation):
  ```ocaml
  false . UIdent .+ ( fun false -> UIdent ; [@ and ] ) let false = UIdent
  ```
- Derivation (3 occurrences):
  ```
  simple_expr: simple_expr DOTOP LPAREN . separated_or_terminated_nonempty_list(SEMI,expr) RPAREN
    separated_or_terminated_nonempty_list(SEMI,expr): . fun_expr
      fun_expr: . fun_expr attribute
        fun_expr: . fun_
  ```
  Sample sentence (implementation):
  ```ocaml
  UIdent .+ ( fun false -> UIdent ; [@ and ] ) let false = UIdent
  ```
- Derivation (3 occurrences):
  ```
  simple_expr: simple_expr DOT LBRACKET . seq_expr RBRACKET
    seq_expr: . fun_seq_expr
      fun_seq_expr: . fun_expr
        fun_expr: . fun_expr attribute
          fun_expr: . fun_
  ```
  Sample sentence (implementation):
  ```ocaml
  false . [ fun false -> UIdent ; [@ and ] ] let false = UIdent
  ```
- Derivation (3 occurrences):
  ```
  simple_expr: simple_expr DOT LBRACE . seq_expr RBRACE
    seq_expr: . fun_seq_expr
      fun_seq_expr: . fun_expr
        fun_expr: . fun_expr attribute
          fun_expr: . fun_
  ```
  Sample sentence (implementation):
  ```ocaml
  false . { fun false -> UIdent ; [@ and ] } let false = UIdent
  ```
- Derivation (3 occurrences):
  ```
  simple_expr: simple_expr DOT LPAREN . seq_expr RPAREN
    seq_expr: . fun_seq_expr
      fun_seq_expr: . fun_expr
        fun_expr: . fun_expr attribute
          fun_expr: . fun_
  ```
  Sample sentence (implementation):
  ```ocaml
  false . ( fun false -> UIdent ; [@ and ] ) let false = UIdent
  ```
- Derivation (2 occurrences):
  ```
  paren_module_expr: LPAREN VAL list(attribute) . fun_expr RPAREN
    fun_expr: . fun_expr attribute
      fun_expr: . fun_
  ```
  Sample sentence (implementation):
  ```ocaml
  include ( val fun false -> UIdent ; [@ and ] ) let false = UIdent
  ```
- Derivation (2 occurrences):
  ```
  option(preceded(EQUAL,expr)): EQUAL . fun_expr
    fun_expr: . fun_expr attribute
      fun_expr: . fun_
  ```
  Sample sentence (implementation):
  ```ocaml
  #{ lident = fun false -> UIdent ; [@ and ] } let false = UIdent
  ```
- Derivation (2 occurrences):
  ```
  match_case: pattern WHEN . seq_expr MINUSGREATER seq_expr
    seq_expr: . fun_seq_expr
      fun_seq_expr: . fun_expr
        fun_expr: . fun_expr attribute
          fun_expr: . fun_
  ```
  Sample sentence (implementation):
  ```ocaml
  function false when fun false -> UIdent ; [@ and ] -> UIdent let false = UIdent
  ```
- Derivation (2 occurrences):
  ```
  fun_expr: FOR ext list(attribute) pattern EQUAL seq_expr direction_flag seq_expr DO . seq_expr DONE
    seq_expr: . fun_seq_expr
      fun_seq_expr: . fun_expr
        fun_expr: . fun_expr attribute
          fun_expr: . fun_
  ```
  Sample sentence (implementation):
  ```ocaml
  for false = UIdent downto UIdent do fun false -> UIdent ; [@ and ] done let false = UIdent
  ```
- Derivation (2 occurrences):
  ```
  fun_expr: FOR ext list(attribute) pattern EQUAL seq_expr direction_flag . seq_expr DO seq_expr DONE
    seq_expr: . fun_seq_expr
      fun_seq_expr: . fun_expr
        fun_expr: . fun_expr attribute
          fun_expr: . fun_
  ```
  Sample sentence (implementation):
  ```ocaml
  for false = UIdent downto fun false -> UIdent ; [@ and ] do UIdent done let false = UIdent
  ```
- Derivation (2 occurrences):
  ```
  fun_expr: FOR ext list(attribute) pattern EQUAL . seq_expr direction_flag seq_expr DO seq_expr DONE
    seq_expr: . fun_seq_expr
      fun_seq_expr: . fun_expr
        fun_expr: . fun_expr attribute
          fun_expr: . fun_
  ```
  Sample sentence (implementation):
  ```ocaml
  for false = fun false -> UIdent ; [@ and ] downto UIdent do UIdent done let false = UIdent
  ```
- Derivation (2 occurrences):
  ```
  fun_expr: WHILE ext list(attribute) seq_expr DO . seq_expr DONE
    seq_expr: . fun_seq_expr
      fun_seq_expr: . fun_expr
        fun_expr: . fun_expr attribute
          fun_expr: . fun_
  ```
  Sample sentence (implementation):
  ```ocaml
  while UIdent do fun false -> UIdent ; [@ and ] done let false = UIdent
  ```
- Derivation (2 occurrences):
  ```
  fun_expr: WHILE ext list(attribute) . seq_expr DO seq_expr DONE
    seq_expr: . fun_seq_expr
      fun_seq_expr: . fun_expr
        fun_expr: . fun_expr attribute
          fun_expr: . fun_
  ```
  Sample sentence (implementation):
  ```ocaml
  while fun false -> UIdent ; [@ and ] do UIdent done let false = UIdent
  ```
- Derivation (1 occurrence):
  ```
  simple_expr: LBRACKETCOLON . fun_expr reversed_nonempty_llist(comprehension_clause) COLONRBRACKET
    fun_expr: . fun_expr attribute
      fun_expr: . fun_
  ```
  Sample sentence (implementation):
  ```ocaml
  [: fun false -> UIdent ; [@ and ] for false in UIdent :] let false = UIdent
  ```
- Derivation (1 occurrence):
  ```
  simple_expr: LBRACKETBAR . fun_expr reversed_nonempty_llist(comprehension_clause) BARRBRACKET
    fun_expr: . fun_expr attribute
      fun_expr: . fun_
  ```
  Sample sentence (implementation):
  ```ocaml
  [| fun false -> UIdent ; [@ and ] for false in UIdent |] let false = UIdent
  ```
- Derivation (1 occurrence):
  ```
  simple_expr: LBRACKET . fun_expr reversed_nonempty_llist(comprehension_clause) RBRACKET
    fun_expr: . fun_expr attribute
      fun_expr: . fun_
  ```
  Sample sentence (implementation):
  ```ocaml
  [ fun false -> UIdent ; [@ and ] for false in UIdent ] let false = UIdent
  ```
- Derivation (1 occurrence):
  ```
  simple_expr: mod_longident DOT LBRACKETCOLON . fun_expr reversed_nonempty_llist(comprehension_clause) COLONRBRACKET
    fun_expr: . fun_expr attribute
      fun_expr: . fun_
  ```
  Sample sentence (implementation):
  ```ocaml
  UIdent . [: fun false -> UIdent ; [@ and ] for false in UIdent :] let false = UIdent
  ```
- ...


### Item `type_parameters: . type_parameter` (in 64 errors)

- Derivation (2 occurrences):
  ```
  generic_type_declaration(nonrec_flag,type_kind): TYPE ext list(attribute) NONREC . type_parameters LIDENT option(jkind_constraint) type_kind reversed_llist(preceded(CONSTRAINT,constrain)) list(post_item_attribute)
    type_parameters: . type_parameter
      type_parameter: . type_variance UNDERSCORE list(attribute)
        type_variance: . PREFIXOP
  ```
  Sample sentence (interface):
  ```ocaml
  type nonrec !+ _ lident
  ```
- Derivation (2 occurrences):
  ```
  list(generic_and_type_declaration(type_subst_kind)): AND list(attribute) . type_parameters LIDENT option(jkind_constraint) COLONEQUAL nonempty_type_kind reversed_llist(preceded(CONSTRAINT,constrain)) list(post_item_attribute) list(generic_and_type_declaration(type_subst_kind))
    type_parameters: . type_parameter
      type_parameter: . type_variance QUOTE ident list(attribute)
        type_variance: . PREFIXOP
  ```
  Sample sentence (interface):
  ```ocaml
  type lident := false and !+ ' lident lident := false
  ```
- Derivation (2 occurrences):
  ```
  list(generic_and_type_declaration(type_kind)): AND list(attribute) . type_parameters LIDENT option(jkind_constraint) type_kind reversed_llist(preceded(CONSTRAINT,constrain)) list(post_item_attribute) list(generic_and_type_declaration(type_kind))
    type_parameters: . type_parameter
      type_parameter: . type_variance QUOTE ident list(attribute)
        type_variance: . PREFIXOP
  ```
  Sample sentence (implementation):
  ```ocaml
  type lident and !+ ' lident lident let false = UIdent
  ```
- Derivation (2 occurrences):
  ```
  generic_type_declaration(nonrec_flag,type_kind): TYPE ext list(attribute) . type_parameters LIDENT option(jkind_constraint) type_kind reversed_llist(preceded(CONSTRAINT,constrain)) list(post_item_attribute)
    type_parameters: . type_parameter
      type_parameter: . type_variance QUOTE ident list(attribute)
        type_variance: . PREFIXOP
  ```
  Sample sentence (implementation):
  ```ocaml
  type !+ ' lident lident
  ```
- Derivation (2 occurrences):
  ```
  list(generic_and_type_declaration(type_subst_kind)): AND list(attribute) . type_parameters LIDENT option(jkind_constraint) COLONEQUAL nonempty_type_kind reversed_llist(preceded(CONSTRAINT,constrain)) list(post_item_attribute) list(generic_and_type_declaration(type_subst_kind))
    type_parameters: . type_parameter
      type_parameter: . type_variance QUOTE ident list(attribute)
        type_variance: . INFIXOP2
  ```
  Sample sentence (interface):
  ```ocaml
  type lident := false and +! ' lident lident := false
  ```
- Derivation (2 occurrences):
  ```
  list(generic_and_type_declaration(type_kind)): AND list(attribute) . type_parameters LIDENT option(jkind_constraint) type_kind reversed_llist(preceded(CONSTRAINT,constrain)) list(post_item_attribute) list(generic_and_type_declaration(type_kind))
    type_parameters: . type_parameter
      type_parameter: . type_variance QUOTE ident list(attribute)
        type_variance: . INFIXOP2
  ```
  Sample sentence (implementation):
  ```ocaml
  type lident and +! ' lident lident let false = UIdent
  ```
- Derivation (2 occurrences):
  ```
  generic_type_declaration(nonrec_flag,type_kind): TYPE ext list(attribute) . type_parameters LIDENT option(jkind_constraint) type_kind reversed_llist(preceded(CONSTRAINT,constrain)) list(post_item_attribute)
    type_parameters: . type_parameter
      type_parameter: . type_variance QUOTE ident list(attribute)
        type_variance: . INFIXOP2
  ```
  Sample sentence (implementation):
  ```ocaml
  type +! ' lident lident
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
  type nonrec ! - _ lident
  ```
- Derivation (2 occurrences):
  ```
  list(generic_and_type_declaration(type_subst_kind)): AND list(attribute) . type_parameters LIDENT option(jkind_constraint) COLONEQUAL nonempty_type_kind reversed_llist(preceded(CONSTRAINT,constrain)) list(post_item_attribute) list(generic_and_type_declaration(type_subst_kind))
    type_parameters: . type_parameter
      type_parameter: . type_variance QUOTE ident list(attribute)
        type_variance: . BANG MINUS
  ```
  Sample sentence (interface):
  ```ocaml
  type lident := false and ! - ' lident lident := false
  ```
- Derivation (2 occurrences):
  ```
  list(generic_and_type_declaration(type_kind)): AND list(attribute) . type_parameters LIDENT option(jkind_constraint) type_kind reversed_llist(preceded(CONSTRAINT,constrain)) list(post_item_attribute) list(generic_and_type_declaration(type_kind))
    type_parameters: . type_parameter
      type_parameter: . type_variance QUOTE ident list(attribute)
        type_variance: . BANG MINUS
  ```
  Sample sentence (implementation):
  ```ocaml
  type lident and ! - ' lident lident let false = UIdent
  ```
- Derivation (2 occurrences):
  ```
  generic_type_declaration(nonrec_flag,type_kind): TYPE ext list(attribute) . type_parameters LIDENT option(jkind_constraint) type_kind reversed_llist(preceded(CONSTRAINT,constrain)) list(post_item_attribute)
    type_parameters: . type_parameter
      type_parameter: . type_variance QUOTE ident list(attribute)
        type_variance: . BANG MINUS
  ```
  Sample sentence (implementation):
  ```ocaml
  type ! - ' lident lident
  ```
- Derivation (2 occurrences):
  ```
  list(generic_and_type_declaration(type_subst_kind)): AND list(attribute) . type_parameters LIDENT option(jkind_constraint) COLONEQUAL nonempty_type_kind reversed_llist(preceded(CONSTRAINT,constrain)) list(post_item_attribute) list(generic_and_type_declaration(type_subst_kind))
    type_parameters: . type_parameter
      type_parameter: . type_variance QUOTE ident list(attribute)
        type_variance: . MINUS BANG
  ```
  Sample sentence (interface):
  ```ocaml
  type lident := false and - ! ' lident lident := false
  ```
- Derivation (2 occurrences):
  ```
  list(generic_and_type_declaration(type_kind)): AND list(attribute) . type_parameters LIDENT option(jkind_constraint) type_kind reversed_llist(preceded(CONSTRAINT,constrain)) list(post_item_attribute) list(generic_and_type_declaration(type_kind))
    type_parameters: . type_parameter
      type_parameter: . type_variance QUOTE ident list(attribute)
        type_variance: . MINUS BANG
  ```
  Sample sentence (implementation):
  ```ocaml
  type lident and - ! ' lident lident let false = UIdent
  ```
- Derivation (2 occurrences):
  ```
  generic_type_declaration(nonrec_flag,type_kind): TYPE ext list(attribute) . type_parameters LIDENT option(jkind_constraint) type_kind reversed_llist(preceded(CONSTRAINT,constrain)) list(post_item_attribute)
    type_parameters: . type_parameter
      type_parameter: . type_variance QUOTE ident list(attribute)
        type_variance: . MINUS BANG
  ```
  Sample sentence (implementation):
  ```ocaml
  type - ! ' lident lident
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
  type nonrec ! + _ lident
  ```
- Derivation (2 occurrences):
  ```
  list(generic_and_type_declaration(type_subst_kind)): AND list(attribute) . type_parameters LIDENT option(jkind_constraint) COLONEQUAL nonempty_type_kind reversed_llist(preceded(CONSTRAINT,constrain)) list(post_item_attribute) list(generic_and_type_declaration(type_subst_kind))
    type_parameters: . type_parameter
      type_parameter: . type_variance QUOTE ident list(attribute)
        type_variance: . BANG PLUS
  ```
  Sample sentence (interface):
  ```ocaml
  type lident := false and ! + ' lident lident := false
  ```
- Derivation (2 occurrences):
  ```
  list(generic_and_type_declaration(type_kind)): AND list(attribute) . type_parameters LIDENT option(jkind_constraint) type_kind reversed_llist(preceded(CONSTRAINT,constrain)) list(post_item_attribute) list(generic_and_type_declaration(type_kind))
    type_parameters: . type_parameter
      type_parameter: . type_variance QUOTE ident list(attribute)
        type_variance: . BANG PLUS
  ```
  Sample sentence (implementation):
  ```ocaml
  type lident and ! + ' lident lident let false = UIdent
  ```
- Derivation (2 occurrences):
  ```
  generic_type_declaration(nonrec_flag,type_kind): TYPE ext list(attribute) . type_parameters LIDENT option(jkind_constraint) type_kind reversed_llist(preceded(CONSTRAINT,constrain)) list(post_item_attribute)
    type_parameters: . type_parameter
      type_parameter: . type_variance QUOTE ident list(attribute)
        type_variance: . BANG PLUS
  ```
  Sample sentence (implementation):
  ```ocaml
  type ! + ' lident lident
  ```
- Derivation (2 occurrences):
  ```
  list(generic_and_type_declaration(type_subst_kind)): AND list(attribute) . type_parameters LIDENT option(jkind_constraint) COLONEQUAL nonempty_type_kind reversed_llist(preceded(CONSTRAINT,constrain)) list(post_item_attribute) list(generic_and_type_declaration(type_subst_kind))
    type_parameters: . type_parameter
      type_parameter: . type_variance QUOTE ident list(attribute)
        type_variance: . PLUS BANG
  ```
  Sample sentence (interface):
  ```ocaml
  type lident := false and + ! ' lident lident := false
  ```
- Derivation (2 occurrences):
  ```
  list(generic_and_type_declaration(type_kind)): AND list(attribute) . type_parameters LIDENT option(jkind_constraint) type_kind reversed_llist(preceded(CONSTRAINT,constrain)) list(post_item_attribute) list(generic_and_type_declaration(type_kind))
    type_parameters: . type_parameter
      type_parameter: . type_variance QUOTE ident list(attribute)
        type_variance: . PLUS BANG
  ```
  Sample sentence (implementation):
  ```ocaml
  type lident and + ! ' lident lident let false = UIdent
  ```
- Derivation (2 occurrences):
  ```
  generic_type_declaration(nonrec_flag,type_kind): TYPE ext list(attribute) . type_parameters LIDENT option(jkind_constraint) type_kind reversed_llist(preceded(CONSTRAINT,constrain)) list(post_item_attribute)
    type_parameters: . type_parameter
      type_parameter: . type_variance QUOTE ident list(attribute)
        type_variance: . PLUS BANG
  ```
  Sample sentence (implementation):
  ```ocaml
  type + ! ' lident lident
  ```
- ...


### Item `fun_expr: STACK . simple_expr` (in 40 errors)

- Derivation (12 occurrences):
  ```
  fun_expr: STACK . simple_expr
    simple_expr: . simple_expr DOT LPAREN seq_expr RPAREN
  ```
  Sample sentence (implementation):
  ```ocaml
  UIdent or stack_ false . ( UIdent ) let false = UIdent
  ```
- Derivation (8 occurrences):
  ```
  fun_expr: STACK . simple_expr
    simple_expr: . HASHLPAREN reversed_labeled_tuple_body RPAREN
  ```
  Sample sentence (implementation):
  ```ocaml
  UIdent or stack_ #( UIdent , UIdent ) let false = UIdent
  ```
- Derivation (8 occurrences):
  ```
  fun_expr: STACK . simple_expr
    simple_expr: . NEW ext list(attribute) class_longident
  ```
  Sample sentence (implementation):
  ```ocaml
  UIdent or stack_ new lident let false = UIdent
  ```
- Derivation (8 occurrences):
  ```
  fun_expr: STACK . simple_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  UIdent .+ { UIdent mod stack_ #1.0 . lident } let false = UIdent
  ```
- Derivation (4 occurrences):
  ```
  fun_expr: STACK . simple_expr
    simple_expr: . simple_expr DOTHASH label_longident
  ```
  Sample sentence (implementation):
  ```ocaml
  UIdent mod stack_ false . lident .# lident let false = UIdent
  ```


### Item `reversed_labeled_tuple_body: STACK FUNCTION . ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case) COMMA fun_expr` (in 38 errors)

- Derivation (38 occurrences):
  ```
  reversed_labeled_tuple_body: STACK FUNCTION . ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case) COMMA fun_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  UIdent or stack_ function false -> . , UIdent let false = UIdent
  ```


### Item `reversed_labeled_tuple_body: STACK FUNCTION . ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case) COMMA FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)` (in 37 errors)

- Derivation (37 occurrences):
  ```
  reversed_labeled_tuple_body: STACK FUNCTION . ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case) COMMA FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
  ```
  Sample sentence (implementation):
  ```ocaml
  UIdent or stack_ function false -> . , function false -> UIdent let false = UIdent
  ```


### Item `reversed_labeled_tuple_body: STACK FUNCTION . ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case) COMMA STACK FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)` (in 37 errors)

- Derivation (37 occurrences):
  ```
  reversed_labeled_tuple_body: STACK FUNCTION . ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case) COMMA STACK FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
  ```
  Sample sentence (implementation):
  ```ocaml
  UIdent or stack_ function false -> . , stack_ function false -> UIdent let false = UIdent
  ```


### Item `module_type: . FUNCTOR list(attribute) reversed_nonempty_llist(functor_arg) MINUSGREATER module_type` (in 28 errors)

- Derivation (8 occurrences):
  ```
  module_declaration_body(__anonymous_8): COLON . module_type optional_atat_modalities_expr
    module_type: . FUNCTOR list(attribute) reversed_nonempty_llist(functor_arg) MINUSGREATER module_type
  ```
  Sample sentence (interface):
  ```ocaml
  module UIdent : functor ( ) -> UIdent
  ```
- Derivation (6 occurrences):
  ```
  signature_item: include_kind ext . list(attribute) module_type list(post_item_attribute) optional_atat_modalities_expr
    module_type: . FUNCTOR list(attribute) reversed_nonempty_llist(functor_arg) MINUSGREATER module_type
  ```
  Sample sentence (interface):
  ```ocaml
  include functor functor ( ) -> UIdent
  ```
- Derivation (6 occurrences):
  ```
  option(preceded(EQUAL,module_type)): EQUAL . module_type
    module_type: . FUNCTOR list(attribute) reversed_nonempty_llist(functor_arg) MINUSGREATER module_type
  ```
  Sample sentence (implementation):
  ```ocaml
  include struct module type lident = functor ( ) -> UIdent end let false = UIdent
  ```
- Derivation (2 occurrences):
  ```
  module_type_subst: MODULE TYPE ext list(attribute) ident COLONEQUAL . module_type list(post_item_attribute)
    module_type: . FUNCTOR list(attribute) reversed_nonempty_llist(functor_arg) MINUSGREATER module_type
  ```
  Sample sentence (interface):
  ```ocaml
  module type lident := functor ( ) -> UIdent
  ```
- Derivation (2 occurrences):
  ```
  module_declaration_body(module_type_with_optional_modes): COLON . module_type
    module_type: . FUNCTOR list(attribute) reversed_nonempty_llist(functor_arg) MINUSGREATER module_type
  ```
  Sample sentence (interface):
  ```ocaml
  module UIdent ( ) : functor ( ) -> UIdent
  ```
- Derivation (1 occurrence):
  ```
  with_constraint: MODULE TYPE mty_longident COLONEQUAL . module_type
    module_type: . FUNCTOR list(attribute) reversed_nonempty_llist(functor_arg) MINUSGREATER module_type
  ```
  Sample sentence (implementation):
  ```ocaml
  module UIdent : UIdent with module type UIdent := functor ( ) -> UIdent = {%hello|world|} let false = UIdent
  ```
- Derivation (1 occurrence):
  ```
  with_constraint: MODULE TYPE mty_longident EQUAL . module_type
    module_type: . FUNCTOR list(attribute) reversed_nonempty_llist(functor_arg) MINUSGREATER module_type
  ```
  Sample sentence (implementation):
  ```ocaml
  module UIdent : UIdent with module type UIdent = functor ( ) -> UIdent = {%hello|world|} let false = UIdent
  ```
- Derivation (1 occurrence):
  ```
  module_type_atomic: LPAREN . module_type RPAREN
    module_type: . FUNCTOR list(attribute) reversed_nonempty_llist(functor_arg) MINUSGREATER module_type
  ```
  Sample sentence (implementation):
  ```ocaml
  module type lident = ( functor ( ) -> UIdent ) [@@ and ] let false = UIdent
  ```
- Derivation (1 occurrence):
  ```
  functor_arg: LPAREN module_name COLON . module_type RPAREN
    module_type: . FUNCTOR list(attribute) reversed_nonempty_llist(functor_arg) MINUSGREATER module_type
  ```
  Sample sentence (implementation):
  ```ocaml
  module UIdent ( UIdent : functor ( ) -> UIdent ) = {%hello|world|} let false = UIdent
  ```


### Item `ext: . PERCENT attr_id` (in 22 errors)

- Derivation (6 occurrences):
  ```
  simple_pattern_not_ident: LPAREN MODULE . ext list(attribute) module_name RPAREN
    ext: . PERCENT attr_id
  ```
  Sample sentence (implementation):
  ```ocaml
  include struct let ( module % and UIdent ) @ lident = UIdent end let false = UIdent
  ```
- Derivation (4 occurrences):
  ```
  structure_item: MODULE . ext list(attribute) module_name_modal(at_mode_expr) module_binding_body list(post_item_attribute)
    ext: . PERCENT attr_id
  ```
  Sample sentence (implementation):
  ```ocaml
  module % and UIdent = {%hello|world|} let false = UIdent
  ```
- Derivation (4 occurrences):
  ```
  signature_item: TYPE . ext list(attribute) type_parameters type_longident PLUSEQ private_flag reversed_bar_llist(extension_constructor_declaration) list(post_item_attribute)
    ext: . PERCENT attr_id
  ```
  Sample sentence (interface):
  ```ocaml
  type % and lident += false
  ```
- Derivation (4 occurrences):
  ```
  module_type_declaration: MODULE TYPE . ext list(attribute) ident option(preceded(EQUAL,module_type)) list(post_item_attribute)
    ext: . PERCENT attr_id
  ```
  Sample sentence (implementation):
  ```ocaml
  module type % and lident let false = UIdent
  ```
- Derivation (2 occurrences):
  ```
  fun_expr: fun_expr OR FUNCTION . ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
    ext: . PERCENT attr_id
  ```
  Sample sentence (implementation):
  ```ocaml
  UIdent or function % and false -> UIdent [@@ and ] let false = UIdent
  ```
- Derivation (2 occurrences):
  ```
  fun_expr: fun_expr MOD FUNCTION . ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
    ext: . PERCENT attr_id
  ```
  Sample sentence (implementation):
  ```ocaml
  UIdent mod function % and false -> UIdent [@@ and ] let false = UIdent
  ```


### Item `attribute: . LBRACKETAT attr_id attr_payload RBRACKET` (in 18 errors)

- Derivation (4 occurrences):
  ```
  open_description: OPEN BANG ext . list(attribute) mod_ext_longident list(post_item_attribute)
    list(attribute): . attribute list(attribute)
      attribute: . LBRACKETAT attr_id attr_payload RBRACKET
  ```
  Sample sentence (interface):
  ```ocaml
  open ! [@ and ] UIdent
  ```
- Derivation (4 occurrences):
  ```
  open_description: OPEN ext . list(attribute) mod_ext_longident list(post_item_attribute)
    list(attribute): . attribute list(attribute)
      attribute: . LBRACKETAT attr_id attr_payload RBRACKET
  ```
  Sample sentence (interface):
  ```ocaml
  open [@ and ] UIdent
  ```
- Derivation (4 occurrences):
  ```
  module_type_declaration: MODULE TYPE ext . list(attribute) ident option(preceded(EQUAL,module_type)) list(post_item_attribute)
    list(attribute): . attribute list(attribute)
      attribute: . LBRACKETAT attr_id attr_payload RBRACKET
  ```
  Sample sentence (implementation):
  ```ocaml
  module type [@ and ] lident let false = UIdent
  ```
- Derivation (2 occurrences):
  ```
  module_expr: module_expr . attribute
    attribute: . LBRACKETAT attr_id attr_payload RBRACKET
  ```
  Sample sentence (implementation):
  ```ocaml
  include functor functor ( ) -> {%hello|world|} [@ and ] let false = UIdent
  ```
- Derivation (2 occurrences):
  ```
  module_type: FUNCTOR . list(attribute) reversed_nonempty_llist(functor_arg) MINUSGREATER module_type
    list(attribute): . attribute list(attribute)
      attribute: . LBRACKETAT attr_id attr_payload RBRACKET
  ```
  Sample sentence (implementation):
  ```ocaml
  module type lident = functor [@ and ] ( ) -> UIdent let false = UIdent
  ```
- Derivation (2 occurrences):
  ```
  module_expr: FUNCTOR . list(attribute) reversed_nonempty_llist(functor_arg) MINUSGREATER module_expr
    list(attribute): . attribute list(attribute)
      attribute: . LBRACKETAT attr_id attr_payload RBRACKET
  ```
  Sample sentence (implementation):
  ```ocaml
  include functor functor [@ and ] ( ) -> {%hello|world|} let false = UIdent
  ```


### Item `pattern_no_exn: pattern_no_exn . BAR pattern` (in 17 errors)

- Derivation (17 occurrences):
  ```
  pattern_no_exn: pattern_no_exn . BAR pattern
  ```
  Sample sentence (implementation):
  ```ocaml
  include struct let false | false = UIdent end let false = UIdent
  ```


### Item `pattern: pattern BAR . pattern` (in 14 errors)

- Derivation (7 occurrences):
  ```
  pattern: pattern BAR . pattern
    pattern: . pattern_gen
      pattern_gen: . LAZY ext list(attribute) simple_pattern
  ```
  Sample sentence (implementation):
  ```ocaml
  function false | lazy false -> UIdent let false = UIdent
  ```
- Derivation (6 occurrences):
  ```
  pattern: pattern BAR . pattern
    pattern: . reversed_labeled_tuple_pattern(pattern)
      reversed_labeled_tuple_pattern(pattern): . labeled_tuple_pat_element_list(pattern)
  ```
  Sample sentence (implementation):
  ```ocaml
  function false | false , false -> UIdent let false = UIdent
  ```
- Derivation (1 occurrence):
  ```
  pattern: pattern BAR . pattern
    pattern: . pattern_gen
      pattern_gen: . constr_longident pattern
        constr_longident: . constr_extra_nonprefix_ident
          constr_extra_nonprefix_ident: . TRUE
  ```
  Sample sentence (implementation):
  ```ocaml
  function false | true false -> UIdent let false = UIdent
  ```


### Item `module_type: module_type WITH . reversed_separated_nonempty_llist(AND,with_constraint)` (in 12 errors)

- Derivation (10 occurrences):
  ```
  module_type: module_type WITH . reversed_separated_nonempty_llist(AND,with_constraint)
  ```
  Sample sentence (implementation):
  ```ocaml
  module UIdent : UIdent with module UIdent := UIdent = {%hello|world|} let false = UIdent
  ```
- Derivation (2 occurrences):
  ```
  module_type: module_type WITH . reversed_separated_nonempty_llist(AND,with_constraint)
    reversed_separated_nonempty_llist(AND,with_constraint): . reversed_separated_nonempty_llist(AND,with_constraint) AND with_constraint
  ```
  Sample sentence (implementation):
  ```ocaml
  module UIdent : UIdent with module UIdent := UIdent and module UIdent := UIdent = {%hello|world|} let false = UIdent
  ```


### Item `reversed_labeled_tuple_body: STACK FUNCTION . ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case) COMMA LABEL simple_expr` (in 11 errors)

- Derivation (11 occurrences):
  ```
  reversed_labeled_tuple_body: STACK FUNCTION . ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case) COMMA LABEL simple_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  [ UIdent or stack_ function false -> . , ~label: UIdent ] let false = UIdent
  ```


### Item `pattern_no_exn: pattern_no_exn BAR . pattern` (in 9 errors)

- Derivation (4 occurrences):
  ```
  pattern_no_exn: pattern_no_exn BAR . pattern
  ```
  Sample sentence (implementation):
  ```ocaml
  let false = UIdent and false | false as lident = UIdent
  ```
- Derivation (2 occurrences):
  ```
  pattern_no_exn: pattern_no_exn BAR . pattern
    pattern: . reversed_labeled_tuple_pattern(pattern)
      reversed_labeled_tuple_pattern(pattern): . labeled_tuple_pat_element_list(pattern)
  ```
  Sample sentence (implementation):
  ```ocaml
  let false | false , false = UIdent [@@ and ] let false = UIdent
  ```
- Derivation (2 occurrences):
  ```
  pattern_no_exn: pattern_no_exn BAR . pattern
    pattern: . pattern_gen
  ```
  Sample sentence (implementation):
  ```ocaml
  let false | false false as lident = UIdent [@@ and ] let false = UIdent
  ```
- Derivation (1 occurrence):
  ```
  pattern_no_exn: pattern_no_exn BAR . pattern
    pattern: . pattern_gen
      pattern_gen: . constr_longident pattern
        constr_longident: . constr_extra_nonprefix_ident
          constr_extra_nonprefix_ident: . TRUE
  ```
  Sample sentence (implementation):
  ```ocaml
  let false | true false = UIdent [@@ and ] let false = UIdent
  ```


### Item `atomic_type: LPAREN . reversed_separated_nontrivial_llist(COMMA,one_type_parameter_of_several) RPAREN type_longident` (in 8 errors)

- Derivation (8 occurrences):
  ```
  atomic_type: LPAREN . reversed_separated_nontrivial_llist(COMMA,one_type_parameter_of_several) RPAREN type_longident
  ```
  Sample sentence (implementation):
  ```ocaml
  val lident : ?label: ( _ : lident , _ : lident ) lident -> {%hello|world|} let false = UIdent
  ```


### Item `functor_arg: . LPAREN RPAREN` (in 8 errors)

- Derivation (4 occurrences):
  ```
  reversed_nonempty_llist(functor_arg): reversed_nonempty_llist(functor_arg) . functor_arg
    functor_arg: . LPAREN RPAREN
  ```
  Sample sentence (implementation):
  ```ocaml
  include functor functor ( ) ( ) -> {%hello|world|} let false = UIdent
  ```
- Derivation (4 occurrences):
  ```
  module_declaration_body(module_type_with_optional_modes): functor_arg . module_declaration_body(module_type_with_optional_modes)
    module_declaration_body(module_type_with_optional_modes): . functor_arg module_declaration_body(module_type_with_optional_modes)
      functor_arg: . LPAREN RPAREN
  ```
  Sample sentence (interface):
  ```ocaml
  module UIdent ( ) ( ) ( ) : UIdent
  ```


### Item `module_expr: FUNCTOR list(attribute) reversed_nonempty_llist(functor_arg) MINUSGREATER . module_expr` (in 8 errors)

- Derivation (3 occurrences):
  ```
  module_expr: FUNCTOR list(attribute) reversed_nonempty_llist(functor_arg) MINUSGREATER . module_expr
    module_expr: . FUNCTOR list(attribute) reversed_nonempty_llist(functor_arg) MINUSGREATER module_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  include functor functor ( ) -> functor ( ) -> {%hello|world|} let false = UIdent
  ```
- Derivation (2 occurrences):
  ```
  module_expr: FUNCTOR list(attribute) reversed_nonempty_llist(functor_arg) MINUSGREATER . module_expr
    module_expr: . STRUCT list(attribute) structure END
  ```
  Sample sentence (implementation):
  ```ocaml
  include functor functor ( ) -> struct end let false = UIdent
  ```
- Derivation (1 occurrence):
  ```
  module_expr: FUNCTOR list(attribute) reversed_nonempty_llist(functor_arg) MINUSGREATER . module_expr
    module_expr: . paren_module_expr
      paren_module_expr: . LPAREN VAL list(attribute) STACK FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case) RPAREN
  ```
  Sample sentence (implementation):
  ```ocaml
  include functor functor ( ) -> ( val stack_ function false -> UIdent ) let false = UIdent
  ```
- Derivation (1 occurrence):
  ```
  module_expr: FUNCTOR list(attribute) reversed_nonempty_llist(functor_arg) MINUSGREATER . module_expr
    module_expr: . paren_module_expr
      paren_module_expr: . LPAREN VAL list(attribute) FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case) RPAREN
  ```
  Sample sentence (implementation):
  ```ocaml
  include functor functor ( ) -> ( val function false -> UIdent ) let false = UIdent
  ```
- Derivation (1 occurrence):
  ```
  module_expr: FUNCTOR list(attribute) reversed_nonempty_llist(functor_arg) MINUSGREATER . module_expr
    module_expr: . paren_module_expr
      paren_module_expr: . LPAREN VAL list(attribute) fun_expr RPAREN
  ```
  Sample sentence (implementation):
  ```ocaml
  include functor functor ( ) -> ( val UIdent ) let false = UIdent
  ```


### Item `class_signature: . OBJECT list(attribute) class_self_type list(text_csig(class_sig_field)) END` (in 6 errors)

- Derivation (2 occurrences):
  ```
  class_type_declarations: CLASS TYPE ext list(attribute) virtual_flag formal_class_parameters . LIDENT EQUAL class_signature list(post_item_attribute) list(and_class_type_declaration)
    class_signature: . OBJECT list(attribute) class_self_type list(text_csig(class_sig_field)) END
  ```
  Sample sentence (implementation):
  ```ocaml
  include struct class type lident = object end let false = UIdent end let false = UIdent
  ```
- Derivation (2 occurrences):
  ```
  class_signature: LET OPEN BANG list(attribute) mod_longident IN . class_signature
    class_signature: . OBJECT list(attribute) class_self_type list(text_csig(class_sig_field)) END
  ```
  Sample sentence (implementation):
  ```ocaml
  class type lident = let open ! UIdent in object end let false = UIdent
  ```
- Derivation (2 occurrences):
  ```
  class_signature: LET OPEN list(attribute) mod_longident IN . class_signature
    class_signature: . OBJECT list(attribute) class_self_type list(text_csig(class_sig_field)) END
  ```
  Sample sentence (implementation):
  ```ocaml
  class type lident = let open UIdent in object end let false = UIdent
  ```


### Item `module_binding_body: . functor_arg module_binding_body` (in 6 errors)

- Derivation (4 occurrences):
  ```
  structure_item: MODULE ext list(attribute) REC module_name_modal(at_mode_expr) . module_binding_body list(post_item_attribute) list(and_module_binding)
    module_binding_body: . functor_arg module_binding_body
  ```
  Sample sentence (implementation):
  ```ocaml
  module rec UIdent ( ) = {%hello|world|} let false = UIdent
  ```
- Derivation (2 occurrences):
  ```
  module_binding_body: functor_arg . module_binding_body
    module_binding_body: . functor_arg module_binding_body
  ```
  Sample sentence (implementation):
  ```ocaml
  module UIdent ( ) ( UIdent : UIdent ) = {%hello|world|} let false = UIdent
  ```


### Item `pattern: . pattern BAR pattern` (in 6 errors)

- Derivation (2 occurrences):
  ```
  simple_delimited_pattern: LBRACKETCOLON . separated_or_terminated_nonempty_list(SEMI,pattern) COLONRBRACKET
    separated_or_terminated_nonempty_list(SEMI,pattern): . pattern
      pattern: . pattern BAR pattern
        pattern: . reversed_labeled_tuple_pattern(pattern)
          reversed_labeled_tuple_pattern(pattern): . labeled_tuple_pat_element_list(pattern)
  ```
  Sample sentence (implementation):
  ```ocaml
  let [: false , false | false :] @ lident = UIdent [@@ and ] let false = UIdent
  ```
- Derivation (2 occurrences):
  ```
  simple_delimited_pattern: LBRACKETBAR . separated_or_terminated_nonempty_list(SEMI,pattern) BARRBRACKET
    separated_or_terminated_nonempty_list(SEMI,pattern): . pattern
      pattern: . pattern BAR pattern
        pattern: . reversed_labeled_tuple_pattern(pattern)
          reversed_labeled_tuple_pattern(pattern): . labeled_tuple_pat_element_list(pattern)
  ```
  Sample sentence (implementation):
  ```ocaml
  let [| false , false | false |] @ lident = UIdent [@@ and ] let false = UIdent
  ```
- Derivation (2 occurrences):
  ```
  separated_or_terminated_nonempty_list(SEMI,pattern): pattern SEMI . separated_or_terminated_nonempty_list(SEMI,pattern)
    separated_or_terminated_nonempty_list(SEMI,pattern): . pattern
      pattern: . pattern BAR pattern
        pattern: . reversed_labeled_tuple_pattern(pattern)
          reversed_labeled_tuple_pattern(pattern): . labeled_tuple_pat_element_list(pattern)
  ```
  Sample sentence (implementation):
  ```ocaml
  let [: false ; false , false | false :] @ lident = UIdent [@@ and ] let false = UIdent
  ```


### Item `reversed_labeled_tuple_body: STACK FUNCTION . ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case) COMMA TILDE LIDENT` (in 6 errors)

- Derivation (6 occurrences):
  ```
  reversed_labeled_tuple_body: STACK FUNCTION . ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case) COMMA TILDE LIDENT
  ```
  Sample sentence (implementation):
  ```ocaml
  [ UIdent or stack_ function false -> . , ~ lident ] let false = UIdent
  ```


### Item `functor_arg: . LPAREN module_name COLON module_type RPAREN` (in 4 errors)

- Derivation (2 occurrences):
  ```
  reversed_nonempty_llist(functor_arg): reversed_nonempty_llist(functor_arg) . functor_arg
    functor_arg: . LPAREN module_name COLON module_type RPAREN
  ```
  Sample sentence (implementation):
  ```ocaml
  include functor functor ( ) ( UIdent : UIdent ) -> {%hello|world|} let false = UIdent
  ```
- Derivation (2 occurrences):
  ```
  module_declaration_body(module_type_with_optional_modes): functor_arg . module_declaration_body(module_type_with_optional_modes)
    module_declaration_body(module_type_with_optional_modes): . functor_arg module_declaration_body(module_type_with_optional_modes)
      functor_arg: . LPAREN module_name COLON module_type RPAREN
  ```
  Sample sentence (interface):
  ```ocaml
  module UIdent ( ) ( ) ( UIdent : UIdent ) : UIdent
  ```


### Item `module_expr: module_expr . paren_module_expr` (in 3 errors)

- Derivation (1 occurrence):
  ```
  module_expr: module_expr . paren_module_expr
    paren_module_expr: . LPAREN VAL list(attribute) STACK FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case) RPAREN
  ```
  Sample sentence (implementation):
  ```ocaml
  include functor functor ( ) -> {%hello|world|} ( val stack_ function false -> UIdent ) let false = UIdent
  ```
- Derivation (1 occurrence):
  ```
  module_expr: module_expr . paren_module_expr
    paren_module_expr: . LPAREN VAL list(attribute) FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case) RPAREN
  ```
  Sample sentence (implementation):
  ```ocaml
  include functor functor ( ) -> {%hello|world|} ( val function false -> UIdent ) let false = UIdent
  ```
- Derivation (1 occurrence):
  ```
  module_expr: module_expr . paren_module_expr
    paren_module_expr: . LPAREN VAL list(attribute) fun_expr RPAREN
  ```
  Sample sentence (implementation):
  ```ocaml
  include functor functor ( ) -> {%hello|world|} ( val UIdent ) let false = UIdent
  ```


### Item `module_declaration_body(__anonymous_8): functor_arg . module_declaration_body(module_type_with_optional_modes)` (in 2 errors)

- Derivation (2 occurrences):
  ```
  module_declaration_body(__anonymous_8): functor_arg . module_declaration_body(module_type_with_optional_modes)
    module_declaration_body(module_type_with_optional_modes): . functor_arg module_declaration_body(module_type_with_optional_modes)
  ```
  Sample sentence (interface):
  ```ocaml
  module UIdent ( ) ( UIdent : UIdent ) : UIdent
  ```


### Item `module_expr: module_expr . LPAREN RPAREN` (in 2 errors)

- Derivation (2 occurrences):
  ```
  module_expr: module_expr . LPAREN RPAREN
  ```
  Sample sentence (implementation):
  ```ocaml
  include functor functor ( ) -> {%hello|world|} ( ) let false = UIdent
  ```


### Item `module_type: module_type . MINUSGREATER module_type` (in 2 errors)

- Derivation (2 occurrences):
  ```
  module_type: module_type . MINUSGREATER module_type
  ```
  Sample sentence (interface):
  ```ocaml
  module UIdent ( ) : UIdent -> UIdent
  ```

## BUG: ast changed. (5597 errors)

### Item `seq_expr: . fun_seq_expr` (in 4466 errors)

- Derivation (839 occurrences):
  ```
  implementation: . structure EOF
    structure: . seq_expr list(post_item_attribute) list(structure_element)
      seq_expr: . fun_seq_expr
        fun_seq_expr: . fun_expr
          fun_expr: . simple_expr
            simple_expr: . LBRACKET fun_expr reversed_nonempty_llist(comprehension_clause) RBRACKET
  ```
  Sample sentence (implementation):
  ```ocaml
  [ exclave_ UIdent ; , UIdent for false in UIdent ] let false = UIdent
  ```
- Derivation (553 occurrences):
  ```
  implementation: . structure EOF
    structure: . seq_expr list(post_item_attribute) list(structure_element)
      seq_expr: . fun_seq_expr
        fun_seq_expr: . fun_expr
          fun_expr: . LETOP letop_bindings IN seq_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  let* lident in exclave_ UIdent ; , UIdent let false = UIdent
  ```
- Derivation (496 occurrences):
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
  [ local_ unique_ UIdent ; :: UIdent ] let false = UIdent
  ```
- Derivation (228 occurrences):
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
  [: UIdent when exclave_ UIdent ; :: UIdent :] let false = UIdent
  ```
- Derivation (117 occurrences):
  ```
  implementation: . structure EOF
    structure: . seq_expr list(post_item_attribute) list(structure_element)
      seq_expr: . fun_seq_expr
        fun_seq_expr: . fun_expr
          fun_expr: . ASSERT ext list(attribute) simple_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  assert #1.0 .+ ( local_ UIdent ; [@ and ] ) let false = UIdent
  ```
- Derivation (65 occurrences):
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
  object initializer exclave_ UIdent ; [@ and ] inherit lident end let false = UIdent
  ```
- Derivation (65 occurrences):
  ```
  implementation: . structure EOF
    structure: . seq_expr list(post_item_attribute) list(structure_element)
      seq_expr: . fun_seq_expr
        fun_seq_expr: . fun_expr
          fun_expr: . WHILE ext list(attribute) seq_expr DO seq_expr DONE
  ```
  Sample sentence (implementation):
  ```ocaml
  while UIdent do exclave_ UIdent ; [@ and ] done let false = UIdent
  ```
- Derivation (44 occurrences):
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
  include ( val UIdent +! function false -> . [@ and ] ) let false = UIdent
  ```
- Derivation (43 occurrences):
  ```
  implementation: . structure EOF
    structure: . seq_expr list(post_item_attribute) list(structure_element)
      seq_expr: . fun_seq_expr
        fun_seq_expr: . fun_expr
          fun_expr: . FOR ext list(attribute) pattern EQUAL seq_expr direction_flag seq_expr DO seq_expr DONE
  ```
  Sample sentence (implementation):
  ```ocaml
  for false = local_ UIdent ; :: UIdent downto UIdent do UIdent done let false = UIdent
  ```
- Derivation (43 occurrences):
  ```
  implementation: . structure EOF
    structure: . seq_expr list(post_item_attribute) list(structure_element)
      seq_expr: . fun_seq_expr
        fun_seq_expr: . fun_expr
          fun_expr: . IF ext list(attribute) seq_expr THEN fun_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  if UIdent then exclave_ UIdent ; , UIdent let false = UIdent
  ```
- Derivation (32 occurrences):
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
  ( local_ UIdent ; [@ and ] ) let false = UIdent
  ```
- Derivation (28 occurrences):
  ```
  implementation: . structure EOF
    structure: . seq_expr list(post_item_attribute) list(structure_element)
      seq_expr: . fun_seq_expr
        fun_seq_expr: . fun_expr SEMI PERCENT attr_id seq_expr
          fun_expr: . simple_expr
            simple_expr: . constr_longident
              constr_longident: . mod_longident
                mod_longident: . mk_longident(mod_longident,UIDENT)
                  mk_longident(mod_longident,UIDENT): . UIDENT
  ```
  Sample sentence (implementation):
  ```ocaml
  UIdent ; % and exclave_ UIdent ; :: UIdent let false = UIdent
  ```
- Derivation (24 occurrences):
  ```
  fun_expr: LETOP letop_bindings IN . seq_expr
    seq_expr: . fun_seq_expr
      fun_seq_expr: . fun_expr
        fun_expr: . fun_expr attribute
          fun_expr: . reversed_labeled_tuple_body
  ```
  Sample sentence (implementation):
  ```ocaml
  let* lident in UIdent , function false -> . [@ and ] let false = UIdent
  ```
- Derivation (24 occurrences):
  ```
  fun_expr: LETOP letop_bindings IN . seq_expr
    seq_expr: . fun_seq_expr
      fun_seq_expr: . fun_expr
        fun_expr: . fun_expr COLONCOLON fun_expr
          fun_expr: . reversed_labeled_tuple_body
  ```
  Sample sentence (implementation):
  ```ocaml
  [ let* lident in UIdent , function false -> . :: UIdent ] let false = UIdent
  ```
- Derivation (24 occurrences):
  ```
  fun_expr: LETOP letop_bindings IN . seq_expr
    seq_expr: . fun_seq_expr
      fun_seq_expr: . fun_expr
        fun_expr: . fun_expr AMPERAMPER fun_expr
          fun_expr: . reversed_labeled_tuple_body
  ```
  Sample sentence (implementation):
  ```ocaml
  [ let* lident in UIdent , function false -> . && UIdent ] let false = UIdent
  ```
- Derivation (24 occurrences):
  ```
  fun_expr: LETOP letop_bindings IN . seq_expr
    seq_expr: . fun_seq_expr
      fun_seq_expr: . fun_expr
        fun_expr: . fun_expr BARBAR fun_expr
          fun_expr: . reversed_labeled_tuple_body
  ```
  Sample sentence (implementation):
  ```ocaml
  [ let* lident in UIdent , function false -> . || UIdent ] let false = UIdent
  ```
- Derivation (24 occurrences):
  ```
  fun_expr: LETOP letop_bindings IN . seq_expr
    seq_expr: . fun_seq_expr
      fun_seq_expr: . fun_expr
        fun_expr: . fun_expr EQUAL fun_expr
          fun_expr: . reversed_labeled_tuple_body
  ```
  Sample sentence (implementation):
  ```ocaml
  [ let* lident in UIdent , function false -> . = UIdent ] let false = UIdent
  ```
- Derivation (24 occurrences):
  ```
  fun_expr: LETOP letop_bindings IN . seq_expr
    seq_expr: . fun_seq_expr
      fun_seq_expr: . fun_expr
        fun_expr: . fun_expr PERCENT fun_expr
          fun_expr: . reversed_labeled_tuple_body
  ```
  Sample sentence (implementation):
  ```ocaml
  [ let* lident in UIdent , function false -> . % UIdent ] let false = UIdent
  ```
- Derivation (24 occurrences):
  ```
  fun_expr: LETOP letop_bindings IN . seq_expr
    seq_expr: . fun_seq_expr
      fun_seq_expr: . fun_expr
        fun_expr: . fun_expr MINUS fun_expr
          fun_expr: . reversed_labeled_tuple_body
  ```
  Sample sentence (implementation):
  ```ocaml
  [ let* lident in UIdent , function false -> . - UIdent ] let false = UIdent
  ```
- Derivation (24 occurrences):
  ```
  fun_expr: LETOP letop_bindings IN . seq_expr
    seq_expr: . fun_seq_expr
      fun_seq_expr: . fun_expr
        fun_expr: . fun_expr INFIXOP4 fun_expr
          fun_expr: . reversed_labeled_tuple_body
  ```
  Sample sentence (implementation):
  ```ocaml
  [ let* lident in UIdent , function false -> . ** UIdent ] let false = UIdent
  ```
- Derivation (24 occurrences):
  ```
  fun_expr: LETOP letop_bindings IN . seq_expr
    seq_expr: . fun_seq_expr
      fun_seq_expr: . fun_expr
        fun_expr: . fun_expr INFIXOP3 fun_expr
          fun_expr: . reversed_labeled_tuple_body
  ```
  Sample sentence (implementation):
  ```ocaml
  [ let* lident in UIdent , function false -> . land UIdent ] let false = UIdent
  ```
- ...


### Item `fun_expr: LETOP letop_bindings IN . seq_expr` (in 394 errors)

- Derivation (394 occurrences):
  ```
  fun_expr: LETOP letop_bindings IN . seq_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  ( let* lident in function false -> . - UIdent ) let false = UIdent
  ```


### Item `at_mode_expr: . AT nonempty_list(mode)` (in 280 errors)

- Derivation (64 occurrences):
  ```
  module_type: reversed_nonempty_llist(functor_arg) MINUSGREATER module_type_atomic . at_mode_expr
    at_mode_expr: . AT nonempty_list(mode)
  ```
  Sample sentence (interface):
  ```ocaml
  module type lident := ( ) -> UIdent @ lident
  ```
- Derivation (62 occurrences):
  ```
  module_type: FUNCTOR list(attribute) reversed_nonempty_llist(functor_arg) MINUSGREATER module_type_atomic . at_mode_expr
    at_mode_expr: . AT nonempty_list(mode)
  ```
  Sample sentence (interface):
  ```ocaml
  module type lident := functor ( ) -> UIdent @ lident
  ```
- Derivation (45 occurrences):
  ```
  functor_arg: LPAREN module_name COLON module_type_atomic . at_mode_expr RPAREN
    at_mode_expr: . AT nonempty_list(mode)
  ```
  Sample sentence (interface):
  ```ocaml
  module UIdent ( UIdent : UIdent @ lident ) : UIdent
  ```
- Derivation (38 occurrences):
  ```
  module_type: module_type_atomic . at_mode_expr MINUSGREATER module_type
    at_mode_expr: . AT nonempty_list(mode)
  ```
  Sample sentence (interface):
  ```ocaml
  include UIdent @ lident -> {%hello|world|} [@@ and ] @@ lident
  ```
- Derivation (28 occurrences):
  ```
  module_type: module_type_atomic . at_mode_expr MINUSGREATER module_type_atomic at_mode_expr
    at_mode_expr: . AT nonempty_list(mode)
  ```
  Sample sentence (interface):
  ```ocaml
  module type lident := UIdent @ lident -> UIdent @ lident
  ```
- Derivation (20 occurrences):
  ```
  module_type: module_type MINUSGREATER module_type_atomic . at_mode_expr
    at_mode_expr: . AT nonempty_list(mode)
  ```
  Sample sentence (interface):
  ```ocaml
  module UIdent ( ) : UIdent -> UIdent @ lident
  ```
- Derivation (18 occurrences):
  ```
  module_declaration_body(module_type_with_optional_modes): COLON module_type_atomic . at_mode_expr
    at_mode_expr: . AT nonempty_list(mode)
  ```
  Sample sentence (interface):
  ```ocaml
  module UIdent ( ) : UIdent @ lident
  ```
- Derivation (5 occurrences):
  ```
  module_type: module_type_atomic at_mode_expr MINUSGREATER module_type_atomic . at_mode_expr
    at_mode_expr: . AT nonempty_list(mode)
  ```
  Sample sentence (implementation):
  ```ocaml
  module UIdent : UIdent @ lident -> UIdent @ lident = {%hello|world|} let false = UIdent
  ```


### Item `generalized_constructor_arguments: COLON reversed_nonempty_llist(typevar) DOT . atomic_type` (in 111 errors)

- Derivation (27 occurrences):
  ```
  generalized_constructor_arguments: COLON reversed_nonempty_llist(typevar) DOT . atomic_type
  ```
  Sample sentence (implementation):
  ```ocaml
  exception false : ' lident . {%hello|world|} let false = UIdent
  ```
- Derivation (21 occurrences):
  ```
  generalized_constructor_arguments: COLON reversed_nonempty_llist(typevar) DOT . atomic_type
    atomic_type: . delimited_type
      delimited_type: . extension_type
        extension_type: . extension
          extension: . QUOTED_STRING_EXPR
  ```
  Sample sentence (implementation):
  ```ocaml
  include struct exception false : ' lident . {%hello|world|} let false = UIdent end let false = UIdent
  ```
- Derivation (11 occurrences):
  ```
  generalized_constructor_arguments: COLON reversed_nonempty_llist(typevar) DOT . atomic_type
    atomic_type: . atomic_type type_longident
      atomic_type: . delimited_type
        delimited_type: . extension_type
          extension_type: . extension
            extension: . QUOTED_STRING_EXPR
  ```
  Sample sentence (implementation):
  ```ocaml
  include struct exception false : ' lident . {%hello|world|} lident let false = UIdent end let false = UIdent
  ```
- Derivation (6 occurrences):
  ```
  generalized_constructor_arguments: COLON reversed_nonempty_llist(typevar) DOT . atomic_type
    atomic_type: . HASH clty_longident
  ```
  Sample sentence (interface):
  ```ocaml
  exception false : ' lident . # lident
  ```
- Derivation (4 occurrences):
  ```
  generalized_constructor_arguments: COLON reversed_nonempty_llist(typevar) DOT . atomic_type
    atomic_type: . type_longident
      type_longident: . mk_longident(mod_ext_longident,type_trailing_no_hash)
        mk_longident(mod_ext_longident,type_trailing_no_hash): . type_trailing_no_hash
          type_trailing_no_hash: . LIDENT
  ```
  Sample sentence (implementation):
  ```ocaml
  include struct exception false : ' lident . lident let false = UIdent end let false = UIdent
  ```
- Derivation (4 occurrences):
  ```
  generalized_constructor_arguments: COLON reversed_nonempty_llist(typevar) DOT . atomic_type
    atomic_type: . delimited_type
      delimited_type: . extension_type
        extension_type: . extension
          extension: . LBRACKETPERCENT attr_id payload RBRACKET
  ```
  Sample sentence (implementation):
  ```ocaml
  exception false : ' lident . [% and ] let false = UIdent
  ```
- Derivation (4 occurrences):
  ```
  generalized_constructor_arguments: COLON reversed_nonempty_llist(typevar) DOT . atomic_type
    atomic_type: . QUOTE ident
  ```
  Sample sentence (implementation):
  ```ocaml
  exception false : ' lident . ' lident let false = UIdent
  ```
- Derivation (4 occurrences):
  ```
  generalized_constructor_arguments: COLON reversed_nonempty_llist(typevar) DOT . atomic_type
    atomic_type: . type_longident
  ```
  Sample sentence (implementation):
  ```ocaml
  exception false : ' lident . lident let false = UIdent
  ```
- Derivation (3 occurrences):
  ```
  generalized_constructor_arguments: COLON reversed_nonempty_llist(typevar) DOT . atomic_type
    atomic_type: . atomic_type type_unboxed_longident
      atomic_type: . delimited_type
        delimited_type: . extension_type
          extension_type: . extension
            extension: . QUOTED_STRING_EXPR
  ```
  Sample sentence (implementation):
  ```ocaml
  include struct exception false : ' lident . {%hello|world|} lident# let false = UIdent end let false = UIdent
  ```
- Derivation (3 occurrences):
  ```
  generalized_constructor_arguments: COLON reversed_nonempty_llist(typevar) DOT . atomic_type
    atomic_type: . LPAREN UNDERSCORE COLON jkind_annotation RPAREN
  ```
  Sample sentence (implementation):
  ```ocaml
  exception false : ' lident . ( _ : lident ) let false = UIdent
  ```
- Derivation (3 occurrences):
  ```
  generalized_constructor_arguments: COLON reversed_nonempty_llist(typevar) DOT . atomic_type
    atomic_type: . LPAREN QUOTE ident COLON jkind_annotation RPAREN
  ```
  Sample sentence (implementation):
  ```ocaml
  exception false : ' lident . ( ' lident : lident ) let false = UIdent
  ```
- Derivation (3 occurrences):
  ```
  generalized_constructor_arguments: COLON reversed_nonempty_llist(typevar) DOT . atomic_type
    atomic_type: . atomic_type type_unboxed_longident
  ```
  Sample sentence (implementation):
  ```ocaml
  exception false : ' lident . {%hello|world|} lident lident# let false = UIdent
  ```
- Derivation (2 occurrences):
  ```
  generalized_constructor_arguments: COLON reversed_nonempty_llist(typevar) DOT . atomic_type
    atomic_type: . type_unboxed_longident
      type_unboxed_longident: . mk_longident(mod_ext_longident,type_trailing_hash)
        mk_longident(mod_ext_longident,type_trailing_hash): . type_trailing_hash
          type_trailing_hash: . LIDENT HASH_SUFFIX
  ```
  Sample sentence (implementation):
  ```ocaml
  include struct exception false : ' lident . lident# let false = UIdent end let false = UIdent
  ```
- Derivation (2 occurrences):
  ```
  generalized_constructor_arguments: COLON reversed_nonempty_llist(typevar) DOT . atomic_type
    atomic_type: . delimited_type
      delimited_type: . object_type
        object_type: . LESS GREATER
  ```
  Sample sentence (implementation):
  ```ocaml
  exception false : ' lident . < > let false = UIdent
  ```
- Derivation (2 occurrences):
  ```
  generalized_constructor_arguments: COLON reversed_nonempty_llist(typevar) DOT . atomic_type
    atomic_type: . type_unboxed_longident
      type_unboxed_longident: . mk_longident(mod_ext_longident,type_trailing_hash)
        mk_longident(mod_ext_longident,type_trailing_hash): . type_trailing_hash
  ```
  Sample sentence (implementation):
  ```ocaml
  exception false : ' lident . lident# let false = UIdent
  ```
- Derivation (2 occurrences):
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
  exception false : ' lident . UIdent . lident let false = UIdent
  ```
- Derivation (2 occurrences):
  ```
  generalized_constructor_arguments: COLON reversed_nonempty_llist(typevar) DOT . atomic_type
    atomic_type: . delimited_type
      delimited_type: . delimited_type_supporting_local_open
        delimited_type_supporting_local_open: . LBRACKETGREATER RBRACKET
  ```
  Sample sentence (implementation):
  ```ocaml
  exception false : ' lident . [> ] let false = UIdent
  ```
- Derivation (2 occurrences):
  ```
  generalized_constructor_arguments: COLON reversed_nonempty_llist(typevar) DOT . atomic_type
    atomic_type: . delimited_type
      delimited_type: . delimited_type_supporting_local_open
        delimited_type_supporting_local_open: . LBRACKET tag_field RBRACKET
  ```
  Sample sentence (implementation):
  ```ocaml
  exception false : ' lident . [ ` lident ] let false = UIdent
  ```
- Derivation (2 occurrences):
  ```
  generalized_constructor_arguments: COLON reversed_nonempty_llist(typevar) DOT . atomic_type
    atomic_type: . LPAREN TYPE COLON jkind_annotation RPAREN
  ```
  Sample sentence (implementation):
  ```ocaml
  exception false : ' lident . ( type : lident ) let false = UIdent
  ```
- Derivation (2 occurrences):
  ```
  generalized_constructor_arguments: COLON reversed_nonempty_llist(typevar) DOT . atomic_type
    atomic_type: . UNDERSCORE
  ```
  Sample sentence (implementation):
  ```ocaml
  exception false : ' lident . _ let false = UIdent
  ```
- Derivation (2 occurrences):
  ```
  generalized_constructor_arguments: COLON reversed_nonempty_llist(typevar) DOT . atomic_type
    atomic_type: . atomic_type type_unboxed_longident
      atomic_type: . type_longident
  ```
  Sample sentence (implementation):
  ```ocaml
  exception false : ' lident . lident lident# let false = UIdent
  ```


### Item `fun_expr: LOCAL . seq_expr` (in 93 errors)

- Derivation (93 occurrences):
  ```
  fun_expr: LOCAL . seq_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  ( local_ UIdent ; :: UIdent ) let false = UIdent
  ```


### Item `fun_expr: EXCLAVE . seq_expr` (in 93 errors)

- Derivation (93 occurrences):
  ```
  fun_expr: EXCLAVE . seq_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  ( exclave_ UIdent ; :: UIdent ) let false = UIdent
  ```


### Item `atat_modalities_expr: . ATAT nonempty_list(modality)` (in 17 errors)

- Derivation (11 occurrences):
  ```
  signature_item: include_kind ext list(attribute) module_type . list(post_item_attribute) optional_atat_modalities_expr
    optional_atat_modalities_expr: . atat_modalities_expr
      atat_modalities_expr: . ATAT nonempty_list(modality)
  ```
  Sample sentence (interface):
  ```ocaml
  include ( ) -> {%hello|world|} [@@ and ] @@ lident
  ```
- Derivation (6 occurrences):
  ```
  signature_item: include_kind ext list(attribute) module_type list(post_item_attribute) . optional_atat_modalities_expr
    optional_atat_modalities_expr: . atat_modalities_expr
      atat_modalities_expr: . ATAT nonempty_list(modality)
  ```
  Sample sentence (interface):
  ```ocaml
  include [@ and ] functor ( ) -> UIdent @@ lident
  ```


### Item `fun_expr: fun_expr OR STACK FUNCTION ext . list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)` (in 16 errors)

- Derivation (16 occurrences):
  ```
  fun_expr: fun_expr OR STACK FUNCTION ext . list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
  ```
  Sample sentence (implementation):
  ```ocaml
  let* lident in UIdent or stack_ function false -> . [@ and ] let false = UIdent
  ```


### Item `fun_expr: fun_expr MOD FUNCTION ext . list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)` (in 12 errors)

- Derivation (12 occurrences):
  ```
  fun_expr: fun_expr MOD FUNCTION ext . list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
  ```
  Sample sentence (implementation):
  ```ocaml
  UIdent mod function false -> . [@ and ] let false = UIdent
  ```


### Item `fun_expr: fun_expr OR FUNCTION ext . list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)` (in 12 errors)

- Derivation (12 occurrences):
  ```
  fun_expr: fun_expr OR FUNCTION ext . list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
  ```
  Sample sentence (implementation):
  ```ocaml
  [ let* lident in UIdent or function false -> . land UIdent ] let false = UIdent
  ```


### Item `fun_expr: fun_expr INFIXOP2 FUNCTION ext . list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)` (in 10 errors)

- Derivation (10 occurrences):
  ```
  fun_expr: fun_expr INFIXOP2 FUNCTION ext . list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
  ```
  Sample sentence (implementation):
  ```ocaml
  UIdent +! function false -> . [@ and ] let false = UIdent
  ```


### Item `fun_expr: fun_expr INFIXOP3 FUNCTION ext . list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)` (in 10 errors)

- Derivation (10 occurrences):
  ```
  fun_expr: fun_expr INFIXOP3 FUNCTION ext . list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
  ```
  Sample sentence (implementation):
  ```ocaml
  UIdent land function false -> . [@ and ] let false = UIdent
  ```


### Item `fun_expr: fun_expr INFIXOP4 FUNCTION ext . list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)` (in 10 errors)

- Derivation (10 occurrences):
  ```
  fun_expr: fun_expr INFIXOP4 FUNCTION ext . list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
  ```
  Sample sentence (implementation):
  ```ocaml
  UIdent ** function false -> . [@ and ] let false = UIdent
  ```


### Item `fun_expr: fun_expr PLUS FUNCTION ext . list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)` (in 10 errors)

- Derivation (10 occurrences):
  ```
  fun_expr: fun_expr PLUS FUNCTION ext . list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
  ```
  Sample sentence (implementation):
  ```ocaml
  UIdent + function false -> . [@ and ] let false = UIdent
  ```


### Item `fun_expr: fun_expr PLUSDOT FUNCTION ext . list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)` (in 10 errors)

- Derivation (10 occurrences):
  ```
  fun_expr: fun_expr PLUSDOT FUNCTION ext . list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
  ```
  Sample sentence (implementation):
  ```ocaml
  UIdent +. function false -> . [@ and ] let false = UIdent
  ```


### Item `fun_expr: fun_expr PLUSEQ FUNCTION ext . list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)` (in 10 errors)

- Derivation (10 occurrences):
  ```
  fun_expr: fun_expr PLUSEQ FUNCTION ext . list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
  ```
  Sample sentence (implementation):
  ```ocaml
  UIdent += function false -> . [@ and ] let false = UIdent
  ```


### Item `fun_expr: fun_expr MINUS FUNCTION ext . list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)` (in 10 errors)

- Derivation (10 occurrences):
  ```
  fun_expr: fun_expr MINUS FUNCTION ext . list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
  ```
  Sample sentence (implementation):
  ```ocaml
  UIdent - function false -> . [@ and ] let false = UIdent
  ```


### Item `fun_expr: fun_expr MINUSDOT FUNCTION ext . list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)` (in 10 errors)

- Derivation (10 occurrences):
  ```
  fun_expr: fun_expr MINUSDOT FUNCTION ext . list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
  ```
  Sample sentence (implementation):
  ```ocaml
  UIdent -. function false -> . [@ and ] let false = UIdent
  ```


### Item `fun_expr: fun_expr STAR FUNCTION ext . list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)` (in 10 errors)

- Derivation (10 occurrences):
  ```
  fun_expr: fun_expr STAR FUNCTION ext . list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
  ```
  Sample sentence (implementation):
  ```ocaml
  UIdent * function false -> . [@ and ] let false = UIdent
  ```


### Item `fun_expr: fun_expr PERCENT FUNCTION ext . list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)` (in 10 errors)

- Derivation (10 occurrences):
  ```
  fun_expr: fun_expr PERCENT FUNCTION ext . list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
  ```
  Sample sentence (implementation):
  ```ocaml
  UIdent % function false -> . [@ and ] let false = UIdent
  ```


### Item `constr_extra_nonprefix_ident: . FALSE` (in 2 errors)

- Derivation (2 occurrences):
  ```
  fun_expr: fun_expr MOD STACK FUNCTION ext . list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
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
  [ let* lident in UIdent mod stack_ function false -> . ** UIdent ] let false = UIdent
  ```


### Item `module_type: . FUNCTOR list(attribute) reversed_nonempty_llist(functor_arg) MINUSGREATER module_type` (in 1 error)

- Derivation (1 occurrence):
  ```
  module_type: module_type_atomic at_mode_expr MINUSGREATER . module_type
    module_type: . FUNCTOR list(attribute) reversed_nonempty_llist(functor_arg) MINUSGREATER module_type
  ```
  Sample sentence (implementation):
  ```ocaml
  module UIdent : UIdent @ lident -> functor ( ) -> UIdent = {%hello|world|} let false = UIdent
  ```

## BUG: generating invalid ocaml syntax. (200 errors)

### Item `mk_longident(mod_ext_longident,type_trailing_hash): mod_ext_longident DOT . type_trailing_hash` (in 127 errors)

- Derivation (127 occurrences):
  ```
  mk_longident(mod_ext_longident,type_trailing_hash): mod_ext_longident DOT . type_trailing_hash
  ```
  Sample sentence (interface):
  ```ocaml
  exception false of UIdent . lident#
  ```


### Item `module_expr: . FUNCTOR list(attribute) reversed_nonempty_llist(functor_arg) MINUSGREATER module_expr` (in 25 errors)

- Derivation (20 occurrences):
  ```
  paren_module_expr: LPAREN . module_expr RPAREN
    module_expr: . FUNCTOR list(attribute) reversed_nonempty_llist(functor_arg) MINUSGREATER module_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  include ( functor ( ) -> UIdent ) let false = UIdent
  ```
- Derivation (5 occurrences):
  ```
  structure_item: include_kind ext list(attribute) . module_expr list(post_item_attribute)
    module_expr: . FUNCTOR list(attribute) reversed_nonempty_llist(functor_arg) MINUSGREATER module_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  include [@ and ] functor ( ) -> {%hello|world|} let false = UIdent
  ```


### Item `atat_modalities_expr: . ATAT nonempty_list(modality)` (in 18 errors)

- Derivation (18 occurrences):
  ```
  signature_item: include_kind ext list(attribute) module_type . list(post_item_attribute) optional_atat_modalities_expr
    optional_atat_modalities_expr: . atat_modalities_expr
      atat_modalities_expr: . ATAT nonempty_list(modality)
  ```
  Sample sentence (interface):
  ```ocaml
  include ( ) -> functor ( ) -> UIdent @@ lident
  ```


### Item `constr_ident: LPAREN . COLONCOLON RPAREN` (in 18 errors)

- Derivation (18 occurrences):
  ```
  constr_ident: LPAREN . COLONCOLON RPAREN
  ```
  Sample sentence (interface):
  ```ocaml
  exception ( :: )
  ```


### Item `seq_expr: . fun_seq_expr` (in 11 errors)

- Derivation (4 occurrences):
  ```
  let_binding_body_no_punning: nonempty_list(mode_legacy) val_ident at_mode_expr EQUAL . seq_expr
    seq_expr: . fun_seq_expr
      fun_seq_expr: . fun_expr
        fun_expr: . fun_
  ```
  Sample sentence (implementation):
  ```ocaml
  let local_ lident @ lident = fun false -> UIdent let false = UIdent
  ```
- Derivation (2 occurrences):
  ```
  let_binding_body_no_punning: nonempty_list(mode_legacy) val_ident at_mode_expr EQUAL . seq_expr
    seq_expr: . fun_seq_expr
      fun_seq_expr: . fun_expr SEMI
        fun_expr: . fun_
  ```
  Sample sentence (implementation):
  ```ocaml
  let local_ lident @ lident = fun false -> UIdent ; ; [@@ and ] let false = UIdent
  ```
- Derivation (2 occurrences):
  ```
  let_binding_body_no_punning: nonempty_list(mode_legacy) val_ident at_mode_expr EQUAL . seq_expr
    seq_expr: . fun_seq_expr
      fun_seq_expr: . fun_expr
        fun_expr: . fun_expr PERCENT fun_expr
          fun_expr: . fun_
  ```
  Sample sentence (implementation):
  ```ocaml
  let local_ lident @ lident = fun false -> function false -> . % UIdent [@@ and ] let false = UIdent
  ```
- Derivation (2 occurrences):
  ```
  let_binding_body_no_punning: nonempty_list(mode_legacy) val_ident at_mode_expr EQUAL . seq_expr
    seq_expr: . fun_seq_expr
      fun_seq_expr: . fun_expr
        fun_expr: . fun_expr MINUS fun_expr
          fun_expr: . fun_
  ```
  Sample sentence (implementation):
  ```ocaml
  let local_ lident @ lident = fun false -> function false -> . - UIdent [@@ and ] let false = UIdent
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
  object ( ( module UIdent ) ) end let false = UIdent
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
  class lident ?label: ( ( - ) ) = lident let false = UIdent
  ```

## Exception: "Assert_failure lib/Fmt_ast.ml:685:6" (3 errors)

### Item `extension: . QUOTED_STRING_EXPR` (in 3 errors)

- Derivation (1 occurrence):
  ```
  simple_pattern_not_ident: LPAREN . pattern RPAREN
    pattern: . pattern_gen
      pattern_gen: . simple_pattern
        simple_pattern: . simple_pattern_not_ident
          simple_pattern_not_ident: . extension
            extension: . QUOTED_STRING_EXPR
  ```
  Sample sentence (implementation):
  ```ocaml
  let ( ( {%hello|world|} ) ) @ lident = UIdent [@@ and ] let false = UIdent
  ```
- Derivation (1 occurrence):
  ```
  fun_: STACK FUN ext list(attribute) fun_params optional_atomic_constraint_ MINUSGREATER . fun_body
    fun_body: . fun_seq_expr
      fun_seq_expr: . fun_expr
        fun_expr: . simple_expr
          simple_expr: . extension
            extension: . QUOTED_STRING_EXPR
  ```
  Sample sentence (implementation):
  ```ocaml
  stack_ fun false -> {%hello|world|} [@@ and ] let false = UIdent
  ```
- Derivation (1 occurrence):
  ```
  fun_: FUN ext list(attribute) fun_params optional_atomic_constraint_ MINUSGREATER . fun_body
    fun_body: . fun_seq_expr
      fun_seq_expr: . fun_expr
        fun_expr: . simple_expr
          simple_expr: . extension
            extension: . QUOTED_STRING_EXPR
  ```
  Sample sentence (implementation):
  ```ocaml
  fun false -> {%hello|world|} [@@ and ] let false = UIdent
  ```

## Exception: "Assert_failure lib/Fmt_ast.ml:2678:36" (1 error)

### Item `at_mode_expr: . AT nonempty_list(mode)` (in 1 error)

- Derivation (1 occurrence):
  ```
  strict_binding_modes: fun_params . option(constraint_) EQUAL fun_body
    option(constraint_): . at_mode_expr
      at_mode_expr: . AT nonempty_list(mode)
  ```
  Sample sentence (implementation):
  ```ocaml
  object method ! lident false @ lident = UIdent inherit lident end let false = UIdent
  ```


# Red herrings

Red herrings are errors for which OCamlformat reports an invalid location.
This can happen, for example, if the formatter succeeds on the first pass but fails on a subsequent one, causing the error to refer to a location in an intermediate file that is not visible to end users.
Note that, as with internal errors, the exact location of the problem cannot be determined.
The location is guessed by inspecting the syntactic constructions that appear most frequently in the failing code.

## Error: comment dropped. (21 errors)

### Item `atat_modalities_expr: . ATAT nonempty_list(modality)` (in 21 errors)

- Derivation (17 occurrences):
  ```
  signature_item: include_kind ext list(attribute) module_type list(post_item_attribute) . optional_atat_modalities_expr
    optional_atat_modalities_expr: . atat_modalities_expr
      atat_modalities_expr: . ATAT nonempty_list(modality)
  ```
  Sample sentence (interface):
  ```ocaml
  ;; include functor functor ( ) -> UIdent @@ lident
  ```
- Derivation (4 occurrences):
  ```
  signature_item: include_kind ext list(attribute) module_type . list(post_item_attribute) optional_atat_modalities_expr
    optional_atat_modalities_expr: . atat_modalities_expr
      atat_modalities_expr: . ATAT nonempty_list(modality)
  ```
  Sample sentence (interface):
  ```ocaml
  include functor functor ( ) -> UIdent @@ lident
  ```

## Error: Syntax error (15 errors)

### Item `constr_longident: . mod_longident` (in 15 errors)

- Derivation (14 occurrences):
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
  unique_ <[ UIdent ]> let false = UIdent
  ```
- Derivation (1 occurrence):
  ```
  comprehension_clause_binding: list(attribute) UNIQUE pattern IN . fun_expr
    fun_expr: . simple_expr
      simple_expr: . constr_longident
        constr_longident: . mod_longident
          mod_longident: . mk_longident(mod_longident,UIDENT)
            mk_longident(mod_longident,UIDENT): . UIDENT
  ```
  Sample sentence (implementation):
  ```ocaml
  [: UIdent for unique_ exception# lident in UIdent :] let false = UIdent
  ```


