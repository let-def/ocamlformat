##########################################################################
#                                                                        #
#                              OCamlFormat                               #
#                                                                        #
#            Copyright (c) Facebook, Inc. and its affiliates.            #
#                                                                        #
#      This source code is licensed under the MIT license found in       #
#      the LICENSE file in the root directory of this source tree.       #
#                                                                        #
##########################################################################

.PHONY: default
default: exe

.PHONY: exe
exe:
	@dune build bin/ocamlformat/main.exe bin/ocamlformat-rpc/main.exe

.PHONY: clean
clean:
	dune clean

.PHONY: fmt
fmt:
	dune build @fmt

.PHONY: test regtests regtests-promote
test: fmt regtests

regtests:
	dune runtest

regtests-promote:
	dune runtest --auto-promote

coverage:
	dune runtest --instrument-with bisect_ppx --force
	bisect-ppx-report html
	echo "Coverage report generated in _coverage/"
	echo " => open _coverage/index.html"

fuzz:
	dune build @fuzzer

fuzz-report:
	dune build @fuzzer
	dune promote

fuzz-update-grammar:
	cp -f vendor/parser-jane/for-parser-standard/parser.mly test/fuzzer/parser.mly

fuzz-update-state:
	dune build @fuzzer-update-state

.PHONY: bench
bench:
	@dune build bench/test/source_bench.ml
	@dune build bench/bench.exe
	@dune exec bench/bench.exe
