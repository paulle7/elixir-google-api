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

defmodule GoogleApi.Transcoder.V1.Model.EditAtom do
  @moduledoc """
  Edit atom.

  ## Attributes

  *   `endTimeOffset` (*type:* `String.t`, *default:* `nil`) - End time in seconds for the atom, relative to the input file timeline. When `end_time_offset` is not specified, the `inputs` are used until the end of the atom.
  *   `inputs` (*type:* `list(String.t)`, *default:* `nil`) - List of `Input.key`s identifying files that should be used in this atom. The listed `inputs` must have the same timeline.
  *   `key` (*type:* `String.t`, *default:* `nil`) - A unique key for this atom. Must be specified when using advanced mapping.
  *   `startTimeOffset` (*type:* `String.t`, *default:* `nil`) - Start time in seconds for the atom, relative to the input file timeline. The default is `0s`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :endTimeOffset => String.t() | nil,
          :inputs => list(String.t()) | nil,
          :key => String.t() | nil,
          :startTimeOffset => String.t() | nil
        }

  field(:endTimeOffset)
  field(:inputs, type: :list)
  field(:key)
  field(:startTimeOffset)
end

defimpl Poison.Decoder, for: GoogleApi.Transcoder.V1.Model.EditAtom do
  def decode(value, options) do
    GoogleApi.Transcoder.V1.Model.EditAtom.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Transcoder.V1.Model.EditAtom do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
