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

defmodule GoogleApi.Storage.V1.Model.Notification do
  @moduledoc """
  A subscription to receive Google PubSub notifications.

  ## Attributes

  *   `custom_attributes` (*type:* `map()`, *default:* `nil`) - An optional list of additional attributes to attach to each Cloud PubSub message published for this notification subscription.
  *   `etag` (*type:* `String.t`, *default:* `nil`) - HTTP 1.1 Entity tag for this subscription notification.
  *   `event_types` (*type:* `list(String.t)`, *default:* `nil`) - If present, only send notifications about listed event types. If empty, sent notifications for all event types.
  *   `id` (*type:* `String.t`, *default:* `nil`) - The ID of the notification.
  *   `kind` (*type:* `String.t`, *default:* `storage#notification`) - The kind of item this is. For notifications, this is always storage#notification.
  *   `object_name_prefix` (*type:* `String.t`, *default:* `nil`) - If present, only apply this notification configuration to object names that begin with this prefix.
  *   `payload_format` (*type:* `String.t`, *default:* `JSON_API_V1`) - The desired content of the Payload.
  *   `selfLink` (*type:* `String.t`, *default:* `nil`) - The canonical URL of this notification.
  *   `topic` (*type:* `String.t`, *default:* `nil`) - The Cloud PubSub topic to which this subscription publishes. Formatted as: '//pubsub.googleapis.com/projects/{project-identifier}/topics/{my-topic}'
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :custom_attributes => map() | nil,
          :etag => String.t() | nil,
          :event_types => list(String.t()) | nil,
          :id => String.t() | nil,
          :kind => String.t() | nil,
          :object_name_prefix => String.t() | nil,
          :payload_format => String.t() | nil,
          :selfLink => String.t() | nil,
          :topic => String.t() | nil
        }

  field(:custom_attributes, type: :map)
  field(:etag)
  field(:event_types, type: :list)
  field(:id)
  field(:kind)
  field(:object_name_prefix)
  field(:payload_format)
  field(:selfLink)
  field(:topic)
end

defimpl Poison.Decoder, for: GoogleApi.Storage.V1.Model.Notification do
  def decode(value, options) do
    GoogleApi.Storage.V1.Model.Notification.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Storage.V1.Model.Notification do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
