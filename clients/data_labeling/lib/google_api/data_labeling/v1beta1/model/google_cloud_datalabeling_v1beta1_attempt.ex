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

defmodule GoogleApi.DataLabeling.V1beta1.Model.GoogleCloudDatalabelingV1beta1Attempt do
  @moduledoc """
  Records a failed evaluation job run.

  ## Attributes

  *   `attemptTime` (*type:* `DateTime.t`, *default:* `nil`) - 
  *   `partialFailures` (*type:* `list(GoogleApi.DataLabeling.V1beta1.Model.GoogleRpcStatus.t)`, *default:* `nil`) - Details of errors that occurred.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :attemptTime => DateTime.t(),
          :partialFailures => list(GoogleApi.DataLabeling.V1beta1.Model.GoogleRpcStatus.t())
        }

  field(:attemptTime, as: DateTime)
  field(:partialFailures, as: GoogleApi.DataLabeling.V1beta1.Model.GoogleRpcStatus, type: :list)
end

defimpl Poison.Decoder,
  for: GoogleApi.DataLabeling.V1beta1.Model.GoogleCloudDatalabelingV1beta1Attempt do
  def decode(value, options) do
    GoogleApi.DataLabeling.V1beta1.Model.GoogleCloudDatalabelingV1beta1Attempt.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.DataLabeling.V1beta1.Model.GoogleCloudDatalabelingV1beta1Attempt do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end