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

defmodule GoogleApi.DisplayVideo.V1.Model.ViewabilityAssignedTargetingOptionDetails do
  @moduledoc """
  Assigned viewability targeting option details. This will be populated in the viewability_details field of an AssignedTargetingOption when targeting_type is `TARGETING_TYPE_VIEWABILITY`.

  ## Attributes

  *   `targetingOptionId` (*type:* `String.t`, *default:* `nil`) - Required. The targeting_option_id of a TargetingOption of type `TARGETING_TYPE_VIEWABILITY` (e.g., "509010" for targeting the `VIEWABILITY_10_PERCENT_OR_MORE` option).
  *   `viewability` (*type:* `String.t`, *default:* `nil`) - The predicted viewability percentage. Output only in v1. Required in v2.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :targetingOptionId => String.t() | nil,
          :viewability => String.t() | nil
        }

  field(:targetingOptionId)
  field(:viewability)
end

defimpl Poison.Decoder,
  for: GoogleApi.DisplayVideo.V1.Model.ViewabilityAssignedTargetingOptionDetails do
  def decode(value, options) do
    GoogleApi.DisplayVideo.V1.Model.ViewabilityAssignedTargetingOptionDetails.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.DisplayVideo.V1.Model.ViewabilityAssignedTargetingOptionDetails do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
