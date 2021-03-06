%%%----------------------------------------------------------------------------
%%% @author {{author}}
%%% @doc
%%% @end
%%%----------------------------------------------------------------------------
-module({{short}}_server_tests).

-compile(export_all).

-include_lib("eunit/include/eunit.hrl").

%%%=============================================================================
{{short}}_server_test_() ->
    {foreach,
        fun () ->
            {{short}}:start()
        end,
        fun (_) ->
            {{short}}:stop()
        end,
        [
            {"foobar", fun test_foobar/0}
        ]
    }.

%%%=============================================================================
test_foobar() ->
    ?assert(false).
