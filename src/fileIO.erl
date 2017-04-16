-module(fileIO).
-author("Lorin").

-export([main/0]).


main() ->
  write_text("Write to the file "),
  append_text(" File appended"),
  read_text().

write_text(N) ->
  {ok, FileHandler} = file:open("newFile.txt", [write]),
  file:write(FileHandler, N).

append_text(N) ->
  {ok, FileHandler} = file:open("newFile.txt", [append]),
  file:write(FileHandler, N).

read_text() ->
  {ok, File} = file:open("newFile.txt", [read]),
  Text = file:read(File, 1024 * 1024),
  io:fwrite("~p\n", [Text]).
