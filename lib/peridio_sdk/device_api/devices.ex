defmodule PeridioSDK.DeviceAPI.Devices do
  alias PeridioSDK.HTTPClient
  alias PeridioSDK.DeviceAPI

  def me(client) do
    HTTPClient.get(
      client,
      DeviceAPI.middleware(client),
      "/device/me"
    )
  end

  def shadow(client, shadow) do
    HTTPClient.put(
      client,
      DeviceAPI.middleware(client),
      "/device/shadow",
      shadow
    )
  end

  def update(client, expand \\ []) do
    HTTPClient.get(
      client,
      DeviceAPI.middleware(client),
      "/update",
      query: [expand: expand]
    )
  end
end
