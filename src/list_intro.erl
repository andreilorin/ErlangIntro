-module(list_intro).
-author("Lorin").

-export([main/0]).

main() ->
  list_operations().


list_operations() ->
  List1 = [1, 2, 3],
  List2 = [2 * N || N <- List1], %% multiply each element of the list by 2
  List2,

  List3 = [1, 2, 3, 4],
  List4 = [N || N <- List3, N rem 2 == 0], %% find the list's even elements
  List4,

  City_Weather = [{dublin, 20}, {bray, 15}, {galway, 12}, {cork, 14}], %% tuple -{atom, int}
  Good_Temp = [{City, Temp} || {City, Temp} <- City_Weather, (Temp >= 10) and (City == bray)], %% find the tuple
  Good_Temp.

