all: build
build: 
	flex src/pl0lex.l
	gcc lex.yy.c -o pl0flex -lfl
	
check:
	pl10lex
clean:
	rm *.o
.PHONY:buid check clean
