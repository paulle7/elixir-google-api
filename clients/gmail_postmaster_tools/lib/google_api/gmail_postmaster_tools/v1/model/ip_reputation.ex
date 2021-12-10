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

defmodule GoogleApi.GmailPostmasterTools.V1.Model.IpReputation do
  @moduledoc """
  IP Reputation information for a set of IPs in a specific reputation category.

  ## Attributes

  *   `ipCount` (*type:* `String.t`, *default:* `nil`) - Total number of unique IPs in this reputation category. This metric only pertains to traffic that passed [SPF](http://www.openspf.org/) or [DKIM](http://www.dkim.org/).
  *   `reputation` (*type:* `String.t`, *default:* `nil`) - The reputation category this IP reputation represents.
  *   `sampleIps` (*type:* `list(String.t)`, *default:* `nil`) - A sample of IPs in this reputation category.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :ipCount => String.t() | nil,
          :reputation => String.t() | nil,
          :sampleIps => list(String.t()) | nil
        }

  field(:ipCount)
  field(:reputation)
  field(:sampleIps, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.GmailPostmasterTools.V1.Model.IpReputation do
  def decode(value, options) do
    GoogleApi.GmailPostmasterTools.V1.Model.IpReputation.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.GmailPostmasterTools.V1.Model.IpReputation do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end