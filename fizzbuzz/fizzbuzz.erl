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


% For grins, here's a tweetable fizzbuzz
% [case{X rem 3,X rem 5}of{0, 0}->fizzbuzz;{0,_}->fizz;{_, 0}->buzz;{_, _}->X end||X<- lists:seq(1,100)].


k
% Note: The following is a magic test-generating function because it has an '_' 
% appended to the end of the function name, and a '_' prepended to the assert macro
fizzbuzz_can_playto_15_test_() -> 
[
	?_assertEqual([1,2,fizz,4,buzz,fizz,7,8,fizz,buzz,11,fizz,13,14,fizzbuzz], playto(15))
].

% Note: to run all tests in this module from emacs: C-c C-ek 
% or run fizzbuzz:test().
