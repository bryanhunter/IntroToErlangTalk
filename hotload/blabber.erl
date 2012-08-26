-module(blabber).

-export([start/0, loop/1]).

start() ->
    spawn(?MODULE, loop, [1]).

loop(Count) ->
    receive  
	done ->
	    io:format("Closing~n", []),
	    ok
    after 2000 ->
	    io:format("Loop ~p says hello!!!~n", [Count]),
	    ?MODULE:loop(Count+1)
    end.
