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

defmodule GoogleApi.DocumentAI.V1.Model.GoogleCloudDocumentaiV1ProcessResponse do
  @moduledoc """
  Response message for the process document method.

  ## Attributes

  *   `document` (*type:* `GoogleApi.DocumentAI.V1.Model.GoogleCloudDocumentaiV1Document.t`, *default:* `nil`) - The document payload, will populate fields based on the processor's behavior.
  *   `humanReviewStatus` (*type:* `GoogleApi.DocumentAI.V1.Model.GoogleCloudDocumentaiV1HumanReviewStatus.t`, *default:* `nil`) - The status of human review on the processed document.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :document => GoogleApi.DocumentAI.V1.Model.GoogleCloudDocumentaiV1Document.t() | nil,
          :humanReviewStatus =>
            GoogleApi.DocumentAI.V1.Model.GoogleCloudDocumentaiV1HumanReviewStatus.t() | nil
        }

  field(:document, as: GoogleApi.DocumentAI.V1.Model.GoogleCloudDocumentaiV1Document)

  field(:humanReviewStatus,
    as: GoogleApi.DocumentAI.V1.Model.GoogleCloudDocumentaiV1HumanReviewStatus
  )
end

defimpl Poison.Decoder, for: GoogleApi.DocumentAI.V1.Model.GoogleCloudDocumentaiV1ProcessResponse do
  def decode(value, options) do
    GoogleApi.DocumentAI.V1.Model.GoogleCloudDocumentaiV1ProcessResponse.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.DocumentAI.V1.Model.GoogleCloudDocumentaiV1ProcessResponse do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
