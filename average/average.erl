-module(average).

-export([calculate/1]).

calculate(ListOfNumbers) ->  
    show_progress("Getting started"),
    calculate(ListOfNumbers, 0, 0).

calculate([Head|Tail], Position, RunningSum) ->
    show_progress(Position),
    calculate(Tail, Position + 1, RunningSum + Head);
calculate([], Position, RunningSum) ->
    show_progress("Finishing up."),
    RunningSum/Position.

show_progress(CurrentStatus) -> 
    io:format("Status: ~p~n", [CurrentStatus]).
    
