make run:
	@ocamlopt -c Church.ml; ocamlopt -c tests.ml; ocamlopt -o tests Church.cmx tests.cmx; ./tests
