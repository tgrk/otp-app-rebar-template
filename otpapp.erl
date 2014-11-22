%%%----------------------------------------------------------------------------
%%% @author {{author}}
%%% @doc
%%% @end
%%%----------------------------------------------------------------------------
-module({{short}}).

%% Application API
-export([start/0, stop/0]).

-include("{{short}}.hrl").

%%%============================================================================
%%% API
%%%============================================================================


%%%===========================================================================
%%% Application API
%%%===========================================================================
-spec start() -> ok | no_return().
start() ->
    %% start logging
    application:load(lager),
    application:set_env(lager, handlers,
                        [{lager_console_backend, debug},
                         {lager_file_backend,
                          [{file, "log/error.log"},{level, error}]},
                         {lager_file_backend,
                          [{file, "log/console.log"}, {level, info}]}]),
    application:set_env(lager, error_logger_redirect, true),
    ok = lager:start(),

    [ensure_started(D) || D <- deps() ++ [?APP]],
    ok.

-spec stop() -> ok | no_return().
stop() ->
    [application:stop(D) || D <- deps()],
    ok.

%%%============================================================================
%%% Internal functionality
%%%============================================================================
deps() ->
    [].

ensure_started(App) ->
    case application:ensure_all_started(App) of
        {ok, _Deps} ->
            ok;
        {error, {already_started, App}} ->
            ok;
        {error, _} = Error ->
            throw({error, {unable_to_start, App, Error}})
    end.
