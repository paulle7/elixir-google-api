# Copyright 2019 Google LLC
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# NOTE: This file is auto generated by the elixir code generator program.
# Do not edit this file manually.

defmodule GoogleApi.Games.V1.Api.TurnBasedMatches do
  @moduledoc """
  API calls for all endpoints tagged `TurnBasedMatches`.
  """

  alias GoogleApi.Games.V1.Connection
  alias GoogleApi.Gax.{Request, Response}

  @library_version Mix.Project.config() |> Keyword.get(:version, "")

  @doc """
  Cancel a turn-based match.

  ## Parameters

  *   `connection` (*type:* `GoogleApi.Games.V1.Connection.t`) - Connection to server
  *   `match_id` (*type:* `String.t`) - The ID of the match.
  *   `optional_params` (*type:* `keyword()`) - Optional parameters
      *   `:alt` (*type:* `String.t`) - Data format for the response.
      *   `:fields` (*type:* `String.t`) - Selector specifying which fields to include in a partial response.
      *   `:key` (*type:* `String.t`) - API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
      *   `:oauth_token` (*type:* `String.t`) - OAuth 2.0 token for the current user.
      *   `:prettyPrint` (*type:* `boolean()`) - Returns response with indentations and line breaks.
      *   `:quotaUser` (*type:* `String.t`) - An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
      *   `:userIp` (*type:* `String.t`) - Deprecated. Please use quotaUser instead.
  *   `opts` (*type:* `keyword()`) - Call options

  ## Returns

  *   `{:ok, %{}}` on success
  *   `{:error, info}` on failure
  """
  @spec games_turn_based_matches_cancel(Tesla.Env.client(), String.t(), keyword(), keyword()) ::
          {:ok, nil} | {:ok, Tesla.Env.t()} | {:error, any()}
  def games_turn_based_matches_cancel(connection, match_id, optional_params \\ [], opts \\ []) do
    optional_params_config = %{
      :alt => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :userIp => :query
    }

    request =
      Request.new()
      |> Request.method(:put)
      |> Request.url("/turnbasedmatches/{matchId}/cancel", %{
        "matchId" => URI.encode(match_id, &URI.char_unreserved?/1)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)
      |> Request.library_version(@library_version)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [decode: false])
  end

  @doc """
  Create a turn-based match.

  ## Parameters

  *   `connection` (*type:* `GoogleApi.Games.V1.Connection.t`) - Connection to server
  *   `optional_params` (*type:* `keyword()`) - Optional parameters
      *   `:alt` (*type:* `String.t`) - Data format for the response.
      *   `:fields` (*type:* `String.t`) - Selector specifying which fields to include in a partial response.
      *   `:key` (*type:* `String.t`) - API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
      *   `:oauth_token` (*type:* `String.t`) - OAuth 2.0 token for the current user.
      *   `:prettyPrint` (*type:* `boolean()`) - Returns response with indentations and line breaks.
      *   `:quotaUser` (*type:* `String.t`) - An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
      *   `:userIp` (*type:* `String.t`) - Deprecated. Please use quotaUser instead.
      *   `:language` (*type:* `String.t`) - The preferred language to use for strings returned by this method.
      *   `:body` (*type:* `GoogleApi.Games.V1.Model.TurnBasedMatchCreateRequest.t`) - 
  *   `opts` (*type:* `keyword()`) - Call options

  ## Returns

  *   `{:ok, %GoogleApi.Games.V1.Model.TurnBasedMatch{}}` on success
  *   `{:error, info}` on failure
  """
  @spec games_turn_based_matches_create(Tesla.Env.client(), keyword(), keyword()) ::
          {:ok, GoogleApi.Games.V1.Model.TurnBasedMatch.t()}
          | {:ok, Tesla.Env.t()}
          | {:error, any()}
  def games_turn_based_matches_create(connection, optional_params \\ [], opts \\ []) do
    optional_params_config = %{
      :alt => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :userIp => :query,
      :language => :query,
      :body => :body
    }

    request =
      Request.new()
      |> Request.method(:post)
      |> Request.url("/turnbasedmatches/create", %{})
      |> Request.add_optional_params(optional_params_config, optional_params)
      |> Request.library_version(@library_version)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.Games.V1.Model.TurnBasedMatch{}])
  end

  @doc """
  Decline an invitation to play a turn-based match.

  ## Parameters

  *   `connection` (*type:* `GoogleApi.Games.V1.Connection.t`) - Connection to server
  *   `match_id` (*type:* `String.t`) - The ID of the match.
  *   `optional_params` (*type:* `keyword()`) - Optional parameters
      *   `:alt` (*type:* `String.t`) - Data format for the response.
      *   `:fields` (*type:* `String.t`) - Selector specifying which fields to include in a partial response.
      *   `:key` (*type:* `String.t`) - API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
      *   `:oauth_token` (*type:* `String.t`) - OAuth 2.0 token for the current user.
      *   `:prettyPrint` (*type:* `boolean()`) - Returns response with indentations and line breaks.
      *   `:quotaUser` (*type:* `String.t`) - An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
      *   `:userIp` (*type:* `String.t`) - Deprecated. Please use quotaUser instead.
      *   `:language` (*type:* `String.t`) - The preferred language to use for strings returned by this method.
  *   `opts` (*type:* `keyword()`) - Call options

  ## Returns

  *   `{:ok, %GoogleApi.Games.V1.Model.TurnBasedMatch{}}` on success
  *   `{:error, info}` on failure
  """
  @spec games_turn_based_matches_decline(Tesla.Env.client(), String.t(), keyword(), keyword()) ::
          {:ok, GoogleApi.Games.V1.Model.TurnBasedMatch.t()}
          | {:ok, Tesla.Env.t()}
          | {:error, any()}
  def games_turn_based_matches_decline(connection, match_id, optional_params \\ [], opts \\ []) do
    optional_params_config = %{
      :alt => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :userIp => :query,
      :language => :query
    }

    request =
      Request.new()
      |> Request.method(:put)
      |> Request.url("/turnbasedmatches/{matchId}/decline", %{
        "matchId" => URI.encode(match_id, &URI.char_unreserved?/1)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)
      |> Request.library_version(@library_version)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.Games.V1.Model.TurnBasedMatch{}])
  end

  @doc """
  Dismiss a turn-based match from the match list. The match will no longer show up in the list and will not generate notifications.

  ## Parameters

  *   `connection` (*type:* `GoogleApi.Games.V1.Connection.t`) - Connection to server
  *   `match_id` (*type:* `String.t`) - The ID of the match.
  *   `optional_params` (*type:* `keyword()`) - Optional parameters
      *   `:alt` (*type:* `String.t`) - Data format for the response.
      *   `:fields` (*type:* `String.t`) - Selector specifying which fields to include in a partial response.
      *   `:key` (*type:* `String.t`) - API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
      *   `:oauth_token` (*type:* `String.t`) - OAuth 2.0 token for the current user.
      *   `:prettyPrint` (*type:* `boolean()`) - Returns response with indentations and line breaks.
      *   `:quotaUser` (*type:* `String.t`) - An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
      *   `:userIp` (*type:* `String.t`) - Deprecated. Please use quotaUser instead.
  *   `opts` (*type:* `keyword()`) - Call options

  ## Returns

  *   `{:ok, %{}}` on success
  *   `{:error, info}` on failure
  """
  @spec games_turn_based_matches_dismiss(Tesla.Env.client(), String.t(), keyword(), keyword()) ::
          {:ok, nil} | {:ok, Tesla.Env.t()} | {:error, any()}
  def games_turn_based_matches_dismiss(connection, match_id, optional_params \\ [], opts \\ []) do
    optional_params_config = %{
      :alt => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :userIp => :query
    }

    request =
      Request.new()
      |> Request.method(:put)
      |> Request.url("/turnbasedmatches/{matchId}/dismiss", %{
        "matchId" => URI.encode(match_id, &URI.char_unreserved?/1)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)
      |> Request.library_version(@library_version)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [decode: false])
  end

  @doc """
  Finish a turn-based match. Each player should make this call once, after all results are in. Only the player whose turn it is may make the first call to Finish, and can pass in the final match state.

  ## Parameters

  *   `connection` (*type:* `GoogleApi.Games.V1.Connection.t`) - Connection to server
  *   `match_id` (*type:* `String.t`) - The ID of the match.
  *   `optional_params` (*type:* `keyword()`) - Optional parameters
      *   `:alt` (*type:* `String.t`) - Data format for the response.
      *   `:fields` (*type:* `String.t`) - Selector specifying which fields to include in a partial response.
      *   `:key` (*type:* `String.t`) - API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
      *   `:oauth_token` (*type:* `String.t`) - OAuth 2.0 token for the current user.
      *   `:prettyPrint` (*type:* `boolean()`) - Returns response with indentations and line breaks.
      *   `:quotaUser` (*type:* `String.t`) - An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
      *   `:userIp` (*type:* `String.t`) - Deprecated. Please use quotaUser instead.
      *   `:language` (*type:* `String.t`) - The preferred language to use for strings returned by this method.
      *   `:body` (*type:* `GoogleApi.Games.V1.Model.TurnBasedMatchResults.t`) - 
  *   `opts` (*type:* `keyword()`) - Call options

  ## Returns

  *   `{:ok, %GoogleApi.Games.V1.Model.TurnBasedMatch{}}` on success
  *   `{:error, info}` on failure
  """
  @spec games_turn_based_matches_finish(Tesla.Env.client(), String.t(), keyword(), keyword()) ::
          {:ok, GoogleApi.Games.V1.Model.TurnBasedMatch.t()}
          | {:ok, Tesla.Env.t()}
          | {:error, any()}
  def games_turn_based_matches_finish(connection, match_id, optional_params \\ [], opts \\ []) do
    optional_params_config = %{
      :alt => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :userIp => :query,
      :language => :query,
      :body => :body
    }

    request =
      Request.new()
      |> Request.method(:put)
      |> Request.url("/turnbasedmatches/{matchId}/finish", %{
        "matchId" => URI.encode(match_id, &URI.char_unreserved?/1)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)
      |> Request.library_version(@library_version)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.Games.V1.Model.TurnBasedMatch{}])
  end

  @doc """
  Get the data for a turn-based match.

  ## Parameters

  *   `connection` (*type:* `GoogleApi.Games.V1.Connection.t`) - Connection to server
  *   `match_id` (*type:* `String.t`) - The ID of the match.
  *   `optional_params` (*type:* `keyword()`) - Optional parameters
      *   `:alt` (*type:* `String.t`) - Data format for the response.
      *   `:fields` (*type:* `String.t`) - Selector specifying which fields to include in a partial response.
      *   `:key` (*type:* `String.t`) - API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
      *   `:oauth_token` (*type:* `String.t`) - OAuth 2.0 token for the current user.
      *   `:prettyPrint` (*type:* `boolean()`) - Returns response with indentations and line breaks.
      *   `:quotaUser` (*type:* `String.t`) - An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
      *   `:userIp` (*type:* `String.t`) - Deprecated. Please use quotaUser instead.
      *   `:includeMatchData` (*type:* `boolean()`) - Get match data along with metadata.
      *   `:language` (*type:* `String.t`) - The preferred language to use for strings returned by this method.
  *   `opts` (*type:* `keyword()`) - Call options

  ## Returns

  *   `{:ok, %GoogleApi.Games.V1.Model.TurnBasedMatch{}}` on success
  *   `{:error, info}` on failure
  """
  @spec games_turn_based_matches_get(Tesla.Env.client(), String.t(), keyword(), keyword()) ::
          {:ok, GoogleApi.Games.V1.Model.TurnBasedMatch.t()}
          | {:ok, Tesla.Env.t()}
          | {:error, any()}
  def games_turn_based_matches_get(connection, match_id, optional_params \\ [], opts \\ []) do
    optional_params_config = %{
      :alt => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :userIp => :query,
      :includeMatchData => :query,
      :language => :query
    }

    request =
      Request.new()
      |> Request.method(:get)
      |> Request.url("/turnbasedmatches/{matchId}", %{
        "matchId" => URI.encode(match_id, &URI.char_unreserved?/1)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)
      |> Request.library_version(@library_version)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.Games.V1.Model.TurnBasedMatch{}])
  end

  @doc """
  Join a turn-based match.

  ## Parameters

  *   `connection` (*type:* `GoogleApi.Games.V1.Connection.t`) - Connection to server
  *   `match_id` (*type:* `String.t`) - The ID of the match.
  *   `optional_params` (*type:* `keyword()`) - Optional parameters
      *   `:alt` (*type:* `String.t`) - Data format for the response.
      *   `:fields` (*type:* `String.t`) - Selector specifying which fields to include in a partial response.
      *   `:key` (*type:* `String.t`) - API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
      *   `:oauth_token` (*type:* `String.t`) - OAuth 2.0 token for the current user.
      *   `:prettyPrint` (*type:* `boolean()`) - Returns response with indentations and line breaks.
      *   `:quotaUser` (*type:* `String.t`) - An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
      *   `:userIp` (*type:* `String.t`) - Deprecated. Please use quotaUser instead.
      *   `:language` (*type:* `String.t`) - The preferred language to use for strings returned by this method.
  *   `opts` (*type:* `keyword()`) - Call options

  ## Returns

  *   `{:ok, %GoogleApi.Games.V1.Model.TurnBasedMatch{}}` on success
  *   `{:error, info}` on failure
  """
  @spec games_turn_based_matches_join(Tesla.Env.client(), String.t(), keyword(), keyword()) ::
          {:ok, GoogleApi.Games.V1.Model.TurnBasedMatch.t()}
          | {:ok, Tesla.Env.t()}
          | {:error, any()}
  def games_turn_based_matches_join(connection, match_id, optional_params \\ [], opts \\ []) do
    optional_params_config = %{
      :alt => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :userIp => :query,
      :language => :query
    }

    request =
      Request.new()
      |> Request.method(:put)
      |> Request.url("/turnbasedmatches/{matchId}/join", %{
        "matchId" => URI.encode(match_id, &URI.char_unreserved?/1)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)
      |> Request.library_version(@library_version)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.Games.V1.Model.TurnBasedMatch{}])
  end

  @doc """
  Leave a turn-based match when it is not the current player's turn, without canceling the match.

  ## Parameters

  *   `connection` (*type:* `GoogleApi.Games.V1.Connection.t`) - Connection to server
  *   `match_id` (*type:* `String.t`) - The ID of the match.
  *   `optional_params` (*type:* `keyword()`) - Optional parameters
      *   `:alt` (*type:* `String.t`) - Data format for the response.
      *   `:fields` (*type:* `String.t`) - Selector specifying which fields to include in a partial response.
      *   `:key` (*type:* `String.t`) - API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
      *   `:oauth_token` (*type:* `String.t`) - OAuth 2.0 token for the current user.
      *   `:prettyPrint` (*type:* `boolean()`) - Returns response with indentations and line breaks.
      *   `:quotaUser` (*type:* `String.t`) - An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
      *   `:userIp` (*type:* `String.t`) - Deprecated. Please use quotaUser instead.
      *   `:language` (*type:* `String.t`) - The preferred language to use for strings returned by this method.
  *   `opts` (*type:* `keyword()`) - Call options

  ## Returns

  *   `{:ok, %GoogleApi.Games.V1.Model.TurnBasedMatch{}}` on success
  *   `{:error, info}` on failure
  """
  @spec games_turn_based_matches_leave(Tesla.Env.client(), String.t(), keyword(), keyword()) ::
          {:ok, GoogleApi.Games.V1.Model.TurnBasedMatch.t()}
          | {:ok, Tesla.Env.t()}
          | {:error, any()}
  def games_turn_based_matches_leave(connection, match_id, optional_params \\ [], opts \\ []) do
    optional_params_config = %{
      :alt => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :userIp => :query,
      :language => :query
    }

    request =
      Request.new()
      |> Request.method(:put)
      |> Request.url("/turnbasedmatches/{matchId}/leave", %{
        "matchId" => URI.encode(match_id, &URI.char_unreserved?/1)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)
      |> Request.library_version(@library_version)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.Games.V1.Model.TurnBasedMatch{}])
  end

  @doc """
  Leave a turn-based match during the current player's turn, without canceling the match.

  ## Parameters

  *   `connection` (*type:* `GoogleApi.Games.V1.Connection.t`) - Connection to server
  *   `match_id` (*type:* `String.t`) - The ID of the match.
  *   `match_version` (*type:* `integer()`) - The version of the match being updated.
  *   `optional_params` (*type:* `keyword()`) - Optional parameters
      *   `:alt` (*type:* `String.t`) - Data format for the response.
      *   `:fields` (*type:* `String.t`) - Selector specifying which fields to include in a partial response.
      *   `:key` (*type:* `String.t`) - API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
      *   `:oauth_token` (*type:* `String.t`) - OAuth 2.0 token for the current user.
      *   `:prettyPrint` (*type:* `boolean()`) - Returns response with indentations and line breaks.
      *   `:quotaUser` (*type:* `String.t`) - An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
      *   `:userIp` (*type:* `String.t`) - Deprecated. Please use quotaUser instead.
      *   `:language` (*type:* `String.t`) - The preferred language to use for strings returned by this method.
      *   `:pendingParticipantId` (*type:* `String.t`) - The ID of another participant who should take their turn next. If not set, the match will wait for other player(s) to join via automatching; this is only valid if automatch criteria is set on the match with remaining slots for automatched players.
  *   `opts` (*type:* `keyword()`) - Call options

  ## Returns

  *   `{:ok, %GoogleApi.Games.V1.Model.TurnBasedMatch{}}` on success
  *   `{:error, info}` on failure
  """
  @spec games_turn_based_matches_leave_turn(
          Tesla.Env.client(),
          String.t(),
          integer(),
          keyword(),
          keyword()
        ) ::
          {:ok, GoogleApi.Games.V1.Model.TurnBasedMatch.t()}
          | {:ok, Tesla.Env.t()}
          | {:error, any()}
  def games_turn_based_matches_leave_turn(
        connection,
        match_id,
        match_version,
        optional_params \\ [],
        opts \\ []
      ) do
    optional_params_config = %{
      :alt => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :userIp => :query,
      :language => :query,
      :pendingParticipantId => :query
    }

    request =
      Request.new()
      |> Request.method(:put)
      |> Request.url("/turnbasedmatches/{matchId}/leaveTurn", %{
        "matchId" => URI.encode(match_id, &URI.char_unreserved?/1)
      })
      |> Request.add_param(:query, :matchVersion, match_version)
      |> Request.add_optional_params(optional_params_config, optional_params)
      |> Request.library_version(@library_version)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.Games.V1.Model.TurnBasedMatch{}])
  end

  @doc """
  Returns turn-based matches the player is or was involved in.

  ## Parameters

  *   `connection` (*type:* `GoogleApi.Games.V1.Connection.t`) - Connection to server
  *   `optional_params` (*type:* `keyword()`) - Optional parameters
      *   `:alt` (*type:* `String.t`) - Data format for the response.
      *   `:fields` (*type:* `String.t`) - Selector specifying which fields to include in a partial response.
      *   `:key` (*type:* `String.t`) - API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
      *   `:oauth_token` (*type:* `String.t`) - OAuth 2.0 token for the current user.
      *   `:prettyPrint` (*type:* `boolean()`) - Returns response with indentations and line breaks.
      *   `:quotaUser` (*type:* `String.t`) - An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
      *   `:userIp` (*type:* `String.t`) - Deprecated. Please use quotaUser instead.
      *   `:includeMatchData` (*type:* `boolean()`) - True if match data should be returned in the response. Note that not all data will necessarily be returned if include_match_data is true; the server may decide to only return data for some of the matches to limit download size for the client. The remainder of the data for these matches will be retrievable on request.
      *   `:language` (*type:* `String.t`) - The preferred language to use for strings returned by this method.
      *   `:maxCompletedMatches` (*type:* `integer()`) - The maximum number of completed or canceled matches to return in the response. If not set, all matches returned could be completed or canceled.
      *   `:maxResults` (*type:* `integer()`) - The maximum number of matches to return in the response, used for paging. For any response, the actual number of matches to return may be less than the specified maxResults.
      *   `:pageToken` (*type:* `String.t`) - The token returned by the previous request.
  *   `opts` (*type:* `keyword()`) - Call options

  ## Returns

  *   `{:ok, %GoogleApi.Games.V1.Model.TurnBasedMatchList{}}` on success
  *   `{:error, info}` on failure
  """
  @spec games_turn_based_matches_list(Tesla.Env.client(), keyword(), keyword()) ::
          {:ok, GoogleApi.Games.V1.Model.TurnBasedMatchList.t()}
          | {:ok, Tesla.Env.t()}
          | {:error, any()}
  def games_turn_based_matches_list(connection, optional_params \\ [], opts \\ []) do
    optional_params_config = %{
      :alt => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :userIp => :query,
      :includeMatchData => :query,
      :language => :query,
      :maxCompletedMatches => :query,
      :maxResults => :query,
      :pageToken => :query
    }

    request =
      Request.new()
      |> Request.method(:get)
      |> Request.url("/turnbasedmatches", %{})
      |> Request.add_optional_params(optional_params_config, optional_params)
      |> Request.library_version(@library_version)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.Games.V1.Model.TurnBasedMatchList{}])
  end

  @doc """
  Create a rematch of a match that was previously completed, with the same participants. This can be called by only one player on a match still in their list; the player must have called Finish first. Returns the newly created match; it will be the caller's turn.

  ## Parameters

  *   `connection` (*type:* `GoogleApi.Games.V1.Connection.t`) - Connection to server
  *   `match_id` (*type:* `String.t`) - The ID of the match.
  *   `optional_params` (*type:* `keyword()`) - Optional parameters
      *   `:alt` (*type:* `String.t`) - Data format for the response.
      *   `:fields` (*type:* `String.t`) - Selector specifying which fields to include in a partial response.
      *   `:key` (*type:* `String.t`) - API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
      *   `:oauth_token` (*type:* `String.t`) - OAuth 2.0 token for the current user.
      *   `:prettyPrint` (*type:* `boolean()`) - Returns response with indentations and line breaks.
      *   `:quotaUser` (*type:* `String.t`) - An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
      *   `:userIp` (*type:* `String.t`) - Deprecated. Please use quotaUser instead.
      *   `:language` (*type:* `String.t`) - The preferred language to use for strings returned by this method.
      *   `:requestId` (*type:* `String.t`) - A randomly generated numeric ID for each request specified by the caller. This number is used at the server to ensure that the request is handled correctly across retries.
  *   `opts` (*type:* `keyword()`) - Call options

  ## Returns

  *   `{:ok, %GoogleApi.Games.V1.Model.TurnBasedMatchRematch{}}` on success
  *   `{:error, info}` on failure
  """
  @spec games_turn_based_matches_rematch(Tesla.Env.client(), String.t(), keyword(), keyword()) ::
          {:ok, GoogleApi.Games.V1.Model.TurnBasedMatchRematch.t()}
          | {:ok, Tesla.Env.t()}
          | {:error, any()}
  def games_turn_based_matches_rematch(connection, match_id, optional_params \\ [], opts \\ []) do
    optional_params_config = %{
      :alt => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :userIp => :query,
      :language => :query,
      :requestId => :query
    }

    request =
      Request.new()
      |> Request.method(:post)
      |> Request.url("/turnbasedmatches/{matchId}/rematch", %{
        "matchId" => URI.encode(match_id, &URI.char_unreserved?/1)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)
      |> Request.library_version(@library_version)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.Games.V1.Model.TurnBasedMatchRematch{}])
  end

  @doc """
  Returns turn-based matches the player is or was involved in that changed since the last sync call, with the least recent changes coming first. Matches that should be removed from the local cache will have a status of MATCH_DELETED.

  ## Parameters

  *   `connection` (*type:* `GoogleApi.Games.V1.Connection.t`) - Connection to server
  *   `optional_params` (*type:* `keyword()`) - Optional parameters
      *   `:alt` (*type:* `String.t`) - Data format for the response.
      *   `:fields` (*type:* `String.t`) - Selector specifying which fields to include in a partial response.
      *   `:key` (*type:* `String.t`) - API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
      *   `:oauth_token` (*type:* `String.t`) - OAuth 2.0 token for the current user.
      *   `:prettyPrint` (*type:* `boolean()`) - Returns response with indentations and line breaks.
      *   `:quotaUser` (*type:* `String.t`) - An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
      *   `:userIp` (*type:* `String.t`) - Deprecated. Please use quotaUser instead.
      *   `:includeMatchData` (*type:* `boolean()`) - True if match data should be returned in the response. Note that not all data will necessarily be returned if include_match_data is true; the server may decide to only return data for some of the matches to limit download size for the client. The remainder of the data for these matches will be retrievable on request.
      *   `:language` (*type:* `String.t`) - The preferred language to use for strings returned by this method.
      *   `:maxCompletedMatches` (*type:* `integer()`) - The maximum number of completed or canceled matches to return in the response. If not set, all matches returned could be completed or canceled.
      *   `:maxResults` (*type:* `integer()`) - The maximum number of matches to return in the response, used for paging. For any response, the actual number of matches to return may be less than the specified maxResults.
      *   `:pageToken` (*type:* `String.t`) - The token returned by the previous request.
  *   `opts` (*type:* `keyword()`) - Call options

  ## Returns

  *   `{:ok, %GoogleApi.Games.V1.Model.TurnBasedMatchSync{}}` on success
  *   `{:error, info}` on failure
  """
  @spec games_turn_based_matches_sync(Tesla.Env.client(), keyword(), keyword()) ::
          {:ok, GoogleApi.Games.V1.Model.TurnBasedMatchSync.t()}
          | {:ok, Tesla.Env.t()}
          | {:error, any()}
  def games_turn_based_matches_sync(connection, optional_params \\ [], opts \\ []) do
    optional_params_config = %{
      :alt => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :userIp => :query,
      :includeMatchData => :query,
      :language => :query,
      :maxCompletedMatches => :query,
      :maxResults => :query,
      :pageToken => :query
    }

    request =
      Request.new()
      |> Request.method(:get)
      |> Request.url("/turnbasedmatches/sync", %{})
      |> Request.add_optional_params(optional_params_config, optional_params)
      |> Request.library_version(@library_version)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.Games.V1.Model.TurnBasedMatchSync{}])
  end

  @doc """
  Commit the results of a player turn.

  ## Parameters

  *   `connection` (*type:* `GoogleApi.Games.V1.Connection.t`) - Connection to server
  *   `match_id` (*type:* `String.t`) - The ID of the match.
  *   `optional_params` (*type:* `keyword()`) - Optional parameters
      *   `:alt` (*type:* `String.t`) - Data format for the response.
      *   `:fields` (*type:* `String.t`) - Selector specifying which fields to include in a partial response.
      *   `:key` (*type:* `String.t`) - API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
      *   `:oauth_token` (*type:* `String.t`) - OAuth 2.0 token for the current user.
      *   `:prettyPrint` (*type:* `boolean()`) - Returns response with indentations and line breaks.
      *   `:quotaUser` (*type:* `String.t`) - An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
      *   `:userIp` (*type:* `String.t`) - Deprecated. Please use quotaUser instead.
      *   `:language` (*type:* `String.t`) - The preferred language to use for strings returned by this method.
      *   `:body` (*type:* `GoogleApi.Games.V1.Model.TurnBasedMatchTurn.t`) - 
  *   `opts` (*type:* `keyword()`) - Call options

  ## Returns

  *   `{:ok, %GoogleApi.Games.V1.Model.TurnBasedMatch{}}` on success
  *   `{:error, info}` on failure
  """
  @spec games_turn_based_matches_take_turn(Tesla.Env.client(), String.t(), keyword(), keyword()) ::
          {:ok, GoogleApi.Games.V1.Model.TurnBasedMatch.t()}
          | {:ok, Tesla.Env.t()}
          | {:error, any()}
  def games_turn_based_matches_take_turn(connection, match_id, optional_params \\ [], opts \\ []) do
    optional_params_config = %{
      :alt => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :userIp => :query,
      :language => :query,
      :body => :body
    }

    request =
      Request.new()
      |> Request.method(:put)
      |> Request.url("/turnbasedmatches/{matchId}/turn", %{
        "matchId" => URI.encode(match_id, &URI.char_unreserved?/1)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)
      |> Request.library_version(@library_version)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.Games.V1.Model.TurnBasedMatch{}])
  end
end
