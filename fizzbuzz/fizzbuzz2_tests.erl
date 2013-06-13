-module(fizzbuzz2_tests).

-include_lib("eunit/include/eunit.hrl").

fizzbuzz_can_playto_15_test_() -> 
    Expected = [1,2,fizz,4,buzz,fizz,7,8,fizz,buzz,11,fizz,13,14,fizzbuzz],
    Actual = fizzbuzz2:playto(15),
    ?_assertEqual(Expected, Actual).

%% To run these external tests:
%% eunit:test(fizzbuzz2).
