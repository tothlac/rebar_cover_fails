-module(cover_fails_test).

-include_lib("eunit/include/eunit.hrl").

my_test() ->
    ok = application:start(rebar_cover_fails),
    ok = application:stop(rebar_cover_fails).
