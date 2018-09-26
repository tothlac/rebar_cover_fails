-module(rebar_cover_fails_sup).

-export([start_link/0]).
-export([init/1]).

start_link() ->
    supervisor:start_link({local, ?MODULE}, ?MODULE, []).

init([]) ->
    {ok, { {one_for_one, 3, 10}, []}}.
