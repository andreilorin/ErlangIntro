-module(error_handling).
-author("Lorin").

-export([main/0]).

main() ->
  cause_error(0),
  read_text().

cause_error(N) ->
  try
      Answer = 2 / N,
        Answer
  catch
      error:badarith  ->
        "Division by 0"
  end.


read_text() ->
  try
    {ok, File} = file:open("newFile2.txt", [read]),
    Text = file:read(File, 1024 * 1024),
    io:fwrite("~p\n", [Text])
  catch
      _:_  ->                   %% catch any error
        "File doesn't exist"
  end.
