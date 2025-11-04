# Parser errors

A parser error is reported when OCamlformat rejects an input on a specific token.
The error location is the token that caused the failure; 
it is usually the exact point where the parser could not continue.

## Error: Syntax error

### Item `fun_expr: let_bindings(ext) . IN seq_expr` (in 3197 errors)

- Derivation (3197 occurrences):
  ```
  fun_expr: let_bindings(ext) . IN seq_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  let x in _
        ^^
  ```


### Item `and_let_binding: . AND list(attribute) let_binding_body list(post_item_attribute)` (in 213 errors)

- Derivation (205 occurrences):
  ```
  let_bindings(ext): let_bindings(ext) . and_let_binding
    and_let_binding: . AND list(attribute) let_binding_body list(post_item_attribute)
  ```
  Sample sentence (implementation):
  ```ocaml
  {%%ext|s|} let x and x
                   ^^^
  ```
- Derivation (8 occurrences):
  ```
  let_bindings(no_ext): let_bindings(no_ext) . and_let_binding
    and_let_binding: . AND list(attribute) let_binding_body list(post_item_attribute)
  ```
  Sample sentence (implementation):
  ```ocaml
  class x = let x and x in x
                  ^^^
  ```


### Item `pattern: EFFECT . pattern_gen COMMA simple_pattern` (in 202 errors)

- Derivation (164 occurrences):
  ```
  pattern: EFFECT . pattern_gen COMMA simple_pattern
    pattern_gen: . simple_pattern
      simple_pattern: . simple_pattern_not_ident
        simple_pattern_not_ident: . constr_longident
          constr_longident: . constr_extra_nonprefix_ident
            constr_extra_nonprefix_ident: . FALSE
  ```
  Sample sentence (implementation):
  ```ocaml
  function effect false , false -> .
                  ^^^^^
  ```
- Derivation (1 occurrence):
  ```
  pattern: EFFECT . pattern_gen COMMA simple_pattern
    pattern_gen: . simple_pattern
      simple_pattern: . val_ident
        val_ident: . LIDENT
  ```
  Sample sentence (implementation):
  ```ocaml
  function effect x , false -> .
                  ^
  ```
- Derivation (1 occurrence):
  ```
  pattern: EFFECT . pattern_gen COMMA simple_pattern
    pattern_gen: . simple_pattern
      simple_pattern: . val_ident
        val_ident: . val_extra_ident
          val_extra_ident: . LPAREN operator RPAREN
  ```
  Sample sentence (implementation):
  ```ocaml
  function effect ( - ) , false -> .
                  ^
  ```
- Derivation (1 occurrence):
  ```
  pattern: EFFECT . pattern_gen COMMA simple_pattern
    pattern_gen: . simple_pattern
      simple_pattern: . simple_pattern_not_ident
        simple_pattern_not_ident: . LPAREN pattern COLON core_type RPAREN
  ```
  Sample sentence (implementation):
  ```ocaml
  function effect ( false : {%ext|s|} ) , false -> .
                  ^
  ```
- Derivation (1 occurrence):
  ```
  pattern: EFFECT . pattern_gen COMMA simple_pattern
    pattern_gen: . simple_pattern
      simple_pattern: . simple_pattern_not_ident
        simple_pattern_not_ident: . HASH type_longident
  ```
  Sample sentence (implementation):
  ```ocaml
  function effect # x , false -> .
                  ^
  ```
- Derivation (1 occurrence):
  ```
  pattern: EFFECT . pattern_gen COMMA simple_pattern
    pattern_gen: . simple_pattern
      simple_pattern: . simple_pattern_not_ident
        simple_pattern_not_ident: . UNDERSCORE
  ```
  Sample sentence (implementation):
  ```ocaml
  function effect _ , false -> .
                  ^
  ```
- Derivation (1 occurrence):
  ```
  pattern: EFFECT . pattern_gen COMMA simple_pattern
    pattern_gen: . simple_pattern
      simple_pattern: . simple_pattern_not_ident
        simple_pattern_not_ident: . LPAREN MODULE ext list(attribute) module_name COLON module_type RPAREN
  ```
  Sample sentence (implementation):
  ```ocaml
  function effect ( module X : {%ext|s|} ) , false -> .
                  ^
  ```
- Derivation (1 occurrence):
  ```
  pattern: EFFECT . pattern_gen COMMA simple_pattern
    pattern_gen: . simple_pattern
      simple_pattern: . simple_pattern_not_ident
        simple_pattern_not_ident: . LPAREN MODULE ext list(attribute) module_name RPAREN
  ```
  Sample sentence (implementation):
  ```ocaml
  function effect ( module X ) , false -> .
                  ^
  ```
- Derivation (1 occurrence):
  ```
  pattern: EFFECT . pattern_gen COMMA simple_pattern
    pattern_gen: . simple_pattern
      simple_pattern: . simple_pattern_not_ident
        simple_pattern_not_ident: . LPAREN pattern RPAREN
  ```
  Sample sentence (implementation):
  ```ocaml
  function effect ( false ) , false -> .
                  ^
  ```
- Derivation (1 occurrence):
  ```
  pattern: EFFECT . pattern_gen COMMA simple_pattern
    pattern_gen: . simple_pattern
      simple_pattern: . simple_pattern_not_ident
        simple_pattern_not_ident: . simple_delimited_pattern
          simple_delimited_pattern: . LBRACKETBAR BARRBRACKET
  ```
  Sample sentence (implementation):
  ```ocaml
  function effect [| |] , false -> .
                  ^^
  ```
- Derivation (1 occurrence):
  ```
  pattern: EFFECT . pattern_gen COMMA simple_pattern
    pattern_gen: . simple_pattern
      simple_pattern: . simple_pattern_not_ident
        simple_pattern_not_ident: . simple_delimited_pattern
          simple_delimited_pattern: . LBRACKETBAR separated_or_terminated_nonempty_list(SEMI,pattern) BARRBRACKET
  ```
  Sample sentence (implementation):
  ```ocaml
  function effect [| false |] , false -> .
                  ^^
  ```
- Derivation (1 occurrence):
  ```
  pattern: EFFECT . pattern_gen COMMA simple_pattern
    pattern_gen: . simple_pattern
      simple_pattern: . simple_pattern_not_ident
        simple_pattern_not_ident: . simple_delimited_pattern
          simple_delimited_pattern: . LBRACKET separated_or_terminated_nonempty_list(SEMI,pattern) RBRACKET
  ```
  Sample sentence (implementation):
  ```ocaml
  function effect [ false ] , false -> .
                  ^
  ```
- Derivation (1 occurrence):
  ```
  pattern: EFFECT . pattern_gen COMMA simple_pattern
    pattern_gen: . simple_pattern
      simple_pattern: . simple_pattern_not_ident
        simple_pattern_not_ident: . simple_delimited_pattern
          simple_delimited_pattern: . LBRACE listx(SEMI,record_pat_field,UNDERSCORE) RBRACE
  ```
  Sample sentence (implementation):
  ```ocaml
  function effect { x } , false -> .
                  ^
  ```
- Derivation (1 occurrence):
  ```
  pattern: EFFECT . pattern_gen COMMA simple_pattern
    pattern_gen: . simple_pattern
      simple_pattern: . simple_pattern_not_ident
        simple_pattern_not_ident: . signed_constant
          signed_constant: . PLUS FLOAT
  ```
  Sample sentence (implementation):
  ```ocaml
  function effect + 4.0 , false -> .
                  ^
  ```
- Derivation (1 occurrence):
  ```
  pattern: EFFECT . pattern_gen COMMA simple_pattern
    pattern_gen: . simple_pattern
      simple_pattern: . simple_pattern_not_ident
        simple_pattern_not_ident: . signed_constant
          signed_constant: . PLUS INT
  ```
  Sample sentence (implementation):
  ```ocaml
  function effect + 4 , false -> .
                  ^
  ```
- Derivation (1 occurrence):
  ```
  pattern: EFFECT . pattern_gen COMMA simple_pattern
    pattern_gen: . simple_pattern
      simple_pattern: . simple_pattern_not_ident
        simple_pattern_not_ident: . signed_constant
          signed_constant: . MINUS FLOAT
  ```
  Sample sentence (implementation):
  ```ocaml
  function effect - 4.0 , false -> .
                  ^
  ```
- Derivation (1 occurrence):
  ```
  pattern: EFFECT . pattern_gen COMMA simple_pattern
    pattern_gen: . simple_pattern
      simple_pattern: . simple_pattern_not_ident
        simple_pattern_not_ident: . signed_constant
          signed_constant: . MINUS INT
  ```
  Sample sentence (implementation):
  ```ocaml
  function effect - 4 , false -> .
                  ^
  ```
- Derivation (1 occurrence):
  ```
  pattern: EFFECT . pattern_gen COMMA simple_pattern
    pattern_gen: . LAZY ext list(attribute) simple_pattern
  ```
  Sample sentence (implementation):
  ```ocaml
  function effect lazy false , false -> .
                  ^^^^
  ```
- Derivation (1 occurrence):
  ```
  pattern: EFFECT . pattern_gen COMMA simple_pattern
    pattern_gen: . simple_pattern
      simple_pattern: . simple_pattern_not_ident
        simple_pattern_not_ident: . name_tag
          name_tag: . BACKQUOTE ident
  ```
  Sample sentence (implementation):
  ```ocaml
  function effect ` x , false -> .
                  ^
  ```
- Derivation (1 occurrence):
  ```
  pattern: EFFECT . pattern_gen COMMA simple_pattern
    pattern_gen: . name_tag pattern
      name_tag: . BACKQUOTE ident
  ```
  Sample sentence (implementation):
  ```ocaml
  function effect ` x false , false -> .
                  ^
  ```
- Derivation (1 occurrence):
  ```
  pattern: EFFECT . pattern_gen COMMA simple_pattern
    pattern_gen: . simple_pattern
      simple_pattern: . simple_pattern_not_ident
        simple_pattern_not_ident: . mod_longident DOT LPAREN pattern RPAREN
          mod_longident: . mk_longident(mod_longident,UIDENT)
            mk_longident(mod_longident,UIDENT): . UIDENT
  ```
  Sample sentence (implementation):
  ```ocaml
  function effect X . ( false ) , false -> .
                  ^
  ```
- ...


### Item `atomic_type: mod_ext_longident DOT . delimited_type_supporting_local_open` (in 132 errors)

- Derivation (84 occurrences):
  ```
  atomic_type: mod_ext_longident DOT . delimited_type_supporting_local_open
    delimited_type_supporting_local_open: . LBRACKETGREATER RBRACKET
  ```
  Sample sentence (interface):
  ```ocaml
  exception false : X . [> ]
                        ^^
  ```
- Derivation (41 occurrences):
  ```
  atomic_type: mod_ext_longident DOT . delimited_type_supporting_local_open
    delimited_type_supporting_local_open: . LPAREN core_type RPAREN
  ```
  Sample sentence (interface):
  ```ocaml
  exception false : X . ( _ )
                        ^
  ```
- Derivation (1 occurrence):
  ```
  atomic_type: mod_ext_longident DOT . delimited_type_supporting_local_open
    delimited_type_supporting_local_open: . LBRACKETLESS option(BAR) reversed_separated_nonempty_llist(BAR,row_field) GREATER reversed_nonempty_llist(name_tag) RBRACKET
  ```
  Sample sentence (interface):
  ```ocaml
  exception false : X . [< {%ext|s|} > ` x ]
                        ^^
  ```
- Derivation (1 occurrence):
  ```
  atomic_type: mod_ext_longident DOT . delimited_type_supporting_local_open
    delimited_type_supporting_local_open: . LBRACKETLESS option(BAR) reversed_separated_nonempty_llist(BAR,row_field) RBRACKET
  ```
  Sample sentence (interface):
  ```ocaml
  exception false : X . [< {%ext|s|} ]
                        ^^
  ```
- Derivation (1 occurrence):
  ```
  atomic_type: mod_ext_longident DOT . delimited_type_supporting_local_open
    delimited_type_supporting_local_open: . LBRACKETGREATER option(BAR) reversed_separated_nonempty_llist(BAR,row_field) RBRACKET
  ```
  Sample sentence (interface):
  ```ocaml
  exception false : X . [> {%ext|s|} ]
                        ^^
  ```
- Derivation (1 occurrence):
  ```
  atomic_type: mod_ext_longident DOT . delimited_type_supporting_local_open
    delimited_type_supporting_local_open: . LBRACKET row_field BAR reversed_separated_nonempty_llist(BAR,row_field) RBRACKET
  ```
  Sample sentence (interface):
  ```ocaml
  exception false : X . [ {%ext|s|} | {%ext|s|} ]
                        ^
  ```
- Derivation (1 occurrence):
  ```
  atomic_type: mod_ext_longident DOT . delimited_type_supporting_local_open
    delimited_type_supporting_local_open: . LBRACKET BAR reversed_separated_nonempty_llist(BAR,row_field) RBRACKET
  ```
  Sample sentence (interface):
  ```ocaml
  exception false : X . [ | {%ext|s|} ]
                        ^
  ```
- Derivation (1 occurrence):
  ```
  atomic_type: mod_ext_longident DOT . delimited_type_supporting_local_open
    delimited_type_supporting_local_open: . LBRACKET tag_field RBRACKET
  ```
  Sample sentence (interface):
  ```ocaml
  exception false : X . [ ` x ]
                        ^
  ```
- Derivation (1 occurrence):
  ```
  atomic_type: mod_ext_longident DOT . delimited_type_supporting_local_open
    delimited_type_supporting_local_open: . LPAREN MODULE ext list(attribute) module_type RPAREN
  ```
  Sample sentence (interface):
  ```ocaml
  exception false : X . ( module {%ext|s|} )
                        ^
  ```


### Item `attribute: LBRACKETAT attr_id attr_payload . RBRACKET` (in 98 errors)

- Derivation (98 occurrences):
  ```
  attribute: LBRACKETAT attr_id attr_payload . RBRACKET
  ```
  Sample sentence (implementation):
  ```ocaml
  X [@ and let x ]
                 ^
  ```


### Item `extension: LBRACKETPERCENT attr_id payload . RBRACKET` (in 98 errors)

- Derivation (98 occurrences):
  ```
  extension: LBRACKETPERCENT attr_id payload . RBRACKET
  ```
  Sample sentence (implementation):
  ```ocaml
  [% and let x ]
               ^
  ```


### Item `floating_attribute: LBRACKETATATAT attr_id attr_payload . RBRACKET` (in 98 errors)

- Derivation (98 occurrences):
  ```
  floating_attribute: LBRACKETATATAT attr_id attr_payload . RBRACKET
  ```
  Sample sentence (implementation):
  ```ocaml
  [@@@ and let x ]
                 ^
  ```


### Item `item_extension: LBRACKETPERCENTPERCENT attr_id payload . RBRACKET` (in 98 errors)

- Derivation (98 occurrences):
  ```
  item_extension: LBRACKETPERCENTPERCENT attr_id payload . RBRACKET
  ```
  Sample sentence (interface):
  ```ocaml
  [%% and let x ]
                ^
  ```


### Item `module_expr: STRUCT list(attribute) structure . END` (in 98 errors)

- Derivation (98 occurrences):
  ```
  module_expr: STRUCT list(attribute) structure . END
  ```
  Sample sentence (implementation):
  ```ocaml
  include struct let x end
                       ^^^
  ```


### Item `post_item_attribute: LBRACKETATAT attr_id attr_payload . RBRACKET` (in 98 errors)

- Derivation (98 occurrences):
  ```
  post_item_attribute: LBRACKETATAT attr_id attr_payload . RBRACKET
  ```
  Sample sentence (implementation):
  ```ocaml
  X [@@ and let x ]
                  ^
  ```


### Item `class_expr: let_bindings(no_ext) . IN class_expr` (in 46 errors)

- Derivation (46 occurrences):
  ```
  class_expr: let_bindings(no_ext) . IN class_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  class x = let x in x
                  ^^
  ```


### Item `functor_arg: LPAREN . RPAREN` (in 30 errors)

- Derivation (30 occurrences):
  ```
  functor_arg: LPAREN . RPAREN
  ```
  Sample sentence (implementation):
  ```ocaml
  include functor ( ) -> X
                    ^
  ```


### Item `reversed_nonempty_llist(functor_arg): reversed_nonempty_llist(functor_arg) . functor_arg` (in 28 errors)

- Derivation (26 occurrences):
  ```
  reversed_nonempty_llist(functor_arg): reversed_nonempty_llist(functor_arg) . functor_arg
    functor_arg: . LPAREN RPAREN
  ```
  Sample sentence (interface):
  ```ocaml
  include ( ) ( ) -> {%ext|s|}
              ^
  ```
- Derivation (2 occurrences):
  ```
  reversed_nonempty_llist(functor_arg): reversed_nonempty_llist(functor_arg) . functor_arg
    functor_arg: . LPAREN module_name COLON module_type RPAREN
  ```
  Sample sentence (interface):
  ```ocaml
  include ( ) ( X : {%ext|s|} ) -> {%ext|s|}
              ^
  ```


### Item `let_bindings(ext): . LET ext list(attribute) rec_flag let_binding_body list(post_item_attribute)` (in 12 errors)

- Derivation (12 occurrences):
  ```
  list(structure_element): structure_item . list(structure_element)
    list(structure_element): . structure_item list(structure_element)
      structure_item: . let_bindings(ext)
        let_bindings(ext): . LET ext list(attribute) rec_flag let_binding_body list(post_item_attribute)
  ```
  Sample sentence (implementation):
  ```ocaml
  let x let x
        ^^^
  ```


### Item `pattern: . EXCEPTION ext list(attribute) pattern` (in 5 errors)

- Derivation (3 occurrences):
  ```
  pattern_comma_list(pattern_no_exn): pattern_comma_list(pattern_no_exn) COMMA . pattern
    pattern: . EXCEPTION ext list(attribute) pattern
  ```
  Sample sentence (implementation):
  ```ocaml
  let false , false , exception false = X
                      ^^^^^^^^^
  ```
- Derivation (1 occurrence):
  ```
  pattern_comma_list(pattern_no_exn): pattern_comma_list(pattern_no_exn) COMMA . pattern
    pattern: . pattern attribute
      pattern: . EXCEPTION ext list(attribute) pattern
  ```
  Sample sentence (implementation):
  ```ocaml
  let false , false , exception false [@ and ] = X
                      ^^^^^^^^^
  ```
- Derivation (1 occurrence):
  ```
  pattern_comma_list(pattern_no_exn): pattern_comma_list(pattern_no_exn) COMMA . pattern
    pattern: . pattern COLONCOLON pattern
      pattern: . EXCEPTION ext list(attribute) pattern
  ```
  Sample sentence (implementation):
  ```ocaml
  let false , false , exception false :: false = X
                      ^^^^^^^^^
  ```


### Item `module_expr: FUNCTOR list(attribute) reversed_nonempty_llist(functor_arg) . MINUSGREATER module_expr` (in 1 error)

- Derivation (1 occurrence):
  ```
  module_expr: FUNCTOR list(attribute) reversed_nonempty_llist(functor_arg) . MINUSGREATER module_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  include functor ( X : {%ext|s|} ) -> {%ext|s|}
                                    ^^
  ```

## Error: Reserved character sequence: .~ is reserved for use in MetaOCaml

### Item `simple_expr: . METAOCAML_ESCAPE simple_expr` (in 457 errors)

- Derivation (45 occurrences):
  ```
  implementation: . structure EOF
    structure: . seq_expr list(post_item_attribute) list(structure_element)
      seq_expr: . fun_seq_expr
        fun_seq_expr: . fun_expr
          fun_expr: . simple_expr
            simple_expr: . METAOCAML_ESCAPE simple_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  .~ 'a'
  ^^
  ```
- Derivation (7 occurrences):
  ```
  simple_expr: BANG . simple_expr
    simple_expr: . METAOCAML_ESCAPE simple_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  ! .~ 'a'
    ^^
  ```
- Derivation (7 occurrences):
  ```
  simple_expr: PREFIXOP . simple_expr
    simple_expr: . METAOCAML_ESCAPE simple_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  !+ .~ 'a'
     ^^
  ```
- Derivation (5 occurrences):
  ```
  class_expr: class_simple_expr . reversed_nonempty_llist(labeled_simple_expr)
    reversed_nonempty_llist(labeled_simple_expr): . labeled_simple_expr
      labeled_simple_expr: . simple_expr
        simple_expr: . METAOCAML_ESCAPE simple_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  class x = x .~ 'a'
              ^^
  ```
- Derivation (4 occurrences):
  ```
  implementation: . structure EOF
    structure: . seq_expr list(post_item_attribute) list(structure_element)
      seq_expr: . fun_seq_expr
        fun_seq_expr: . fun_expr
          fun_expr: . simple_expr
            simple_expr: . simple_expr HASH LIDENT
              simple_expr: . METAOCAML_ESCAPE simple_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  .~ x # x
  ^^
  ```
- Derivation (4 occurrences):
  ```
  implementation: . structure EOF
    structure: . seq_expr list(post_item_attribute) list(structure_element)
      seq_expr: . fun_seq_expr
        fun_seq_expr: . fun_expr
          fun_expr: . simple_expr
            simple_expr: . simple_expr DOT label_longident
              simple_expr: . METAOCAML_ESCAPE simple_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  .~ false . x
  ^^
  ```
- Derivation (3 occurrences):
  ```
  simple_expr: simple_expr HASHOP . simple_expr
    simple_expr: . METAOCAML_ESCAPE simple_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  X ## .~ 'a'
       ^^
  ```
- Derivation (3 occurrences):
  ```
  reversed_nonempty_llist(labeled_simple_expr): reversed_nonempty_llist(labeled_simple_expr) . labeled_simple_expr
    labeled_simple_expr: . simple_expr
      simple_expr: . METAOCAML_ESCAPE simple_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  'a' 'a' .~ 'a'
          ^^
  ```
- Derivation (2 occurrences):
  ```
  reversed_nonempty_llist(labeled_simple_expr): reversed_nonempty_llist(labeled_simple_expr) . labeled_simple_expr
    labeled_simple_expr: . simple_expr
      simple_expr: . simple_expr HASH LIDENT
        simple_expr: . METAOCAML_ESCAPE simple_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  'a' 'a' .~ 'a' # x
          ^^
  ```
- Derivation (2 occurrences):
  ```
  simple_expr: simple_expr DOT mod_longident DOTOP LBRACKET . separated_or_terminated_nonempty_list(SEMI,expr) RBRACKET
    separated_or_terminated_nonempty_list(SEMI,expr): . fun_expr
      fun_expr: . simple_expr
        simple_expr: . simple_expr HASH LIDENT
          simple_expr: . METAOCAML_ESCAPE simple_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  false . X .+ [ .~ 'a' # x ]
                 ^^
  ```
- Derivation (2 occurrences):
  ```
  simple_expr: simple_expr DOTOP LBRACKET . separated_or_terminated_nonempty_list(SEMI,expr) RBRACKET
    separated_or_terminated_nonempty_list(SEMI,expr): . fun_expr
      fun_expr: . simple_expr
        simple_expr: . simple_expr HASH LIDENT
          simple_expr: . METAOCAML_ESCAPE simple_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  X .+ [ .~ 'a' # x ]
         ^^
  ```
- Derivation (2 occurrences):
  ```
  simple_expr: simple_expr DOT mod_longident DOTOP LBRACE . separated_or_terminated_nonempty_list(SEMI,expr) RBRACE
    separated_or_terminated_nonempty_list(SEMI,expr): . fun_expr
      fun_expr: . simple_expr
        simple_expr: . simple_expr HASH LIDENT
          simple_expr: . METAOCAML_ESCAPE simple_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  false . X .+ { .~ 'a' # x }
                 ^^
  ```
- Derivation (2 occurrences):
  ```
  simple_expr: simple_expr DOTOP LBRACE . separated_or_terminated_nonempty_list(SEMI,expr) RBRACE
    separated_or_terminated_nonempty_list(SEMI,expr): . fun_expr
      fun_expr: . simple_expr
        simple_expr: . simple_expr HASH LIDENT
          simple_expr: . METAOCAML_ESCAPE simple_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  X .+ { .~ 'a' # x }
         ^^
  ```
- Derivation (2 occurrences):
  ```
  simple_expr: simple_expr DOT mod_longident DOTOP LPAREN . separated_or_terminated_nonempty_list(SEMI,expr) RPAREN
    separated_or_terminated_nonempty_list(SEMI,expr): . fun_expr
      fun_expr: . simple_expr
        simple_expr: . simple_expr HASH LIDENT
          simple_expr: . METAOCAML_ESCAPE simple_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  false . X .+ ( .~ 'a' # x )
                 ^^
  ```
- Derivation (2 occurrences):
  ```
  simple_expr: simple_expr DOTOP LPAREN . separated_or_terminated_nonempty_list(SEMI,expr) RPAREN
    separated_or_terminated_nonempty_list(SEMI,expr): . fun_expr
      fun_expr: . simple_expr
        simple_expr: . simple_expr HASH LIDENT
          simple_expr: . METAOCAML_ESCAPE simple_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  X .+ ( .~ 'a' # x )
         ^^
  ```
- Derivation (2 occurrences):
  ```
  simple_expr: simple_expr DOT LBRACKET . seq_expr RBRACKET
    seq_expr: . fun_seq_expr
      fun_seq_expr: . fun_expr
        fun_expr: . simple_expr
          simple_expr: . simple_expr HASH LIDENT
            simple_expr: . METAOCAML_ESCAPE simple_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  false . [ .~ 'a' # x ]
            ^^
  ```
- Derivation (2 occurrences):
  ```
  simple_expr: simple_expr DOT LBRACE . seq_expr RBRACE
    seq_expr: . fun_seq_expr
      fun_seq_expr: . fun_expr
        fun_expr: . simple_expr
          simple_expr: . simple_expr HASH LIDENT
            simple_expr: . METAOCAML_ESCAPE simple_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  false . { .~ 'a' # x }
            ^^
  ```
- Derivation (2 occurrences):
  ```
  simple_expr: simple_expr DOT LPAREN . seq_expr RPAREN
    seq_expr: . fun_seq_expr
      fun_seq_expr: . fun_expr
        fun_expr: . simple_expr
          simple_expr: . simple_expr HASH LIDENT
            simple_expr: . METAOCAML_ESCAPE simple_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  false . ( .~ 'a' # x )
            ^^
  ```
- Derivation (2 occurrences):
  ```
  reversed_nonempty_llist(labeled_simple_expr): reversed_nonempty_llist(labeled_simple_expr) . labeled_simple_expr
    labeled_simple_expr: . simple_expr
      simple_expr: . simple_expr DOT label_longident
        simple_expr: . METAOCAML_ESCAPE simple_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  'a' 'a' .~ 'a' . x
          ^^
  ```
- Derivation (2 occurrences):
  ```
  simple_expr: simple_expr DOT mod_longident DOTOP LBRACKET . separated_or_terminated_nonempty_list(SEMI,expr) RBRACKET
    separated_or_terminated_nonempty_list(SEMI,expr): . fun_expr
      fun_expr: . simple_expr
        simple_expr: . simple_expr DOT label_longident
          simple_expr: . METAOCAML_ESCAPE simple_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  false . X .+ [ .~ 'a' . x ]
                 ^^
  ```
- Derivation (2 occurrences):
  ```
  simple_expr: simple_expr DOTOP LBRACKET . separated_or_terminated_nonempty_list(SEMI,expr) RBRACKET
    separated_or_terminated_nonempty_list(SEMI,expr): . fun_expr
      fun_expr: . simple_expr
        simple_expr: . simple_expr DOT label_longident
          simple_expr: . METAOCAML_ESCAPE simple_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  X .+ [ .~ 'a' . x ]
         ^^
  ```
- ...

## Error: Syntax error: nonrec flag not expected.

### Item `generic_type_declaration(no_nonrec_flag,type_subst_kind): TYPE ext list(attribute) . NONREC type_parameters LIDENT COLONEQUAL nonempty_type_kind reversed_llist(preceded(CONSTRAINT,constrain)) list(post_item_attribute)` (in 71 errors)

- Derivation (71 occurrences):
  ```
  generic_type_declaration(no_nonrec_flag,type_subst_kind): TYPE ext list(attribute) . NONREC type_parameters LIDENT COLONEQUAL nonempty_type_kind reversed_llist(preceded(CONSTRAINT,constrain)) list(post_item_attribute)
  ```
  Sample sentence (interface):
  ```ocaml
  type nonrec x := {%ext|s|}
       ^^^^^^
  ```


### Item `structure_item: TYPE ext list(attribute) . NONREC type_parameters type_longident PLUSEQ private_flag reversed_bar_llist(extension_constructor) list(post_item_attribute)` (in 26 errors)

- Derivation (26 occurrences):
  ```
  structure_item: TYPE ext list(attribute) . NONREC type_parameters type_longident PLUSEQ private_flag reversed_bar_llist(extension_constructor) list(post_item_attribute)
  ```
  Sample sentence (implementation):
  ```ocaml
  type nonrec x += false
       ^^^^^^
  ```


### Item `signature_item: TYPE ext list(attribute) . NONREC type_parameters type_longident PLUSEQ private_flag reversed_bar_llist(extension_constructor_declaration) list(post_item_attribute)` (in 17 errors)

- Derivation (17 occurrences):
  ```
  signature_item: TYPE ext list(attribute) . NONREC type_parameters type_longident PLUSEQ private_flag reversed_bar_llist(extension_constructor_declaration) list(post_item_attribute)
  ```
  Sample sentence (interface):
  ```ocaml
  type nonrec x += false
       ^^^^^^
  ```

## Error: Syntax error: ']' expected

### Item `constr_extra_nonprefix_ident: . FALSE` (in 12 errors)

- Derivation (12 occurrences):
  ```
  pattern: EFFECT . pattern_gen COMMA simple_pattern
    pattern_gen: . simple_pattern
      simple_pattern: . simple_pattern_not_ident
        simple_pattern_not_ident: . constr_longident
          constr_longident: . constr_extra_nonprefix_ident
            constr_extra_nonprefix_ident: . FALSE
  ```
  Sample sentence (implementation):
  ```ocaml
  function [ effect false , false ] -> .
                    ^^^^^
  ```

## Error: Syntax error: '|]' expected

### Item `constr_extra_nonprefix_ident: . FALSE` (in 8 errors)

- Derivation (8 occurrences):
  ```
  pattern: EFFECT . pattern_gen COMMA simple_pattern
    pattern_gen: . simple_pattern
      simple_pattern: . simple_pattern_not_ident
        simple_pattern_not_ident: . constr_longident
          constr_longident: . constr_extra_nonprefix_ident
            constr_extra_nonprefix_ident: . FALSE
  ```
  Sample sentence (implementation):
  ```ocaml
  function [| effect false , false |] -> .
                     ^^^^^
  ```

## Error: Syntax error: ')' expected

### Item `constr_extra_nonprefix_ident: . FALSE` (in 8 errors)

- Derivation (8 occurrences):
  ```
  pattern: EFFECT . pattern_gen COMMA simple_pattern
    pattern_gen: . simple_pattern
      simple_pattern: . simple_pattern_not_ident
        simple_pattern_not_ident: . constr_longident
          constr_longident: . constr_extra_nonprefix_ident
            constr_extra_nonprefix_ident: . FALSE
  ```
  Sample sentence (implementation):
  ```ocaml
  function ( effect false , false ) -> .
                    ^^^^^
  ```

## Error: In this scoped type, variable 'x is reserved for the local type x.

### Item `alias_type: alias_type AS QUOTE . ident` (in 3 errors)

- Derivation (3 occurrences):
  ```
  alias_type: alias_type AS QUOTE . ident
    ident: . LIDENT
  ```
  Sample sentence (implementation):
  ```ocaml
  let x : type x . {%ext|s|} as ' x = X
                                  ^
  ```

## Error: Syntax error: pattern expected.

### Item `pattern: . EXCEPTION ext list(attribute) pattern` (in 5 errors)

- Derivation (3 occurrences):
  ```
  pattern_comma_list(pattern_no_exn): pattern_no_exn COMMA . pattern
    pattern: . EXCEPTION ext list(attribute) pattern
  ```
  Sample sentence (implementation):
  ```ocaml
  let false , exception false = X
              ^^^^^^^^^
  ```
- Derivation (1 occurrence):
  ```
  pattern_comma_list(pattern_no_exn): pattern_no_exn COMMA . pattern
    pattern: . pattern attribute
      pattern: . EXCEPTION ext list(attribute) pattern
  ```
  Sample sentence (implementation):
  ```ocaml
  let false , exception false [@ and ] = X
              ^^^^^^^^^
  ```
- Derivation (1 occurrence):
  ```
  pattern_comma_list(pattern_no_exn): pattern_no_exn COMMA . pattern
    pattern: . pattern COLONCOLON pattern
      pattern: . EXCEPTION ext list(attribute) pattern
  ```
  Sample sentence (implementation):
  ```ocaml
  let false , exception false :: false = X
              ^^^^^^^^^
  ```

## Error: Syntax error: '}' expected

### Item `constr_extra_nonprefix_ident: . FALSE` (in 3 errors)

- Derivation (3 occurrences):
  ```
  pattern: EFFECT . pattern_gen COMMA simple_pattern
    pattern_gen: . simple_pattern
      simple_pattern: . simple_pattern_not_ident
        simple_pattern_not_ident: . constr_longident
          constr_longident: . constr_extra_nonprefix_ident
            constr_extra_nonprefix_ident: . FALSE
  ```
  Sample sentence (implementation):
  ```ocaml
  function { x = effect false , false } -> .
                        ^^^^^
  ```


# Lexer errors

A lexer error is reported when OCamlformat rejected an input on a location that does not form a complete token for the fuzzer.
This usually indicates a mismatch between the lexical specification used by the fuzzer and the lexer implementation in OCamlformat.
The token at that spot is likely not properly recognized.

## Error: Syntax error

### Item `simple_expr: . METAOCAML_BRACKET_OPEN seq_expr METAOCAML_BRACKET_CLOSE` (in 1046 errors)

- Derivation (921 occurrences):
  ```
  implementation: . structure EOF
    structure: . seq_expr list(post_item_attribute) list(structure_element)
      seq_expr: . fun_seq_expr
        fun_seq_expr: . fun_expr
          fun_expr: . simple_expr
            simple_expr: . METAOCAML_BRACKET_OPEN seq_expr METAOCAML_BRACKET_CLOSE
  ```
  Sample sentence (implementation):
  ```ocaml
  .< _ >.
  ^^
  ```
- Derivation (2 occurrences):
  ```
  reversed_nonempty_llist(labeled_simple_expr): reversed_nonempty_llist(labeled_simple_expr) . labeled_simple_expr
    labeled_simple_expr: . simple_expr
      simple_expr: . METAOCAML_BRACKET_OPEN seq_expr METAOCAML_BRACKET_CLOSE
  ```
  Sample sentence (implementation):
  ```ocaml
  'a' 'a' .< X >.
          ^^
  ```
- Derivation (2 occurrences):
  ```
  simple_expr: simple_expr DOT mod_longident DOTOP LBRACKET . separated_or_terminated_nonempty_list(SEMI,expr) RBRACKET
    separated_or_terminated_nonempty_list(SEMI,expr): . fun_expr
      fun_expr: . simple_expr
        simple_expr: . METAOCAML_BRACKET_OPEN seq_expr METAOCAML_BRACKET_CLOSE
  ```
  Sample sentence (implementation):
  ```ocaml
  false . X .+ [ .< X >. ]
                 ^^
  ```
- Derivation (2 occurrences):
  ```
  simple_expr: simple_expr DOTOP LBRACKET . separated_or_terminated_nonempty_list(SEMI,expr) RBRACKET
    separated_or_terminated_nonempty_list(SEMI,expr): . fun_expr
      fun_expr: . simple_expr
        simple_expr: . METAOCAML_BRACKET_OPEN seq_expr METAOCAML_BRACKET_CLOSE
  ```
  Sample sentence (implementation):
  ```ocaml
  X .+ [ .< X >. ]
         ^^
  ```
- Derivation (2 occurrences):
  ```
  simple_expr: simple_expr DOT mod_longident DOTOP LBRACE . separated_or_terminated_nonempty_list(SEMI,expr) RBRACE
    separated_or_terminated_nonempty_list(SEMI,expr): . fun_expr
      fun_expr: . simple_expr
        simple_expr: . METAOCAML_BRACKET_OPEN seq_expr METAOCAML_BRACKET_CLOSE
  ```
  Sample sentence (implementation):
  ```ocaml
  false . X .+ { .< X >. }
                 ^^
  ```
- Derivation (2 occurrences):
  ```
  simple_expr: simple_expr DOTOP LBRACE . separated_or_terminated_nonempty_list(SEMI,expr) RBRACE
    separated_or_terminated_nonempty_list(SEMI,expr): . fun_expr
      fun_expr: . simple_expr
        simple_expr: . METAOCAML_BRACKET_OPEN seq_expr METAOCAML_BRACKET_CLOSE
  ```
  Sample sentence (implementation):
  ```ocaml
  X .+ { .< X >. }
         ^^
  ```
- Derivation (2 occurrences):
  ```
  simple_expr: simple_expr DOT mod_longident DOTOP LPAREN . separated_or_terminated_nonempty_list(SEMI,expr) RPAREN
    separated_or_terminated_nonempty_list(SEMI,expr): . fun_expr
      fun_expr: . simple_expr
        simple_expr: . METAOCAML_BRACKET_OPEN seq_expr METAOCAML_BRACKET_CLOSE
  ```
  Sample sentence (implementation):
  ```ocaml
  false . X .+ ( .< X >. )
                 ^^
  ```
- Derivation (2 occurrences):
  ```
  simple_expr: simple_expr DOTOP LPAREN . separated_or_terminated_nonempty_list(SEMI,expr) RPAREN
    separated_or_terminated_nonempty_list(SEMI,expr): . fun_expr
      fun_expr: . simple_expr
        simple_expr: . METAOCAML_BRACKET_OPEN seq_expr METAOCAML_BRACKET_CLOSE
  ```
  Sample sentence (implementation):
  ```ocaml
  X .+ ( .< X >. )
         ^^
  ```
- Derivation (2 occurrences):
  ```
  simple_expr: simple_expr DOT LBRACKET . seq_expr RBRACKET
    seq_expr: . fun_seq_expr
      fun_seq_expr: . fun_expr
        fun_expr: . simple_expr
          simple_expr: . METAOCAML_BRACKET_OPEN seq_expr METAOCAML_BRACKET_CLOSE
  ```
  Sample sentence (implementation):
  ```ocaml
  false . [ .< X >. ]
            ^^
  ```
- Derivation (2 occurrences):
  ```
  simple_expr: simple_expr DOT LBRACE . seq_expr RBRACE
    seq_expr: . fun_seq_expr
      fun_seq_expr: . fun_expr
        fun_expr: . simple_expr
          simple_expr: . METAOCAML_BRACKET_OPEN seq_expr METAOCAML_BRACKET_CLOSE
  ```
  Sample sentence (implementation):
  ```ocaml
  false . { .< X >. }
            ^^
  ```
- Derivation (2 occurrences):
  ```
  simple_expr: simple_expr DOT LPAREN . seq_expr RPAREN
    seq_expr: . fun_seq_expr
      fun_seq_expr: . fun_expr
        fun_expr: . simple_expr
          simple_expr: . METAOCAML_BRACKET_OPEN seq_expr METAOCAML_BRACKET_CLOSE
  ```
  Sample sentence (implementation):
  ```ocaml
  false . ( .< X >. )
            ^^
  ```
- Derivation (1 occurrence):
  ```
  simple_expr: simple_expr HASHOP . simple_expr
    simple_expr: . METAOCAML_BRACKET_OPEN seq_expr METAOCAML_BRACKET_CLOSE
  ```
  Sample sentence (implementation):
  ```ocaml
  X ## .< X >.
       ^^
  ```
- Derivation (1 occurrence):
  ```
  simple_expr: BANG . simple_expr
    simple_expr: . METAOCAML_BRACKET_OPEN seq_expr METAOCAML_BRACKET_CLOSE
  ```
  Sample sentence (implementation):
  ```ocaml
  ! .< X >.
    ^^
  ```
- Derivation (1 occurrence):
  ```
  simple_expr: PREFIXOP . simple_expr
    simple_expr: . METAOCAML_BRACKET_OPEN seq_expr METAOCAML_BRACKET_CLOSE
  ```
  Sample sentence (implementation):
  ```ocaml
  !+ .< X >.
     ^^
  ```
- Derivation (1 occurrence):
  ```
  simple_expr: mod_longident DOT LBRACE . record_expr_content RBRACE
    record_expr_content: . simple_expr WITH separated_or_terminated_nonempty_list(SEMI,record_expr_field)
      simple_expr: . METAOCAML_BRACKET_OPEN seq_expr METAOCAML_BRACKET_CLOSE
  ```
  Sample sentence (implementation):
  ```ocaml
  X . { .< X >. with x }
        ^^
  ```
- Derivation (1 occurrence):
  ```
  simple_expr: LBRACE . record_expr_content RBRACE
    record_expr_content: . simple_expr WITH separated_or_terminated_nonempty_list(SEMI,record_expr_field)
      simple_expr: . METAOCAML_BRACKET_OPEN seq_expr METAOCAML_BRACKET_CLOSE
  ```
  Sample sentence (implementation):
  ```ocaml
  { .< X >. with x }
    ^^
  ```
- Derivation (1 occurrence):
  ```
  labeled_simple_expr: OPTLABEL . simple_expr
    simple_expr: . METAOCAML_BRACKET_OPEN seq_expr METAOCAML_BRACKET_CLOSE
  ```
  Sample sentence (implementation):
  ```ocaml
  X ?label: .< X >.
            ^^
  ```
- Derivation (1 occurrence):
  ```
  labeled_simple_expr: LABEL . simple_expr
    simple_expr: . METAOCAML_BRACKET_OPEN seq_expr METAOCAML_BRACKET_CLOSE
  ```
  Sample sentence (implementation):
  ```ocaml
  X ~label: .< X >.
            ^^
  ```
- Derivation (1 occurrence):
  ```
  fun_expr: simple_expr . reversed_nonempty_llist(labeled_simple_expr)
    reversed_nonempty_llist(labeled_simple_expr): . labeled_simple_expr
      labeled_simple_expr: . simple_expr
        simple_expr: . METAOCAML_BRACKET_OPEN seq_expr METAOCAML_BRACKET_CLOSE
  ```
  Sample sentence (implementation):
  ```ocaml
  'a' .< X >.
      ^^
  ```
- Derivation (1 occurrence):
  ```
  class_expr: class_simple_expr . reversed_nonempty_llist(labeled_simple_expr)
    reversed_nonempty_llist(labeled_simple_expr): . labeled_simple_expr
      labeled_simple_expr: . simple_expr
        simple_expr: . METAOCAML_BRACKET_OPEN seq_expr METAOCAML_BRACKET_CLOSE
  ```
  Sample sentence (implementation):
  ```ocaml
  class x = x .< X >.
              ^^
  ```
- Derivation (1 occurrence):
  ```
  fun_expr: name_tag . simple_expr
    simple_expr: . METAOCAML_BRACKET_OPEN seq_expr METAOCAML_BRACKET_CLOSE
  ```
  Sample sentence (implementation):
  ```ocaml
  ` x .< X >.
      ^^
  ```
- ...


### Item `pattern: EFFECT . pattern_gen COMMA simple_pattern` (in 1 error)

- Derivation (1 occurrence):
  ```
  pattern: EFFECT . pattern_gen COMMA simple_pattern
    pattern_gen: . simple_pattern
      simple_pattern: . simple_pattern_not_ident
        simple_pattern_not_ident: . signed_constant
          signed_constant: . constant
            constant: . FLOAT
  ```
  Sample sentence (implementation):
  ```ocaml
  function effect 4.0 , false -> .
                  ^^^
  ```

## Error: Syntax error: '|]' expected

### Item `fun_expr: . simple_expr` (in 2 errors)

- Derivation (1 occurrence):
  ```
  separated_or_terminated_nonempty_list(SEMI,expr): FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case) SEMI . separated_or_terminated_nonempty_list(SEMI,expr)
    separated_or_terminated_nonempty_list(SEMI,expr): . fun_expr
      fun_expr: . simple_expr
        simple_expr: . METAOCAML_BRACKET_OPEN seq_expr METAOCAML_BRACKET_CLOSE
  ```
  Sample sentence (implementation):
  ```ocaml
  [| function false -> . ; .< X >. |]
                           ^^
  ```
- Derivation (1 occurrence):
  ```
  separated_or_terminated_nonempty_list(SEMI,expr): fun_expr SEMI . separated_or_terminated_nonempty_list(SEMI,expr)
    separated_or_terminated_nonempty_list(SEMI,expr): . fun_expr
      fun_expr: . simple_expr
        simple_expr: . METAOCAML_BRACKET_OPEN seq_expr METAOCAML_BRACKET_CLOSE
  ```
  Sample sentence (implementation):
  ```ocaml
  [| X ; .< X >. |]
         ^^
  ```

## Error: Syntax error: ')' expected

### Item `simple_expr: . METAOCAML_BRACKET_OPEN seq_expr METAOCAML_BRACKET_CLOSE` (in 2 errors)

- Derivation (1 occurrence):
  ```
  simple_expr: BANG . simple_expr
    simple_expr: . METAOCAML_BRACKET_OPEN seq_expr METAOCAML_BRACKET_CLOSE
  ```
  Sample sentence (implementation):
  ```ocaml
  ( ! .< X >. )
      ^^
  ```
- Derivation (1 occurrence):
  ```
  simple_expr: PREFIXOP . simple_expr
    simple_expr: . METAOCAML_BRACKET_OPEN seq_expr METAOCAML_BRACKET_CLOSE
  ```
  Sample sentence (implementation):
  ```ocaml
  ( !+ .< X >. )
       ^^
  ```

## Error: Syntax error: operator expected.

### Item `fun_expr: . simple_expr` (in 1 error)

- Derivation (1 occurrence):
  ```
  simple_expr: mod_longident DOT LPAREN . seq_expr RPAREN
    seq_expr: . fun_seq_expr
      fun_seq_expr: . fun_expr
        fun_expr: . simple_expr
          simple_expr: . METAOCAML_BRACKET_OPEN seq_expr METAOCAML_BRACKET_CLOSE
  ```
  Sample sentence (implementation):
  ```ocaml
  X . ( .< X >. )
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
            simple_expr: . METAOCAML_BRACKET_OPEN seq_expr METAOCAML_BRACKET_CLOSE
  ```
  Sample sentence (implementation):
  ```ocaml
  include struct .< X >. end
                 ^^
  ```


# Comment errors

These are errors OCamlformat reports while processing a comment.
They usually mean that the comment was not preserved by the formatting process (e.g., it was dropped or moved).

## Error: comment dropped.

### Item `class_field: METHOD . method_ list(post_item_attribute)` (in 934 errors)

- Derivation (934 occurrences):
  ```
  class_field: METHOD . method_ list(post_item_attribute)
    method_: . BANG list(attribute) private_flag LIDENT COLON TYPE nonempty_list(mkrhs(LIDENT)) DOT core_type EQUAL seq_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  object method (* ... *) ! x : type x . {%ext|s|} = X end
                ^^^^^^^^^
  ```


### Item `method_: list(attribute) private_flag . LIDENT COLON TYPE nonempty_list(mkrhs(LIDENT)) DOT core_type EQUAL seq_expr` (in 934 errors)

- Derivation (934 occurrences):
  ```
  method_: list(attribute) private_flag . LIDENT COLON TYPE nonempty_list(mkrhs(LIDENT)) DOT core_type EQUAL seq_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  object method (* ... *) x : type x . {%ext|s|} = X end
                ^^^^^^^^^
  ```


### Item `class_field: VAL . value list(post_item_attribute)` (in 900 errors)

- Derivation (900 occurrences):
  ```
  class_field: VAL . value list(post_item_attribute)
    value: . BANG list(attribute) mutable_flag LIDENT type_constraint EQUAL seq_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  object val (* ... *) ! x : {%ext|s|} = X end
             ^^^^^^^^^
  ```


### Item `value: list(attribute) mutable_flag . LIDENT type_constraint EQUAL seq_expr` (in 900 errors)

- Derivation (900 occurrences):
  ```
  value: list(attribute) mutable_flag . LIDENT type_constraint EQUAL seq_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  object val (* ... *) x : {%ext|s|} = X end
             ^^^^^^^^^
  ```


### Item `module_type: . extension` (in 269 errors)

- Derivation (31 occurrences):
  ```
  signature_item: MODULE ext list(attribute) REC module_name COLON . module_type list(post_item_attribute) list(and_module_declaration)
    module_type: . extension
      extension: . QUOTED_STRING_EXPR
  ```
  Sample sentence (interface):
  ```ocaml
  module rec _ : (* ... *) {%ext|s|}
                 ^^^^^^^^^
  ```
- Derivation (28 occurrences):
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
- Derivation (24 occurrences):
  ```
  module_type: module_type MINUSGREATER . module_type
    module_type: . extension
      extension: . QUOTED_STRING_EXPR
  ```
  Sample sentence (interface):
  ```ocaml
  module X : X -> (* ... *) {%ext|s|}
                  ^^^^^^^^^
  ```
- Derivation (22 occurrences):
  ```
  list(and_module_declaration): AND list(attribute) module_name COLON . module_type list(post_item_attribute) list(and_module_declaration)
    module_type: . extension
      extension: . QUOTED_STRING_EXPR
  ```
  Sample sentence (interface):
  ```ocaml
  module rec X : {%ext|s|} and _ : (* ... *) {%ext|s|}
                                   ^^^^^^^^^
  ```
- Derivation (21 occurrences):
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
- Derivation (21 occurrences):
  ```
  module_type: FUNCTOR list(attribute) reversed_nonempty_llist(functor_arg) MINUSGREATER . module_type
    module_type: . extension
      extension: . QUOTED_STRING_EXPR
  ```
  Sample sentence (interface):
  ```ocaml
  module X : functor ( ) -> (* ... *) {%ext|s|}
                            ^^^^^^^^^
  ```
- Derivation (20 occurrences):
  ```
  module_binding_body: COLON . module_type EQUAL module_expr
    module_type: . extension
      extension: . QUOTED_STRING_EXPR
  ```
  Sample sentence (implementation):
  ```ocaml
  module X : (* ... *) {%ext|s|} = {%ext|s|}
             ^^^^^^^^^
  ```
- Derivation (19 occurrences):
  ```
  functor_arg: LPAREN module_name COLON . module_type RPAREN
    module_type: . extension
      extension: . QUOTED_STRING_EXPR
  ```
  Sample sentence (implementation):
  ```ocaml
  module X ( X : (* ... *) {%ext|s|} ) = {%ext|s|}
                 ^^^^^^^^^
  ```
- Derivation (12 occurrences):
  ```
  module_type: LPAREN . module_type RPAREN
    module_type: . extension
      extension: . QUOTED_STRING_EXPR
  ```
  Sample sentence (interface):
  ```ocaml
  include ( (* ... *) {%ext|s|} )
            ^^^^^^^^^
  ```
- Derivation (12 occurrences):
  ```
  module_declaration_body: COLON . module_type
    module_type: . extension
      extension: . QUOTED_STRING_EXPR
  ```
  Sample sentence (interface):
  ```ocaml
  module _ : (* ... *) {%ext|s|}
             ^^^^^^^^^
  ```
- Derivation (11 occurrences):
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
- Derivation (7 occurrences):
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
- Derivation (7 occurrences):
  ```
  signature_item: INCLUDE ext list(attribute) . module_type list(post_item_attribute)
    module_type: . extension
      extension: . QUOTED_STRING_EXPR
  ```
  Sample sentence (interface):
  ```ocaml
  {%%ext|s|} include (* ... *) {%ext|s|}
                     ^^^^^^^^^
  ```
- Derivation (5 occurrences):
  ```
  module_type_subst: MODULE TYPE ext list(attribute) ident COLONEQUAL . module_type list(post_item_attribute)
    module_type: . extension
      extension: . QUOTED_STRING_EXPR
  ```
  Sample sentence (interface):
  ```ocaml
  {%%ext|s|} module type x := (* ... *) {%ext|s|}
                              ^^^^^^^^^
  ```
- Derivation (2 occurrences):
  ```
  option(preceded(EQUAL,module_type)): EQUAL . module_type
    module_type: . extension
      extension: . QUOTED_STRING_EXPR
  ```
  Sample sentence (interface):
  ```ocaml
  module type x = (* ... *) {%ext|s|}
                  ^^^^^^^^^
  ```
- Derivation (1 occurrence):
  ```
  module_type: FUNCTOR list(attribute) reversed_nonempty_llist(functor_arg) MINUSGREATER . module_type
    module_type: . module_type MINUSGREATER module_type
      module_type: . module_type WITH reversed_separated_nonempty_llist(AND,with_constraint)
        module_type: . extension
          extension: . QUOTED_STRING_EXPR
  ```
  Sample sentence (interface):
  ```ocaml
  include functor ( ) -> (* ... *) {%ext|s|} with module X := X -> {%ext|s|}
                         ^^^^^^^^^
  ```
- Derivation (1 occurrence):
  ```
  module_type: module_type MINUSGREATER . module_type
    module_type: . module_type MINUSGREATER module_type
      module_type: . extension
        extension: . QUOTED_STRING_EXPR
  ```
  Sample sentence (interface):
  ```ocaml
  module rec X : {%ext|s|} -> (* ... *) {%ext|s|} -> {%ext|s|} and X : {%ext|s|}
                              ^^^^^^^^^
  ```
- Derivation (1 occurrence):
  ```
  module_type: reversed_nonempty_llist(functor_arg) MINUSGREATER . module_type
    module_type: . module_type MINUSGREATER module_type
      module_type: . extension
        extension: . QUOTED_STRING_EXPR
  ```
  Sample sentence (interface):
  ```ocaml
  module rec X : ( ) -> (* ... *) {%ext|s|} -> {%ext|s|} and X : {%ext|s|}
                        ^^^^^^^^^
  ```
- Derivation (1 occurrence):
  ```
  module_type: FUNCTOR list(attribute) reversed_nonempty_llist(functor_arg) MINUSGREATER . module_type
    module_type: . module_type MINUSGREATER module_type
      module_type: . extension
        extension: . QUOTED_STRING_EXPR
  ```
  Sample sentence (interface):
  ```ocaml
  module rec X : functor ( ) -> (* ... *) {%ext|s|} -> {%ext|s|} and X : {%ext|s|}
                                ^^^^^^^^^
  ```
- Derivation (1 occurrence):
  ```
  with_constraint: MODULE TYPE mty_longident COLONEQUAL . module_type
    module_type: . module_type attribute
      module_type: . extension
        extension: . QUOTED_STRING_EXPR
  ```
  Sample sentence (interface):
  ```ocaml
  include {%ext|s|} with module type X := (* ... *) {%ext|s|} [@ and ]
                                          ^^^^^^^^^
  ```
- Derivation (1 occurrence):
  ```
  with_constraint: MODULE TYPE mty_longident EQUAL . module_type
    module_type: . module_type attribute
      module_type: . extension
        extension: . QUOTED_STRING_EXPR
  ```
  Sample sentence (interface):
  ```ocaml
  include {%ext|s|} with module type X = (* ... *) {%ext|s|} [@ and ]
                                         ^^^^^^^^^
  ```
- ...


### Item `simple_expr: LBRACELESS separated_or_terminated_nonempty_list(SEMI,object_expr_field) . GREATERRBRACE` (in 134 errors)

- Derivation (134 occurrences):
  ```
  simple_expr: LBRACELESS separated_or_terminated_nonempty_list(SEMI,object_expr_field) . GREATERRBRACE
  ```
  Sample sentence (implementation):
  ```ocaml
  {< x (* ... *) >}
       ^^^^^^^^^
  ```


### Item `simple_expr: mod_longident DOT LBRACELESS separated_or_terminated_nonempty_list(SEMI,object_expr_field) . GREATERRBRACE` (in 134 errors)

- Derivation (134 occurrences):
  ```
  simple_expr: mod_longident DOT LBRACELESS separated_or_terminated_nonempty_list(SEMI,object_expr_field) . GREATERRBRACE
  ```
  Sample sentence (implementation):
  ```ocaml
  X . {< x (* ... *) >}
           ^^^^^^^^^
  ```


### Item `class_expr: . class_simple_expr` (in 68 errors)

- Derivation (65 occurrences):
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


### Item `class_fun_binding: . COLON class_type EQUAL class_expr` (in 56 errors)

- Derivation (48 occurrences):
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


### Item `module_type: . LPAREN module_type RPAREN` (in 15 errors)

- Derivation (4 occurrences):
  ```
  signature_item: INCLUDE ext list(attribute) . module_type list(post_item_attribute)
    module_type: . LPAREN module_type RPAREN
  ```
  Sample sentence (interface):
  ```ocaml
  include (* ... *) ( {%ext|s|} )
          ^^^^^^^^^
  ```
- Derivation (1 occurrence):
  ```
  with_constraint: MODULE TYPE mty_longident COLONEQUAL . module_type
    module_type: . LPAREN module_type RPAREN
  ```
  Sample sentence (interface):
  ```ocaml
  include {%ext|s|} with module type X := (* ... *) ( {%ext|s|} )
                                          ^^^^^^^^^
  ```
- Derivation (1 occurrence):
  ```
  with_constraint: MODULE TYPE mty_longident EQUAL . module_type
    module_type: . LPAREN module_type RPAREN
  ```
  Sample sentence (interface):
  ```ocaml
  include {%ext|s|} with module type X = (* ... *) ( {%ext|s|} )
                                         ^^^^^^^^^
  ```
- Derivation (1 occurrence):
  ```
  signature_item: MODULE ext list(attribute) REC module_name COLON . module_type list(post_item_attribute) list(and_module_declaration)
    module_type: . LPAREN module_type RPAREN
  ```
  Sample sentence (interface):
  ```ocaml
  module rec X : (* ... *) ( {%ext|s|} )
                 ^^^^^^^^^
  ```
- Derivation (1 occurrence):
  ```
  paren_module_expr: LPAREN module_expr COLON . module_type RPAREN
    module_type: . LPAREN module_type RPAREN
  ```
  Sample sentence (implementation):
  ```ocaml
  include ( {%ext|s|} : (* ... *) ( {%ext|s|} ) )
                        ^^^^^^^^^
  ```
- Derivation (1 occurrence):
  ```
  option(preceded(EQUAL,module_type)): EQUAL . module_type
    module_type: . LPAREN module_type RPAREN
  ```
  Sample sentence (interface):
  ```ocaml
  module type x = (* ... *) ( {%ext|s|} )
                  ^^^^^^^^^
  ```
- Derivation (1 occurrence):
  ```
  module_type_subst: MODULE TYPE ext list(attribute) ident COLONEQUAL . module_type list(post_item_attribute)
    module_type: . LPAREN module_type RPAREN
  ```
  Sample sentence (interface):
  ```ocaml
  module type x := (* ... *) ( {%ext|s|} )
                   ^^^^^^^^^
  ```
- Derivation (1 occurrence):
  ```
  module_type: LPAREN . module_type RPAREN
    module_type: . LPAREN module_type RPAREN
  ```
  Sample sentence (interface):
  ```ocaml
  include ( (* ... *) ( {%ext|s|} ) )
            ^^^^^^^^^
  ```
- Derivation (1 occurrence):
  ```
  module_type: FUNCTOR list(attribute) reversed_nonempty_llist(functor_arg) MINUSGREATER . module_type
    module_type: . LPAREN module_type RPAREN
  ```
  Sample sentence (interface):
  ```ocaml
  include functor ( ) -> (* ... *) ( {%ext|s|} )
                         ^^^^^^^^^
  ```
- Derivation (1 occurrence):
  ```
  module_declaration_body: COLON . module_type
    module_type: . LPAREN module_type RPAREN
  ```
  Sample sentence (interface):
  ```ocaml
  module X : (* ... *) ( {%ext|s|} )
             ^^^^^^^^^
  ```
- Derivation (1 occurrence):
  ```
  module_binding_body: COLON . module_type EQUAL module_expr
    module_type: . LPAREN module_type RPAREN
  ```
  Sample sentence (implementation):
  ```ocaml
  module X : (* ... *) ( {%ext|s|} ) = {%ext|s|}
             ^^^^^^^^^
  ```
- Derivation (1 occurrence):
  ```
  list(and_module_declaration): AND list(attribute) module_name COLON . module_type list(post_item_attribute) list(and_module_declaration)
    module_type: . LPAREN module_type RPAREN
  ```
  Sample sentence (interface):
  ```ocaml
  module rec X : {%ext|s|} and X : (* ... *) ( {%ext|s|} )
                                   ^^^^^^^^^
  ```


### Item `seq_expr: . fun_seq_expr` (in 10 errors)

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
      fun_seq_expr: . fun_expr
        fun_expr: . subtractive FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
          subtractive: . MINUS
  ```
  Sample sentence (implementation):
  ```ocaml
  ( (* ... *) - function false -> X )
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
- Derivation (1 occurrence):
  ```
  value: BANG list(attribute) mutable_flag LIDENT EQUAL . seq_expr
    seq_expr: . fun_seq_expr
      fun_seq_expr: . fun_expr
        fun_expr: . simple_expr
          simple_expr: . LPAREN seq_expr type_constraint RPAREN
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
          simple_expr: . LPAREN seq_expr type_constraint RPAREN
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
        fun_expr: . additive fun_expr
          additive: . PLUS
  ```
  Sample sentence (implementation):
  ```ocaml
  ( (* ... *) + X ; )
    ^^^^^^^^^
  ```
- Derivation (1 occurrence):
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


### Item `module_type: FUNCTOR list(attribute) reversed_nonempty_llist(functor_arg) MINUSGREATER . module_type` (in 6 errors)

- Derivation (2 occurrences):
  ```
  module_type: FUNCTOR list(attribute) reversed_nonempty_llist(functor_arg) MINUSGREATER . module_type
    module_type: . FUNCTOR list(attribute) reversed_nonempty_llist(functor_arg) MINUSGREATER module_type
  ```
  Sample sentence (interface):
  ```ocaml
  include functor ( ) -> (* ... *) functor ( ) -> {%ext|s|}
                         ^^^^^^^^^
  ```
- Derivation (2 occurrences):
  ```
  module_type: FUNCTOR list(attribute) reversed_nonempty_llist(functor_arg) MINUSGREATER . module_type
    module_type: . reversed_nonempty_llist(functor_arg) MINUSGREATER module_type
      reversed_nonempty_llist(functor_arg): . functor_arg
        functor_arg: . LPAREN RPAREN
  ```
  Sample sentence (interface):
  ```ocaml
  include functor ( ) -> (* ... *) ( ) -> {%ext|s|}
                         ^^^^^^^^^
  ```
- Derivation (1 occurrence):
  ```
  module_type: FUNCTOR list(attribute) reversed_nonempty_llist(functor_arg) MINUSGREATER . module_type
    module_type: . module_type MINUSGREATER module_type
      module_type: . mty_longident
        mty_longident: . mk_longident(mod_ext_longident,ident)
          mk_longident(mod_ext_longident,ident): . ident
            ident: . UIDENT
  ```
  Sample sentence (interface):
  ```ocaml
  include functor ( ) -> (* ... *) X -> {%ext|s|}
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
  include functor ( ) -> (* ... *) ( X : {%ext|s|} ) -> {%ext|s|}
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


### Item `module_type: LPAREN module_type . RPAREN` (in 4 errors)

- Derivation (4 occurrences):
  ```
  module_type: LPAREN module_type . RPAREN
  ```
  Sample sentence (interface):
  ```ocaml
  include ( [% and ] (* ... *) )
                     ^^^^^^^^^
  ```


### Item `possibly_poly(core_type): . reversed_nonempty_llist(typevar) DOT core_type` (in 4 errors)

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


### Item `functor_arg: . LPAREN RPAREN` (in 2 errors)

- Derivation (1 occurrence):
  ```
  module_type: module_type MINUSGREATER . module_type
    module_type: . reversed_nonempty_llist(functor_arg) MINUSGREATER module_type
      reversed_nonempty_llist(functor_arg): . functor_arg
        functor_arg: . LPAREN RPAREN
  ```
  Sample sentence (interface):
  ```ocaml
  module rec X : {%ext|s|} -> (* ... *) ( ) -> {%ext|s|} and X : {%ext|s|}
                              ^^^^^^^^^
  ```
- Derivation (1 occurrence):
  ```
  module_type: reversed_nonempty_llist(functor_arg) MINUSGREATER . module_type
    module_type: . reversed_nonempty_llist(functor_arg) MINUSGREATER module_type
      reversed_nonempty_llist(functor_arg): . functor_arg
        functor_arg: . LPAREN RPAREN
  ```
  Sample sentence (interface):
  ```ocaml
  module rec X : ( ) -> (* ... *) ( ) -> {%ext|s|} and X : {%ext|s|}
                        ^^^^^^^^^
  ```


### Item `module_type: . FUNCTOR list(attribute) reversed_nonempty_llist(functor_arg) MINUSGREATER module_type` (in 2 errors)

- Derivation (1 occurrence):
  ```
  module_type: module_type MINUSGREATER . module_type
    module_type: . FUNCTOR list(attribute) reversed_nonempty_llist(functor_arg) MINUSGREATER module_type
  ```
  Sample sentence (interface):
  ```ocaml
  module rec X : {%ext|s|} -> (* ... *) functor ( ) -> {%ext|s|} and X : {%ext|s|}
                              ^^^^^^^^^
  ```
- Derivation (1 occurrence):
  ```
  module_type: reversed_nonempty_llist(functor_arg) MINUSGREATER . module_type
    module_type: . FUNCTOR list(attribute) reversed_nonempty_llist(functor_arg) MINUSGREATER module_type
  ```
  Sample sentence (interface):
  ```ocaml
  module rec X : ( ) -> (* ... *) functor ( ) -> {%ext|s|} and X : {%ext|s|}
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

### Item `module_type: . extension` (in 796 errors)

- Derivation (150 occurrences):
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
- Derivation (133 occurrences):
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
- Derivation (118 occurrences):
  ```
  paren_module_expr: LPAREN VAL list(attribute) fun_expr COLONGREATER . module_type RPAREN
    module_type: . extension
      extension: . QUOTED_STRING_EXPR
  ```
  Sample sentence (implementation):
  ```ocaml
  include ( val X :> {%ext|s|} )
                     ^^^^^^^^^
  ```
- Derivation (93 occurrences):
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
- Derivation (86 occurrences):
  ```
  delimited_type_supporting_local_open: LPAREN MODULE ext list(attribute) . module_type RPAREN
    module_type: . extension
      extension: . QUOTED_STRING_EXPR
  ```
  Sample sentence (interface):
  ```ocaml
  exception false : ( module {%ext|s|} )
                             ^^^^^^^^^
  ```
- Derivation (27 occurrences):
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
- Derivation (27 occurrences):
  ```
  paren_module_expr: LPAREN VAL list(attribute) fun_expr COLON module_type COLONGREATER . module_type RPAREN
    module_type: . extension
      extension: . QUOTED_STRING_EXPR
  ```
  Sample sentence (implementation):
  ```ocaml
  include ( val X : X :> {%ext|s|} )
                         ^^^^^^^^^
  ```
- Derivation (26 occurrences):
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
- Derivation (23 occurrences):
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
- Derivation (23 occurrences):
  ```
  paren_module_expr: LPAREN VAL list(attribute) fun_expr COLON . module_type RPAREN
    module_type: . extension
      extension: . QUOTED_STRING_EXPR
  ```
  Sample sentence (implementation):
  ```ocaml
  include ( val X : {%ext|s|} )
                    ^^^^^^^^^
  ```
- Derivation (10 occurrences):
  ```
  module_type: LPAREN . module_type RPAREN
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
    module_type: . module_type WITH reversed_separated_nonempty_llist(AND,with_constraint)
      module_type: . extension
        extension: . QUOTED_STRING_EXPR
  ```
  Sample sentence (implementation):
  ```ocaml
  function ( module X : {%ext|s|} with module X := X ) -> .
                        ^^^^^^^^^
  ```
- Derivation (1 occurrence):
  ```
  simple_expr: mod_longident DOT LPAREN MODULE ext list(attribute) module_expr COLON . module_type RPAREN
    module_type: . module_type WITH reversed_separated_nonempty_llist(AND,with_constraint)
      module_type: . extension
        extension: . QUOTED_STRING_EXPR
  ```
  Sample sentence (implementation):
  ```ocaml
  X . ( module {%ext|s|} : {%ext|s|} with module X := X )
                           ^^^^^^^^^
  ```
- Derivation (1 occurrence):
  ```
  simple_expr: LPAREN MODULE ext list(attribute) module_expr COLON . module_type RPAREN
    module_type: . module_type WITH reversed_separated_nonempty_llist(AND,with_constraint)
      module_type: . extension
        extension: . QUOTED_STRING_EXPR
  ```
  Sample sentence (implementation):
  ```ocaml
  ( module {%ext|s|} : {%ext|s|} with module X := X )
                       ^^^^^^^^^
  ```
- Derivation (1 occurrence):
  ```
  paren_module_expr: LPAREN VAL list(attribute) FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case) COLONGREATER . module_type RPAREN
    module_type: . module_type WITH reversed_separated_nonempty_llist(AND,with_constraint)
      module_type: . extension
        extension: . QUOTED_STRING_EXPR
  ```
  Sample sentence (implementation):
  ```ocaml
  include ( val function false -> X :> {%ext|s|} with module X := X )
                                       ^^^^^^^^^
  ```
- Derivation (1 occurrence):
  ```
  paren_module_expr: LPAREN VAL list(attribute) fun_expr COLONGREATER . module_type RPAREN
    module_type: . module_type WITH reversed_separated_nonempty_llist(AND,with_constraint)
      module_type: . extension
        extension: . QUOTED_STRING_EXPR
  ```
  Sample sentence (implementation):
  ```ocaml
  include ( val X :> {%ext|s|} with module X := X )
                     ^^^^^^^^^
  ```
- Derivation (1 occurrence):
  ```
  paren_module_expr: LPAREN VAL list(attribute) FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case) COLON module_type COLONGREATER . module_type RPAREN
    module_type: . module_type WITH reversed_separated_nonempty_llist(AND,with_constraint)
      module_type: . extension
        extension: . QUOTED_STRING_EXPR
  ```
  Sample sentence (implementation):
  ```ocaml
  include ( val function false -> X : {%ext|s|} :> {%ext|s|} with module X := X )
                                                   ^^^^^^^^^
  ```
- Derivation (1 occurrence):
  ```
  paren_module_expr: LPAREN VAL list(attribute) fun_expr COLON module_type COLONGREATER . module_type RPAREN
    module_type: . module_type WITH reversed_separated_nonempty_llist(AND,with_constraint)
      module_type: . extension
        extension: . QUOTED_STRING_EXPR
  ```
  Sample sentence (implementation):
  ```ocaml
  include ( val X : {%ext|s|} :> {%ext|s|} with module X := X )
                                 ^^^^^^^^^
  ```
- Derivation (1 occurrence):
  ```
  paren_module_expr: LPAREN VAL list(attribute) FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case) COLON . module_type RPAREN
    module_type: . module_type WITH reversed_separated_nonempty_llist(AND,with_constraint)
      module_type: . extension
        extension: . QUOTED_STRING_EXPR
  ```
  Sample sentence (implementation):
  ```ocaml
  include ( val function false -> X : {%ext|s|} with module X := X )
                                      ^^^^^^^^^
  ```
- ...


### Item `module_type: . reversed_nonempty_llist(functor_arg) MINUSGREATER module_type` (in 20 errors)

- Derivation (1 occurrence):
  ```
  simple_pattern_not_ident: LPAREN MODULE ext list(attribute) module_name COLON . module_type RPAREN
    module_type: . reversed_nonempty_llist(functor_arg) MINUSGREATER module_type
      reversed_nonempty_llist(functor_arg): . functor_arg
        functor_arg: . LPAREN module_name COLON module_type RPAREN
  ```
  Sample sentence (implementation):
  ```ocaml
  function ( module X : ( X : {%ext|s|} ) -> {%ext|s|} ) -> .
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
  X . ( module {%ext|s|} : ( X : {%ext|s|} ) -> {%ext|s|} )
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
  ( module {%ext|s|} : ( X : {%ext|s|} ) -> {%ext|s|} )
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
  include ( val function false -> X :> ( X : {%ext|s|} ) -> {%ext|s|} )
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
  include ( val X :> ( X : {%ext|s|} ) -> {%ext|s|} )
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
  include ( val function false -> X : {%ext|s|} :> ( X : {%ext|s|} ) -> {%ext|s|} )
                                                   ^
  ```
- Derivation (1 occurrence):
  ```
  paren_module_expr: LPAREN VAL list(attribute) fun_expr COLON module_type COLONGREATER . module_type RPAREN
    module_type: . reversed_nonempty_llist(functor_arg) MINUSGREATER module_type
      reversed_nonempty_llist(functor_arg): . functor_arg
        functor_arg: . LPAREN module_name COLON module_type RPAREN
  ```
  Sample sentence (implementation):
  ```ocaml
  include ( val X : {%ext|s|} :> ( X : {%ext|s|} ) -> {%ext|s|} )
                                 ^
  ```
- Derivation (1 occurrence):
  ```
  paren_module_expr: LPAREN VAL list(attribute) FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case) COLON . module_type RPAREN
    module_type: . reversed_nonempty_llist(functor_arg) MINUSGREATER module_type
      reversed_nonempty_llist(functor_arg): . functor_arg
        functor_arg: . LPAREN module_name COLON module_type RPAREN
  ```
  Sample sentence (implementation):
  ```ocaml
  include ( val function false -> X : ( X : {%ext|s|} ) -> {%ext|s|} )
                                      ^
  ```
- Derivation (1 occurrence):
  ```
  paren_module_expr: LPAREN VAL list(attribute) fun_expr COLON . module_type RPAREN
    module_type: . reversed_nonempty_llist(functor_arg) MINUSGREATER module_type
      reversed_nonempty_llist(functor_arg): . functor_arg
        functor_arg: . LPAREN module_name COLON module_type RPAREN
  ```
  Sample sentence (implementation):
  ```ocaml
  include ( val X : ( X : {%ext|s|} ) -> {%ext|s|} )
                    ^
  ```
- Derivation (1 occurrence):
  ```
  delimited_type_supporting_local_open: LPAREN MODULE ext list(attribute) . module_type RPAREN
    module_type: . reversed_nonempty_llist(functor_arg) MINUSGREATER module_type
      reversed_nonempty_llist(functor_arg): . functor_arg
        functor_arg: . LPAREN module_name COLON module_type RPAREN
  ```
  Sample sentence (interface):
  ```ocaml
  exception false : ( module ( X : {%ext|s|} ) -> {%ext|s|} )
                             ^
  ```
- Derivation (1 occurrence):
  ```
  simple_pattern_not_ident: LPAREN MODULE ext list(attribute) module_name COLON . module_type RPAREN
    module_type: . reversed_nonempty_llist(functor_arg) MINUSGREATER module_type
      reversed_nonempty_llist(functor_arg): . functor_arg
        functor_arg: . LPAREN RPAREN
  ```
  Sample sentence (implementation):
  ```ocaml
  function ( module X : ( ) -> {%ext|s|} ) -> .
                        ^
  ```
- Derivation (1 occurrence):
  ```
  simple_expr: mod_longident DOT LPAREN MODULE ext list(attribute) module_expr COLON . module_type RPAREN
    module_type: . reversed_nonempty_llist(functor_arg) MINUSGREATER module_type
      reversed_nonempty_llist(functor_arg): . functor_arg
        functor_arg: . LPAREN RPAREN
  ```
  Sample sentence (implementation):
  ```ocaml
  X . ( module {%ext|s|} : ( ) -> {%ext|s|} )
                           ^
  ```
- Derivation (1 occurrence):
  ```
  simple_expr: LPAREN MODULE ext list(attribute) module_expr COLON . module_type RPAREN
    module_type: . reversed_nonempty_llist(functor_arg) MINUSGREATER module_type
      reversed_nonempty_llist(functor_arg): . functor_arg
        functor_arg: . LPAREN RPAREN
  ```
  Sample sentence (implementation):
  ```ocaml
  ( module {%ext|s|} : ( ) -> {%ext|s|} )
                       ^
  ```
- Derivation (1 occurrence):
  ```
  paren_module_expr: LPAREN VAL list(attribute) FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case) COLONGREATER . module_type RPAREN
    module_type: . reversed_nonempty_llist(functor_arg) MINUSGREATER module_type
      reversed_nonempty_llist(functor_arg): . functor_arg
        functor_arg: . LPAREN RPAREN
  ```
  Sample sentence (implementation):
  ```ocaml
  include ( val function false -> X :> ( ) -> {%ext|s|} )
                                       ^
  ```
- Derivation (1 occurrence):
  ```
  paren_module_expr: LPAREN VAL list(attribute) fun_expr COLONGREATER . module_type RPAREN
    module_type: . reversed_nonempty_llist(functor_arg) MINUSGREATER module_type
      reversed_nonempty_llist(functor_arg): . functor_arg
        functor_arg: . LPAREN RPAREN
  ```
  Sample sentence (implementation):
  ```ocaml
  include ( val X :> ( ) -> {%ext|s|} )
                     ^
  ```
- Derivation (1 occurrence):
  ```
  paren_module_expr: LPAREN VAL list(attribute) FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case) COLON module_type COLONGREATER . module_type RPAREN
    module_type: . reversed_nonempty_llist(functor_arg) MINUSGREATER module_type
      reversed_nonempty_llist(functor_arg): . functor_arg
        functor_arg: . LPAREN RPAREN
  ```
  Sample sentence (implementation):
  ```ocaml
  include ( val function false -> X : {%ext|s|} :> ( ) -> {%ext|s|} )
                                                   ^
  ```
- Derivation (1 occurrence):
  ```
  paren_module_expr: LPAREN VAL list(attribute) fun_expr COLON module_type COLONGREATER . module_type RPAREN
    module_type: . reversed_nonempty_llist(functor_arg) MINUSGREATER module_type
      reversed_nonempty_llist(functor_arg): . functor_arg
        functor_arg: . LPAREN RPAREN
  ```
  Sample sentence (implementation):
  ```ocaml
  include ( val X : {%ext|s|} :> ( ) -> {%ext|s|} )
                                 ^
  ```
- Derivation (1 occurrence):
  ```
  paren_module_expr: LPAREN VAL list(attribute) FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case) COLON . module_type RPAREN
    module_type: . reversed_nonempty_llist(functor_arg) MINUSGREATER module_type
      reversed_nonempty_llist(functor_arg): . functor_arg
        functor_arg: . LPAREN RPAREN
  ```
  Sample sentence (implementation):
  ```ocaml
  include ( val function false -> X : ( ) -> {%ext|s|} )
                                      ^
  ```
- Derivation (1 occurrence):
  ```
  paren_module_expr: LPAREN VAL list(attribute) fun_expr COLON . module_type RPAREN
    module_type: . reversed_nonempty_llist(functor_arg) MINUSGREATER module_type
      reversed_nonempty_llist(functor_arg): . functor_arg
        functor_arg: . LPAREN RPAREN
  ```
  Sample sentence (implementation):
  ```ocaml
  include ( val X : ( ) -> {%ext|s|} )
                    ^
  ```
- Derivation (1 occurrence):
  ```
  delimited_type_supporting_local_open: LPAREN MODULE ext list(attribute) . module_type RPAREN
    module_type: . reversed_nonempty_llist(functor_arg) MINUSGREATER module_type
      reversed_nonempty_llist(functor_arg): . functor_arg
        functor_arg: . LPAREN RPAREN
  ```
  Sample sentence (interface):
  ```ocaml
  exception false : ( module ( ) -> {%ext|s|} )
                             ^
  ```


### Item `module_type: . SIG list(attribute) signature END` (in 10 errors)

- Derivation (1 occurrence):
  ```
  simple_pattern_not_ident: LPAREN MODULE ext list(attribute) module_name COLON . module_type RPAREN
    module_type: . SIG list(attribute) signature END
  ```
  Sample sentence (implementation):
  ```ocaml
  function ( module X : sig end ) -> .
                        ^^^
  ```
- Derivation (1 occurrence):
  ```
  simple_expr: mod_longident DOT LPAREN MODULE ext list(attribute) module_expr COLON . module_type RPAREN
    module_type: . SIG list(attribute) signature END
  ```
  Sample sentence (implementation):
  ```ocaml
  X . ( module {%ext|s|} : sig end )
                           ^^^
  ```
- Derivation (1 occurrence):
  ```
  simple_expr: LPAREN MODULE ext list(attribute) module_expr COLON . module_type RPAREN
    module_type: . SIG list(attribute) signature END
  ```
  Sample sentence (implementation):
  ```ocaml
  ( module {%ext|s|} : sig end )
                       ^^^
  ```
- Derivation (1 occurrence):
  ```
  paren_module_expr: LPAREN VAL list(attribute) FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case) COLONGREATER . module_type RPAREN
    module_type: . SIG list(attribute) signature END
  ```
  Sample sentence (implementation):
  ```ocaml
  include ( val function false -> X :> sig end )
                                       ^^^
  ```
- Derivation (1 occurrence):
  ```
  paren_module_expr: LPAREN VAL list(attribute) fun_expr COLONGREATER . module_type RPAREN
    module_type: . SIG list(attribute) signature END
  ```
  Sample sentence (implementation):
  ```ocaml
  include ( val X :> sig end )
                     ^^^
  ```
- Derivation (1 occurrence):
  ```
  paren_module_expr: LPAREN VAL list(attribute) FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case) COLON module_type COLONGREATER . module_type RPAREN
    module_type: . SIG list(attribute) signature END
  ```
  Sample sentence (implementation):
  ```ocaml
  include ( val function false -> X : {%ext|s|} :> sig end )
                                                   ^^^
  ```
- Derivation (1 occurrence):
  ```
  paren_module_expr: LPAREN VAL list(attribute) fun_expr COLON module_type COLONGREATER . module_type RPAREN
    module_type: . SIG list(attribute) signature END
  ```
  Sample sentence (implementation):
  ```ocaml
  include ( val X : {%ext|s|} :> sig end )
                                 ^^^
  ```
- Derivation (1 occurrence):
  ```
  paren_module_expr: LPAREN VAL list(attribute) FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case) COLON . module_type RPAREN
    module_type: . SIG list(attribute) signature END
  ```
  Sample sentence (implementation):
  ```ocaml
  include ( val function false -> X : sig end )
                                      ^^^
  ```
- Derivation (1 occurrence):
  ```
  paren_module_expr: LPAREN VAL list(attribute) fun_expr COLON . module_type RPAREN
    module_type: . SIG list(attribute) signature END
  ```
  Sample sentence (implementation):
  ```ocaml
  include ( val X : sig end )
                    ^^^
  ```
- Derivation (1 occurrence):
  ```
  delimited_type_supporting_local_open: LPAREN MODULE ext list(attribute) . module_type RPAREN
    module_type: . SIG list(attribute) signature END
  ```
  Sample sentence (interface):
  ```ocaml
  exception false : ( module sig end )
                             ^^^
  ```


### Item `module_type: . FUNCTOR list(attribute) reversed_nonempty_llist(functor_arg) MINUSGREATER module_type` (in 10 errors)

- Derivation (1 occurrence):
  ```
  simple_pattern_not_ident: LPAREN MODULE ext list(attribute) module_name COLON . module_type RPAREN
    module_type: . FUNCTOR list(attribute) reversed_nonempty_llist(functor_arg) MINUSGREATER module_type
  ```
  Sample sentence (implementation):
  ```ocaml
  function ( module X : functor ( ) -> {%ext|s|} ) -> .
                        ^^^^^^^
  ```
- Derivation (1 occurrence):
  ```
  simple_expr: mod_longident DOT LPAREN MODULE ext list(attribute) module_expr COLON . module_type RPAREN
    module_type: . FUNCTOR list(attribute) reversed_nonempty_llist(functor_arg) MINUSGREATER module_type
  ```
  Sample sentence (implementation):
  ```ocaml
  X . ( module {%ext|s|} : functor ( ) -> {%ext|s|} )
                           ^^^^^^^
  ```
- Derivation (1 occurrence):
  ```
  simple_expr: LPAREN MODULE ext list(attribute) module_expr COLON . module_type RPAREN
    module_type: . FUNCTOR list(attribute) reversed_nonempty_llist(functor_arg) MINUSGREATER module_type
  ```
  Sample sentence (implementation):
  ```ocaml
  ( module {%ext|s|} : functor ( ) -> {%ext|s|} )
                       ^^^^^^^
  ```
- Derivation (1 occurrence):
  ```
  paren_module_expr: LPAREN VAL list(attribute) FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case) COLONGREATER . module_type RPAREN
    module_type: . FUNCTOR list(attribute) reversed_nonempty_llist(functor_arg) MINUSGREATER module_type
  ```
  Sample sentence (implementation):
  ```ocaml
  include ( val function false -> X :> functor ( ) -> {%ext|s|} )
                                       ^^^^^^^
  ```
- Derivation (1 occurrence):
  ```
  paren_module_expr: LPAREN VAL list(attribute) fun_expr COLONGREATER . module_type RPAREN
    module_type: . FUNCTOR list(attribute) reversed_nonempty_llist(functor_arg) MINUSGREATER module_type
  ```
  Sample sentence (implementation):
  ```ocaml
  include ( val X :> functor ( ) -> {%ext|s|} )
                     ^^^^^^^
  ```
- Derivation (1 occurrence):
  ```
  paren_module_expr: LPAREN VAL list(attribute) FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case) COLON module_type COLONGREATER . module_type RPAREN
    module_type: . FUNCTOR list(attribute) reversed_nonempty_llist(functor_arg) MINUSGREATER module_type
  ```
  Sample sentence (implementation):
  ```ocaml
  include ( val function false -> X : {%ext|s|} :> functor ( ) -> {%ext|s|} )
                                                   ^^^^^^^
  ```
- Derivation (1 occurrence):
  ```
  paren_module_expr: LPAREN VAL list(attribute) fun_expr COLON module_type COLONGREATER . module_type RPAREN
    module_type: . FUNCTOR list(attribute) reversed_nonempty_llist(functor_arg) MINUSGREATER module_type
  ```
  Sample sentence (implementation):
  ```ocaml
  include ( val X : {%ext|s|} :> functor ( ) -> {%ext|s|} )
                                 ^^^^^^^
  ```
- Derivation (1 occurrence):
  ```
  paren_module_expr: LPAREN VAL list(attribute) FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case) COLON . module_type RPAREN
    module_type: . FUNCTOR list(attribute) reversed_nonempty_llist(functor_arg) MINUSGREATER module_type
  ```
  Sample sentence (implementation):
  ```ocaml
  include ( val function false -> X : functor ( ) -> {%ext|s|} )
                                      ^^^^^^^
  ```
- Derivation (1 occurrence):
  ```
  paren_module_expr: LPAREN VAL list(attribute) fun_expr COLON . module_type RPAREN
    module_type: . FUNCTOR list(attribute) reversed_nonempty_llist(functor_arg) MINUSGREATER module_type
  ```
  Sample sentence (implementation):
  ```ocaml
  include ( val X : functor ( ) -> {%ext|s|} )
                    ^^^^^^^
  ```
- Derivation (1 occurrence):
  ```
  delimited_type_supporting_local_open: LPAREN MODULE ext list(attribute) . module_type RPAREN
    module_type: . FUNCTOR list(attribute) reversed_nonempty_llist(functor_arg) MINUSGREATER module_type
  ```
  Sample sentence (interface):
  ```ocaml
  exception false : ( module functor ( ) -> {%ext|s|} )
                             ^^^^^^^
  ```


### Item `module_type: . MODULE TYPE OF list(attribute) module_expr` (in 10 errors)

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
  Sample sentence (interface):
  ```ocaml
  exception false : ( module module type of {%ext|s|} )
                             ^^^^^^
  ```

## Error: Syntax error: extension not expected.

### Item `let_bindings(no_ext): LET . PERCENT attr_id list(attribute) rec_flag let_binding_body list(post_item_attribute)` (in 129 errors)

- Derivation (129 occurrences):
  ```
  let_bindings(no_ext): LET . PERCENT attr_id list(attribute) rec_flag let_binding_body list(post_item_attribute)
  ```
  Sample sentence (implementation):
  ```ocaml
  class x = let % and x in x
                ^
  ```

## Error: In this scoped type, variable 'x is reserved for the local type x.

### Item `alias_type: . function_type` (in 3 errors)

- Derivation (1 occurrence):
  ```
  method_: BANG list(attribute) private_flag LIDENT COLON TYPE nonempty_list(mkrhs(LIDENT)) DOT . core_type EQUAL seq_expr
    core_type: . alias_type
      alias_type: . function_type
        function_type: . tuple_type
          tuple_type: . atomic_type
            atomic_type: . QUOTE ident
  ```
  Sample sentence (implementation):
  ```ocaml
  object method ! x : type x . ' x = X end
                               ^
  ```
- Derivation (1 occurrence):
  ```
  method_: list(attribute) private_flag LIDENT COLON TYPE nonempty_list(mkrhs(LIDENT)) DOT . core_type EQUAL seq_expr
    core_type: . alias_type
      alias_type: . function_type
        function_type: . tuple_type
          tuple_type: . atomic_type
            atomic_type: . QUOTE ident
  ```
  Sample sentence (implementation):
  ```ocaml
  object method x : type x . ' x = X end
                             ^
  ```
- Derivation (1 occurrence):
  ```
  let_binding_body_no_punning: val_ident COLON TYPE nonempty_list(mkrhs(LIDENT)) DOT . core_type EQUAL seq_expr
    core_type: . alias_type
      alias_type: . function_type
        function_type: . tuple_type
          tuple_type: . atomic_type
            atomic_type: . QUOTE ident
  ```
  Sample sentence (implementation):
  ```ocaml
  let x : type x . ' x = X
                   ^
  ```


# Internal errors

When OCamlformat fails with an internal error, the exact location of the problem cannot be determined.
The location is guessed by examining the syntactic constructions that appear most frequently in the failing code.

## BUG: formatting did not stabilize after 10 iterations. (2025 errors)

### Item `reversed_preceded_or_separated_nonempty_llist(BAR,match_case): . match_case` (in 1515 errors)

- Derivation (558 occurrences):
  ```
  fun_expr: fun_expr OR FUNCTION ext list(attribute) . reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
    reversed_preceded_or_separated_nonempty_llist(BAR,match_case): . match_case
  ```
  Sample sentence (implementation):
  ```ocaml
  X or function false -> . land X
  ```
- Derivation (170 occurrences):
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
- Derivation (43 occurrences):
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
  X or if X then function false -> X else X
  ```
- Derivation (35 occurrences):
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
  X or match X with false -> X
  ```
- Derivation (19 occurrences):
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
- Derivation (18 occurrences):
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
  X or if X then function false -> X else function false -> X
  ```
- Derivation (11 occurrences):
  ```
  fun_expr: simple_expr DOT mod_longident DOTOP LBRACKET separated_or_terminated_nonempty_list(SEMI,expr) RBRACKET LESSMINUS FUNCTION ext list(attribute) . reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
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
  X or false . X .+ [ X ] <- function false -> . ;
  ```
- Derivation (11 occurrences):
  ```
  fun_expr: simple_expr DOT mod_longident DOTOP LBRACE separated_or_terminated_nonempty_list(SEMI,expr) RBRACE LESSMINUS FUNCTION ext list(attribute) . reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
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
  X or false . X .+ { X } <- function false -> . ;
  ```
- Derivation (11 occurrences):
  ```
  fun_expr: simple_expr DOT mod_longident DOTOP LPAREN separated_or_terminated_nonempty_list(SEMI,expr) RPAREN LESSMINUS FUNCTION ext list(attribute) . reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
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
  X or false . X .+ ( X ) <- function false -> . ;
  ```
- Derivation (11 occurrences):
  ```
  fun_expr: simple_expr DOT LBRACKET seq_expr RBRACKET LESSMINUS FUNCTION ext list(attribute) . reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
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
  X or false . [ X ] <- function false -> . ;
  ```
- Derivation (11 occurrences):
  ```
  fun_expr: simple_expr DOT LBRACE seq_expr RBRACE LESSMINUS FUNCTION ext list(attribute) . reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
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
  X or false . { X } <- function false -> . ;
  ```
- Derivation (11 occurrences):
  ```
  fun_expr: simple_expr DOT LPAREN seq_expr RPAREN LESSMINUS FUNCTION ext list(attribute) . reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
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
  X or false . ( X ) <- function false -> . ;
  ```
- Derivation (11 occurrences):
  ```
  fun_expr: simple_expr DOT label_longident LESSMINUS FUNCTION ext list(attribute) . reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
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
  X or false . x <- function false -> . ;
  ```
- Derivation (11 occurrences):
  ```
  fun_expr: LIDENT LESSMINUS FUNCTION ext list(attribute) . reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
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
  X or x <- function false -> . ;
  ```
- Derivation (11 occurrences):
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
- Derivation (11 occurrences):
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
- Derivation (11 occurrences):
  ```
  fun_expr: IF ext list(attribute) seq_expr THEN FUNCTION ext list(attribute) . reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
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
  X or if X then function false -> . ;
  ```
- Derivation (11 occurrences):
  ```
  fun_expr: IF ext list(attribute) seq_expr THEN fun_expr ELSE FUNCTION ext list(attribute) . reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
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
  X or if X then X else function false -> . ;
  ```
- Derivation (11 occurrences):
  ```
  fun_expr: TRY ext list(attribute) seq_expr WITH . reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
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
  X or try X with false -> . ;
  ```
- Derivation (11 occurrences):
  ```
  fun_expr: MATCH ext list(attribute) seq_expr WITH . reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
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
  X or match X with false -> . ;
  ```
- Derivation (10 occurrences):
  ```
  seq_expr: FUNCTION ext list(attribute) . reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
    reversed_preceded_or_separated_nonempty_llist(BAR,match_case): . match_case
      match_case: . pattern MINUSGREATER DOT
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
  function false | false -> .
  ```
- ...


### Item `fun_expr: . simple_expr` (in 308 errors)

- Derivation (85 occurrences):
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
- Derivation (64 occurrences):
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
  X or ( X )
  ```
- Derivation (32 occurrences):
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
  X .+ { X or let* x in X }
  ```
- Derivation (20 occurrences):
  ```
  fun_expr: FUN ext list(attribute) fun_params option(preceded(COLON,atomic_type)) MINUSGREATER . fun_body
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
  fun ( [| |] ) -> X
  ```
- Derivation (12 occurrences):
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
- Derivation (12 occurrences):
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
  X or let* x in X ; ;
  ```
- Derivation (11 occurrences):
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
  object ( [| |] ) end
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
- Derivation (5 occurrences):
  ```
  let_binding_body_no_punning: val_ident COLON TYPE nonempty_list(mkrhs(LIDENT)) DOT core_type EQUAL . seq_expr
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
  let x : type x x . {%ext|s|} = X
  ```
- Derivation (5 occurrences):
  ```
  implementation: . structure EOF
    structure: . seq_expr list(post_item_attribute) list(structure_element)
      seq_expr: . fun_seq_expr
        fun_seq_expr: . fun_expr
          fun_expr: . reversed_separated_nontrivial_llist(COMMA,expr)
            reversed_separated_nontrivial_llist(COMMA,expr): . fun_expr COMMA fun_expr
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
- Derivation (5 occurrences):
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
- Derivation (4 occurrences):
  ```
  let_binding_body_no_punning: simple_pattern_not_ident COLON core_type EQUAL . seq_expr
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
  let false : {%ext|s|} # x = X
  ```
- Derivation (4 occurrences):
  ```
  let_binding_body_no_punning: val_ident COLON reversed_nonempty_llist(typevar) DOT core_type EQUAL . seq_expr
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
  let x : ' x . {%ext|s|} # x = X
  ```
- Derivation (4 occurrences):
  ```
  let_binding_body_no_punning: val_ident type_constraint EQUAL . seq_expr
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
  let x : {%ext|s|} # x = X
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
- ...


### Item `fun_expr: fun_expr OR . fun_expr` (in 65 errors)

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
- Derivation (1 occurrence):
  ```
  fun_expr: fun_expr OR . fun_expr
    fun_expr: . fun_expr COLONCOLON fun_expr
      fun_expr: . simple_expr DOTOP LBRACKET separated_or_terminated_nonempty_list(SEMI,expr) RBRACKET LESSMINUS FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
  ```
  Sample sentence (implementation):
  ```ocaml
  X or X .+ [ X ] <- function false -> . :: X
  ```
- Derivation (1 occurrence):
  ```
  fun_expr: fun_expr OR . fun_expr
    fun_expr: . fun_expr AMPERAMPER fun_expr
      fun_expr: . simple_expr DOTOP LBRACKET separated_or_terminated_nonempty_list(SEMI,expr) RBRACKET LESSMINUS FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
  ```
  Sample sentence (implementation):
  ```ocaml
  X or X .+ [ X ] <- function false -> . && X
  ```
- Derivation (1 occurrence):
  ```
  fun_expr: fun_expr OR . fun_expr
    fun_expr: . fun_expr BARBAR fun_expr
      fun_expr: . simple_expr DOTOP LBRACKET separated_or_terminated_nonempty_list(SEMI,expr) RBRACKET LESSMINUS FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
  ```
  Sample sentence (implementation):
  ```ocaml
  X or X .+ [ X ] <- function false -> . || X
  ```
- Derivation (1 occurrence):
  ```
  fun_expr: fun_expr OR . fun_expr
    fun_expr: . fun_expr EQUAL fun_expr
      fun_expr: . simple_expr DOTOP LBRACKET separated_or_terminated_nonempty_list(SEMI,expr) RBRACKET LESSMINUS FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
  ```
  Sample sentence (implementation):
  ```ocaml
  X or X .+ [ X ] <- function false -> . = X
  ```
- Derivation (1 occurrence):
  ```
  fun_expr: fun_expr OR . fun_expr
    fun_expr: . fun_expr PERCENT fun_expr
      fun_expr: . simple_expr DOTOP LBRACKET separated_or_terminated_nonempty_list(SEMI,expr) RBRACKET LESSMINUS FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
  ```
  Sample sentence (implementation):
  ```ocaml
  X or X .+ [ X ] <- function false -> . % X
  ```
- Derivation (1 occurrence):
  ```
  fun_expr: fun_expr OR . fun_expr
    fun_expr: . fun_expr MINUS fun_expr
      fun_expr: . simple_expr DOTOP LBRACKET separated_or_terminated_nonempty_list(SEMI,expr) RBRACKET LESSMINUS FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
  ```
  Sample sentence (implementation):
  ```ocaml
  X or X .+ [ X ] <- function false -> . - X
  ```
- Derivation (1 occurrence):
  ```
  fun_expr: fun_expr OR . fun_expr
    fun_expr: . fun_expr INFIXOP4 fun_expr
      fun_expr: . simple_expr DOTOP LBRACKET separated_or_terminated_nonempty_list(SEMI,expr) RBRACKET LESSMINUS FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
  ```
  Sample sentence (implementation):
  ```ocaml
  X or X .+ [ X ] <- function false -> . ** X
  ```
- Derivation (1 occurrence):
  ```
  fun_expr: fun_expr OR . fun_expr
    fun_expr: . fun_expr INFIXOP3 fun_expr
      fun_expr: . simple_expr DOTOP LBRACKET separated_or_terminated_nonempty_list(SEMI,expr) RBRACKET LESSMINUS FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
  ```
  Sample sentence (implementation):
  ```ocaml
  X or X .+ [ X ] <- function false -> . land X
  ```
- Derivation (1 occurrence):
  ```
  fun_expr: fun_expr OR . fun_expr
    fun_expr: . fun_expr INFIXOP1 fun_expr
      fun_expr: . simple_expr DOTOP LBRACKET separated_or_terminated_nonempty_list(SEMI,expr) RBRACKET LESSMINUS FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
  ```
  Sample sentence (implementation):
  ```ocaml
  X or X .+ [ X ] <- function false -> . ^ X
  ```
- Derivation (1 occurrence):
  ```
  fun_expr: fun_expr OR . fun_expr
    fun_expr: . fun_expr COLONCOLON fun_expr
      fun_expr: . simple_expr DOTOP LBRACE separated_or_terminated_nonempty_list(SEMI,expr) RBRACE LESSMINUS FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
  ```
  Sample sentence (implementation):
  ```ocaml
  X or X .+ { X } <- function false -> . :: X
  ```
- Derivation (1 occurrence):
  ```
  fun_expr: fun_expr OR . fun_expr
    fun_expr: . fun_expr AMPERAMPER fun_expr
      fun_expr: . simple_expr DOTOP LBRACE separated_or_terminated_nonempty_list(SEMI,expr) RBRACE LESSMINUS FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
  ```
  Sample sentence (implementation):
  ```ocaml
  X or X .+ { X } <- function false -> . && X
  ```
- Derivation (1 occurrence):
  ```
  fun_expr: fun_expr OR . fun_expr
    fun_expr: . fun_expr BARBAR fun_expr
      fun_expr: . simple_expr DOTOP LBRACE separated_or_terminated_nonempty_list(SEMI,expr) RBRACE LESSMINUS FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
  ```
  Sample sentence (implementation):
  ```ocaml
  X or X .+ { X } <- function false -> . || X
  ```
- Derivation (1 occurrence):
  ```
  fun_expr: fun_expr OR . fun_expr
    fun_expr: . fun_expr EQUAL fun_expr
      fun_expr: . simple_expr DOTOP LBRACE separated_or_terminated_nonempty_list(SEMI,expr) RBRACE LESSMINUS FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
  ```
  Sample sentence (implementation):
  ```ocaml
  X or X .+ { X } <- function false -> . = X
  ```
- Derivation (1 occurrence):
  ```
  fun_expr: fun_expr OR . fun_expr
    fun_expr: . fun_expr PERCENT fun_expr
      fun_expr: . simple_expr DOTOP LBRACE separated_or_terminated_nonempty_list(SEMI,expr) RBRACE LESSMINUS FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
  ```
  Sample sentence (implementation):
  ```ocaml
  X or X .+ { X } <- function false -> . % X
  ```
- Derivation (1 occurrence):
  ```
  fun_expr: fun_expr OR . fun_expr
    fun_expr: . fun_expr MINUS fun_expr
      fun_expr: . simple_expr DOTOP LBRACE separated_or_terminated_nonempty_list(SEMI,expr) RBRACE LESSMINUS FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
  ```
  Sample sentence (implementation):
  ```ocaml
  X or X .+ { X } <- function false -> . - X
  ```
- ...


### Item `pattern: . pattern_gen` (in 42 errors)

- Derivation (7 occurrences):
  ```
  pattern_no_exn: pattern_no_exn BAR . pattern
    pattern: . pattern_gen
  ```
  Sample sentence (implementation):
  ```ocaml
  let false | false as x = X
  ```
- Derivation (3 occurrences):
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
          simple_pattern_not_ident: . UNDERSCORE
  ```
  Sample sentence (implementation):
  ```ocaml
  let false | _ = X
  ```
- Derivation (1 occurrence):
  ```
  pattern: pattern BAR . pattern
    pattern: . pattern_gen
      pattern_gen: . simple_pattern
        simple_pattern: . simple_pattern_not_ident
          simple_pattern_not_ident: . UNDERSCORE
  ```
  Sample sentence (implementation):
  ```ocaml
  function false | _ -> .
  ```
- Derivation (1 occurrence):
  ```
  pattern_no_exn: pattern_no_exn BAR . pattern
    pattern: . pattern_gen
      pattern_gen: . simple_pattern
        simple_pattern: . simple_pattern_not_ident
          simple_pattern_not_ident: . simple_delimited_pattern
            simple_delimited_pattern: . LBRACKETBAR BARRBRACKET
  ```
  Sample sentence (implementation):
  ```ocaml
  let false | [| |] = X
  ```
- Derivation (1 occurrence):
  ```
  pattern: pattern BAR . pattern
    pattern: . pattern_gen
      pattern_gen: . simple_pattern
        simple_pattern: . simple_pattern_not_ident
          simple_pattern_not_ident: . simple_delimited_pattern
            simple_delimited_pattern: . LBRACKETBAR BARRBRACKET
  ```
  Sample sentence (implementation):
  ```ocaml
  function false | [| |] -> .
  ```
- Derivation (1 occurrence):
  ```
  pattern_no_exn: pattern_no_exn BAR . pattern
    pattern: . pattern_gen
      pattern_gen: . simple_pattern
        simple_pattern: . simple_pattern_not_ident
          simple_pattern_not_ident: . simple_delimited_pattern
            simple_delimited_pattern: . LBRACKETBAR separated_or_terminated_nonempty_list(SEMI,pattern) BARRBRACKET
  ```
  Sample sentence (implementation):
  ```ocaml
  let false | [| false |] = X
  ```
- Derivation (1 occurrence):
  ```
  pattern: pattern BAR . pattern
    pattern: . pattern_gen
      pattern_gen: . simple_pattern
        simple_pattern: . simple_pattern_not_ident
          simple_pattern_not_ident: . simple_delimited_pattern
            simple_delimited_pattern: . LBRACKETBAR separated_or_terminated_nonempty_list(SEMI,pattern) BARRBRACKET
  ```
  Sample sentence (implementation):
  ```ocaml
  function false | [| false |] -> .
  ```
- Derivation (1 occurrence):
  ```
  pattern_no_exn: pattern_no_exn BAR . pattern
    pattern: . pattern_gen
      pattern_gen: . simple_pattern
        simple_pattern: . simple_pattern_not_ident
          simple_pattern_not_ident: . simple_delimited_pattern
            simple_delimited_pattern: . LBRACKET separated_or_terminated_nonempty_list(SEMI,pattern) RBRACKET
  ```
  Sample sentence (implementation):
  ```ocaml
  let false | [ false ] = X
  ```
- Derivation (1 occurrence):
  ```
  pattern: pattern BAR . pattern
    pattern: . pattern_gen
      pattern_gen: . simple_pattern
        simple_pattern: . simple_pattern_not_ident
          simple_pattern_not_ident: . simple_delimited_pattern
            simple_delimited_pattern: . LBRACKET separated_or_terminated_nonempty_list(SEMI,pattern) RBRACKET
  ```
  Sample sentence (implementation):
  ```ocaml
  function false | [ false ] -> .
  ```
- Derivation (1 occurrence):
  ```
  pattern_no_exn: pattern_no_exn BAR . pattern
    pattern: . pattern_gen
      pattern_gen: . simple_pattern
        simple_pattern: . simple_pattern_not_ident
          simple_pattern_not_ident: . simple_delimited_pattern
            simple_delimited_pattern: . LBRACE listx(SEMI,record_pat_field,UNDERSCORE) RBRACE
  ```
  Sample sentence (implementation):
  ```ocaml
  let false | { x } = X
  ```
- Derivation (1 occurrence):
  ```
  pattern: pattern BAR . pattern
    pattern: . pattern_gen
      pattern_gen: . simple_pattern
        simple_pattern: . simple_pattern_not_ident
          simple_pattern_not_ident: . simple_delimited_pattern
            simple_delimited_pattern: . LBRACE listx(SEMI,record_pat_field,UNDERSCORE) RBRACE
  ```
  Sample sentence (implementation):
  ```ocaml
  function false | { x } -> .
  ```
- Derivation (1 occurrence):
  ```
  pattern_no_exn: pattern_no_exn BAR . pattern
    pattern: . pattern_gen
      pattern_gen: . simple_pattern
        simple_pattern: . simple_pattern_not_ident
          simple_pattern_not_ident: . extension
            extension: . QUOTED_STRING_EXPR
  ```
  Sample sentence (implementation):
  ```ocaml
  let false | {%ext|s|} = X
  ```
- Derivation (1 occurrence):
  ```
  pattern: pattern BAR . pattern
    pattern: . pattern_gen
      pattern_gen: . simple_pattern
        simple_pattern: . simple_pattern_not_ident
          simple_pattern_not_ident: . extension
            extension: . QUOTED_STRING_EXPR
  ```
  Sample sentence (implementation):
  ```ocaml
  function false | {%ext|s|} -> .
  ```
- Derivation (1 occurrence):
  ```
  pattern_no_exn: pattern_no_exn BAR . pattern
    pattern: . pattern_gen
      pattern_gen: . simple_pattern
        simple_pattern: . simple_pattern_not_ident
          simple_pattern_not_ident: . extension
            extension: . LBRACKETPERCENT attr_id payload RBRACKET
  ```
  Sample sentence (implementation):
  ```ocaml
  let false | [% and ] = X
  ```
- Derivation (1 occurrence):
  ```
  pattern: pattern BAR . pattern
    pattern: . pattern_gen
      pattern_gen: . simple_pattern
        simple_pattern: . simple_pattern_not_ident
          simple_pattern_not_ident: . extension
            extension: . LBRACKETPERCENT attr_id payload RBRACKET
  ```
  Sample sentence (implementation):
  ```ocaml
  function false | [% and ] -> .
  ```
- Derivation (1 occurrence):
  ```
  pattern_no_exn: pattern_no_exn BAR . pattern
    pattern: . pattern_gen
      pattern_gen: . simple_pattern
        simple_pattern: . simple_pattern_not_ident
          simple_pattern_not_ident: . constr_longident
            constr_longident: . constr_extra_nonprefix_ident
              constr_extra_nonprefix_ident: . TRUE
  ```
  Sample sentence (implementation):
  ```ocaml
  let false | true = X
  ```
- Derivation (1 occurrence):
  ```
  pattern: pattern BAR . pattern
    pattern: . pattern_gen
      pattern_gen: . simple_pattern
        simple_pattern: . simple_pattern_not_ident
          simple_pattern_not_ident: . constr_longident
            constr_longident: . constr_extra_nonprefix_ident
              constr_extra_nonprefix_ident: . TRUE
  ```
  Sample sentence (implementation):
  ```ocaml
  function false | true -> .
  ```
- Derivation (1 occurrence):
  ```
  reversed_preceded_or_separated_nonempty_llist(BAR,match_case): BAR . match_case
    match_case: . pattern MINUSGREATER DOT
      pattern: . pattern AS val_ident
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
  function | false | false as x -> .
  ```
- ...


### Item `type_parameter: . type_variance type_variable` (in 22 errors)

- Derivation (3 occurrences):
  ```
  type_parameters: LPAREN . reversed_separated_nonempty_llist(COMMA,type_parameter) RPAREN
    reversed_separated_nonempty_llist(COMMA,type_parameter): . reversed_separated_nonempty_llist(COMMA,type_parameter) COMMA type_parameter
      reversed_separated_nonempty_llist(COMMA,type_parameter): . type_parameter
        type_parameter: . type_variance type_variable
  ```
  Sample sentence (implementation):
  ```ocaml
  type ( _ , ! _ ) x
  ```
- Derivation (2 occurrences):
  ```
  generic_type_declaration(nonrec_flag,type_kind): TYPE ext list(attribute) NONREC . type_parameters LIDENT type_kind reversed_llist(preceded(CONSTRAINT,constrain)) list(post_item_attribute)
    type_parameters: . type_parameter
      type_parameter: . type_variance type_variable
        type_variance: . PREFIXOP
  ```
  Sample sentence (interface):
  ```ocaml
  type nonrec !+ _ x
  ```
- Derivation (2 occurrences):
  ```
  generic_type_declaration(nonrec_flag,type_kind): TYPE ext list(attribute) NONREC . type_parameters LIDENT type_kind reversed_llist(preceded(CONSTRAINT,constrain)) list(post_item_attribute)
    type_parameters: . type_parameter
      type_parameter: . type_variance type_variable
        type_variance: . BANG MINUS
  ```
  Sample sentence (interface):
  ```ocaml
  type nonrec ! - _ x
  ```
- Derivation (2 occurrences):
  ```
  generic_type_declaration(nonrec_flag,type_kind): TYPE ext list(attribute) NONREC . type_parameters LIDENT type_kind reversed_llist(preceded(CONSTRAINT,constrain)) list(post_item_attribute)
    type_parameters: . type_parameter
      type_parameter: . type_variance type_variable
        type_variance: . MINUS BANG
  ```
  Sample sentence (interface):
  ```ocaml
  type nonrec - ! _ x
  ```
- Derivation (2 occurrences):
  ```
  generic_type_declaration(nonrec_flag,type_kind): TYPE ext list(attribute) NONREC . type_parameters LIDENT type_kind reversed_llist(preceded(CONSTRAINT,constrain)) list(post_item_attribute)
    type_parameters: . type_parameter
      type_parameter: . type_variance type_variable
        type_variance: . BANG PLUS
  ```
  Sample sentence (interface):
  ```ocaml
  type nonrec ! + _ x
  ```
- Derivation (2 occurrences):
  ```
  generic_type_declaration(nonrec_flag,type_kind): TYPE ext list(attribute) NONREC . type_parameters LIDENT type_kind reversed_llist(preceded(CONSTRAINT,constrain)) list(post_item_attribute)
    type_parameters: . type_parameter
      type_parameter: . type_variance type_variable
        type_variance: . PLUS BANG
  ```
  Sample sentence (interface):
  ```ocaml
  type nonrec + ! _ x
  ```
- Derivation (2 occurrences):
  ```
  generic_type_declaration(nonrec_flag,type_kind): TYPE ext list(attribute) NONREC . type_parameters LIDENT type_kind reversed_llist(preceded(CONSTRAINT,constrain)) list(post_item_attribute)
    type_parameters: . type_parameter
      type_parameter: . type_variance type_variable
        type_variance: . BANG
  ```
  Sample sentence (interface):
  ```ocaml
  type nonrec ! _ x
  ```
- Derivation (1 occurrence):
  ```
  reversed_separated_nonempty_llist(COMMA,type_parameter): reversed_separated_nonempty_llist(COMMA,type_parameter) COMMA . type_parameter
    type_parameter: . type_variance type_variable
      type_variance: . PREFIXOP
  ```
  Sample sentence (implementation):
  ```ocaml
  type ( _ , !+ _ ) x
  ```
- Derivation (1 occurrence):
  ```
  type_parameters: LPAREN . reversed_separated_nonempty_llist(COMMA,type_parameter) RPAREN
    reversed_separated_nonempty_llist(COMMA,type_parameter): . type_parameter
      type_parameter: . type_variance type_variable
        type_variance: . PREFIXOP
  ```
  Sample sentence (implementation):
  ```ocaml
  type ( !+ _ ) x
  ```
- Derivation (1 occurrence):
  ```
  type_parameters: LPAREN . reversed_separated_nonempty_llist(COMMA,type_parameter) RPAREN
    reversed_separated_nonempty_llist(COMMA,type_parameter): . type_parameter
      type_parameter: . type_variance type_variable
        type_variance: . BANG MINUS
  ```
  Sample sentence (implementation):
  ```ocaml
  type ( ! - _ ) x
  ```
- Derivation (1 occurrence):
  ```
  type_parameters: LPAREN . reversed_separated_nonempty_llist(COMMA,type_parameter) RPAREN
    reversed_separated_nonempty_llist(COMMA,type_parameter): . type_parameter
      type_parameter: . type_variance type_variable
        type_variance: . MINUS BANG
  ```
  Sample sentence (implementation):
  ```ocaml
  type ( - ! _ ) x
  ```
- Derivation (1 occurrence):
  ```
  type_parameters: LPAREN . reversed_separated_nonempty_llist(COMMA,type_parameter) RPAREN
    reversed_separated_nonempty_llist(COMMA,type_parameter): . type_parameter
      type_parameter: . type_variance type_variable
        type_variance: . BANG PLUS
  ```
  Sample sentence (implementation):
  ```ocaml
  type ( ! + _ ) x
  ```
- Derivation (1 occurrence):
  ```
  type_parameters: LPAREN . reversed_separated_nonempty_llist(COMMA,type_parameter) RPAREN
    reversed_separated_nonempty_llist(COMMA,type_parameter): . type_parameter
      type_parameter: . type_variance type_variable
        type_variance: . PLUS BANG
  ```
  Sample sentence (implementation):
  ```ocaml
  type ( + ! _ ) x
  ```
- Derivation (1 occurrence):
  ```
  type_parameters: LPAREN . reversed_separated_nonempty_llist(COMMA,type_parameter) RPAREN
    reversed_separated_nonempty_llist(COMMA,type_parameter): . type_parameter
      type_parameter: . type_variance type_variable
        type_variance: . BANG
  ```
  Sample sentence (implementation):
  ```ocaml
  type ( ! _ ) x
  ```


### Item `extension: . QUOTED_STRING_EXPR` (in 20 errors)

- Derivation (7 occurrences):
  ```
  atomic_type: LPAREN . reversed_separated_nontrivial_llist(COMMA,core_type) RPAREN type_longident
    reversed_separated_nontrivial_llist(COMMA,core_type): . core_type COMMA core_type
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
  external x : ( {%ext|s|} , {%ext|s|} ) x x = "s"
  ```
- Derivation (5 occurrences):
  ```
  atomic_type: LPAREN . reversed_separated_nontrivial_llist(COMMA,core_type) RPAREN HASH clty_longident
    reversed_separated_nontrivial_llist(COMMA,core_type): . core_type COMMA core_type
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
  external x : ( {%ext|s|} , {%ext|s|} ) # x = "s"
  ```
- Derivation (1 occurrence):
  ```
  module_type: FUNCTOR list(attribute) reversed_nonempty_llist(functor_arg) MINUSGREATER . module_type
    module_type: . module_type WITH reversed_separated_nonempty_llist(AND,with_constraint)
      module_type: . module_type WITH reversed_separated_nonempty_llist(AND,with_constraint)
        module_type: . extension
          extension: . QUOTED_STRING_EXPR
  ```
  Sample sentence (interface):
  ```ocaml
  include functor ( ) -> {%ext|s|} with module X := X with module X := X
  ```
- Derivation (1 occurrence):
  ```
  module_binding_body: COLON . module_type EQUAL module_expr
    module_type: . module_type WITH reversed_separated_nonempty_llist(AND,with_constraint)
      module_type: . module_type WITH reversed_separated_nonempty_llist(AND,with_constraint)
        module_type: . extension
          extension: . QUOTED_STRING_EXPR
  ```
  Sample sentence (implementation):
  ```ocaml
  module X : {%ext|s|} with module X := X with module X := X = {%ext|s|}
  ```
- Derivation (1 occurrence):
  ```
  primitive_declaration: EXTERNAL ext list(attribute) val_ident COLON . possibly_poly(core_type) EQUAL nonempty_list(raw_string) list(post_item_attribute)
    possibly_poly(core_type): . core_type
      core_type: . alias_type
        alias_type: . alias_type AS QUOTE ident
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
  external x : {%ext|s|} as ' x = "s"
  ```
- Derivation (1 occurrence):
  ```
  function_type: LIDENT COLON . tuple_type MINUSGREATER function_type
    tuple_type: . atomic_type
      atomic_type: . atomic_type HASH clty_longident
        atomic_type: . delimited_type
          delimited_type: . extension_type
            extension_type: . extension
              extension: . QUOTED_STRING_EXPR
  ```
  Sample sentence (interface):
  ```ocaml
  val x : x : {%ext|s|} # x -> {%ext|s|}
  ```
- Derivation (1 occurrence):
  ```
  function_type: optlabel . tuple_type MINUSGREATER function_type
    tuple_type: . atomic_type
      atomic_type: . atomic_type HASH clty_longident
        atomic_type: . delimited_type
          delimited_type: . extension_type
            extension_type: . extension
              extension: . QUOTED_STRING_EXPR
  ```
  Sample sentence (interface):
  ```ocaml
  val x : ?label: {%ext|s|} # x -> {%ext|s|}
  ```
- Derivation (1 occurrence):
  ```
  primitive_declaration: EXTERNAL ext list(attribute) val_ident COLON . possibly_poly(core_type) EQUAL nonempty_list(raw_string) list(post_item_attribute)
    possibly_poly(core_type): . core_type
      core_type: . alias_type
        alias_type: . function_type
          function_type: . tuple_type
            tuple_type: . atomic_type
              atomic_type: . atomic_type HASH clty_longident
                atomic_type: . delimited_type
                  delimited_type: . extension_type
                    extension_type: . extension
                      extension: . QUOTED_STRING_EXPR
  ```
  Sample sentence (implementation):
  ```ocaml
  external x : {%ext|s|} # x = "s"
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


### Item `fun_expr: fun_expr OR FUNCTION ext list(attribute) . reversed_preceded_or_separated_nonempty_llist(BAR,match_case)` (in 12 errors)

- Derivation (12 occurrences):
  ```
  fun_expr: fun_expr OR FUNCTION ext list(attribute) . reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
  ```
  Sample sentence (implementation):
  ```ocaml
  X or function | false -> . land X
  ```


### Item `functor_arg: . LPAREN RPAREN` (in 9 errors)

- Derivation (7 occurrences):
  ```
  module_type: FUNCTOR list(attribute) . reversed_nonempty_llist(functor_arg) MINUSGREATER module_type
    reversed_nonempty_llist(functor_arg): . functor_arg
      functor_arg: . LPAREN RPAREN
  ```
  Sample sentence (interface):
  ```ocaml
  include functor ( ) -> X
  ```
- Derivation (1 occurrence):
  ```
  structure_item: MODULE ext list(attribute) REC module_name . module_binding_body list(post_item_attribute) list(and_module_binding)
    module_binding_body: . functor_arg module_binding_body
      functor_arg: . LPAREN RPAREN
  ```
  Sample sentence (implementation):
  ```ocaml
  module rec X ( ) = {%ext|s|}
  ```
- Derivation (1 occurrence):
  ```
  fun_expr: LET MODULE ext list(attribute) module_name . module_binding_body IN seq_expr
    module_binding_body: . functor_arg module_binding_body
      functor_arg: . LPAREN RPAREN
  ```
  Sample sentence (implementation):
  ```ocaml
  let module X ( ) = {%ext|s|} in X
  ```


### Item `attribute: . LBRACKETAT attr_id attr_payload RBRACKET` (in 7 errors)

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
  structure_item: INCLUDE ext . list(attribute) module_expr list(post_item_attribute)
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


### Item `ext: . PERCENT attr_id` (in 7 errors)

- Derivation (2 occurrences):
  ```
  module_type_declaration: MODULE TYPE . ext list(attribute) ident option(preceded(EQUAL,module_type)) list(post_item_attribute)
    ext: . PERCENT attr_id
  ```
  Sample sentence (implementation):
  ```ocaml
  module type % and x
  ```
- Derivation (1 occurrence):
  ```
  structure_item: MODULE . ext list(attribute) module_name module_binding_body list(post_item_attribute)
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
  fun_expr: fun_expr OR FUNCTION . ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
    ext: . PERCENT attr_id
  ```
  Sample sentence (implementation):
  ```ocaml
  X or function % and false -> X
  ```
- Derivation (1 occurrence):
  ```
  fun_expr: LET MODULE . ext list(attribute) module_name module_binding_body IN seq_expr
    ext: . PERCENT attr_id
  ```
  Sample sentence (implementation):
  ```ocaml
  let module % and X = {%ext|s|} in X
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


### Item `pattern: pattern . BAR pattern` (in 6 errors)

- Derivation (6 occurrences):
  ```
  pattern: pattern . BAR pattern
  ```
  Sample sentence (interface):
  ```ocaml
  [%% and ? false | false ]
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


### Item `alias_type: . function_type` (in 2 errors)

- Derivation (1 occurrence):
  ```
  let_pattern: pattern COLON . core_type
    core_type: . alias_type
      alias_type: . function_type
        function_type: . tuple_type
          tuple_type: . atomic_type
            atomic_type: . UNDERSCORE
  ```
  Sample sentence (implementation):
  ```ocaml
  fun ?label: ( false : _ ) -> X
  ```
- Derivation (1 occurrence):
  ```
  label_let_pattern: LIDENT COLON . core_type
    core_type: . alias_type
      alias_type: . function_type
        function_type: . tuple_type
          tuple_type: . atomic_type
            atomic_type: . UNDERSCORE
  ```
  Sample sentence (implementation):
  ```ocaml
  fun ~ ( x : _ ) -> X
  ```


### Item `atomic_type: atomic_type . HASH clty_longident` (in 1 error)

- Derivation (1 occurrence):
  ```
  atomic_type: atomic_type . HASH clty_longident
  ```
  Sample sentence (implementation):
  ```ocaml
  fun false : {%ext|s|} # x -> X
  ```

## BUG: ast changed. (646 errors)

### Item `fun_expr: LETOP letop_bindings IN . seq_expr` (in 536 errors)

- Derivation (230 occurrences):
  ```
  fun_expr: LETOP letop_bindings IN . seq_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  + let* x in function false -> . % X
  ```
- Derivation (8 occurrences):
  ```
  fun_expr: LETOP letop_bindings IN . seq_expr
    seq_expr: . FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
  ```
  Sample sentence (implementation):
  ```ocaml
  let* x in function false -> . land X
  ```
- Derivation (8 occurrences):
  ```
  fun_expr: LETOP letop_bindings IN . seq_expr
    seq_expr: . fun_seq_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  let* x in X ; X ; function false -> . - X
  ```
- Derivation (8 occurrences):
  ```
  fun_expr: LETOP letop_bindings IN . seq_expr
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
  let* x in X ; % and function false -> . land X
  ```
- Derivation (8 occurrences):
  ```
  fun_expr: LETOP letop_bindings IN . seq_expr
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
  let* x in X ; function false -> . land X
  ```
- Derivation (3 occurrences):
  ```
  fun_expr: LETOP letop_bindings IN . seq_expr
    seq_expr: . fun_seq_expr
      fun_seq_expr: . fun_expr
        fun_expr: . fun_expr COLONCOLON fun_expr
          fun_expr: . reversed_separated_nontrivial_llist(COMMA,expr)
  ```
  Sample sentence (implementation):
  ```ocaml
  let* x in X , function false -> . :: X
  ```
- Derivation (3 occurrences):
  ```
  fun_expr: LETOP letop_bindings IN . seq_expr
    seq_expr: . fun_seq_expr
      fun_seq_expr: . fun_expr
        fun_expr: . fun_expr AMPERAMPER fun_expr
          fun_expr: . reversed_separated_nontrivial_llist(COMMA,expr)
  ```
  Sample sentence (implementation):
  ```ocaml
  let* x in X , function false -> . && X
  ```
- Derivation (3 occurrences):
  ```
  fun_expr: LETOP letop_bindings IN . seq_expr
    seq_expr: . fun_seq_expr
      fun_seq_expr: . fun_expr
        fun_expr: . fun_expr BARBAR fun_expr
          fun_expr: . reversed_separated_nontrivial_llist(COMMA,expr)
  ```
  Sample sentence (implementation):
  ```ocaml
  let* x in X , function false -> . || X
  ```
- Derivation (3 occurrences):
  ```
  fun_expr: LETOP letop_bindings IN . seq_expr
    seq_expr: . fun_seq_expr
      fun_seq_expr: . fun_expr
        fun_expr: . fun_expr EQUAL fun_expr
          fun_expr: . reversed_separated_nontrivial_llist(COMMA,expr)
  ```
  Sample sentence (implementation):
  ```ocaml
  let* x in X , function false -> . = X
  ```
- Derivation (3 occurrences):
  ```
  fun_expr: LETOP letop_bindings IN . seq_expr
    seq_expr: . fun_seq_expr
      fun_seq_expr: . fun_expr
        fun_expr: . fun_expr PERCENT fun_expr
          fun_expr: . reversed_separated_nontrivial_llist(COMMA,expr)
  ```
  Sample sentence (implementation):
  ```ocaml
  let* x in X , function false -> . % X
  ```
- Derivation (3 occurrences):
  ```
  fun_expr: LETOP letop_bindings IN . seq_expr
    seq_expr: . fun_seq_expr
      fun_seq_expr: . fun_expr
        fun_expr: . fun_expr MINUS fun_expr
          fun_expr: . reversed_separated_nontrivial_llist(COMMA,expr)
  ```
  Sample sentence (implementation):
  ```ocaml
  let* x in X , function false -> . - X
  ```
- Derivation (3 occurrences):
  ```
  fun_expr: LETOP letop_bindings IN . seq_expr
    seq_expr: . fun_seq_expr
      fun_seq_expr: . fun_expr
        fun_expr: . fun_expr INFIXOP4 fun_expr
          fun_expr: . reversed_separated_nontrivial_llist(COMMA,expr)
  ```
  Sample sentence (implementation):
  ```ocaml
  let* x in X , function false -> . ** X
  ```
- Derivation (3 occurrences):
  ```
  fun_expr: LETOP letop_bindings IN . seq_expr
    seq_expr: . fun_seq_expr
      fun_seq_expr: . fun_expr
        fun_expr: . fun_expr INFIXOP3 fun_expr
          fun_expr: . reversed_separated_nontrivial_llist(COMMA,expr)
  ```
  Sample sentence (implementation):
  ```ocaml
  let* x in X , function false -> . land X
  ```
- Derivation (3 occurrences):
  ```
  fun_expr: LETOP letop_bindings IN . seq_expr
    seq_expr: . fun_seq_expr
      fun_seq_expr: . fun_expr
        fun_expr: . fun_expr INFIXOP1 fun_expr
          fun_expr: . reversed_separated_nontrivial_llist(COMMA,expr)
  ```
  Sample sentence (implementation):
  ```ocaml
  let* x in X , function false -> . ^ X
  ```
- Derivation (1 occurrence):
  ```
  fun_expr: LETOP letop_bindings IN . seq_expr
    seq_expr: . fun_seq_expr
      fun_seq_expr: . fun_expr
        fun_expr: . subtractive FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
          subtractive: . MINUS
  ```
  Sample sentence (implementation):
  ```ocaml
  function false -> let* x in - function false -> X | false -> X
  ```
- Derivation (1 occurrence):
  ```
  fun_expr: LETOP letop_bindings IN . seq_expr
    seq_expr: . fun_seq_expr
      fun_seq_expr: . fun_expr
        fun_expr: . fun_expr COLONCOLON fun_expr
          fun_expr: . simple_expr DOTOP LBRACKET separated_or_terminated_nonempty_list(SEMI,expr) RBRACKET LESSMINUS FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
            simple_expr: . constr_longident
              constr_longident: . mod_longident
                mod_longident: . mk_longident(mod_longident,UIDENT)
                  mk_longident(mod_longident,UIDENT): . UIDENT
  ```
  Sample sentence (implementation):
  ```ocaml
  let* x in X .+ [ X ] <- function false -> . :: X
  ```
- Derivation (1 occurrence):
  ```
  fun_expr: LETOP letop_bindings IN . seq_expr
    seq_expr: . fun_seq_expr
      fun_seq_expr: . fun_expr
        fun_expr: . fun_expr COLONEQUAL fun_expr
          fun_expr: . simple_expr DOTOP LBRACKET separated_or_terminated_nonempty_list(SEMI,expr) RBRACKET LESSMINUS FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
            simple_expr: . constr_longident
              constr_longident: . mod_longident
                mod_longident: . mk_longident(mod_longident,UIDENT)
                  mk_longident(mod_longident,UIDENT): . UIDENT
  ```
  Sample sentence (implementation):
  ```ocaml
  let* x in X .+ [ X ] <- function false -> . := X
  ```
- Derivation (1 occurrence):
  ```
  fun_expr: LETOP letop_bindings IN . seq_expr
    seq_expr: . fun_seq_expr
      fun_seq_expr: . fun_expr
        fun_expr: . fun_expr AMPERAMPER fun_expr
          fun_expr: . simple_expr DOTOP LBRACKET separated_or_terminated_nonempty_list(SEMI,expr) RBRACKET LESSMINUS FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
            simple_expr: . constr_longident
              constr_longident: . mod_longident
                mod_longident: . mk_longident(mod_longident,UIDENT)
                  mk_longident(mod_longident,UIDENT): . UIDENT
  ```
  Sample sentence (implementation):
  ```ocaml
  let* x in X .+ [ X ] <- function false -> . && X
  ```
- Derivation (1 occurrence):
  ```
  fun_expr: LETOP letop_bindings IN . seq_expr
    seq_expr: . fun_seq_expr
      fun_seq_expr: . fun_expr
        fun_expr: . fun_expr BARBAR fun_expr
          fun_expr: . simple_expr DOTOP LBRACKET separated_or_terminated_nonempty_list(SEMI,expr) RBRACKET LESSMINUS FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
            simple_expr: . constr_longident
              constr_longident: . mod_longident
                mod_longident: . mk_longident(mod_longident,UIDENT)
                  mk_longident(mod_longident,UIDENT): . UIDENT
  ```
  Sample sentence (implementation):
  ```ocaml
  let* x in X .+ [ X ] <- function false -> . || X
  ```
- Derivation (1 occurrence):
  ```
  fun_expr: LETOP letop_bindings IN . seq_expr
    seq_expr: . fun_seq_expr
      fun_seq_expr: . fun_expr
        fun_expr: . fun_expr EQUAL fun_expr
          fun_expr: . simple_expr DOTOP LBRACKET separated_or_terminated_nonempty_list(SEMI,expr) RBRACKET LESSMINUS FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
            simple_expr: . constr_longident
              constr_longident: . mod_longident
                mod_longident: . mk_longident(mod_longident,UIDENT)
                  mk_longident(mod_longident,UIDENT): . UIDENT
  ```
  Sample sentence (implementation):
  ```ocaml
  let* x in X .+ [ X ] <- function false -> . = X
  ```
- Derivation (1 occurrence):
  ```
  fun_expr: LETOP letop_bindings IN . seq_expr
    seq_expr: . fun_seq_expr
      fun_seq_expr: . fun_expr
        fun_expr: . fun_expr PERCENT fun_expr
          fun_expr: . simple_expr DOTOP LBRACKET separated_or_terminated_nonempty_list(SEMI,expr) RBRACKET LESSMINUS FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
            simple_expr: . constr_longident
              constr_longident: . mod_longident
                mod_longident: . mk_longident(mod_longident,UIDENT)
                  mk_longident(mod_longident,UIDENT): . UIDENT
  ```
  Sample sentence (implementation):
  ```ocaml
  let* x in X .+ [ X ] <- function false -> . % X
  ```
- ...


### Item `signature_item: INCLUDE ext list(attribute) . module_type list(post_item_attribute)` (in 55 errors)

- Derivation (32 occurrences):
  ```
  signature_item: INCLUDE ext list(attribute) . module_type list(post_item_attribute)
    module_type: . reversed_nonempty_llist(functor_arg) MINUSGREATER module_type
      reversed_nonempty_llist(functor_arg): . functor_arg
  ```
  Sample sentence (interface):
  ```ocaml
  include ( ) -> x
  ```
- Derivation (22 occurrences):
  ```
  signature_item: INCLUDE ext list(attribute) . module_type list(post_item_attribute)
    module_type: . module_type MINUSGREATER module_type
  ```
  Sample sentence (interface):
  ```ocaml
  include {%ext|s|} -> x
  ```
- Derivation (1 occurrence):
  ```
  signature_item: INCLUDE ext list(attribute) . module_type list(post_item_attribute)
    module_type: . module_type MINUSGREATER module_type
      module_type: . mty_longident
        mty_longident: . mk_longident(mod_ext_longident,ident)
  ```
  Sample sentence (interface):
  ```ocaml
  include X -> {%ext|s|}
  ```


### Item `generalized_constructor_arguments: COLON reversed_nonempty_llist(typevar) DOT . atomic_type` (in 40 errors)

- Derivation (9 occurrences):
  ```
  generalized_constructor_arguments: COLON reversed_nonempty_llist(typevar) DOT . atomic_type
    atomic_type: . delimited_type
  ```
  Sample sentence (interface):
  ```ocaml
  exception false : ' x . {%ext|s|}
  ```
- Derivation (5 occurrences):
  ```
  generalized_constructor_arguments: COLON reversed_nonempty_llist(typevar) DOT . atomic_type
    atomic_type: . atomic_type type_longident
  ```
  Sample sentence (interface):
  ```ocaml
  exception false : ' x . {%ext|s|} x
  ```
- Derivation (2 occurrences):
  ```
  generalized_constructor_arguments: COLON reversed_nonempty_llist(typevar) DOT . atomic_type
    atomic_type: . type_longident
      type_longident: . mk_longident(mod_ext_longident,LIDENT)
        mk_longident(mod_ext_longident,LIDENT): . LIDENT
  ```
  Sample sentence (interface):
  ```ocaml
  exception false : ' x . x
  ```
- Derivation (2 occurrences):
  ```
  generalized_constructor_arguments: COLON reversed_nonempty_llist(typevar) DOT . atomic_type
    atomic_type: . LPAREN reversed_separated_nontrivial_llist(COMMA,core_type) RPAREN type_longident
  ```
  Sample sentence (interface):
  ```ocaml
  exception false : ' x . ( {%ext|s|} , {%ext|s|} ) x
  ```
- Derivation (1 occurrence):
  ```
  generalized_constructor_arguments: COLON reversed_nonempty_llist(typevar) DOT . atomic_type
    atomic_type: . delimited_type
      delimited_type: . object_type
        object_type: . LESS GREATER
  ```
  Sample sentence (interface):
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
  Sample sentence (interface):
  ```ocaml
  exception false : ' x . < {%ext|s|} >
  ```
- Derivation (1 occurrence):
  ```
  generalized_constructor_arguments: COLON reversed_nonempty_llist(typevar) DOT . atomic_type
    atomic_type: . type_longident
      type_longident: . mk_longident(mod_ext_longident,LIDENT)
        mk_longident(mod_ext_longident,LIDENT): . mod_ext_longident DOT LIDENT
          mod_ext_longident: . mod_ext_longident LPAREN mod_ext_longident RPAREN
            mod_ext_longident: . mk_longident(mod_ext_longident,UIDENT)
              mk_longident(mod_ext_longident,UIDENT): . UIDENT
  ```
  Sample sentence (interface):
  ```ocaml
  exception false : ' x . X ( X ) . x
  ```
- Derivation (1 occurrence):
  ```
  generalized_constructor_arguments: COLON reversed_nonempty_llist(typevar) DOT . atomic_type
    atomic_type: . type_longident
      type_longident: . mk_longident(mod_ext_longident,LIDENT)
        mk_longident(mod_ext_longident,LIDENT): . mod_ext_longident DOT LIDENT
          mod_ext_longident: . mk_longident(mod_ext_longident,UIDENT)
            mk_longident(mod_ext_longident,UIDENT): . mod_ext_longident DOT UIDENT
              mod_ext_longident: . mk_longident(mod_ext_longident,UIDENT)
                mk_longident(mod_ext_longident,UIDENT): . UIDENT
  ```
  Sample sentence (interface):
  ```ocaml
  exception false : ' x . X . X . x
  ```
- Derivation (1 occurrence):
  ```
  generalized_constructor_arguments: COLON reversed_nonempty_llist(typevar) DOT . atomic_type
    atomic_type: . type_longident
      type_longident: . mk_longident(mod_ext_longident,LIDENT)
        mk_longident(mod_ext_longident,LIDENT): . mod_ext_longident DOT LIDENT
          mod_ext_longident: . mk_longident(mod_ext_longident,UIDENT)
            mk_longident(mod_ext_longident,UIDENT): . UIDENT
  ```
  Sample sentence (interface):
  ```ocaml
  exception false : ' x . X . x
  ```
- Derivation (1 occurrence):
  ```
  generalized_constructor_arguments: COLON reversed_nonempty_llist(typevar) DOT . atomic_type
    atomic_type: . atomic_type type_longident
      atomic_type: . type_longident
        type_longident: . mk_longident(mod_ext_longident,LIDENT)
          mk_longident(mod_ext_longident,LIDENT): . LIDENT
  ```
  Sample sentence (interface):
  ```ocaml
  exception false : ' x . x x
  ```
- Derivation (1 occurrence):
  ```
  generalized_constructor_arguments: COLON reversed_nonempty_llist(typevar) DOT . atomic_type
    atomic_type: . delimited_type
      delimited_type: . extension_type
        extension_type: . extension
          extension: . LBRACKETPERCENT attr_id payload RBRACKET
  ```
  Sample sentence (interface):
  ```ocaml
  exception false : ' x . [% and ]
  ```
- Derivation (1 occurrence):
  ```
  generalized_constructor_arguments: COLON reversed_nonempty_llist(typevar) DOT . atomic_type
    atomic_type: . delimited_type
      delimited_type: . delimited_type_supporting_local_open
        delimited_type_supporting_local_open: . LBRACKETLESS option(BAR) reversed_separated_nonempty_llist(BAR,row_field) GREATER reversed_nonempty_llist(name_tag) RBRACKET
  ```
  Sample sentence (interface):
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
  Sample sentence (interface):
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
  Sample sentence (interface):
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
  Sample sentence (interface):
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
  Sample sentence (interface):
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
  Sample sentence (interface):
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
  Sample sentence (interface):
  ```ocaml
  exception false : ' x . [ ` x ]
  ```
- Derivation (1 occurrence):
  ```
  generalized_constructor_arguments: COLON reversed_nonempty_llist(typevar) DOT . atomic_type
    atomic_type: . delimited_type
      delimited_type: . delimited_type_supporting_local_open
        delimited_type_supporting_local_open: . LPAREN core_type RPAREN
  ```
  Sample sentence (interface):
  ```ocaml
  exception false : ' x . ( {%ext|s|} )
  ```
- Derivation (1 occurrence):
  ```
  generalized_constructor_arguments: COLON reversed_nonempty_llist(typevar) DOT . atomic_type
    atomic_type: . UNDERSCORE
  ```
  Sample sentence (interface):
  ```ocaml
  exception false : ' x . _
  ```
- Derivation (1 occurrence):
  ```
  generalized_constructor_arguments: COLON reversed_nonempty_llist(typevar) DOT . atomic_type
    atomic_type: . QUOTE ident
  ```
  Sample sentence (interface):
  ```ocaml
  exception false : ' x . ' x
  ```
- ...


### Item `extension: . QUOTED_STRING_EXPR` (in 8 errors)

- Derivation (2 occurrences):
  ```
  module_type: module_type MINUSGREATER . module_type
    module_type: . extension
      extension: . QUOTED_STRING_EXPR
  ```
  Sample sentence (interface):
  ```ocaml
  include ( {%ext|s|} -> {%ext|s|} )
  ```
- Derivation (1 occurrence):
  ```
  module_type: module_type MINUSGREATER . module_type
    module_type: . module_type WITH reversed_separated_nonempty_llist(AND,with_constraint)
      module_type: . extension
        extension: . QUOTED_STRING_EXPR
  ```
  Sample sentence (interface):
  ```ocaml
  include ( {%ext|s|} -> {%ext|s|} with module X := X )
  ```
- Derivation (1 occurrence):
  ```
  module_type: reversed_nonempty_llist(functor_arg) MINUSGREATER . module_type
    module_type: . module_type WITH reversed_separated_nonempty_llist(AND,with_constraint)
      module_type: . extension
        extension: . QUOTED_STRING_EXPR
  ```
  Sample sentence (interface):
  ```ocaml
  include ( ( ) -> {%ext|s|} with module X := X )
  ```
- Derivation (1 occurrence):
  ```
  module_type: FUNCTOR list(attribute) reversed_nonempty_llist(functor_arg) MINUSGREATER . module_type
    module_type: . module_type WITH reversed_separated_nonempty_llist(AND,with_constraint)
      module_type: . extension
        extension: . QUOTED_STRING_EXPR
  ```
  Sample sentence (interface):
  ```ocaml
  include ( functor ( ) -> {%ext|s|} with module X := X )
  ```
- Derivation (1 occurrence):
  ```
  module_type: reversed_nonempty_llist(functor_arg) MINUSGREATER . module_type
    module_type: . extension
      extension: . QUOTED_STRING_EXPR
  ```
  Sample sentence (interface):
  ```ocaml
  include ( ( ) -> {%ext|s|} )
  ```
- Derivation (1 occurrence):
  ```
  module_type: FUNCTOR list(attribute) reversed_nonempty_llist(functor_arg) MINUSGREATER . module_type
    module_type: . extension
      extension: . QUOTED_STRING_EXPR
  ```
  Sample sentence (interface):
  ```ocaml
  include ( functor ( ) -> {%ext|s|} )
  ```
- Derivation (1 occurrence):
  ```
  functor_arg: LPAREN module_name COLON . module_type RPAREN
    module_type: . extension
      extension: . QUOTED_STRING_EXPR
  ```
  Sample sentence (interface):
  ```ocaml
  include ( ( X : {%ext|s|} ) -> {%ext|s|} )
  ```


### Item `fun_expr: fun_expr OR FUNCTION ext list(attribute) . reversed_preceded_or_separated_nonempty_llist(BAR,match_case)` (in 6 errors)

- Derivation (6 occurrences):
  ```
  fun_expr: fun_expr OR FUNCTION ext list(attribute) . reversed_preceded_or_separated_nonempty_llist(BAR,match_case)
    reversed_preceded_or_separated_nonempty_llist(BAR,match_case): . match_case
  ```
  Sample sentence (implementation):
  ```ocaml
  let* x in X or function false -> . = X
  ```


### Item `attribute: . LBRACKETAT attr_id attr_payload RBRACKET` (in 1 error)

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

## BUG: generating invalid ocaml syntax. (29 errors)

### Item `extension: . QUOTED_STRING_EXPR` (in 19 errors)

- Derivation (5 occurrences):
  ```
  module_type: reversed_nonempty_llist(functor_arg) MINUSGREATER . module_type
    module_type: . extension
      extension: . QUOTED_STRING_EXPR
  ```
  Sample sentence (interface):
  ```ocaml
  include {%ext|s|} -> ( ) -> {%ext|s|}
  ```
- Derivation (5 occurrences):
  ```
  module_type: FUNCTOR list(attribute) reversed_nonempty_llist(functor_arg) MINUSGREATER . module_type
    module_type: . extension
      extension: . QUOTED_STRING_EXPR
  ```
  Sample sentence (interface):
  ```ocaml
  include {%ext|s|} -> functor ( ) -> {%ext|s|}
  ```
- Derivation (2 occurrences):
  ```
  module_type: module_type MINUSGREATER . module_type
    module_type: . extension
      extension: . QUOTED_STRING_EXPR
  ```
  Sample sentence (interface):
  ```ocaml
  include {%ext|s|} -> X -> {%ext|s|}
  ```
- Derivation (2 occurrences):
  ```
  functor_arg: LPAREN module_name COLON . module_type RPAREN
    module_type: . extension
      extension: . QUOTED_STRING_EXPR
  ```
  Sample sentence (interface):
  ```ocaml
  include {%ext|s|} -> ( X : {%ext|s|} ) -> {%ext|s|}
  ```
- Derivation (1 occurrence):
  ```
  module_type: module_type MINUSGREATER . module_type
    module_type: . module_type MINUSGREATER module_type
      module_type: . module_type WITH reversed_separated_nonempty_llist(AND,with_constraint)
        module_type: . extension
          extension: . QUOTED_STRING_EXPR
  ```
  Sample sentence (interface):
  ```ocaml
  include {%ext|s|} -> {%ext|s|} with module X := X -> {%ext|s|}
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
  include ( ) -> {%ext|s|} with module X := X -> {%ext|s|}
  ```
- Derivation (1 occurrence):
  ```
  module_type: module_type MINUSGREATER . module_type
    module_type: . module_type MINUSGREATER module_type
      module_type: . extension
        extension: . QUOTED_STRING_EXPR
  ```
  Sample sentence (interface):
  ```ocaml
  include ( {%ext|s|} -> {%ext|s|} -> {%ext|s|} )
  ```
- Derivation (1 occurrence):
  ```
  module_type: reversed_nonempty_llist(functor_arg) MINUSGREATER . module_type
    module_type: . module_type MINUSGREATER module_type
      module_type: . extension
        extension: . QUOTED_STRING_EXPR
  ```
  Sample sentence (interface):
  ```ocaml
  include ( ( ) -> {%ext|s|} -> {%ext|s|} )
  ```
- Derivation (1 occurrence):
  ```
  module_type: FUNCTOR list(attribute) reversed_nonempty_llist(functor_arg) MINUSGREATER . module_type
    module_type: . module_type MINUSGREATER module_type
      module_type: . extension
        extension: . QUOTED_STRING_EXPR
  ```
  Sample sentence (interface):
  ```ocaml
  include ( functor ( ) -> {%ext|s|} -> {%ext|s|} )
  ```


### Item `constr_ident: . LPAREN COLONCOLON RPAREN` (in 7 errors)

- Derivation (2 occurrences):
  ```
  sig_exception_declaration: EXCEPTION ext list(attribute) . constr_ident generalized_constructor_arguments list(attribute) list(post_item_attribute)
    constr_ident: . LPAREN COLONCOLON RPAREN
  ```
  Sample sentence (interface):
  ```ocaml
  exception ( :: )
  ```
- Derivation (2 occurrences):
  ```
  generic_constructor_declaration(BAR): BAR . constr_ident generalized_constructor_arguments list(attribute)
    constr_ident: . LPAREN COLONCOLON RPAREN
  ```
  Sample sentence (interface):
  ```ocaml
  type x += | ( :: )
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
  structure_item: TYPE ext list(attribute) type_parameters type_longident PLUSEQ private_flag . reversed_bar_llist(extension_constructor) list(post_item_attribute)
    reversed_bar_llist(extension_constructor): . generic_constructor_declaration(epsilon)
      generic_constructor_declaration(epsilon): . constr_ident generalized_constructor_arguments list(attribute)
        constr_ident: . LPAREN COLONCOLON RPAREN
  ```
  Sample sentence (implementation):
  ```ocaml
  type x += ( :: )
  ```
- Derivation (1 occurrence):
  ```
  fun_expr: LET EXCEPTION ext list(attribute) . constr_ident generalized_constructor_arguments list(attribute) IN seq_expr
    constr_ident: . LPAREN COLONCOLON RPAREN
  ```
  Sample sentence (implementation):
  ```ocaml
  let exception ( :: ) in X
  ```


### Item `pattern: . pattern_gen` (in 2 errors)

- Derivation (1 occurrence):
  ```
  labeled_simple_pattern: OPTLABEL LPAREN . let_pattern option(preceded(EQUAL,seq_expr)) RPAREN
    let_pattern: . pattern
      pattern: . pattern_gen
        pattern_gen: . simple_pattern
          simple_pattern: . val_ident
            val_ident: . val_extra_ident
  ```
  Sample sentence (implementation):
  ```ocaml
  fun ?label: ( ( - ) ) -> X
  ```
- Derivation (1 occurrence):
  ```
  class_self_pattern: LPAREN . pattern RPAREN
    pattern: . pattern_gen
      pattern_gen: . simple_pattern
        simple_pattern: . simple_pattern_not_ident
          simple_pattern_not_ident: . LPAREN MODULE ext list(attribute) module_name RPAREN
  ```
  Sample sentence (implementation):
  ```ocaml
  object ( ( module X ) ) end
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

## Error: Syntax error (4834 errors)

### Item `fun_seq_expr: . fun_expr` (in 3548 errors)

- Derivation (2301 occurrences):
  ```
  match_case: pattern MINUSGREATER . seq_expr
    seq_expr: . fun_seq_expr
      fun_seq_expr: . fun_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  function false -> X let x
  ```
- Derivation (117 occurrences):
  ```
  implementation: . structure EOF
    structure: . seq_expr list(post_item_attribute) list(structure_element)
      seq_expr: . fun_seq_expr
        fun_seq_expr: . fun_expr
          fun_expr: . reversed_separated_nontrivial_llist(COMMA,expr)
  ```
  Sample sentence (implementation):
  ```ocaml
  X , X let x
  ```
- Derivation (96 occurrences):
  ```
  fun_expr: LETOP letop_bindings IN . seq_expr
    seq_expr: . fun_seq_expr
      fun_seq_expr: . fun_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  let* x in X let x
  ```
- Derivation (96 occurrences):
  ```
  fun_expr: LET OPEN BANG ext list(attribute) module_expr IN . seq_expr
    seq_expr: . fun_seq_expr
      fun_seq_expr: . fun_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  let open ! {%ext|s|} in X let x
  ```
- Derivation (96 occurrences):
  ```
  fun_expr: LET OPEN ext list(attribute) module_expr IN . seq_expr
    seq_expr: . fun_seq_expr
      fun_seq_expr: . fun_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  let open {%ext|s|} in X let x
  ```
- Derivation (96 occurrences):
  ```
  fun_expr: LET EXCEPTION ext list(attribute) constr_ident generalized_constructor_arguments list(attribute) IN . seq_expr
    seq_expr: . fun_seq_expr
      fun_seq_expr: . fun_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  let exception false in X let x
  ```
- Derivation (96 occurrences):
  ```
  fun_expr: LET MODULE ext list(attribute) module_name module_binding_body IN . seq_expr
    seq_expr: . fun_seq_expr
      fun_seq_expr: . fun_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  let module X = {%ext|s|} in X let x
  ```
- Derivation (96 occurrences):
  ```
  fun_expr: FUN ext list(attribute) fun_params option(preceded(COLON,atomic_type)) MINUSGREATER . fun_body
    fun_body: . fun_seq_expr
      fun_seq_expr: . fun_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  fun false -> X let x
  ```
- Derivation (83 occurrences):
  ```
  match_case: pattern WHEN seq_expr MINUSGREATER . seq_expr
    seq_expr: . fun_seq_expr
      fun_seq_expr: . fun_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  function false when X -> X let x
  ```
- Derivation (56 occurrences):
  ```
  fun_seq_expr: fun_expr SEMI PERCENT attr_id . seq_expr
    seq_expr: . fun_seq_expr
      fun_seq_expr: . fun_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  X ; % and X let x
  ```
- Derivation (56 occurrences):
  ```
  fun_seq_expr: fun_expr SEMI . seq_expr
    seq_expr: . fun_seq_expr
      fun_seq_expr: . fun_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  X ; X let x
  ```
- Derivation (38 occurrences):
  ```
  strict_binding: EQUAL . seq_expr
    seq_expr: . fun_seq_expr
      fun_seq_expr: . fun_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  let x = X let x
  ```
- Derivation (38 occurrences):
  ```
  list(structure_element): SEMISEMI . seq_expr list(post_item_attribute) list(structure_element)
    seq_expr: . fun_seq_expr
      fun_seq_expr: . fun_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  ;; X let x
  ```
- Derivation (38 occurrences):
  ```
  let_binding_body_no_punning: simple_pattern_not_ident COLON core_type EQUAL . seq_expr
    seq_expr: . fun_seq_expr
      fun_seq_expr: . fun_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  let false : {%ext|s|} = X let x
  ```
- Derivation (38 occurrences):
  ```
  let_binding_body_no_punning: val_ident COLON TYPE nonempty_list(mkrhs(LIDENT)) DOT core_type EQUAL . seq_expr
    seq_expr: . fun_seq_expr
      fun_seq_expr: . fun_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  let x : type x . {%ext|s|} = X let x
  ```
- Derivation (38 occurrences):
  ```
  let_binding_body_no_punning: val_ident COLON reversed_nonempty_llist(typevar) DOT core_type EQUAL . seq_expr
    seq_expr: . fun_seq_expr
      fun_seq_expr: . fun_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  let x : ' x . {%ext|s|} = X let x
  ```
- Derivation (38 occurrences):
  ```
  let_binding_body_no_punning: val_ident type_constraint EQUAL . seq_expr
    seq_expr: . fun_seq_expr
      fun_seq_expr: . fun_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  let x : {%ext|s|} = X let x
  ```
- Derivation (38 occurrences):
  ```
  strict_binding: fun_params option(type_constraint) EQUAL . fun_body
    fun_body: . fun_seq_expr
      fun_seq_expr: . fun_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  let x false = X let x
  ```
- Derivation (37 occurrences):
  ```
  let_binding_body_no_punning: pattern_no_exn EQUAL . seq_expr
    seq_expr: . fun_seq_expr
      fun_seq_expr: . fun_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  let false = + X let x
  ```
- Derivation (3 occurrences):
  ```
  strict_binding: EQUAL . seq_expr
    seq_expr: . fun_seq_expr
      fun_seq_expr: . fun_expr
        fun_expr: . reversed_separated_nontrivial_llist(COMMA,expr)
  ```
  Sample sentence (implementation):
  ```ocaml
  let x = X , X let x
  ```
- Derivation (3 occurrences):
  ```
  match_case: pattern WHEN seq_expr MINUSGREATER . seq_expr
    seq_expr: . fun_seq_expr
      fun_seq_expr: . fun_expr
        fun_expr: . reversed_separated_nontrivial_llist(COMMA,expr)
  ```
  Sample sentence (implementation):
  ```ocaml
  function false when X -> X , X let x
  ```
- ...


### Item `fun_expr: . reversed_separated_nontrivial_llist(COMMA,expr)` (in 85 errors)

- Derivation (3 occurrences):
  ```
  fun_expr: simple_expr DOT mod_longident DOTOP LBRACKET separated_or_terminated_nonempty_list(SEMI,expr) RBRACKET LESSMINUS . fun_expr
    fun_expr: . reversed_separated_nontrivial_llist(COMMA,expr)
  ```
  Sample sentence (implementation):
  ```ocaml
  false . X .+ [ X ] <- X , X let x
  ```
- Derivation (3 occurrences):
  ```
  fun_expr: simple_expr DOTOP LBRACKET separated_or_terminated_nonempty_list(SEMI,expr) RBRACKET LESSMINUS . fun_expr
    fun_expr: . reversed_separated_nontrivial_llist(COMMA,expr)
  ```
  Sample sentence (implementation):
  ```ocaml
  X .+ [ X ] <- X , X let x
  ```
- Derivation (3 occurrences):
  ```
  fun_expr: simple_expr DOT mod_longident DOTOP LBRACE separated_or_terminated_nonempty_list(SEMI,expr) RBRACE LESSMINUS . fun_expr
    fun_expr: . reversed_separated_nontrivial_llist(COMMA,expr)
  ```
  Sample sentence (implementation):
  ```ocaml
  false . X .+ { X } <- X , X let x
  ```
- Derivation (3 occurrences):
  ```
  fun_expr: simple_expr DOTOP LBRACE separated_or_terminated_nonempty_list(SEMI,expr) RBRACE LESSMINUS . fun_expr
    fun_expr: . reversed_separated_nontrivial_llist(COMMA,expr)
  ```
  Sample sentence (implementation):
  ```ocaml
  X .+ { X } <- X , X let x
  ```
- Derivation (3 occurrences):
  ```
  fun_expr: simple_expr DOT mod_longident DOTOP LPAREN separated_or_terminated_nonempty_list(SEMI,expr) RPAREN LESSMINUS . fun_expr
    fun_expr: . reversed_separated_nontrivial_llist(COMMA,expr)
  ```
  Sample sentence (implementation):
  ```ocaml
  false . X .+ ( X ) <- X , X let x
  ```
- Derivation (3 occurrences):
  ```
  fun_expr: simple_expr DOTOP LPAREN separated_or_terminated_nonempty_list(SEMI,expr) RPAREN LESSMINUS . fun_expr
    fun_expr: . reversed_separated_nontrivial_llist(COMMA,expr)
  ```
  Sample sentence (implementation):
  ```ocaml
  X .+ ( X ) <- X , X let x
  ```
- Derivation (3 occurrences):
  ```
  fun_expr: simple_expr DOT LBRACKET seq_expr RBRACKET LESSMINUS . fun_expr
    fun_expr: . reversed_separated_nontrivial_llist(COMMA,expr)
  ```
  Sample sentence (implementation):
  ```ocaml
  false . [ X ] <- X , X let x
  ```
- Derivation (3 occurrences):
  ```
  fun_expr: simple_expr DOT LBRACE seq_expr RBRACE LESSMINUS . fun_expr
    fun_expr: . reversed_separated_nontrivial_llist(COMMA,expr)
  ```
  Sample sentence (implementation):
  ```ocaml
  false . { X } <- X , X let x
  ```
- Derivation (3 occurrences):
  ```
  fun_expr: simple_expr DOT LPAREN seq_expr RPAREN LESSMINUS . fun_expr
    fun_expr: . reversed_separated_nontrivial_llist(COMMA,expr)
  ```
  Sample sentence (implementation):
  ```ocaml
  false . ( X ) <- X , X let x
  ```
- Derivation (3 occurrences):
  ```
  fun_expr: simple_expr DOT label_longident LESSMINUS . fun_expr
    fun_expr: . reversed_separated_nontrivial_llist(COMMA,expr)
  ```
  Sample sentence (implementation):
  ```ocaml
  false . x <- X , X let x
  ```
- Derivation (3 occurrences):
  ```
  fun_expr: LIDENT LESSMINUS . fun_expr
    fun_expr: . reversed_separated_nontrivial_llist(COMMA,expr)
  ```
  Sample sentence (implementation):
  ```ocaml
  x <- X , X let x
  ```
- Derivation (3 occurrences):
  ```
  fun_expr: fun_expr COLONEQUAL . fun_expr
    fun_expr: . reversed_separated_nontrivial_llist(COMMA,expr)
  ```
  Sample sentence (implementation):
  ```ocaml
  X := X , X let x
  ```
- Derivation (3 occurrences):
  ```
  fun_expr: IF ext list(attribute) seq_expr THEN . fun_expr
    fun_expr: . reversed_separated_nontrivial_llist(COMMA,expr)
  ```
  Sample sentence (implementation):
  ```ocaml
  if X then X , X let x
  ```
- Derivation (3 occurrences):
  ```
  fun_expr: IF ext list(attribute) seq_expr THEN FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case) ELSE . fun_expr
    fun_expr: . reversed_separated_nontrivial_llist(COMMA,expr)
  ```
  Sample sentence (implementation):
  ```ocaml
  if X then function false -> X else X , X let x
  ```
- Derivation (3 occurrences):
  ```
  fun_expr: IF ext list(attribute) seq_expr THEN fun_expr ELSE . fun_expr
    fun_expr: . reversed_separated_nontrivial_llist(COMMA,expr)
  ```
  Sample sentence (implementation):
  ```ocaml
  if X then X else X , X let x
  ```
- Derivation (2 occurrences):
  ```
  fun_expr: fun_expr COLONCOLON . fun_expr
    fun_expr: . reversed_separated_nontrivial_llist(COMMA,expr)
  ```
  Sample sentence (implementation):
  ```ocaml
  X :: function false -> . , X let x
  ```
- Derivation (2 occurrences):
  ```
  fun_expr: fun_expr AMPERAMPER . fun_expr
    fun_expr: . reversed_separated_nontrivial_llist(COMMA,expr)
  ```
  Sample sentence (implementation):
  ```ocaml
  X && function false -> . , X let x
  ```
- Derivation (2 occurrences):
  ```
  fun_expr: fun_expr AMPERSAND . fun_expr
    fun_expr: . reversed_separated_nontrivial_llist(COMMA,expr)
  ```
  Sample sentence (implementation):
  ```ocaml
  X & function false -> . , X let x
  ```
- Derivation (2 occurrences):
  ```
  fun_expr: fun_expr BARBAR . fun_expr
    fun_expr: . reversed_separated_nontrivial_llist(COMMA,expr)
  ```
  Sample sentence (implementation):
  ```ocaml
  X || function false -> . , X let x
  ```
- Derivation (2 occurrences):
  ```
  fun_expr: fun_expr OR . fun_expr
    fun_expr: . reversed_separated_nontrivial_llist(COMMA,expr)
  ```
  Sample sentence (implementation):
  ```ocaml
  X or function false -> . , X let x
  ```
- Derivation (2 occurrences):
  ```
  fun_expr: fun_expr GREATER . fun_expr
    fun_expr: . reversed_separated_nontrivial_llist(COMMA,expr)
  ```
  Sample sentence (implementation):
  ```ocaml
  X > function false -> . , X let x
  ```
- ...


### Item `fun_expr: IF ext list(attribute) seq_expr THEN fun_expr ELSE . fun_expr` (in 74 errors)

- Derivation (74 occurrences):
  ```
  fun_expr: IF ext list(attribute) seq_expr THEN fun_expr ELSE . fun_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  if X then X else X let x
  ```


### Item `fun_expr: IF ext list(attribute) seq_expr THEN FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case) ELSE . fun_expr` (in 72 errors)

- Derivation (72 occurrences):
  ```
  fun_expr: IF ext list(attribute) seq_expr THEN FUNCTION ext list(attribute) reversed_preceded_or_separated_nonempty_llist(BAR,match_case) ELSE . fun_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  if X then function false -> X else X let x
  ```


### Item `fun_expr: IF ext list(attribute) seq_expr THEN . fun_expr` (in 70 errors)

- Derivation (70 occurrences):
  ```
  fun_expr: IF ext list(attribute) seq_expr THEN . fun_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  if X then X let x
  ```


### Item `fun_expr: LIDENT LESSMINUS . fun_expr` (in 68 errors)

- Derivation (68 occurrences):
  ```
  fun_expr: LIDENT LESSMINUS . fun_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  x <- X let x
  ```


### Item `fun_expr: simple_expr DOT label_longident LESSMINUS . fun_expr` (in 66 errors)

- Derivation (66 occurrences):
  ```
  fun_expr: simple_expr DOT label_longident LESSMINUS . fun_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  false . x <- X let x
  ```


### Item `fun_expr: simple_expr DOT LPAREN seq_expr RPAREN LESSMINUS . fun_expr` (in 64 errors)

- Derivation (64 occurrences):
  ```
  fun_expr: simple_expr DOT LPAREN seq_expr RPAREN LESSMINUS . fun_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  false . ( X ) <- X let x
  ```


### Item `fun_expr: simple_expr DOT LBRACE seq_expr RBRACE LESSMINUS . fun_expr` (in 62 errors)

- Derivation (62 occurrences):
  ```
  fun_expr: simple_expr DOT LBRACE seq_expr RBRACE LESSMINUS . fun_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  false . { X } <- X let x
  ```


### Item `fun_expr: simple_expr DOT LBRACKET seq_expr RBRACKET LESSMINUS . fun_expr` (in 60 errors)

- Derivation (60 occurrences):
  ```
  fun_expr: simple_expr DOT LBRACKET seq_expr RBRACKET LESSMINUS . fun_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  false . [ X ] <- X let x
  ```


### Item `fun_expr: simple_expr DOTOP LPAREN separated_or_terminated_nonempty_list(SEMI,expr) RPAREN LESSMINUS . fun_expr` (in 58 errors)

- Derivation (58 occurrences):
  ```
  fun_expr: simple_expr DOTOP LPAREN separated_or_terminated_nonempty_list(SEMI,expr) RPAREN LESSMINUS . fun_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  X .+ ( X ) <- X let x
  ```


### Item `fun_expr: simple_expr DOT mod_longident DOTOP LPAREN separated_or_terminated_nonempty_list(SEMI,expr) RPAREN LESSMINUS . fun_expr` (in 56 errors)

- Derivation (56 occurrences):
  ```
  fun_expr: simple_expr DOT mod_longident DOTOP LPAREN separated_or_terminated_nonempty_list(SEMI,expr) RPAREN LESSMINUS . fun_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  false . X .+ ( X ) <- X let x
  ```


### Item `fun_expr: simple_expr DOTOP LBRACE separated_or_terminated_nonempty_list(SEMI,expr) RBRACE LESSMINUS . fun_expr` (in 54 errors)

- Derivation (54 occurrences):
  ```
  fun_expr: simple_expr DOTOP LBRACE separated_or_terminated_nonempty_list(SEMI,expr) RBRACE LESSMINUS . fun_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  X .+ { X } <- X let x
  ```


### Item `fun_expr: simple_expr DOT mod_longident DOTOP LBRACE separated_or_terminated_nonempty_list(SEMI,expr) RBRACE LESSMINUS . fun_expr` (in 52 errors)

- Derivation (52 occurrences):
  ```
  fun_expr: simple_expr DOT mod_longident DOTOP LBRACE separated_or_terminated_nonempty_list(SEMI,expr) RBRACE LESSMINUS . fun_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  false . X .+ { X } <- X let x
  ```


### Item `fun_expr: simple_expr DOTOP LBRACKET separated_or_terminated_nonempty_list(SEMI,expr) RBRACKET LESSMINUS . fun_expr` (in 50 errors)

- Derivation (50 occurrences):
  ```
  fun_expr: simple_expr DOTOP LBRACKET separated_or_terminated_nonempty_list(SEMI,expr) RBRACKET LESSMINUS . fun_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  X .+ [ X ] <- X let x
  ```


### Item `fun_expr: simple_expr DOT mod_longident DOTOP LBRACKET separated_or_terminated_nonempty_list(SEMI,expr) RBRACKET LESSMINUS . fun_expr` (in 48 errors)

- Derivation (48 occurrences):
  ```
  fun_expr: simple_expr DOT mod_longident DOTOP LBRACKET separated_or_terminated_nonempty_list(SEMI,expr) RBRACKET LESSMINUS . fun_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  false . X .+ [ X ] <- X let x
  ```


### Item `list(structure_element): . structure_item list(structure_element)` (in 48 errors)

- Derivation (13 occurrences):
  ```
  implementation: . structure EOF
    structure: . list(structure_element)
      list(structure_element): . structure_item list(structure_element)
        structure_item: . class_type_declarations
  ```
  Sample sentence (implementation):
  ```ocaml
  class type x = x let x
  ```
- Derivation (6 occurrences):
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
- Derivation (3 occurrences):
  ```
  implementation: . structure EOF
    structure: . list(structure_element)
      list(structure_element): . structure_item list(structure_element)
        structure_item: . str_exception_declaration
          str_exception_declaration: . sig_exception_declaration
  ```
  Sample sentence (implementation):
  ```ocaml
  exception false let x
  ```
- Derivation (2 occurrences):
  ```
  implementation: . structure EOF
    structure: . list(structure_element)
      list(structure_element): . structure_item list(structure_element)
        structure_item: . module_type_declaration
  ```
  Sample sentence (implementation):
  ```ocaml
  module type x let x
  ```
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
  list(structure_element): SEMISEMI . list(structure_element)
    list(structure_element): . structure_item list(structure_element)
      structure_item: . let_bindings(ext)
  ```
  Sample sentence (implementation):
  ```ocaml
  ;; let x
  ```
- Derivation (1 occurrence):
  ```
  structure: seq_expr list(post_item_attribute) . list(structure_element)
    list(structure_element): . structure_item list(structure_element)
      structure_item: . str_exception_declaration
        str_exception_declaration: . sig_exception_declaration
  ```
  Sample sentence (implementation):
  ```ocaml
  X exception false let x
  ```
- Derivation (1 occurrence):
  ```
  list(structure_element): structure_item . list(structure_element)
    list(structure_element): . structure_item list(structure_element)
      structure_item: . str_exception_declaration
        str_exception_declaration: . sig_exception_declaration
  ```
  Sample sentence (implementation):
  ```ocaml
  {%%ext|s|} exception false let x
  ```
- Derivation (1 occurrence):
  ```
  list(structure_element): SEMISEMI seq_expr list(post_item_attribute) . list(structure_element)
    list(structure_element): . structure_item list(structure_element)
      structure_item: . str_exception_declaration
        str_exception_declaration: . sig_exception_declaration
  ```
  Sample sentence (implementation):
  ```ocaml
  ;; X exception false let x
  ```
- Derivation (1 occurrence):
  ```
  list(structure_element): SEMISEMI . list(structure_element)
    list(structure_element): . structure_item list(structure_element)
      structure_item: . str_exception_declaration
        str_exception_declaration: . sig_exception_declaration
  ```
  Sample sentence (implementation):
  ```ocaml
  ;; exception false let x
  ```
- ...


### Item `let_binding_body: . val_ident` (in 31 errors)

- Derivation (31 occurrences):
  ```
  let_bindings(ext): LET ext list(attribute) rec_flag . let_binding_body list(post_item_attribute)
    let_binding_body: . val_ident
      val_ident: . val_extra_ident
  ```
  Sample sentence (implementation):
  ```ocaml
  let ( - )
  ```


### Item `fun_expr: fun_expr OR . fun_expr` (in 25 errors)

- Derivation (25 occurrences):
  ```
  fun_expr: fun_expr OR . fun_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  X or X let x
  ```


### Item `fun_expr: fun_expr AMPERSAND . fun_expr` (in 24 errors)

- Derivation (24 occurrences):
  ```
  fun_expr: fun_expr AMPERSAND . fun_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  X & X let x
  ```


### Item `fun_expr: subtractive . fun_expr` (in 23 errors)

- Derivation (23 occurrences):
  ```
  fun_expr: subtractive . fun_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  - X let x
  ```


### Item `fun_expr: fun_expr INFIXOP1 . fun_expr` (in 21 errors)

- Derivation (21 occurrences):
  ```
  fun_expr: fun_expr INFIXOP1 . fun_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  X ^ X let x
  ```


### Item `fun_expr: fun_expr INFIXOP4 . fun_expr` (in 20 errors)

- Derivation (20 occurrences):
  ```
  fun_expr: fun_expr INFIXOP4 . fun_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  X ** X let x
  ```


### Item `fun_expr: fun_expr BARBAR . fun_expr` (in 19 errors)

- Derivation (19 occurrences):
  ```
  fun_expr: fun_expr BARBAR . fun_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  X || X let x
  ```


### Item `fun_expr: fun_expr AMPERAMPER . fun_expr` (in 18 errors)

- Derivation (18 occurrences):
  ```
  fun_expr: fun_expr AMPERAMPER . fun_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  X && X let x
  ```


### Item `fun_expr: fun_expr COLONEQUAL . fun_expr` (in 17 errors)

- Derivation (17 occurrences):
  ```
  fun_expr: fun_expr COLONEQUAL . fun_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  X := X let x
  ```


### Item `fun_expr: additive . fun_expr` (in 16 errors)

- Derivation (16 occurrences):
  ```
  fun_expr: additive . fun_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  + X let x
  ```


### Item `fun_expr: fun_expr COLONCOLON . fun_expr` (in 15 errors)

- Derivation (15 occurrences):
  ```
  fun_expr: fun_expr COLONCOLON . fun_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  X :: X let x
  ```


### Item `fun_expr: fun_expr INFIXOP3 . fun_expr` (in 11 errors)

- Derivation (11 occurrences):
  ```
  fun_expr: fun_expr INFIXOP3 . fun_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  X land X let x
  ```


### Item `fun_expr: fun_expr STAR . fun_expr` (in 11 errors)

- Derivation (11 occurrences):
  ```
  fun_expr: fun_expr STAR . fun_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  X * X let x
  ```


### Item `fun_expr: fun_expr PERCENT . fun_expr` (in 11 errors)

- Derivation (11 occurrences):
  ```
  fun_expr: fun_expr PERCENT . fun_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  X % X let x
  ```


### Item `fun_expr: fun_expr INFIXOP0 . fun_expr` (in 7 errors)

- Derivation (7 occurrences):
  ```
  fun_expr: fun_expr INFIXOP0 . fun_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  X != X let x
  ```


### Item `fun_expr: fun_expr EQUAL . fun_expr` (in 7 errors)

- Derivation (7 occurrences):
  ```
  fun_expr: fun_expr EQUAL . fun_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  X = X let x
  ```


### Item `fun_expr: fun_expr LESS . fun_expr` (in 7 errors)

- Derivation (7 occurrences):
  ```
  fun_expr: fun_expr LESS . fun_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  X < X let x
  ```


### Item `fun_expr: fun_expr GREATER . fun_expr` (in 7 errors)

- Derivation (7 occurrences):
  ```
  fun_expr: fun_expr GREATER . fun_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  X > X let x
  ```


### Item `attribute: . LBRACKETAT attr_id attr_payload RBRACKET` (in 1 error)

- Derivation (1 occurrence):
  ```
  let_bindings(ext): LET ext . list(attribute) rec_flag let_binding_body list(post_item_attribute)
    list(attribute): . attribute list(attribute)
      attribute: . LBRACKETAT attr_id attr_payload RBRACKET
  ```
  Sample sentence (implementation):
  ```ocaml
  let [@ and ] x
  ```


### Item `fun_expr: fun_expr INFIXOP2 . fun_expr` (in 1 error)

- Derivation (1 occurrence):
  ```
  fun_expr: fun_expr INFIXOP2 . fun_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  X +! X let x
  ```


### Item `fun_expr: fun_expr PLUS . fun_expr` (in 1 error)

- Derivation (1 occurrence):
  ```
  fun_expr: fun_expr PLUS . fun_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  X + X let x
  ```


### Item `fun_expr: fun_expr PLUSDOT . fun_expr` (in 1 error)

- Derivation (1 occurrence):
  ```
  fun_expr: fun_expr PLUSDOT . fun_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  X +. X let x
  ```


### Item `fun_expr: fun_expr PLUSEQ . fun_expr` (in 1 error)

- Derivation (1 occurrence):
  ```
  fun_expr: fun_expr PLUSEQ . fun_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  X += X let x
  ```


### Item `fun_expr: fun_expr MINUS . fun_expr` (in 1 error)

- Derivation (1 occurrence):
  ```
  fun_expr: fun_expr MINUS . fun_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  X - X let x
  ```


### Item `fun_expr: fun_expr MINUSDOT . fun_expr` (in 1 error)

- Derivation (1 occurrence):
  ```
  fun_expr: fun_expr MINUSDOT . fun_expr
  ```
  Sample sentence (implementation):
  ```ocaml
  X -. X let x
  ```


### Item `let_bindings(ext): LET ext list(attribute) . rec_flag let_binding_body list(post_item_attribute)` (in 1 error)

- Derivation (1 occurrence):
  ```
  let_bindings(ext): LET ext list(attribute) . rec_flag let_binding_body list(post_item_attribute)
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

## Error: comment dropped. (402 errors)

### Item `module_type: module_type WITH . reversed_separated_nonempty_llist(AND,with_constraint)` (in 333 errors)

- Derivation (154 occurrences):
  ```
  module_type: module_type WITH . reversed_separated_nonempty_llist(AND,with_constraint)
    reversed_separated_nonempty_llist(AND,with_constraint): . with_constraint
      with_constraint: . TYPE type_parameters label_longident COLONEQUAL alias_type
  ```
  Sample sentence (interface):
  ```ocaml
  include {%ext|s|} with type x := _
  ```
- Derivation (143 occurrences):
  ```
  module_type: module_type WITH . reversed_separated_nonempty_llist(AND,with_constraint)
    reversed_separated_nonempty_llist(AND,with_constraint): . with_constraint
      with_constraint: . TYPE type_parameters label_longident with_type_binder alias_type reversed_llist(preceded(CONSTRAINT,constrain))
  ```
  Sample sentence (interface):
  ```ocaml
  include {%ext|s|} with type x = {%ext|s|}
  ```
- Derivation (19 occurrences):
  ```
  module_type: module_type WITH . reversed_separated_nonempty_llist(AND,with_constraint)
    reversed_separated_nonempty_llist(AND,with_constraint): . with_constraint
  ```
  Sample sentence (interface):
  ```ocaml
  include {%ext|s|} with module X := X [@ and ]
  ```
- Derivation (13 occurrences):
  ```
  module_type: module_type WITH . reversed_separated_nonempty_llist(AND,with_constraint)
    reversed_separated_nonempty_llist(AND,with_constraint): . with_constraint
      with_constraint: . MODULE mod_longident COLONEQUAL mod_ext_longident
  ```
  Sample sentence (interface):
  ```ocaml
  include ( {%ext|s|} with module X := X )
  ```
- Derivation (4 occurrences):
  ```
  module_type: module_type WITH . reversed_separated_nonempty_llist(AND,with_constraint)
  ```
  Sample sentence (interface):
  ```ocaml
  include {%ext|s|} with module X := X and module X := X [@ and ]
  ```


### Item `ident: . UIDENT` (in 34 errors)

- Derivation (17 occurrences):
  ```
  with_constraint: MODULE TYPE . mty_longident COLONEQUAL module_type
    mty_longident: . mk_longident(mod_ext_longident,ident)
      mk_longident(mod_ext_longident,ident): . ident
        ident: . UIDENT
  ```
  Sample sentence (interface):
  ```ocaml
  include {%ext|s|} with module type X := X
  ```
- Derivation (17 occurrences):
  ```
  with_constraint: MODULE TYPE . mty_longident EQUAL module_type
    mty_longident: . mk_longident(mod_ext_longident,ident)
      mk_longident(mod_ext_longident,ident): . ident
        ident: . UIDENT
  ```
  Sample sentence (interface):
  ```ocaml
  include {%ext|s|} with module type X = X
  ```


### Item `reversed_separated_nonempty_llist(AND,with_constraint): reversed_separated_nonempty_llist(AND,with_constraint) AND . with_constraint` (in 19 errors)

- Derivation (9 occurrences):
  ```
  reversed_separated_nonempty_llist(AND,with_constraint): reversed_separated_nonempty_llist(AND,with_constraint) AND . with_constraint
  ```
  Sample sentence (interface):
  ```ocaml
  include {%ext|s|} with module X := X and module X = X
  ```
- Derivation (5 occurrences):
  ```
  reversed_separated_nonempty_llist(AND,with_constraint): reversed_separated_nonempty_llist(AND,with_constraint) AND . with_constraint
    with_constraint: . TYPE type_parameters label_longident COLONEQUAL alias_type
  ```
  Sample sentence (interface):
  ```ocaml
  include {%ext|s|} with module X := X and type x := {%ext|s|}
  ```
- Derivation (5 occurrences):
  ```
  reversed_separated_nonempty_llist(AND,with_constraint): reversed_separated_nonempty_llist(AND,with_constraint) AND . with_constraint
    with_constraint: . TYPE type_parameters label_longident with_type_binder alias_type reversed_llist(preceded(CONSTRAINT,constrain))
  ```
  Sample sentence (interface):
  ```ocaml
  include {%ext|s|} with module X := X and type x = {%ext|s|}
  ```


### Item `mod_ext_longident: . mk_longident(mod_ext_longident,UIDENT)` (in 10 errors)

- Derivation (4 occurrences):
  ```
  with_constraint: MODULE mod_longident EQUAL . mod_ext_longident
    mod_ext_longident: . mk_longident(mod_ext_longident,UIDENT)
      mk_longident(mod_ext_longident,UIDENT): . UIDENT
  ```
  Sample sentence (interface):
  ```ocaml
  include {%ext|s|} with module X = X
  ```
- Derivation (2 occurrences):
  ```
  with_constraint: MODULE mod_longident COLONEQUAL . mod_ext_longident
    mod_ext_longident: . mk_longident(mod_ext_longident,UIDENT)
      mk_longident(mod_ext_longident,UIDENT): . mod_ext_longident DOT UIDENT
  ```
  Sample sentence (interface):
  ```ocaml
  include {%ext|s|} with module X := X . X
  ```
- Derivation (2 occurrences):
  ```
  with_constraint: MODULE mod_longident EQUAL . mod_ext_longident
    mod_ext_longident: . mod_ext_longident LPAREN mod_ext_longident RPAREN
      mod_ext_longident: . mk_longident(mod_ext_longident,UIDENT)
        mk_longident(mod_ext_longident,UIDENT): . UIDENT
  ```
  Sample sentence (interface):
  ```ocaml
  include {%ext|s|} with module X = X ( X )
  ```
- Derivation (2 occurrences):
  ```
  with_constraint: MODULE mod_longident EQUAL . mod_ext_longident
    mod_ext_longident: . mk_longident(mod_ext_longident,UIDENT)
      mk_longident(mod_ext_longident,UIDENT): . mod_ext_longident DOT UIDENT
        mod_ext_longident: . mk_longident(mod_ext_longident,UIDENT)
          mk_longident(mod_ext_longident,UIDENT): . UIDENT
  ```
  Sample sentence (interface):
  ```ocaml
  include {%ext|s|} with module X = X . X
  ```


### Item `extension: . QUOTED_STRING_EXPR` (in 4 errors)

- Derivation (2 occurrences):
  ```
  module_type: FUNCTOR list(attribute) reversed_nonempty_llist(functor_arg) MINUSGREATER . module_type
    module_type: . module_type WITH reversed_separated_nonempty_llist(AND,with_constraint)
      module_type: . extension
        extension: . QUOTED_STRING_EXPR
  ```
  Sample sentence (interface):
  ```ocaml
  include functor ( ) -> {%ext|s|} with module X := X
  ```
- Derivation (2 occurrences):
  ```
  module_binding_body: COLON . module_type EQUAL module_expr
    module_type: . module_type WITH reversed_separated_nonempty_llist(AND,with_constraint)
      module_type: . extension
        extension: . QUOTED_STRING_EXPR
  ```
  Sample sentence (implementation):
  ```ocaml
  module X : {%ext|s|} with module X := X = {%ext|s|}
  ```


### Item `mod_ext_longident: . mod_ext_longident LPAREN mod_ext_longident RPAREN` (in 2 errors)

- Derivation (2 occurrences):
  ```
  with_constraint: MODULE mod_longident COLONEQUAL . mod_ext_longident
    mod_ext_longident: . mod_ext_longident LPAREN mod_ext_longident RPAREN
  ```
  Sample sentence (interface):
  ```ocaml
  include {%ext|s|} with module X := X ( X )
  ```


