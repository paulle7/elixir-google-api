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

defmodule GoogleApi.AdMob.V1.Model.ListAppsResponse do
  @moduledoc """
  Response for the apps list request.

  ## Attributes

  *   `apps` (*type:* `list(GoogleApi.AdMob.V1.Model.App.t)`, *default:* `nil`) - The resulting apps for the requested account.
  *   `nextPageToken` (*type:* `String.t`, *default:* `nil`) - If not empty, indicates that there may be more apps for the request; this value should be passed in a new `ListAppsRequest`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :apps => list(GoogleApi.AdMob.V1.Model.App.t()) | nil,
          :nextPageToken => String.t() | nil
        }

  field(:apps, as: GoogleApi.AdMob.V1.Model.App, type: :list)
  field(:nextPageToken)
end

defimpl Poison.Decoder, for: GoogleApi.AdMob.V1.Model.ListAppsResponse do
  def decode(value, options) do
    GoogleApi.AdMob.V1.Model.ListAppsResponse.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.AdMob.V1.Model.ListAppsResponse do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end