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

defmodule GoogleApi.DataLabeling.V1beta1.Model.GoogleCloudDatalabelingV1beta1EvaluationJobAlertConfig do
  @moduledoc """
  Provides details for how an evaluation job sends email alerts based on the results of a run.

  ## Attributes

  *   `email` (*type:* `String.t`, *default:* `nil`) - Required. An email address to send alerts to.
  *   `minAcceptableMeanAveragePrecision` (*type:* `float()`, *default:* `nil`) - Required. A number between 0 and 1 that describes a minimum mean average precision threshold. When the evaluation job runs, if it calculates that your model version's predictions from the recent interval have meanAveragePrecision below this threshold, then it sends an alert to your specified email.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :email => String.t(),
          :minAcceptableMeanAveragePrecision => float()
        }

  field(:email)
  field(:minAcceptableMeanAveragePrecision)
end

defimpl Poison.Decoder,
  for: GoogleApi.DataLabeling.V1beta1.Model.GoogleCloudDatalabelingV1beta1EvaluationJobAlertConfig do
  def decode(value, options) do
    GoogleApi.DataLabeling.V1beta1.Model.GoogleCloudDatalabelingV1beta1EvaluationJobAlertConfig.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.DataLabeling.V1beta1.Model.GoogleCloudDatalabelingV1beta1EvaluationJobAlertConfig do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end