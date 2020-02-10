default: build check
build:
	flex src/pl0lex.l
	gcc lex.yy.c -o pl0flex -lfl 
	flex src/pl0gram.l
	bison -d src/pl0gram.y
	gcc -g -o pl0parsing pl0gram.tab.c lex.yy.c -lfl
check:
	./pl0parsing < test/test1.pl0
clean:
	rm *.o *.c pl0flex *.h pl0parsing pl0flex
.PHONY:buid check clean
