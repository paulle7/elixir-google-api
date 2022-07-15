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

defmodule GoogleApi.Forms.V1.Model.CreateItemResponse do
  @moduledoc """
  The result of creating an item.

  ## Attributes

  *   `itemId` (*type:* `String.t`, *default:* `nil`) - The ID of the created item.
  *   `questionId` (*type:* `list(String.t)`, *default:* `nil`) - The ID of the question created as part of this item, for a question group it lists IDs of all the questions created for this item.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :itemId => String.t() | nil,
          :questionId => list(String.t()) | nil
        }

  field(:itemId)
  field(:questionId, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.Forms.V1.Model.CreateItemResponse do
  def decode(value, options) do
    GoogleApi.Forms.V1.Model.CreateItemResponse.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Forms.V1.Model.CreateItemResponse do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
