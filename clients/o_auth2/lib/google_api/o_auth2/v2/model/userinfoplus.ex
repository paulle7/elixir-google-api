# Copyright 2017 Google Inc.
#
# Licensed under the Apache License, Version 2.0 (the &quot;License&quot;);
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an &quot;AS IS&quot; BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule GoogleApi.OAuth2.V2.Model.Userinfoplus do
  @moduledoc """


  ## Attributes

  - email (String.t): The user&#39;s email address. Defaults to: `null`.
  - family_name (String.t): The user&#39;s last name. Defaults to: `null`.
  - gender (String.t): The user&#39;s gender. Defaults to: `null`.
  - given_name (String.t): The user&#39;s first name. Defaults to: `null`.
  - hd (String.t): The hosted domain e.g. example.com if the user is Google apps user. Defaults to: `null`.
  - id (String.t): The obfuscated ID of the user. Defaults to: `null`.
  - link (String.t): URL of the profile page. Defaults to: `null`.
  - locale (String.t): The user&#39;s preferred locale. Defaults to: `null`.
  - name (String.t): The user&#39;s full name. Defaults to: `null`.
  - picture (String.t): URL of the user&#39;s picture image. Defaults to: `null`.
  - verified_email (boolean()): Boolean flag which is true if the email address is verified. Always verified because we only return the user&#39;s primary email address. Defaults to: `null`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :email => any(),
          :family_name => any(),
          :gender => any(),
          :given_name => any(),
          :hd => any(),
          :id => any(),
          :link => any(),
          :locale => any(),
          :name => any(),
          :picture => any(),
          :verified_email => any()
        }

  field(:email)
  field(:family_name)
  field(:gender)
  field(:given_name)
  field(:hd)
  field(:id)
  field(:link)
  field(:locale)
  field(:name)
  field(:picture)
  field(:verified_email)
end

defimpl Poison.Decoder, for: GoogleApi.OAuth2.V2.Model.Userinfoplus do
  def decode(value, options) do
    GoogleApi.OAuth2.V2.Model.Userinfoplus.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.OAuth2.V2.Model.Userinfoplus do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
