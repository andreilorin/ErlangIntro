-module(higher_order_functions).
-author("Lorin").

-export([main/0]).

%% higher order functions - functions that take other functions as parameters

main() ->
  hof(),
  hof2("Andrei"),
  hof3().


double(X) -> X * 2.
triple(X) -> X * 3.

hof() ->
  lists:map(fun double/1, [1, 2, 3]), %% map takes a functions and applies it to every item in a list
  lists:map(fun triple/1, [1, 2, 3]).


hof2(N) ->
  Greeting = fun() -> io:fwrite("Hello ~p\n") end, %% fun keyword - define anonymous functions
  Greeting().

hof3() ->
  X = 3,
  Y = 4,
  Z = fun() ->
    io:fwrite("Sum : ~p\n", [X + Y]) end,
  Z().