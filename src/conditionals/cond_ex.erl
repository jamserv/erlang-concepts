%%%-------------------------------------------------------------------
%%% @author jamse
%%% @copyright (C) 2018, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 30. mar 2018 14:29
%%%-------------------------------------------------------------------
-module(cond_ex).
-author("jamse").

%% API
-export([major_one/1]).

major_one(X) ->
  if X > 1 ->
    true;
  true ->
    false
  end.
