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

defmodule GoogleApi.Storage.V1.Model.PolicyBindings do
  @moduledoc """


  ## Attributes

  *   `condition` (*type:* `GoogleApi.Storage.V1.Model.Expr.t`, *default:* `nil`) - The condition that is associated with this binding. NOTE: an unsatisfied condition will not allow user access via current binding. Different bindings, including their conditions, are examined independently.
  *   `members` (*type:* `list(String.t)`, *default:* `nil`) - A collection of identifiers for members who may assume the provided role. Recognized identifiers are as follows:  
      - allUsers — A special identifier that represents anyone on the internet; with or without a Google account.  
      - allAuthenticatedUsers — A special identifier that represents anyone who is authenticated with a Google account or a service account.  
      - user:emailid — An email address that represents a specific account. For example, user:alice@gmail.com or user:joe@example.com.  
      - serviceAccount:emailid — An email address that represents a service account. For example,  serviceAccount:my-other-app@appspot.gserviceaccount.com .  
      - group:emailid — An email address that represents a Google group. For example, group:admins@example.com.  
      - domain:domain — A Google Apps domain name that represents all the users of that domain. For example, domain:google.com or domain:example.com.  
      - projectOwner:projectid — Owners of the given project. For example, projectOwner:my-example-project  
      - projectEditor:projectid — Editors of the given project. For example, projectEditor:my-example-project  
      - projectViewer:projectid — Viewers of the given project. For example, projectViewer:my-example-project
  *   `role` (*type:* `String.t`, *default:* `nil`) - The role to which members belong. Two types of roles are supported: new IAM roles, which grant permissions that do not map directly to those provided by ACLs, and legacy IAM roles, which do map directly to ACL permissions. All roles are of the format roles/storage.specificRole.
      The new IAM roles are:  
      - roles/storage.admin — Full control of Google Cloud Storage resources.  
      - roles/storage.objectViewer — Read-Only access to Google Cloud Storage objects.  
      - roles/storage.objectCreator — Access to create objects in Google Cloud Storage.  
      - roles/storage.objectAdmin — Full control of Google Cloud Storage objects.   The legacy IAM roles are:  
      - roles/storage.legacyObjectReader — Read-only access to objects without listing. Equivalent to an ACL entry on an object with the READER role.  
      - roles/storage.legacyObjectOwner — Read/write access to existing objects without listing. Equivalent to an ACL entry on an object with the OWNER role.  
      - roles/storage.legacyBucketReader — Read access to buckets with object listing. Equivalent to an ACL entry on a bucket with the READER role.  
      - roles/storage.legacyBucketWriter — Read access to buckets with object listing/creation/deletion. Equivalent to an ACL entry on a bucket with the WRITER role.  
      - roles/storage.legacyBucketOwner — Read and write access to existing buckets with object listing/creation/deletion. Equivalent to an ACL entry on a bucket with the OWNER role.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :condition => GoogleApi.Storage.V1.Model.Expr.t() | nil,
          :members => list(String.t()) | nil,
          :role => String.t() | nil
        }

  field(:condition, as: GoogleApi.Storage.V1.Model.Expr)
  field(:members, type: :list)
  field(:role)
end

defimpl Poison.Decoder, for: GoogleApi.Storage.V1.Model.PolicyBindings do
  def decode(value, options) do
    GoogleApi.Storage.V1.Model.PolicyBindings.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Storage.V1.Model.PolicyBindings do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
