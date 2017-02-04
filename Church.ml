(* An Ocaml-flavored set of Church encodings
 *
 * Make booleans, conditionals, numbers, and combinators from functions
 *
 * @author github.com/jdjkelly
 *)

(* Booleans *)
let _true () = fun x -> fun y -> x;;
let _false () = fun x -> fun y -> y;;

assert ((_true() 1 0) = 1);;
assert ((_true() "first" "second") = "first");;

assert ((_false() 0 1) = 1);;
assert ((_false() "first" "second") = "second");;

(* Conditionals *)
let _if () = fun x -> fun y -> fun z -> x() y z;;

assert ((_if() _true "first" "second") = "first");;
assert ((_if() _true 1 0) = 1);;
assert ((_if() _false "first" "second") = "second");;
assert ((_if() _false 0 1) = 1);;

(* Numbers *)
let count () = fun f -> f() (fun x -> x + 1) 0;;
let zero () = fun f -> fun x -> x;;
let one () = fun f -> fun x -> f x;;
let two () = fun f -> fun x -> f (f x);;
let three () = fun f -> fun x -> f (f (f x));;

assert((count() zero) = 0);;
assert((count() one) = 1);;
assert((count() two) = 2);;
assert((count() three) = 3);;

(* Y Combinator *)

(* let y () = fun f -> (fun x -> x() x)() (fun x -> f() (fun y -> (x() x)()
 * y));; *)
