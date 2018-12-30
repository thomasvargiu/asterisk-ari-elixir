# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule Asterisk.ARI.Model.BridgeAttendedTransfer do
  @moduledoc """
  Notification that an attended transfer has occurred.
  """

  @derive [Poison.Encoder]
  defstruct [
    :"transferer_first_leg",
    :"transferer_second_leg",
    :"replace_channel",
    :"transferee",
    :"transfer_target",
    :"result",
    :"is_external",
    :"transferer_first_leg_bridge",
    :"transferer_second_leg_bridge",
    :"destination_type",
    :"destination_bridge",
    :"destination_application",
    :"destination_link_first_leg",
    :"destination_link_second_leg",
    :"destination_threeway_channel",
    :"destination_threeway_bridge"
  ]

  @type t :: %__MODULE__{
    :"transferer_first_leg" => Channel,
    :"transferer_second_leg" => Channel,
    :"replace_channel" => Channel,
    :"transferee" => Channel,
    :"transfer_target" => Channel,
    :"result" => String.t,
    :"is_external" => boolean(),
    :"transferer_first_leg_bridge" => Bridge,
    :"transferer_second_leg_bridge" => Bridge,
    :"destination_type" => String.t,
    :"destination_bridge" => String.t,
    :"destination_application" => String.t,
    :"destination_link_first_leg" => Channel,
    :"destination_link_second_leg" => Channel,
    :"destination_threeway_channel" => Channel,
    :"destination_threeway_bridge" => Bridge
  }
end

defimpl Poison.Decoder, for: Asterisk.ARI.Model.BridgeAttendedTransfer do
  import Asterisk.ARI.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"transferer_first_leg", :struct, Asterisk.ARI.Model.Channel, options)
    |> deserialize(:"transferer_second_leg", :struct, Asterisk.ARI.Model.Channel, options)
    |> deserialize(:"replace_channel", :struct, Asterisk.ARI.Model.Channel, options)
    |> deserialize(:"transferee", :struct, Asterisk.ARI.Model.Channel, options)
    |> deserialize(:"transfer_target", :struct, Asterisk.ARI.Model.Channel, options)
    |> deserialize(:"transferer_first_leg_bridge", :struct, Asterisk.ARI.Model.Bridge, options)
    |> deserialize(:"transferer_second_leg_bridge", :struct, Asterisk.ARI.Model.Bridge, options)
    |> deserialize(:"destination_link_first_leg", :struct, Asterisk.ARI.Model.Channel, options)
    |> deserialize(:"destination_link_second_leg", :struct, Asterisk.ARI.Model.Channel, options)
    |> deserialize(:"destination_threeway_channel", :struct, Asterisk.ARI.Model.Channel, options)
    |> deserialize(:"destination_threeway_bridge", :struct, Asterisk.ARI.Model.Bridge, options)
  end
end
