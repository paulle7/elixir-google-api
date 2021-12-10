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

defmodule GoogleApi.ContainerAnalysis.V1.Model.Version do
  @moduledoc """
  Version contains structured information about the version of a package.

  ## Attributes

  *   `epoch` (*type:* `integer()`, *default:* `nil`) - Used to correct mistakes in the version numbering scheme.
  *   `fullName` (*type:* `String.t`, *default:* `nil`) - Human readable version string. This string is of the form :- and is only set when kind is NORMAL.
  *   `inclusive` (*type:* `boolean()`, *default:* `nil`) - Whether this version is specifying part of an inclusive range. Grafeas does not have the capability to specify version ranges; instead we have fields that specify start version and end versions. At times this is insufficient - we also need to specify whether the version is included in the range or is excluded from the range. This boolean is expected to be set to true when the version is included in a range.
  *   `kind` (*type:* `String.t`, *default:* `nil`) - Required. Distinguishes between sentinel MIN/MAX versions and normal versions.
  *   `name` (*type:* `String.t`, *default:* `nil`) - Required only when version kind is NORMAL. The main part of the version name.
  *   `revision` (*type:* `String.t`, *default:* `nil`) - The iteration of the package build from the above version.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :epoch => integer() | nil,
          :fullName => String.t() | nil,
          :inclusive => boolean() | nil,
          :kind => String.t() | nil,
          :name => String.t() | nil,
          :revision => String.t() | nil
        }

  field(:epoch)
  field(:fullName)
  field(:inclusive)
  field(:kind)
  field(:name)
  field(:revision)
end

defimpl Poison.Decoder, for: GoogleApi.ContainerAnalysis.V1.Model.Version do
  def decode(value, options) do
    GoogleApi.ContainerAnalysis.V1.Model.Version.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.ContainerAnalysis.V1.Model.Version do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end