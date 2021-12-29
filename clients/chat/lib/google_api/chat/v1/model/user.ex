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

defmodule GoogleApi.Chat.V1.Model.User do
  @moduledoc """
  A user in Google Chat.

  ## Attributes

  *   `displayName` (*type:* `String.t`, *default:* `nil`) - The user's display name.
  *   `domainId` (*type:* `String.t`, *default:* `nil`) - Unique identifier of the user's Google Workspace domain.
  *   `isAnonymous` (*type:* `boolean()`, *default:* `nil`) - True when the user is deleted or the user's profile is not visible.
  *   `name` (*type:* `String.t`, *default:* `nil`) - Resource name for a Google Chat user. Formatted as `users/AAAAAAAAAAA`. Represents a [person](https://developers.google.com/people/api/rest/v1/people#Person) in the People API.
  *   `type` (*type:* `String.t`, *default:* `nil`) - User type.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :displayName => String.t() | nil,
          :domainId => String.t() | nil,
          :isAnonymous => boolean() | nil,
          :name => String.t() | nil,
          :type => String.t() | nil
        }

  field(:displayName)
  field(:domainId)
  field(:isAnonymous)
  field(:name)
  field(:type)
end

defimpl Poison.Decoder, for: GoogleApi.Chat.V1.Model.User do
  def decode(value, options) do
    GoogleApi.Chat.V1.Model.User.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Chat.V1.Model.User do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
