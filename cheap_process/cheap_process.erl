-module(cheap_process).

-export([start_and_time/1,start/1, start_proc/2]).

start_and_time(HowMany)->
    {Microseconds, ok} = timer:tc(?MODULE, start, [HowMany]),
    io:format("~nCompleted in ~p seconds.~n", [Microseconds/1000000]).

start(HowMany) ->
    start_proc(HowMany, self()).

start_proc(0, Pid) ->
    Pid ! ok;
start_proc(HowManyMore, Pid) ->
    % Create a child process that runs start_proc (this function)
    NewPid = spawn(?MODULE, 
		   start_proc, 
		   [HowManyMore-1, Pid]), % decrementing HowMany

    % Send an 'ok' message to the child process
    NewPid ! ok,

    % Wait until we receive an 'ok' message (from our parent parent).
    receive ok ->
	    ok
    end.
