let (exception false) @ lident = UIdent [@@and]

let false = UIdent

(* When ocamlformat processes this file, it produces:

   ``` let exception false @ lident = UIdent [@@and]

   let false = UIdent ```

   Unfortunately, for `@ lident` to parse the pattern has to be wrapped
   between parentheses. *)
