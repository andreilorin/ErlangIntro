-module(maps_intro).
-author("Lorin").

-export([main/0]).

main() ->
  map_intro().

map_intro() ->
  Andrei = #{first_name => 'Andrei', last_name => 'Darjan'},

  io:fwrite("1st name : ~p\n", [maps:get(first_name, Andrei)]), %% get Andrei's first name

  io:write("~p\n", [maps:keys(Andrei)]), %% get all keys

  io:write("~p\n", [maps:values(Andrei)]), %% get all values

  io:write("~p\n", [maps:remove(last_name, Andrei)]), %% get all values

  maps:find(first_name, Andrei), %% find if key exits

  maps:put(address, "Bray, Wicklow", Andrei). %% add value
