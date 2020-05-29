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

defmodule GoogleApi.YouTube.V3.Model.Playlist do
  @moduledoc """
  A <code><strong>playlist</strong></code> resource represents a YouTube
  playlist. A playlist is a collection of videos that can be viewed
  sequentially and shared with other users. A playlist can contain up to
  200 videos, and YouTube does not limit the number of playlists that
  each user creates. By default, playlists are publicly visible to other
  users, but playlists can be public or private.  <br/><br/> YouTube
  also uses playlists to identify special collections of videos for a
  channel, such as:
    <ul>
      <li>uploaded videos</li>
      <li>favorite videos</li>
      <li>positively rated (liked) videos</li>
      <li>watch history</li>
      <li>watch later</li>
    </ul>
  To be more specific, these lists are associated with a channel, which
  is a collection of a person, group, or company's videos, playlists,
  and other YouTube information.  You can retrieve the playlist IDs for
  each of these lists from the <code><a
  href=\\"/youtube/v3/docs/channels\\"> channel resource</a></code> for a
  given channel.<br/><br/> You can then use the <code> <a
  href=\\"/youtube/v3/docs/playlistItems/list\\">
  playlistItems.list</a></code> method to retrieve any of those
  lists. You can also add or remove items from those lists by calling
  the <code> <a href=\\"/youtube/v3/docs/playlistItems/insert\\">
  playlistItems.insert</a></code> and <code> <a
  href=\\"/youtube/v3/docs/playlistItems/delete\\">
  playlistItems.delete</a></code> methods.

  ## Attributes

  *   `contentDetails` (*type:* `GoogleApi.YouTube.V3.Model.PlaylistContentDetails.t`, *default:* `nil`) - The <code>contentDetails</code> object contains information like
      video count.
  *   `etag` (*type:* `String.t`, *default:* `nil`) - Etag of this resource.
  *   `id` (*type:* `String.t`, *default:* `nil`) - The ID that YouTube uses to uniquely identify the playlist.
  *   `kind` (*type:* `String.t`, *default:* `youtube#playlist`) - Identifies what kind of resource this is. Value: the fixed string
      <code>"youtube#playlist"</code>.
  *   `localizations` (*type:* `%{optional(String.t) => GoogleApi.YouTube.V3.Model.PlaylistLocalization.t}`, *default:* `nil`) - Localizations for different languages
  *   `player` (*type:* `GoogleApi.YouTube.V3.Model.PlaylistPlayer.t`, *default:* `nil`) - The <code>player</code> object contains information that you would use
      to play the playlist in an embedded player.
  *   `snippet` (*type:* `GoogleApi.YouTube.V3.Model.PlaylistSnippet.t`, *default:* `nil`) - The <code>snippet</code> object contains basic details about the
      playlist, such as its title and description.
  *   `status` (*type:* `GoogleApi.YouTube.V3.Model.PlaylistStatus.t`, *default:* `nil`) - The <code>status</code> object contains status information for the
      playlist.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :contentDetails => GoogleApi.YouTube.V3.Model.PlaylistContentDetails.t(),
          :etag => String.t(),
          :id => String.t(),
          :kind => String.t(),
          :localizations => %{
            optional(String.t()) => GoogleApi.YouTube.V3.Model.PlaylistLocalization.t()
          },
          :player => GoogleApi.YouTube.V3.Model.PlaylistPlayer.t(),
          :snippet => GoogleApi.YouTube.V3.Model.PlaylistSnippet.t(),
          :status => GoogleApi.YouTube.V3.Model.PlaylistStatus.t()
        }

  field(:contentDetails, as: GoogleApi.YouTube.V3.Model.PlaylistContentDetails)
  field(:etag)
  field(:id)
  field(:kind)
  field(:localizations, as: GoogleApi.YouTube.V3.Model.PlaylistLocalization, type: :map)
  field(:player, as: GoogleApi.YouTube.V3.Model.PlaylistPlayer)
  field(:snippet, as: GoogleApi.YouTube.V3.Model.PlaylistSnippet)
  field(:status, as: GoogleApi.YouTube.V3.Model.PlaylistStatus)
end

defimpl Poison.Decoder, for: GoogleApi.YouTube.V3.Model.Playlist do
  def decode(value, options) do
    GoogleApi.YouTube.V3.Model.Playlist.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.YouTube.V3.Model.Playlist do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
