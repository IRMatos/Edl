-module(areas).
-export([loop/0,start/0]).

loop() ->
    receive
        {retangulo, B, H} ->
            io:fwrite("A area do retangulo e ~p~n", [B*H]),
            loop();
        {circulo, R} ->
            io:fwrite("A area do circulo e ~p~n", [3.141592*R*R]),
            loop();
    other ->
        io:fwrite("Nao foi possivel calcular a area!\n"),
        loop()
    end.

start() ->
    Pid = spawn(fun() -> loop() end),
    Pid ! {retangulo, 5, 8}.
