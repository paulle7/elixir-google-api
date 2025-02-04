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

defmodule GoogleApi.CloudSearch.V1.Model.AckInfo do
  @moduledoc """
  Information about how devices in a meeting have acked for a session/operation.

  ## Attributes

  *   `unackedDeviceCount` (*type:* `integer()`, *default:* `nil`) - Output only. Number of meeting devices that have not acked yet.
  *   `unackedDeviceIds` (*type:* `list(String.t)`, *default:* `nil`) - Output only. IDs of meeting devices (at most ten are provided) that have not acked yet.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :unackedDeviceCount => integer() | nil,
          :unackedDeviceIds => list(String.t()) | nil
        }

  field(:unackedDeviceCount)
  field(:unackedDeviceIds, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.CloudSearch.V1.Model.AckInfo do
  def decode(value, options) do
    GoogleApi.CloudSearch.V1.Model.AckInfo.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.CloudSearch.V1.Model.AckInfo do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
