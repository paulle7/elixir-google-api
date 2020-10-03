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

defmodule GoogleApi.Jobs.V3.Model.GoogleCloudTalentV4JobDerivedInfo do
  @moduledoc """
  Derived details about the job posting.

  ## Attributes

  *   `jobCategories` (*type:* `list(String.t)`, *default:* `nil`) - Job categories derived from Job.title and Job.description.
  *   `locations` (*type:* `list(GoogleApi.Jobs.V3.Model.GoogleCloudTalentV4Location.t)`, *default:* `nil`) - Structured locations of the job, resolved from Job.addresses. locations are exactly matched to Job.addresses in the same order.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :jobCategories => list(String.t()),
          :locations => list(GoogleApi.Jobs.V3.Model.GoogleCloudTalentV4Location.t())
        }

  field(:jobCategories, type: :list)
  field(:locations, as: GoogleApi.Jobs.V3.Model.GoogleCloudTalentV4Location, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.Jobs.V3.Model.GoogleCloudTalentV4JobDerivedInfo do
  def decode(value, options) do
    GoogleApi.Jobs.V3.Model.GoogleCloudTalentV4JobDerivedInfo.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Jobs.V3.Model.GoogleCloudTalentV4JobDerivedInfo do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
