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

defmodule GoogleApi.YouTube.V3.Model.LiveChatBan do
  @moduledoc """
  A `__liveChatBan__` resource represents a ban for a YouTube live chat.

  ## Attributes

  *   `etag` (*type:* `String.t`, *default:* `nil`) - Etag of this resource.
  *   `id` (*type:* `String.t`, *default:* `nil`) - The ID that YouTube assigns to uniquely identify the ban.
  *   `kind` (*type:* `String.t`, *default:* `youtube#liveChatBan`) - Identifies what kind of resource this is. Value: the fixed string
      `"youtube#liveChatBan"`.
  *   `snippet` (*type:* `GoogleApi.YouTube.V3.Model.LiveChatBanSnippet.t`, *default:* `nil`) - The `snippet` object contains basic details about the ban.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :etag => String.t(),
          :id => String.t(),
          :kind => String.t(),
          :snippet => GoogleApi.YouTube.V3.Model.LiveChatBanSnippet.t()
        }

  field(:etag)
  field(:id)
  field(:kind)
  field(:snippet, as: GoogleApi.YouTube.V3.Model.LiveChatBanSnippet)
end

defimpl Poison.Decoder, for: GoogleApi.YouTube.V3.Model.LiveChatBan do
  def decode(value, options) do
    GoogleApi.YouTube.V3.Model.LiveChatBan.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.YouTube.V3.Model.LiveChatBan do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
