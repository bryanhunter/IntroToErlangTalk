-module(average).

-export([calculate/1]).

calculate(X) ->  
    calculate(X,0,0).

calculate([H|T], Length, Sum) ->
    calculate(T, Length+1, Sum+H);
calculate([], Length, Sum) ->
    Sum/Length.

% Note the two function heads for private caluculate/2
