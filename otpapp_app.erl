%%%----------------------------------------------------------------------------
%%% @author {{author}}
%%% @doc
%%% @end
%%%----------------------------------------------------------------------------
-module({{short}}_app).

-behaviour(application).

%% Application callbacks
-export([start/2, stop/1]).

%%%============================================================================
%%% Application callbacks
%%%============================================================================
-spec start(normal | {takeover, node()} | {failover, node()}, term()) ->
                   {ok, pid()} | {ok, pid(), term()} | {error, any()}.
start(_StartType, _StartArgs) ->
    {{short}}_sup:start_link().

-spec stop(term()) -> ok.
stop(_State) ->
    ok.
