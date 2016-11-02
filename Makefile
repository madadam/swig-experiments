.PHONY: native-lib clean

TARGET_DIR := target/debug
NATIVE_LIB := swig_experiments

C := gcc
LANG := ruby
CFLAGS := -fpic -I/usr/include/ruby-2.3.0 -I/usr/include/x86_64-linux-gnu/ruby-2.3.0
LFLAGS := -L$(TARGET_DIR) -l$(NATIVE_LIB)

example.o: native-lib Makefile example.i
	swig -$(LANG) example.i
	gcc -c $(CFLAGS) example_wrap.c
	gcc -shared -o example.so example_wrap.o $(LFLAGS)

native-lib:
	@cargo build

clean:
	@cargo clean
	@rm -rf *_wrap.c

