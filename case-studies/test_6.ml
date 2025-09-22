(* oxcamlformat: Cannot process "test_6.ml".
     Please report this bug at https://github.com/ocaml-ppx/ocamlformat/issues.
     BUG: unhandled exception.
   "Assert_failure lib/Fmt_ast.ml:684:6"
*)
[ let module UIdent = {%hello|world|} (*X*) in UIdent ; ] let false = UIdent
