-module(cover_fails_SUITE).
-compile(export_all).

-include_lib("common_test/include/ct.hrl").
-include_lib("eunit/include/eunit.hrl").

suite() ->
    [{timetrap, {minutes, 10}}].

init_per_suite(Config) ->
    Config.

end_per_suite(_Config) ->
    ok.

all() ->
    [{group, mygroup}].

groups() ->
    [{mygroup, [{repeat_until_any_fail, 1}],
      [mytest]
     }].

mytest(_Config) ->
    rebar_cover_fails:fnc().
