-module(sub). 
-import(string, [len/1, concat/2, chr/2, substr/3, str/2, to_lower/1, to_upper/1]).
-export([sub/0,add/2]).

sub() ->
    io:fwrite("A subtracao eh\n").
add(A,B) ->
    sub(),
    A - B.
