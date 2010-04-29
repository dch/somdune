%%% Copyright 2010 Relaxed, Inc.
%%% Licensed under the Apache License, Version 2.0 (the "License");
%%% you may not use this file except in compliance with the License.
%%% You may obtain a copy of the License at
%%%
%%%     http://www.apache.org/licenses/LICENSE-2.0
%%%
%%% Unless required by applicable law or agreed to in writing, software
%%% distributed under the License is distributed on an "AS IS" BASIS,
%%% WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
%%% See the License for the specific language governing permissions and
%%% limitations under the License.


-module(somdune_manager).
-author('Jason Smith <jhs@couch.io>').

-behavior(gen_server).
-export([init/1, handle_call/3, handle_cast/2, handle_info/2, terminate/2, code_change/3]).

-include("somdune.hrl").
-export([start_link/0]).

-export([]). % TODO
  
%register_connection(ConnectionPid, State) ->
%     gen_server:call(?MODULE, {register, ConnectionPid, State}).
%     
%unregister_connection(Name) ->
%     gen_server:call(?MODULE, {unregister, Name}).
%     
%get_connection(Name) ->
%     gen_server:call(?MODULE, {connection, Name}).   
%     
%connection_count() ->
%    gen_server:call(?MODULE, connection_count).
%    
%register_db(ServerName, Name, DbPid) ->
%    gen_server:call(?MODULE, {register_db, ServerName, Name, DbPid}).
% 
%unregister_db(Name) ->
%    gen_server:call(?MODULE, {unregister_db, Name}).
%    
%get_db(Name) ->
%    gen_server:call(?MODULE, {db, Name}).
    

start_link() ->
    gen_server:start_link({local, ?MODULE}, ?MODULE, nil, []).

%%
%% gen_server API
%%

init(_) ->
    %process_flag(priority, high),
    {ok, null}.


handle_call(_Msg, _From, State) ->
    {reply, null, State}.

handle_cast(_Msg, State) ->
    {noreply, State}.
    
handle_info(_Msg, State) ->
    {noreply, State}.


terminate(_Reason, _State) ->
    ok.


code_change(_OldVsn, State, _Extra) ->
    {ok, State}.

% vim: sw=4 sts=4 et
