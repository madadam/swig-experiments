%module example

%{
extern void hello_world();
extern int add_int(int, int);
extern void print_string(const char*);
%}

extern void hello_world();
extern int add_int(int, int);
extern void print_string(const char*);
