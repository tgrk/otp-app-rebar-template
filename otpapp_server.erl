%%%----------------------------------------------------------------------------
%%% @author {{author}}
%%% @doc
%%% @end
%%%----------------------------------------------------------------------------
-module({{short}}_server).

-behaviour(gen_server).

-include("{{short}}.hrl").

%% API
-export([start_link/0]).

%% gen_server callbacks
-export([
    init/1,
    terminate/2,
    handle_call/3,
    handle_cast/2,
    handle_info/2,
    code_change/3
]).

-define(SERV_NAME, ?MODULE).

-record(state, {}).

%%%============================================================================
%%% API
%%%============================================================================
start_link() ->
    gen_server:start_link({local, ?SERV_NAME}, ?MODULE, [], []).

%%%============================================================================
%%% gen_server callbacks
%%%============================================================================
init([]) ->
    {ok, #state{}}.

terminate(normal, _State) ->
    ok.

handle_call(Call, From, State) ->
    ?warning("Unmatched call ~p from ~p", [Call, From]),
    {reply, invalid_call, State}.

handle_cast(Cast, State) ->
    ?warning("Unmatched cast ~p", [Cast]),
    {noreply, State}.

handle_info(Info, State) ->
    ?warning("Unmatched info ~p", [Info]),
    {noreply, State}.

code_change(_OldVsn, State, _Extra) ->
    {ok, State}.

%%%============================================================================
%%% Internal functions
%%%============================================================================
