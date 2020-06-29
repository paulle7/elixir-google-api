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

defmodule GoogleApi.Compute.V1.Model.PathRule do
  @moduledoc """
  A path-matching rule for a URL. If matched, will use the specified BackendService to handle the traffic arriving at this URL.

  ## Attributes

  *   `paths` (*type:* `list(String.t)`, *default:* `nil`) - The list of path patterns to match. Each must start with / and the only place a * is allowed is at the end following a /. The string fed to the path matcher does not include any text after the first ? or #, and those chars are not allowed here.
  *   `routeAction` (*type:* `GoogleApi.Compute.V1.Model.HttpRouteAction.t`, *default:* `nil`) - In response to a matching path, the load balancer performs advanced routing actions like URL rewrites, header transformations, etc. prior to forwarding the request to the selected backend. If routeAction specifies any  weightedBackendServices, service must not be set. Conversely if service is set, routeAction cannot contain any  weightedBackendServices.
      Only one of routeAction or urlRedirect must be set.
      UrlMaps for external HTTP(S) load balancers support only the urlRewrite action within a pathRule's routeAction.
  *   `service` (*type:* `String.t`, *default:* `nil`) - The full or partial URL of the backend service resource to which traffic is directed if this rule is matched. If routeAction is additionally specified, advanced routing actions like URL Rewrites, etc. take effect prior to sending the request to the backend. However, if service is specified, routeAction cannot contain any weightedBackendService s. Conversely, if routeAction specifies any  weightedBackendServices, service must not be specified.
      Only one of urlRedirect, service or routeAction.weightedBackendService must be set.
  *   `urlRedirect` (*type:* `GoogleApi.Compute.V1.Model.HttpRedirectAction.t`, *default:* `nil`) - When a path pattern is matched, the request is redirected to a URL specified by urlRedirect.
      If urlRedirect is specified, service or routeAction must not be set.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :paths => list(String.t()),
          :routeAction => GoogleApi.Compute.V1.Model.HttpRouteAction.t(),
          :service => String.t(),
          :urlRedirect => GoogleApi.Compute.V1.Model.HttpRedirectAction.t()
        }

  field(:paths, type: :list)
  field(:routeAction, as: GoogleApi.Compute.V1.Model.HttpRouteAction)
  field(:service)
  field(:urlRedirect, as: GoogleApi.Compute.V1.Model.HttpRedirectAction)
end

defimpl Poison.Decoder, for: GoogleApi.Compute.V1.Model.PathRule do
  def decode(value, options) do
    GoogleApi.Compute.V1.Model.PathRule.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Compute.V1.Model.PathRule do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
