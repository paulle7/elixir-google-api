# Copyright 2017 Google Inc.
#
# Licensed under the Apache License, Version 2.0 (the &quot;License&quot;);
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an &quot;AS IS&quot; BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule GoogleApi.MachineLearning.V1.Model.GoogleCloudMlV1Location do
  @moduledoc """


  ## Attributes

  - capabilities ([GoogleCloudMlV1Capability]): Capabilities available in the location. Defaults to: `null`.
  - name (String.t):  Defaults to: `null`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :capabilities => list(GoogleApi.MachineLearning.V1.Model.GoogleCloudMlV1Capability.t()),
          :name => any()
        }

  field(
    :capabilities,
    as: GoogleApi.MachineLearning.V1.Model.GoogleCloudMlV1Capability,
    type: :list
  )

  field(:name)
end

defimpl Poison.Decoder, for: GoogleApi.MachineLearning.V1.Model.GoogleCloudMlV1Location do
  def decode(value, options) do
    GoogleApi.MachineLearning.V1.Model.GoogleCloudMlV1Location.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.MachineLearning.V1.Model.GoogleCloudMlV1Location do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
