-module(rebar_cover_fails).

-export([start/2,
         stop/1]).

-export([fnc/0]).

start(_, _) ->
    rebar_cover_fails_sup:start_link().

stop(_) ->
    ok.

fnc() ->
    ok.
