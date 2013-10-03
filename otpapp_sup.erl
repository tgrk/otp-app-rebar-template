%%%----------------------------------------------------------------------------
%%% @author {{author}}
%%% @doc
%%% @end
%%%----------------------------------------------------------------------------
-module({{short}}_sup).

-behaviour(supervisor).

%% API
-export([start_link/0]).

%% Supervisor callbacks
-export([init/1]).

-define(CHILD(I, Type, Params),
    {I, {I, start_link, Params}, permanent, 5000, Type, [I]}).

%%%============================================================================
%%% API functions
%%%============================================================================
start_link() ->
    supervisor:start_link({local, ?MODULE}, ?MODULE, []).

%%%============================================================================
%%% Supervisor callbacks
%%%============================================================================
init([]) ->
    ChildSpec = [
        ?CHILD({{short}}_server, worker, [])
    ],
    {ok, { {one_for_one, 5, 10}, ChildSpec} }.
