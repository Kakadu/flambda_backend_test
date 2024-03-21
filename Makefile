CC ?= gcc
OPT=~/asp/flambda-backend/_install/bin/ocamlopt.opt \
	-I ~/asp/flambda-backend/_install/lib/ocaml \
	-extension simd

test1.exe: test1.ml unworking_stubs.o
	$(OPT) -S $^ -o $@

unworking_stubs.o: unworking_stubs.c
	$(CC) -I`ocamlc -where` -march=native -msse4.2 $< -c -o $@

pop1.o: pop1.cpp
	$(CXX) -march=native -msse4.2 $< -c -o $@

pop1.exe: pop1.o
	$(CXX) -march=native -msse4.2 $(<:.cpp=.o) -o $@

pop1.dump: pop1.o
	objdump -dS $<

clean:
	$(RM) *.exe *.o *.a *.cm[oix]
