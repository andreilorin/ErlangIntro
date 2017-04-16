-module(record_intro).
-author("Lorin").

-export([main/0]).

main() ->
  record_edit().


-record(customer, {name = "", balance = 0.00}). %% define a record

record_edit() ->
  Andrei = #customer{name = "Andrei Lorin", balance = 10.00}, %% create record

  Andrei2 = Andrei#customer{balance = 500}, %% create another record based on previous one

  io:fwrite("~p has ~p\n", [Andrei2#customer.name, Andrei2#customer.balance]).


