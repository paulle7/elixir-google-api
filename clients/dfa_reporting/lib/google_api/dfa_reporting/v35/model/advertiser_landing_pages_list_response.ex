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

defmodule GoogleApi.DFAReporting.V35.Model.AdvertiserLandingPagesListResponse do
  @moduledoc """
  Landing Page List Response

  ## Attributes

  *   `kind` (*type:* `String.t`, *default:* `nil`) - Identifies what kind of resource this is. Value: the fixed string "dfareporting#advertiserLandingPagesListResponse".
  *   `landingPages` (*type:* `list(GoogleApi.DFAReporting.V35.Model.LandingPage.t)`, *default:* `nil`) - Landing page collection
  *   `nextPageToken` (*type:* `String.t`, *default:* `nil`) - Pagination token to be used for the next list operation.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :kind => String.t() | nil,
          :landingPages => list(GoogleApi.DFAReporting.V35.Model.LandingPage.t()) | nil,
          :nextPageToken => String.t() | nil
        }

  field(:kind)
  field(:landingPages, as: GoogleApi.DFAReporting.V35.Model.LandingPage, type: :list)
  field(:nextPageToken)
end

defimpl Poison.Decoder, for: GoogleApi.DFAReporting.V35.Model.AdvertiserLandingPagesListResponse do
  def decode(value, options) do
    GoogleApi.DFAReporting.V35.Model.AdvertiserLandingPagesListResponse.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.DFAReporting.V35.Model.AdvertiserLandingPagesListResponse do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end