%% @author author <author@example.com>
%% @copyright YYYY author.

%% @doc Callbacks for the webmachine-clickstart application.

-module(webmachine-clickstart_app).
-author('author <author@example.com>').

-behaviour(application).
-export([start/2,stop/1]).


%% @spec start(_Type, _StartArgs) -> ServerRet
%% @doc application start callback for webmachine-clickstart.
start(_Type, _StartArgs) ->
    webmachine-clickstart_sup:start_link().

%% @spec stop(_State) -> ServerRet
%% @doc application stop callback for webmachine-clickstart.
stop(_State) ->
    ok.
