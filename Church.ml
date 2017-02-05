(* An Ocaml-flavored set of Church encodings
 *
 * Make booleans, conditionals, numbers, and combinators from functions
 *
 * @author github.com/jdjkelly
 *)

(* Booleans *)
let t () = fun x -> fun y -> x;;
let f () = fun x -> fun y -> y;;

(* Conditionals *)
let fi () = fun x -> fun y -> fun z -> x() y z;;

(* Numbers *)
let count () = fun f -> f() (fun x -> x + 1) 0;;
let c0 () = fun f -> fun x -> x;;
let c1 () = fun f -> fun x -> f x;;
let c2 () = fun f -> fun x -> f (f x);;
let c3 () = fun f -> fun x -> f (f (f x));;

(* Loop
 *
 * this will rightly throw a warning and not compile
 *
 * let loop () = fun x -> x() x;;
 *)

(* Y Combinator *)

(*  Y = λf.(λx.f(xx))(λx.f(xx))
 *
 *  es6
 *
 *  let Y = f => (x => x(x))(x => f(y => x(x)(y)));
 *
 *)

(* let y () = fun f -> (fun x -> x() x)() (fun x -> f() (fun y -> (x() x)()
 * y));; *)
