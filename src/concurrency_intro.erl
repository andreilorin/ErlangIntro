-module(concurrency_intro).
-author("Lorin").

-export([main/0]).

main() ->
  spawner2(50, 1),
  spawner2(100, 51).


get_id(N) ->
  io:fwrite("ID : ~p\n", [N]).

spawner() ->
  spawn(fun() -> get_id([self()]) end).


spawner2(Max, Min) ->
  spawn(fun() -> for(Max, Min) end).


for(0, _) ->  %% replacement of for loop
  ok;
for(Max, Min) when Max > 0 ->
  io:fwrite("Num : ~p\n", [Max]),
  for(Max - 1, Min).
