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

defmodule GoogleApi.Jobs.V4.Model.DeviceInfo do
  @moduledoc """
  Device information collected from the job seeker, candidate, or other entity conducting the job search. Providing this information improves the quality of the search results across devices.

  ## Attributes

  *   `deviceType` (*type:* `String.t`, *default:* `nil`) - Type of the device.
  *   `id` (*type:* `String.t`, *default:* `nil`) - A device-specific ID. The ID must be a unique identifier that distinguishes the device from other devices.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :deviceType => String.t() | nil,
          :id => String.t() | nil
        }

  field(:deviceType)
  field(:id)
end

defimpl Poison.Decoder, for: GoogleApi.Jobs.V4.Model.DeviceInfo do
  def decode(value, options) do
    GoogleApi.Jobs.V4.Model.DeviceInfo.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Jobs.V4.Model.DeviceInfo do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
