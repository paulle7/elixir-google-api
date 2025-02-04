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

defmodule GoogleApi.Firestore.V1.Model.ListCollectionIdsRequest do
  @moduledoc """
  The request for Firestore.ListCollectionIds.

  ## Attributes

  *   `pageSize` (*type:* `integer()`, *default:* `nil`) - The maximum number of results to return.
  *   `pageToken` (*type:* `String.t`, *default:* `nil`) - A page token. Must be a value from ListCollectionIdsResponse.
  *   `readTime` (*type:* `DateTime.t`, *default:* `nil`) - Reads documents as they were at the given time. This may not be older than 270 seconds.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :pageSize => integer() | nil,
          :pageToken => String.t() | nil,
          :readTime => DateTime.t() | nil
        }

  field(:pageSize)
  field(:pageToken)
  field(:readTime, as: DateTime)
end

defimpl Poison.Decoder, for: GoogleApi.Firestore.V1.Model.ListCollectionIdsRequest do
  def decode(value, options) do
    GoogleApi.Firestore.V1.Model.ListCollectionIdsRequest.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Firestore.V1.Model.ListCollectionIdsRequest do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
