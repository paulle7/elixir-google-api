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

defmodule GoogleApi.ServiceControl.V1.Model.MetricValue do
  @moduledoc """
  Represents a single metric value.

  ## Attributes

  *   `boolValue` (*type:* `boolean()`, *default:* `nil`) - A boolean value.
  *   `distributionValue` (*type:* `GoogleApi.ServiceControl.V1.Model.Distribution.t`, *default:* `nil`) - A distribution value.
  *   `doubleValue` (*type:* `float()`, *default:* `nil`) - A double precision floating point value.
  *   `endTime` (*type:* `DateTime.t`, *default:* `nil`) - The end of the time period over which this metric value's measurement applies. If not specified, google.api.servicecontrol.v1.Operation.end_time will be used.
  *   `int64Value` (*type:* `String.t`, *default:* `nil`) - A signed 64-bit integer value.
  *   `labels` (*type:* `map()`, *default:* `nil`) - The labels describing the metric value. See comments on google.api.servicecontrol.v1.Operation.labels for the overriding relationship. Note that this map must not contain monitored resource labels.
  *   `moneyValue` (*type:* `GoogleApi.ServiceControl.V1.Model.Money.t`, *default:* `nil`) - A money value.
  *   `startTime` (*type:* `DateTime.t`, *default:* `nil`) - The start of the time period over which this metric value's measurement applies. The time period has different semantics for different metric types (cumulative, delta, and gauge). See the metric definition documentation in the service configuration for details. If not specified, google.api.servicecontrol.v1.Operation.start_time will be used.
  *   `stringValue` (*type:* `String.t`, *default:* `nil`) - A text string value.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :boolValue => boolean(),
          :distributionValue => GoogleApi.ServiceControl.V1.Model.Distribution.t(),
          :doubleValue => float(),
          :endTime => DateTime.t(),
          :int64Value => String.t(),
          :labels => map(),
          :moneyValue => GoogleApi.ServiceControl.V1.Model.Money.t(),
          :startTime => DateTime.t(),
          :stringValue => String.t()
        }

  field(:boolValue)
  field(:distributionValue, as: GoogleApi.ServiceControl.V1.Model.Distribution)
  field(:doubleValue)
  field(:endTime, as: DateTime)
  field(:int64Value)
  field(:labels, type: :map)
  field(:moneyValue, as: GoogleApi.ServiceControl.V1.Model.Money)
  field(:startTime, as: DateTime)
  field(:stringValue)
end

defimpl Poison.Decoder, for: GoogleApi.ServiceControl.V1.Model.MetricValue do
  def decode(value, options) do
    GoogleApi.ServiceControl.V1.Model.MetricValue.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.ServiceControl.V1.Model.MetricValue do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
