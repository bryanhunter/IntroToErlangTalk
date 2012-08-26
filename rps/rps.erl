-module(rps).

-export([play/2]).

play(YourMove, TheirMove) -> 
    case { YourMove, TheirMove } of
	{ rock, paper } -> lose;
	{ paper, scissors } -> lose;
	{ scissors, rock } -> lose;
	{ _Move, _Move } -> draw;
	_ -> win
    end.
