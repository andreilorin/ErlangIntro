-module(recursion_practice).
-author("Lorin").

-export([main/0]).

main() ->
  find_factorial(5),
  for(3, 1),
  sum([1, 2, 3]).


factorial(N) when N == 0 -> 1;
factorial(N) when N > 0 -> N * factorial(N - 1).

find_factorial(X) -> %% find factorial
  Y = factorial(X),
  io:fwrite("Factorial : ~p\n", [Y]).


sum([]) -> 0; %% add all the elements in a list
sum([H|T]) -> H + sum(T).


for(0, _) ->  %% replacement of for loop
  ok;
for(Max, Min) when Max > 0 ->
  io:fwrite("Num : ~p\n", [Max]),
  for(Max - 1, Min).
