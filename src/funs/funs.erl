%%%-------------------------------------------------------------------
%%% @author jamse
%%% @copyright (C) 2018, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 30. mar 2018 14:02
%%%-------------------------------------------------------------------
-module(funs).
-author("jamse").

%% API
-export([dobler/1, add_one/1, multiplicador/1, map/2]).

%% Multiplica cada elemento de la lista por 2
dobler([]) ->
  [];
dobler([H | T]) ->
  [H * 2] ++ dobler(T).

add_one([]) ->
  [];
add_one([H | T]) ->
  [H + 1] ++ add_one(T).

%% funs:map(fun(X) -> X + 1 end, [1,2,3]).
map(_F, []) ->
  [];
map(F, [H | T]) ->
  [F(H)] ++ map(F, T).

%% devuelve una funcion, es decir, es posible poder crear funciones.
multiplicador(N) ->
  fun(X) ->
    X * N
  end.
