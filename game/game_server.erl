-module(game_server).

-export([start/0, loop/1]).


start() ->
    spawn(?MODULE, loop, [{state, 0, 0, 0}]).

loop({state, X, Y, Count}) ->
    receive
	{moveLeft, Xdelta} ->
	    ?MODULE:loop({state, (X - Xdelta), Y, Count+1});
	{moveRight, Xdelta} ->
	    ?MODULE:loop({state, (X + Xdelta), Y, Count+1});
	{shootAt, Player} ->
	    Player ! { takeHit, self() },
	    ?MODULE:loop({state, X, Y, Count+1});
	{takeHit, From} ->
	    io:format("[~p says]: Ouch that hurt, ~p!!!~n", [self(), From]),
	    ok
    after 2500 ->
	    io:format("[~p says]: I'm at (X:~p Y:~p) on ~p and my count is ~p.~n", 
		      [self(), X, Y, node(), Count]),
	    ?MODULE:loop({state, X, Y, Count+1})
    end.
