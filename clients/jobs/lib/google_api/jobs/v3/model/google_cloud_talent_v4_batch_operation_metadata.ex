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

defmodule GoogleApi.Jobs.V3.Model.GoogleCloudTalentV4BatchOperationMetadata do
  @moduledoc """
  Metadata used for long running operations returned by CTS batch APIs. It's used to replace google.longrunning.Operation.metadata.

  ## Attributes

  *   `createTime` (*type:* `DateTime.t`, *default:* `nil`) - The time when the batch operation is created.
  *   `endTime` (*type:* `DateTime.t`, *default:* `nil`) - The time when the batch operation is finished and google.longrunning.Operation.done is set to `true`.
  *   `failureCount` (*type:* `integer()`, *default:* `nil`) - Count of failed item(s) inside an operation.
  *   `state` (*type:* `String.t`, *default:* `nil`) - The state of a long running operation.
  *   `stateDescription` (*type:* `String.t`, *default:* `nil`) - More detailed information about operation state.
  *   `successCount` (*type:* `integer()`, *default:* `nil`) - Count of successful item(s) inside an operation.
  *   `totalCount` (*type:* `integer()`, *default:* `nil`) - Count of total item(s) inside an operation.
  *   `updateTime` (*type:* `DateTime.t`, *default:* `nil`) - The time when the batch operation status is updated. The metadata and the update_time is refreshed every minute otherwise cached data is returned.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :createTime => DateTime.t(),
          :endTime => DateTime.t(),
          :failureCount => integer(),
          :state => String.t(),
          :stateDescription => String.t(),
          :successCount => integer(),
          :totalCount => integer(),
          :updateTime => DateTime.t()
        }

  field(:createTime, as: DateTime)
  field(:endTime, as: DateTime)
  field(:failureCount)
  field(:state)
  field(:stateDescription)
  field(:successCount)
  field(:totalCount)
  field(:updateTime, as: DateTime)
end

defimpl Poison.Decoder, for: GoogleApi.Jobs.V3.Model.GoogleCloudTalentV4BatchOperationMetadata do
  def decode(value, options) do
    GoogleApi.Jobs.V3.Model.GoogleCloudTalentV4BatchOperationMetadata.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Jobs.V3.Model.GoogleCloudTalentV4BatchOperationMetadata do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
