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

defmodule GoogleApi.AuthorizedBuyersMarketplace.V1.Model.DayPartTargeting do
  @moduledoc """
  Represents Daypart targeting.

  ## Attributes

  *   `dayParts` (*type:* `list(GoogleApi.AuthorizedBuyersMarketplace.V1.Model.DayPart.t)`, *default:* `nil`) - The targeted weekdays and times
  *   `timeZoneType` (*type:* `String.t`, *default:* `nil`) - The time zone type of the day parts
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :dayParts => list(GoogleApi.AuthorizedBuyersMarketplace.V1.Model.DayPart.t()) | nil,
          :timeZoneType => String.t() | nil
        }

  field(:dayParts, as: GoogleApi.AuthorizedBuyersMarketplace.V1.Model.DayPart, type: :list)
  field(:timeZoneType)
end

defimpl Poison.Decoder, for: GoogleApi.AuthorizedBuyersMarketplace.V1.Model.DayPartTargeting do
  def decode(value, options) do
    GoogleApi.AuthorizedBuyersMarketplace.V1.Model.DayPartTargeting.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.AuthorizedBuyersMarketplace.V1.Model.DayPartTargeting do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end