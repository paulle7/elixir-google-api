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

defmodule GoogleApi.PrivateCA.V1beta1.Model.CertificateFingerprint do
  @moduledoc """
  A group of fingerprints for the x509 certificate.

  ## Attributes

  *   `sha256Hash` (*type:* `String.t`, *default:* `nil`) - The SHA 256 hash, encoded in hexadecimal, of the DER x509 certificate.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :sha256Hash => String.t()
        }

  field(:sha256Hash)
end

defimpl Poison.Decoder, for: GoogleApi.PrivateCA.V1beta1.Model.CertificateFingerprint do
  def decode(value, options) do
    GoogleApi.PrivateCA.V1beta1.Model.CertificateFingerprint.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.PrivateCA.V1beta1.Model.CertificateFingerprint do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end