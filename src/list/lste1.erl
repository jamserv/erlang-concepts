%%%-------------------------------------------------------------------
%%% @author jamse
%%% @copyright (C) 2018, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 30. mar 2018 13:11
%%%-------------------------------------------------------------------
-module(lste1).
-author("jamse").

%% API
-export([cantidad/1, suma/1, reverse/1, merge_list/2]).

%% this determine the element size give a list.
cantidad([]) ->
  0;
cantidad([_ | T]) ->
  1 + cantidad(T).

%% add element give a list.
suma([]) ->
  0;
suma([H | T]) ->
  H + suma(T).

%% list on reverse order.
reverse([]) ->
  [];
reverse([H | T]) ->
  reverse(T) ++ [H].

%%merge two list
merge_list([], []) ->
  [];
merge_list([], L) ->
  L;
merge_list(L, []) ->
  L;
merge_list([H1 | T1], [H2 | T2]) ->
  [H1 | T1] ++ [H2 | T2].

