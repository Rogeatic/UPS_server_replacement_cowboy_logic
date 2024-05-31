%% Feel free to use, reuse and abuse the code in this file.

%% @doc Hello world handler.
%% File: src/cowboy_logic.erl
-module(cowboy_logic).

-export([init/2]).

init(Req0, Opts) ->
	Req = cowboy_req:reply(200, #{
		<<"content-type">> => <<"text/plain">>
	}, <<"Hello world!">>, Req0),
	{ok, Req, Opts}.
