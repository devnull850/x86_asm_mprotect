all: test

test: test.o blob
	ld -T test.ld -o test test.o

test.o: test.s
	as -o test.o test.s

blob: hello.o
	dd if=hello.o of=blob skip=64 count=63 bs=1

hello.o: hello.s
	as -o hello.o hello.s

.PHONY:
clean:
	rm hello.o blob test.o test
