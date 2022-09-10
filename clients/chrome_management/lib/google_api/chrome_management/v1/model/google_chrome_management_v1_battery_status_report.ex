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

defmodule GoogleApi.ChromeManagement.V1.Model.GoogleChromeManagementV1BatteryStatusReport do
  @moduledoc """
  Status data for battery. * This field is telemetry information and this will change over time as the device is utilized. * Data for this field is controlled via policy: [ReportDevicePowerStatus](https://chromeenterprise.google/policies/#ReportDevicePowerStatus) * Data Collection Frequency: Only at Upload * Default Data Reporting Frequency: 3 hours - Policy Controlled: Yes * Cache: If the device is offline, the collected data is stored locally, and will be reported when the device is next online: No * Reported for affiliated users only: N/A

  ## Attributes

  *   `batteryHealth` (*type:* `String.t`, *default:* `nil`) - Output only. Battery health.
  *   `cycleCount` (*type:* `integer()`, *default:* `nil`) - Output only. Cycle count.
  *   `fullChargeCapacity` (*type:* `String.t`, *default:* `nil`) - Output only. Full charge capacity (mAmpere-hours).
  *   `reportTime` (*type:* `DateTime.t`, *default:* `nil`) - Output only. Timestamp of when the sample was collected on device
  *   `sample` (*type:* `list(GoogleApi.ChromeManagement.V1.Model.GoogleChromeManagementV1BatterySampleReport.t)`, *default:* `nil`) - Output only. Sampling data for the battery sorted in a decreasing order of report_time.
  *   `serialNumber` (*type:* `String.t`, *default:* `nil`) - Output only. Battery serial number.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :batteryHealth => String.t() | nil,
          :cycleCount => integer() | nil,
          :fullChargeCapacity => String.t() | nil,
          :reportTime => DateTime.t() | nil,
          :sample =>
            list(
              GoogleApi.ChromeManagement.V1.Model.GoogleChromeManagementV1BatterySampleReport.t()
            )
            | nil,
          :serialNumber => String.t() | nil
        }

  field(:batteryHealth)
  field(:cycleCount)
  field(:fullChargeCapacity)
  field(:reportTime, as: DateTime)

  field(:sample,
    as: GoogleApi.ChromeManagement.V1.Model.GoogleChromeManagementV1BatterySampleReport,
    type: :list
  )

  field(:serialNumber)
end

defimpl Poison.Decoder,
  for: GoogleApi.ChromeManagement.V1.Model.GoogleChromeManagementV1BatteryStatusReport do
  def decode(value, options) do
    GoogleApi.ChromeManagement.V1.Model.GoogleChromeManagementV1BatteryStatusReport.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.ChromeManagement.V1.Model.GoogleChromeManagementV1BatteryStatusReport do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
