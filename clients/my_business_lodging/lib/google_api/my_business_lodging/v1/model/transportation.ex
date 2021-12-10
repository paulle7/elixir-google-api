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

defmodule GoogleApi.MyBusinessLodging.V1.Model.Transportation do
  @moduledoc """
  Vehicles or vehicular services facilitated or owned by the property.

  ## Attributes

  *   `airportShuttle` (*type:* `boolean()`, *default:* `nil`) - Airport shuttle. The hotel provides guests with a chauffeured van or bus to and from the airport. Can be free or for a fee. Guests may share the vehicle with other guests unknown to them. Applies if the hotel has a third-party shuttle service (office/desk etc.) within the hotel. As long as hotel provides this service, it doesn't matter if it's directly with them or a third party they work with. Does not apply if guest has to coordinate with an entity outside/other than the hotel.
  *   `airportShuttleException` (*type:* `String.t`, *default:* `nil`) - Airport shuttle exception.
  *   `carRentalOnProperty` (*type:* `boolean()`, *default:* `nil`) - Car rental on property. A branch of a rental car company with a processing desk in the hotel. Available cars for rent may be awaiting at the hotel or in a nearby lot.
  *   `carRentalOnPropertyException` (*type:* `String.t`, *default:* `nil`) - Car rental on property exception.
  *   `freeAirportShuttle` (*type:* `boolean()`, *default:* `nil`) - Free airport shuttle. Airport shuttle is free to guests. Must be free to all guests without any conditions.
  *   `freeAirportShuttleException` (*type:* `String.t`, *default:* `nil`) - Free airport shuttle exception.
  *   `freePrivateCarService` (*type:* `boolean()`, *default:* `nil`) - Free private car service. Private chauffeured car service is free to guests.
  *   `freePrivateCarServiceException` (*type:* `String.t`, *default:* `nil`) - Free private car service exception.
  *   `localShuttle` (*type:* `boolean()`, *default:* `nil`) - Local shuttle. A car, van or bus provided by the hotel to transport guests to destinations within a specified range of distance around the hotel. Usually shopping and/or convention centers, downtown districts, or beaches. Can be free or for a fee.
  *   `localShuttleException` (*type:* `String.t`, *default:* `nil`) - Local shuttle exception.
  *   `privateCarService` (*type:* `boolean()`, *default:* `nil`) - Private car service. Hotel provides a private chauffeured car to transport guests to destinations. Passengers in the car are either alone or are known to one another and have requested the car together. Service can be free or for a fee and travel distance is usually limited to a specific range. Not a taxi.
  *   `privateCarServiceException` (*type:* `String.t`, *default:* `nil`) - Private car service exception.
  *   `transfer` (*type:* `boolean()`, *default:* `nil`) - Transfer. Hotel provides a shuttle service or car service to take guests to and from the nearest airport or train station. Can be free or for a fee. Guests may share the vehicle with other guests unknown to them.
  *   `transferException` (*type:* `String.t`, *default:* `nil`) - Transfer exception.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :airportShuttle => boolean() | nil,
          :airportShuttleException => String.t() | nil,
          :carRentalOnProperty => boolean() | nil,
          :carRentalOnPropertyException => String.t() | nil,
          :freeAirportShuttle => boolean() | nil,
          :freeAirportShuttleException => String.t() | nil,
          :freePrivateCarService => boolean() | nil,
          :freePrivateCarServiceException => String.t() | nil,
          :localShuttle => boolean() | nil,
          :localShuttleException => String.t() | nil,
          :privateCarService => boolean() | nil,
          :privateCarServiceException => String.t() | nil,
          :transfer => boolean() | nil,
          :transferException => String.t() | nil
        }

  field(:airportShuttle)
  field(:airportShuttleException)
  field(:carRentalOnProperty)
  field(:carRentalOnPropertyException)
  field(:freeAirportShuttle)
  field(:freeAirportShuttleException)
  field(:freePrivateCarService)
  field(:freePrivateCarServiceException)
  field(:localShuttle)
  field(:localShuttleException)
  field(:privateCarService)
  field(:privateCarServiceException)
  field(:transfer)
  field(:transferException)
end

defimpl Poison.Decoder, for: GoogleApi.MyBusinessLodging.V1.Model.Transportation do
  def decode(value, options) do
    GoogleApi.MyBusinessLodging.V1.Model.Transportation.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.MyBusinessLodging.V1.Model.Transportation do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end