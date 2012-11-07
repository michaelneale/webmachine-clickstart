%% @author author <author@example.com>
%% @copyright YYYY author.
%% @doc Example webmachine_resource.

-module(clickstart_resource).
-export([init/1, to_html/2]).

-include_lib("webmachine/include/webmachine.hrl").

init([]) -> {ok, undefined}.

to_html(ReqData, State) ->
    {"<html><body><code><h1>Hello Erlang and Webmachine on CloudBees</h1><code>"
    ++ "<code>Made by a "
    ++ "<a href='https://github.com/CloudBees-community/webmachine-clickstart'>"
    ++ "ClickStart</a></code><p>"    
    ++"<code>Read more about Webmachine and Erlang " 
    ++ "<a href='http://wiki.basho.com/Webmachine.html'>here</a></code>"    
    ++"<p>This is enabled via the <a href='https://github.com/CloudBees-community/webmachine-clickstack'>ClickStack</a>"
    ++ "<h3><code>To change this app:</code></h3>"
    ++ "<code>Make sure you have an ssh public key setup on <a href='https://grandcentral.cloudbees.com/user/ssh_keys'>Cloudbees</a></code>"
    ++ "<p><code>git clone ssh://git@git.cloudbees.com/<script>document.write(location.hostname.split('.')[1])</script>/<script>document.write(location.hostname.split('.')[0])</script>.git</code>"
    ++ "<p><code>git push origin master</code>"
    ++ "<p><code>(this will trigger a build and deploy)</code>"


    ++ "</body></html>", ReqData, State}.
