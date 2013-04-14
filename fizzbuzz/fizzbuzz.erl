-module(fizzbuzz).
-export([playto/1]).

-include_lib("eunit/include/eunit.hrl").

playto(Upper) ->
    [case 
	 {X rem 3, X rem 5} of 
	 {0, 0} -> fizzbuzz; 
	 {0, _} -> fizz; 
	 {_, 0} -> buzz; 
	 {_, _} -> X 
     end 
     || X <- lists:seq(1,Upper)].

%% For grins, here's a tweetable fizzbuzz
%% [case{X rem 3,X rem 5}of{0, 0}->fizzbuzz;{0,_}->fizz;{_, 0}->buzz;{_, _}->X end||X<- lists:seq(1,100)].

%% Note: by including the enuit library: 
%% -include_lib("eunit/include/eunit.hrl"). 
%% several macros kick in to support testing.
%% A function "fizzbuzz:test()" will be generated and exported
%% that will call any funtion ending in '_test_'.
%% function name, and a '_' prepended to the assert macro

fizzbuzz_can_playto_15_test_() -> 
    Expected = [1,2,fizz,4,buzz,fizz,7,8,fizz,buzz,11,fizz,13,14,fizzbuzz],
    Actual = playto(15),
    ?_assertEqual(Expected, Actual).

%% Note: to run all tests in this module run fizzbuzz:test().
