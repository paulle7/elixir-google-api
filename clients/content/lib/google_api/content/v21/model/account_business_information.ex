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

defmodule GoogleApi.Content.V21.Model.AccountBusinessInformation do
  @moduledoc """


  ## Attributes

  *   `address` (*type:* `GoogleApi.Content.V21.Model.AccountAddress.t`, *default:* `nil`) - The address of the business. Use `\\n` to add a second address line.
  *   `customerService` (*type:* `GoogleApi.Content.V21.Model.AccountCustomerService.t`, *default:* `nil`) - The customer service information of the business.
  *   `koreanBusinessRegistrationNumber` (*type:* `String.t`, *default:* `nil`) - The 10-digit [Korean business registration number](https://support.google.com/merchants/answer/9037766) separated with dashes in the format: XXX-XX-XXXXX. This field will only be updated if explicitly set.
  *   `phoneNumber` (*type:* `String.t`, *default:* `nil`) - The phone number of the business. This can only be updated if a verified phone number is not already set. To replace a verified phone number use the `Accounts.requestphoneverification` and `Accounts.verifyphonenumber`.
  *   `phoneVerificationStatus` (*type:* `String.t`, *default:* `nil`) - Verification status of the phone number of the business. This status is read only and can be updated only by successful phone verification. Acceptable values are: - "`verified`" - "`unverified`" 
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :address => GoogleApi.Content.V21.Model.AccountAddress.t() | nil,
          :customerService => GoogleApi.Content.V21.Model.AccountCustomerService.t() | nil,
          :koreanBusinessRegistrationNumber => String.t() | nil,
          :phoneNumber => String.t() | nil,
          :phoneVerificationStatus => String.t() | nil
        }

  field(:address, as: GoogleApi.Content.V21.Model.AccountAddress)
  field(:customerService, as: GoogleApi.Content.V21.Model.AccountCustomerService)
  field(:koreanBusinessRegistrationNumber)
  field(:phoneNumber)
  field(:phoneVerificationStatus)
end

defimpl Poison.Decoder, for: GoogleApi.Content.V21.Model.AccountBusinessInformation do
  def decode(value, options) do
    GoogleApi.Content.V21.Model.AccountBusinessInformation.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Content.V21.Model.AccountBusinessInformation do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
