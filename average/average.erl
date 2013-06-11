-module(average).

-export([calculate/1]).

calculate(ListOfNumbers) ->  
    calculate(ListOfNumbers, 0, 0).

calculate([Head|Tail], Position, RunningSum) ->
    calculate(Tail, Position + 1, RunningSum + Head);
calculate([], Position, RunningSum) ->
    RunningSum/Position.
