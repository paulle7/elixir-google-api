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

defmodule GoogleApi.MachineLearning.V1.Model.GoogleCloudMlV1PredictRequest do
  @moduledoc """
  Request for predictions to be issued against a trained model.

  ## Attributes

  - httpBody (GoogleApiHttpBody):  Required. The prediction request body. Defaults to: `null`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :httpBody => GoogleApi.MachineLearning.V1.Model.GoogleApiHttpBody.t()
        }

  field(:httpBody, as: GoogleApi.MachineLearning.V1.Model.GoogleApiHttpBody)
end

defimpl Poison.Decoder, for: GoogleApi.MachineLearning.V1.Model.GoogleCloudMlV1PredictRequest do
  def decode(value, options) do
    GoogleApi.MachineLearning.V1.Model.GoogleCloudMlV1PredictRequest.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.MachineLearning.V1.Model.GoogleCloudMlV1PredictRequest do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
