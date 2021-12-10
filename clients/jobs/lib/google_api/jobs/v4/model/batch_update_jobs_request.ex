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

defmodule GoogleApi.Jobs.V4.Model.BatchUpdateJobsRequest do
  @moduledoc """
  Request to update a batch of jobs.

  ## Attributes

  *   `jobs` (*type:* `list(GoogleApi.Jobs.V4.Model.Job.t)`, *default:* `nil`) - Required. The jobs to be updated. A maximum of 200 jobs can be updated in a batch.
  *   `updateMask` (*type:* `String.t`, *default:* `nil`) - Strongly recommended for the best service experience. Be aware that it will also increase latency when checking the status of a batch operation. If update_mask is provided, only the specified fields in Job are updated. Otherwise all the fields are updated. A field mask to restrict the fields that are updated. Only top level fields of Job are supported. If update_mask is provided, The Job inside JobResult will only contains fields that is updated, plus the Id of the Job. Otherwise, Job will include all fields, which can yield a very large response.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :jobs => list(GoogleApi.Jobs.V4.Model.Job.t()) | nil,
          :updateMask => String.t() | nil
        }

  field(:jobs, as: GoogleApi.Jobs.V4.Model.Job, type: :list)
  field(:updateMask)
end

defimpl Poison.Decoder, for: GoogleApi.Jobs.V4.Model.BatchUpdateJobsRequest do
  def decode(value, options) do
    GoogleApi.Jobs.V4.Model.BatchUpdateJobsRequest.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Jobs.V4.Model.BatchUpdateJobsRequest do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
