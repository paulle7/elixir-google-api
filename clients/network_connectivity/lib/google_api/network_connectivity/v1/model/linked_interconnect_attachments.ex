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

defmodule GoogleApi.NetworkConnectivity.V1.Model.LinkedInterconnectAttachments do
  @moduledoc """
  A collection of VLAN attachment resources. These resources should be redundant attachments that all advertise the same prefixes to Google Cloud. Alternatively, in active/passive configurations, all attachments should be capable of advertising the same prefixes.

  ## Attributes

  *   `siteToSiteDataTransfer` (*type:* `boolean()`, *default:* `nil`) - A value that controls whether site-to-site data transfer is enabled for these resources. This field is set to false by default, but you must set it to true. Note that data transfer is available only in supported locations.
  *   `uris` (*type:* `list(String.t)`, *default:* `nil`) - The URIs of linked interconnect attachment resources
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :siteToSiteDataTransfer => boolean() | nil,
          :uris => list(String.t()) | nil
        }

  field(:siteToSiteDataTransfer)
  field(:uris, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.NetworkConnectivity.V1.Model.LinkedInterconnectAttachments do
  def decode(value, options) do
    GoogleApi.NetworkConnectivity.V1.Model.LinkedInterconnectAttachments.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.NetworkConnectivity.V1.Model.LinkedInterconnectAttachments do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end