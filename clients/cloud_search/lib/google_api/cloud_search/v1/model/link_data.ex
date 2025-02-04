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

defmodule GoogleApi.CloudSearch.V1.Model.LinkData do
  @moduledoc """
  Link metadata, for LINK segments. Anchor text should be stored in the "text" field of the Segment, which can also serve as a fallback.

  ## Attributes

  *   `attachment` (*type:* `GoogleApi.CloudSearch.V1.Model.SocialCommonAttachmentAttachment.t`, *default:* `nil`) - An Attachment represents the structured entity to which we are linking. It contains an Embed (apps/tacotown/proto/embeds/embed_client.proto) with fields specific to the appropriate type of linked entity. For example, if we are linking to a photo album, the Embed may include the album ID and gaia ID of the creator. Clients that understand the Embed type within the Attachment may construct and/or decorate their link appropriately e.g. to make use of type-specific functionality or first-party integrations. The link_target and (if appropriate) display_url fields must still be set even when an Attachment is present, so that clients who do not know how to interpret the Attachment can fall back to those fields, and render the Segment as an ordinary web link. N.B. Even when an Attachment is present, the intention of a "LINK" Segment is for the Segment to be presented inline with the rest of the text of a post or comment, with a clickable link or other UI suitable for inlining (though the client may modify the UI based on Attachment data, e.g. to add appropriate hovers, icons, etc.). When an entity is intended to be rendered separately from the main body of the post/comment, a separate Attachment proto can be added outside the set of Segments. N.B. Within the Attachment, fields of EmbedClientItem have their own visibility annotations, which should be enforced separately from Segment visibility annotations. See: apps/tacotown/proto/embeds/embed_annotations.proto
  *   `attachmentRenderHint` (*type:* `String.t`, *default:* `nil`) - The hint to use when rendering the associated attachment. Ignored if there is no associated attachment.
  *   `displayUrl` (*type:* `String.t`, *default:* `nil`) - If we wish to show the user a different (e.g. shortened) version of the URL for display purposes, then that version should be set here. If this field isn't set, link_target will be used for both purposes.
  *   `linkTarget` (*type:* `String.t`, *default:* `nil`) - link_target is the URL to navigate to when clicked. This could be the original URL, or a URL signed by the GWS URL signing service.
  *   `linkType` (*type:* `String.t`, *default:* `nil`) - LinkType is an optional field that provides additional information regarding link target. For example, link type can be identified as the SELF_LINK when the request was executed from the same link as the link target.
  *   `title` (*type:* `String.t`, *default:* `nil`) - Title is an optional field that provides a short string that describes the link or its destination. User interfaces often use title as a tooltip or for accessibility purposes. However, they are of course free to present this data in any form. This field is plain text.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :attachment =>
            GoogleApi.CloudSearch.V1.Model.SocialCommonAttachmentAttachment.t() | nil,
          :attachmentRenderHint => String.t() | nil,
          :displayUrl => String.t() | nil,
          :linkTarget => String.t() | nil,
          :linkType => String.t() | nil,
          :title => String.t() | nil
        }

  field(:attachment, as: GoogleApi.CloudSearch.V1.Model.SocialCommonAttachmentAttachment)
  field(:attachmentRenderHint)
  field(:displayUrl)
  field(:linkTarget)
  field(:linkType)
  field(:title)
end

defimpl Poison.Decoder, for: GoogleApi.CloudSearch.V1.Model.LinkData do
  def decode(value, options) do
    GoogleApi.CloudSearch.V1.Model.LinkData.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.CloudSearch.V1.Model.LinkData do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
