%%%-------------------------------------------------------------------
%%% @author janezmejias
%%% @copyright (C) 2018, <Google>
%%% @doc
%%%
%%% @end
%%% Created : 28. mar 2018 17:17
%%%-------------------------------------------------------------------
-module(hello).
-author("janezmejias").

%% API
-export([calc_area/1, total/1]).

calc_area({cuadrado, Lado}) -> Lado * Lado;
calc_area({circulo, Radio}) -> 3.14159 * Radio * Radio;
calc_area({rectangulo, Base, Altura}) -> Base * Altura.

total({pera, A}) -> A * 0.50;
total({manzana, A}) -> A * 0.45;
total({patilla, A}) -> A * 0.40;
total({melon, A}) -> A * 0.35.