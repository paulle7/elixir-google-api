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

defmodule GoogleApi.CloudKMS.V1.Model.GenerateRandomBytesResponse do
  @moduledoc """
  Response message for KeyManagementService.GenerateRandomBytes.

  ## Attributes

  *   `data` (*type:* `String.t`, *default:* `nil`) - The generated data.
  *   `dataCrc32c` (*type:* `String.t`, *default:* `nil`) - Integrity verification field. A CRC32C checksum of the returned GenerateRandomBytesResponse.data. An integrity check of GenerateRandomBytesResponse.data can be performed by computing the CRC32C checksum of GenerateRandomBytesResponse.data and comparing your results to this field. Discard the response in case of non-matching checksum values, and perform a limited number of retries. A persistent mismatch may indicate an issue in your computation of the CRC32C checksum. Note: This field is defined as int64 for reasons of compatibility across different languages. However, it is a non-negative integer, which will never exceed 2^32-1, and can be safely downconverted to uint32 in languages that support this type.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :data => String.t() | nil,
          :dataCrc32c => String.t() | nil
        }

  field(:data)
  field(:dataCrc32c)
end

defimpl Poison.Decoder, for: GoogleApi.CloudKMS.V1.Model.GenerateRandomBytesResponse do
  def decode(value, options) do
    GoogleApi.CloudKMS.V1.Model.GenerateRandomBytesResponse.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.CloudKMS.V1.Model.GenerateRandomBytesResponse do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
