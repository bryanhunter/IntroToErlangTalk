-module(hello).

-export([say_hello/1]).

say_hello(world) ->
    boo(),
    io:format("Hello World!~n");
say_hello("OJ")->
    boo(),
    io:format("G'day, mate!~n");
say_hello(Name) -> 
    boo(),
    io:format("Hello ~s from your friends at ~p.~n", [Name, node()]).

boo() ->
    io:format("Booooo!~n").

% For distributed fun...
% cd("c:/code/erl4net/hello")
% nl(hello).
% rpc:call(node(), hello,say_hello, ["Joe"]).
% [rpc:call(Node, hello,say_hello, ["Joe"]) || Node <- nodes()].

