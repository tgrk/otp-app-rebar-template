%%%----------------------------------------------------------------------------
%%% @author {{author}}
%%% @doc
%%% @end
%%%----------------------------------------------------------------------------
-module({{short}}).

%% Application API
-export([
    start/0,
    stop/0
]).

-include("{{short}}.hrl").

%%%============================================================================
%%% API
%%%============================================================================


%%%===========================================================================
%%% Application API
%%%===========================================================================
start() ->
    application:start(?APP).

stop() ->
    application:stop(?APP).

%%%============================================================================
%%% Internal functions
%%%============================================================================