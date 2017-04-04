-module(variables).

-export([main/0]).

main() ->
  what_grade(90).

%% atoms, variable whose name is equal to its value
%% this function return "an_atom"
atoms() ->
  an_atom.

%%Variable name with Upper case.
%% This function just returns the the value of the variable
vars() ->
  Num = 1,
  Num.


do_math(A, B) ->
  A * B.

rand(A) ->
  random:uniform(A).

compare(A, B) ->
  Age = 18,
  (Age >= 5) or (Age =< 18).

failtest() ->
  'you failed'.

passtest() ->
  'you got it'.

distinction() ->
  'well done !'.

what_grade(X) ->
  if X < 63 -> failtest()
  ; (X >= 63) and (X =< 89) -> passtest()
  ; X > 89 -> distinction()
  end.