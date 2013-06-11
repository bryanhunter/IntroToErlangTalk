-module(fizzbuzz2).

-export([playto/1]).

playto(Upper) ->
    [ play(X) || X <- lists:seq(1,Upper)].

play(N) when N rem 3 == 0, N rem 5 == 0 -> 
    fizzbuzz;
play(N) when N rem 3 == 0 -> 
    fizz;
play(N) when N rem 5 == 0 -> 
    buzz;
play(N) -> 
    N.
