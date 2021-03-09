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

defmodule GoogleApi.DataCatalog.V1beta1.Model.GoogleCloudDatacatalogV1beta1GcsFileSpec do
  @moduledoc """
  Specifications of a single file in Cloud Storage.

  ## Attributes

  *   `filePath` (*type:* `String.t`, *default:* `nil`) - Required. The full file path. Example: `gs://bucket_name/a/b.txt`.
  *   `gcsTimestamps` (*type:* `GoogleApi.DataCatalog.V1beta1.Model.GoogleCloudDatacatalogV1beta1SystemTimestamps.t`, *default:* `nil`) - Output only. Timestamps about the Cloud Storage file.
  *   `sizeBytes` (*type:* `String.t`, *default:* `nil`) - Output only. The size of the file, in bytes.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :filePath => String.t() | nil,
          :gcsTimestamps =>
            GoogleApi.DataCatalog.V1beta1.Model.GoogleCloudDatacatalogV1beta1SystemTimestamps.t()
            | nil,
          :sizeBytes => String.t() | nil
        }

  field(:filePath)

  field(:gcsTimestamps,
    as: GoogleApi.DataCatalog.V1beta1.Model.GoogleCloudDatacatalogV1beta1SystemTimestamps
  )

  field(:sizeBytes)
end

defimpl Poison.Decoder,
  for: GoogleApi.DataCatalog.V1beta1.Model.GoogleCloudDatacatalogV1beta1GcsFileSpec do
  def decode(value, options) do
    GoogleApi.DataCatalog.V1beta1.Model.GoogleCloudDatacatalogV1beta1GcsFileSpec.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.DataCatalog.V1beta1.Model.GoogleCloudDatacatalogV1beta1GcsFileSpec do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
