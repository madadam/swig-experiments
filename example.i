%module example

%{
extern void hello_world();
extern int add_int(int, int);
extern void print_string(const char*);
extern void call(void*, void (*cb)(void*));
%}

extern void hello_world();
extern int add_int(int, int);
extern void print_string(const char*);
extern void call(void*, void (*cb)(void*));
