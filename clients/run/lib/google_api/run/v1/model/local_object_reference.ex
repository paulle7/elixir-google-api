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

defmodule GoogleApi.Run.V1.Model.LocalObjectReference do
  @moduledoc """
  Not supported by Cloud Run. LocalObjectReference contains enough information to let you locate the referenced object inside the same namespace.

  ## Attributes

  *   `name` (*type:* `String.t`, *default:* `nil`) - Name of the referent. More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/names/#names
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :name => String.t() | nil
        }

  field(:name)
end

defimpl Poison.Decoder, for: GoogleApi.Run.V1.Model.LocalObjectReference do
  def decode(value, options) do
    GoogleApi.Run.V1.Model.LocalObjectReference.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Run.V1.Model.LocalObjectReference do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
