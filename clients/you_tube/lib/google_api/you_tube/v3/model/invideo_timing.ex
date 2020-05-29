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

defmodule GoogleApi.YouTube.V3.Model.InvideoTiming do
  @moduledoc """
  Describes a temporal position of a visual widget inside a video.

  ## Attributes

  *   `durationMs` (*type:* `String.t`, *default:* `nil`) - Defines the duration in milliseconds for which the promotion should be
      displayed. If missing, the client should use the default.
  *   `offsetMs` (*type:* `String.t`, *default:* `nil`) - Defines the time at which the promotion will appear. Depending on the value
      of <code>type</code> the value of the <code>offsetMs</code> field will
      represent a time offset from the start or from the end of the video,
      expressed in milliseconds.
  *   `type` (*type:* `String.t`, *default:* `nil`) - Describes a timing type. If the value is <code>offsetFromStart</code>, then
      the <code>offsetMs</code> field represents an offset from the start of the
      video. If the value is <code>offsetFromEnd</code>, then the
      <code>offsetMs</code> field represents an offset from the end of the video.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :durationMs => String.t(),
          :offsetMs => String.t(),
          :type => String.t()
        }

  field(:durationMs)
  field(:offsetMs)
  field(:type)
end

defimpl Poison.Decoder, for: GoogleApi.YouTube.V3.Model.InvideoTiming do
  def decode(value, options) do
    GoogleApi.YouTube.V3.Model.InvideoTiming.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.YouTube.V3.Model.InvideoTiming do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
