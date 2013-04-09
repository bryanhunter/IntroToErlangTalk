-module(average2).

-export([calculate/1]).
		    
calculate(X) ->
    calculate(X, 0, 0).

calculate(List, Length, Sum) ->
    case List of
	[H|T] ->
	    calculate(T, Length + 1, Sum + H);
	[] -> Sum / Length
    end.
