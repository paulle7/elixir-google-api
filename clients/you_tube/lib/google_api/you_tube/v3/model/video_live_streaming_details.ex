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

defmodule GoogleApi.YouTube.V3.Model.VideoLiveStreamingDetails do
  @moduledoc """
  Details about the live streaming metadata.

  ## Attributes

  *   `activeLiveChatId` (*type:* `String.t`, *default:* `nil`) - The ID of the currently active live chat attached to this video. This
      field is filled only if the video is a currently live broadcast that has
      live chat. Once the broadcast transitions to complete this field will be
      removed and the live chat closed down. For persistent broadcasts that live
      chat id will no longer be tied to this video but rather to the new video
      being displayed at the persistent page.
  *   `actualEndTime` (*type:* `String.t`, *default:* `nil`) - The time that the broadcast actually ended. The value is specified
      in <a href="//www.w3.org/TR/NOTE-datetime">ISO 8601</a>
      format. This value will not be
      available until the broadcast is over.
  *   `actualStartTime` (*type:* `String.t`, *default:* `nil`) - The time that the broadcast actually started. The value is specified
      in <a href="//www.w3.org/TR/NOTE-datetime">ISO 8601</a>
      format. This value will not be
      available until the broadcast begins.
  *   `concurrentViewers` (*type:* `String.t`, *default:* `nil`) - The number of viewers currently watching the broadcast. The property and
      its value will be present if the broadcast has current viewers and the
      broadcast owner has not hidden the viewcount for the video. Note that
      YouTube stops tracking the number of concurrent viewers for a broadcast
      when the broadcast ends. So, this property would not identify the number
      of viewers watching an archived video of a live broadcast that already
      ended.
  *   `scheduledEndTime` (*type:* `String.t`, *default:* `nil`) - The time that the broadcast is scheduled to end. The value is specified
      in <a href="//www.w3.org/TR/NOTE-datetime">ISO 8601</a>
      format. If the value is empty or
      the property is not present, then the broadcast is scheduled to continue
      indefinitely.
  *   `scheduledStartTime` (*type:* `String.t`, *default:* `nil`) - The time that the broadcast is scheduled to begin. The value is specified
      in <a href="//www.w3.org/TR/NOTE-datetime">ISO 8601</a>
      format.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :activeLiveChatId => String.t(),
          :actualEndTime => String.t(),
          :actualStartTime => String.t(),
          :concurrentViewers => String.t(),
          :scheduledEndTime => String.t(),
          :scheduledStartTime => String.t()
        }

  field(:activeLiveChatId)
  field(:actualEndTime)
  field(:actualStartTime)
  field(:concurrentViewers)
  field(:scheduledEndTime)
  field(:scheduledStartTime)
end

defimpl Poison.Decoder, for: GoogleApi.YouTube.V3.Model.VideoLiveStreamingDetails do
  def decode(value, options) do
    GoogleApi.YouTube.V3.Model.VideoLiveStreamingDetails.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.YouTube.V3.Model.VideoLiveStreamingDetails do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
