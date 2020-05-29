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

defmodule GoogleApi.YouTube.V3.Api.Channels do
  @moduledoc """
  API calls for all endpoints tagged `Channels`.
  """

  alias GoogleApi.YouTube.V3.Connection
  alias GoogleApi.Gax.{Request, Response}

  @library_version Mix.Project.config() |> Keyword.get(:version, "")

  @doc """
  Retrieves a list of resources, possibly filtered.

  ## Parameters

  *   `connection` (*type:* `GoogleApi.YouTube.V3.Connection.t`) - Connection to server
  *   `part` (*type:* `list(String.t)`) - The <code><strong>part</strong></code> parameter specifies a
      comma-separated list of one or more <code>channel</code> resource
      properties that the API response will include.<br><br>If the parameter
      identifies a property that contains child properties, the child properties
      will be included in the response. For example, in a <code>channel</code>
      resource, the <code>contentDetails</code> property contains other
      properties, such as the <code>uploads</code> properties. As such, if you
      set <code><strong>part=contentDetails</strong></code>, the API response
      will also contain all of those nested properties.
  *   `optional_params` (*type:* `keyword()`) - Optional parameters
      *   `:"$.xgafv"` (*type:* `String.t`) - V1 error format.
      *   `:access_token` (*type:* `String.t`) - OAuth access token.
      *   `:alt` (*type:* `String.t`) - Data format for response.
      *   `:callback` (*type:* `String.t`) - JSONP
      *   `:fields` (*type:* `String.t`) - Selector specifying which fields to include in a partial response.
      *   `:key` (*type:* `String.t`) - API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
      *   `:oauth_token` (*type:* `String.t`) - OAuth 2.0 token for the current user.
      *   `:prettyPrint` (*type:* `boolean()`) - Returns response with indentations and line breaks.
      *   `:quotaUser` (*type:* `String.t`) - Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters.
      *   `:uploadType` (*type:* `String.t`) - Legacy upload protocol for media (e.g. "media", "multipart").
      *   `:upload_protocol` (*type:* `String.t`) - Upload protocol for media (e.g. "raw", "multipart").
      *   `:categoryId` (*type:* `String.t`) - Return the channels within the specified guide category ID.
      *   `:forUsername` (*type:* `String.t`) - Return the channel associated with a YouTube username.
      *   `:hl` (*type:* `String.t`) - Stands for "host language". Specifies the localization language of the
          metadata to be filled into snippet.localized. The field is filled with the
          default metadata if there is no localization in the specified language.
          The parameter value must be a language code included in the list returned
          by the i18nLanguages.list method (e.g. en_US, es_MX).
      *   `:id` (*type:* `list(String.t)`) - Return the channels with the specified IDs.
      *   `:managedByMe` (*type:* `boolean()`) - Return the channels managed by the authenticated user.
      *   `:maxResults` (*type:* `integer()`) - The <code><strong>maxResults</strong></code> parameter specifies the
          maximum number of items that should be returned in the result set.
      *   `:mine` (*type:* `boolean()`) - Return the ids of channels owned by the authenticated user.
      *   `:mySubscribers` (*type:* `boolean()`) - Return the channels subscribed to the authenticated user
      *   `:onBehalfOfContentOwner` (*type:* `String.t`) - <strong>Note:</strong> This parameter is intended exclusively for YouTube
          content partners.<br><br>The
          <code><strong>onBehalfOfContentOwner</strong></code> parameter indicates
          that the
          request's authorization credentials identify a YouTube CMS user who is
          acting on behalf of the content owner specified in the parameter value.
          This parameter is intended for YouTube content partners that own and manage
          many different YouTube channels. It allows content owners to authenticate
          once and get access to all their video and channel data, without having to
          provide authentication credentials for each individual channel. The CMS
          account that the user authenticates with must be linked to the specified
          YouTube content owner.
      *   `:pageToken` (*type:* `String.t`) - The <code><strong>pageToken</strong></code> parameter identifies a specific
          page in the result set that should be returned. In an API response, the
          <code>nextPageToken</code> and <code>prevPageToken</code> properties
          identify other pages that could be retrieved.
  *   `opts` (*type:* `keyword()`) - Call options

  ## Returns

  *   `{:ok, %GoogleApi.YouTube.V3.Model.ChannelListResponse{}}` on success
  *   `{:error, info}` on failure
  """
  @spec youtube_channels_list(Tesla.Env.client(), list(String.t()), keyword(), keyword()) ::
          {:ok, GoogleApi.YouTube.V3.Model.ChannelListResponse.t()}
          | {:ok, Tesla.Env.t()}
          | {:error, any()}
  def youtube_channels_list(connection, part, optional_params \\ [], opts \\ []) do
    optional_params_config = %{
      :"$.xgafv" => :query,
      :access_token => :query,
      :alt => :query,
      :callback => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :uploadType => :query,
      :upload_protocol => :query,
      :categoryId => :query,
      :forUsername => :query,
      :hl => :query,
      :id => :query,
      :managedByMe => :query,
      :maxResults => :query,
      :mine => :query,
      :mySubscribers => :query,
      :onBehalfOfContentOwner => :query,
      :pageToken => :query
    }

    request =
      Request.new()
      |> Request.method(:get)
      |> Request.url("/youtube/v3/channels", %{})
      |> Request.add_param(:query, :part, part)
      |> Request.add_optional_params(optional_params_config, optional_params)
      |> Request.library_version(@library_version)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.YouTube.V3.Model.ChannelListResponse{}])
  end

  @doc """
  Updates an existing resource.

  ## Parameters

  *   `connection` (*type:* `GoogleApi.YouTube.V3.Connection.t`) - Connection to server
  *   `part` (*type:* `list(String.t)`) - The <code><strong>part</strong></code> parameter serves two purposes in
      this operation. It identifies the properties that the write operation will
      set as well as the properties that the API response will
      include.<br/><br/>The API currently only allows the parameter value to be
      set to either <code>brandingSettings</code> or
      <code>invideoPromotion</code>. (You cannot update both of those parts with
      a single request.)<br/><br/>Note that this method overrides the existing
      values for all of the mutable properties that are contained in any parts
      that the parameter value specifies.
  *   `optional_params` (*type:* `keyword()`) - Optional parameters
      *   `:"$.xgafv"` (*type:* `String.t`) - V1 error format.
      *   `:access_token` (*type:* `String.t`) - OAuth access token.
      *   `:alt` (*type:* `String.t`) - Data format for response.
      *   `:callback` (*type:* `String.t`) - JSONP
      *   `:fields` (*type:* `String.t`) - Selector specifying which fields to include in a partial response.
      *   `:key` (*type:* `String.t`) - API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
      *   `:oauth_token` (*type:* `String.t`) - OAuth 2.0 token for the current user.
      *   `:prettyPrint` (*type:* `boolean()`) - Returns response with indentations and line breaks.
      *   `:quotaUser` (*type:* `String.t`) - Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters.
      *   `:uploadType` (*type:* `String.t`) - Legacy upload protocol for media (e.g. "media", "multipart").
      *   `:upload_protocol` (*type:* `String.t`) - Upload protocol for media (e.g. "raw", "multipart").
      *   `:onBehalfOfContentOwner` (*type:* `String.t`) - The <code><strong>onBehalfOfContentOwner</strong></code> parameter
          indicates that the authenticated user is acting on behalf of the content
          owner specified in the parameter value. This parameter is intended for
          YouTube content partners that own and manage many different YouTube
          channels. It allows content owners to authenticate once and get access to
          all their video and channel data, without having to provide authentication
          credentials for each individual channel. The actual CMS account that the
          user authenticates with needs to be linked to the specified YouTube content
          owner.
      *   `:body` (*type:* `GoogleApi.YouTube.V3.Model.Channel.t`) - 
  *   `opts` (*type:* `keyword()`) - Call options

  ## Returns

  *   `{:ok, %GoogleApi.YouTube.V3.Model.Channel{}}` on success
  *   `{:error, info}` on failure
  """
  @spec youtube_channels_update(Tesla.Env.client(), list(String.t()), keyword(), keyword()) ::
          {:ok, GoogleApi.YouTube.V3.Model.Channel.t()} | {:ok, Tesla.Env.t()} | {:error, any()}
  def youtube_channels_update(connection, part, optional_params \\ [], opts \\ []) do
    optional_params_config = %{
      :"$.xgafv" => :query,
      :access_token => :query,
      :alt => :query,
      :callback => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :uploadType => :query,
      :upload_protocol => :query,
      :onBehalfOfContentOwner => :query,
      :body => :body
    }

    request =
      Request.new()
      |> Request.method(:put)
      |> Request.url("/youtube/v3/channels", %{})
      |> Request.add_param(:query, :part, part)
      |> Request.add_optional_params(optional_params_config, optional_params)
      |> Request.library_version(@library_version)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.YouTube.V3.Model.Channel{}])
  end
end
