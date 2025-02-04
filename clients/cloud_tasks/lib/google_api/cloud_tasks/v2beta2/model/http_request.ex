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

defmodule GoogleApi.CloudTasks.V2beta2.Model.HttpRequest do
  @moduledoc """
  HTTP request. The task will be pushed to the worker as an HTTP request. An HTTP request embodies a url, an http method, headers, body and authorization for the http task.

  ## Attributes

  *   `body` (*type:* `String.t`, *default:* `nil`) - HTTP request body. A request body is allowed only if the HTTP method is POST, PUT, or PATCH. It is an error to set body on a task with an incompatible HttpMethod.
  *   `headers` (*type:* `map()`, *default:* `nil`) - HTTP request headers. This map contains the header field names and values. Headers can be set when running the task is created or task is created. These headers represent a subset of the headers that will accompany the task's HTTP request. Some HTTP request headers will be ignored or replaced. A partial list of headers that will be ignored or replaced is: * Any header that is prefixed with "X-Google-Cloud-Tasks-" will be treated as service header. Service headers define properties of the task and are predefined in CloudTask. * Host: This will be computed by Cloud Tasks and derived from HttpRequest.url. * Content-Length: This will be computed by Cloud Tasks. * User-Agent: This will be set to `"Google-Cloud-Tasks"`. * `X-Google-*`: Google use only. * `X-AppEngine-*`: Google use only. `Content-Type` won't be set by Cloud Tasks. You can explicitly set `Content-Type` to a media type when the task is created. For example, `Content-Type` can be set to `"application/octet-stream"` or `"application/json"`. Headers which can have multiple values (according to RFC2616) can be specified using comma-separated values. The size of the headers must be less than 80KB.
  *   `httpMethod` (*type:* `String.t`, *default:* `nil`) - The HTTP method to use for the request. The default is POST.
  *   `oauthToken` (*type:* `GoogleApi.CloudTasks.V2beta2.Model.OAuthToken.t`, *default:* `nil`) - If specified, an [OAuth token](https://developers.google.com/identity/protocols/OAuth2) will be generated and attached as an `Authorization` header in the HTTP request. This type of authorization should generally only be used when calling Google APIs hosted on *.googleapis.com.
  *   `oidcToken` (*type:* `GoogleApi.CloudTasks.V2beta2.Model.OidcToken.t`, *default:* `nil`) - If specified, an [OIDC](https://developers.google.com/identity/protocols/OpenIDConnect) token will be generated and attached as an `Authorization` header in the HTTP request. This type of authorization can be used for many scenarios, including calling Cloud Run, or endpoints where you intend to validate the token yourself.
  *   `url` (*type:* `String.t`, *default:* `nil`) - Required. The full url path that the request will be sent to. This string must begin with either "http://" or "https://". Some examples are: `http://acme.com` and `https://acme.com/sales:8080`. Cloud Tasks will encode some characters for safety and compatibility. The maximum allowed URL length is 2083 characters after encoding. The `Location` header response from a redirect response [`300` - `399`] may be followed. The redirect is not counted as a separate attempt.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :body => String.t() | nil,
          :headers => map() | nil,
          :httpMethod => String.t() | nil,
          :oauthToken => GoogleApi.CloudTasks.V2beta2.Model.OAuthToken.t() | nil,
          :oidcToken => GoogleApi.CloudTasks.V2beta2.Model.OidcToken.t() | nil,
          :url => String.t() | nil
        }

  field(:body)
  field(:headers, type: :map)
  field(:httpMethod)
  field(:oauthToken, as: GoogleApi.CloudTasks.V2beta2.Model.OAuthToken)
  field(:oidcToken, as: GoogleApi.CloudTasks.V2beta2.Model.OidcToken)
  field(:url)
end

defimpl Poison.Decoder, for: GoogleApi.CloudTasks.V2beta2.Model.HttpRequest do
  def decode(value, options) do
    GoogleApi.CloudTasks.V2beta2.Model.HttpRequest.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.CloudTasks.V2beta2.Model.HttpRequest do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
