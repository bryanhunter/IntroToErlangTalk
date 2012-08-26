-module(echo).
-compile(export_all).

start() ->
  spawn(fun loop/0).

loop() ->
  receive
    done ->
      io:format("Closing~n", []),
      ok;
    {Pid, Message} ->
      io:format("Message received: ~s~n", [Message]),
      Pid ! Message,
      loop();
    _ ->
      io:format("skipping message~n", []),
      loop()
  end.

