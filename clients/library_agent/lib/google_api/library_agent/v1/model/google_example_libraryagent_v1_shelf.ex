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

defmodule GoogleApi.LibraryAgent.V1.Model.GoogleExampleLibraryagentV1Shelf do
  @moduledoc """
  A Shelf contains a collection of books with a theme.

  ## Attributes

  *   `name` (*type:* `String.t`, *default:* `nil`) - Output only. The resource name of the shelf. Shelf names have the form `shelves/{shelf_id}`. The name is ignored when creating a shelf.
  *   `theme` (*type:* `String.t`, *default:* `nil`) - The theme of the shelf
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :name => String.t() | nil,
          :theme => String.t() | nil
        }

  field(:name)
  field(:theme)
end

defimpl Poison.Decoder, for: GoogleApi.LibraryAgent.V1.Model.GoogleExampleLibraryagentV1Shelf do
  def decode(value, options) do
    GoogleApi.LibraryAgent.V1.Model.GoogleExampleLibraryagentV1Shelf.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.LibraryAgent.V1.Model.GoogleExampleLibraryagentV1Shelf do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
