%% @author author <author@example.com>
%% @copyright YYYY author.

%% @doc Callbacks for the clickstart application.

-module(clickstart_app).
-author('author <author@example.com>').

-behaviour(application).
-export([start/2,stop/1]).


%% @spec start(_Type, _StartArgs) -> ServerRet
%% @doc application start callback for clickstart.
start(_Type, _StartArgs) ->
    clickstart_sup:start_link().

%% @spec stop(_State) -> ServerRet
%% @doc application stop callback for clickstart.
stop(_State) ->
    ok.
