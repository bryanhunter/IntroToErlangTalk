-module(average2).

-export([calculate/1]).

calculate(ListOfNumbers) ->
    calculate(ListOfNumbers, 0, 0).

calculate(ListOfNumbers, Position, RunningSum) ->
    case ListOfNumbers of
	[Head|Tail] ->
	    calculate(Tail, Position + 1, RunningSum + Head);
	[] -> RunningSum / Position
    end.
