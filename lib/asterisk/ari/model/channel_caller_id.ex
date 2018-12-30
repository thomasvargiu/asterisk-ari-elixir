# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule Asterisk.ARI.Model.ChannelCallerId do
  @moduledoc """
  Channel changed Caller ID.
  """

  @derive [Poison.Encoder]
  defstruct [
    :"caller_presentation",
    :"caller_presentation_txt",
    :"channel"
  ]

  @type t :: %__MODULE__{
    :"caller_presentation" => Int,
    :"caller_presentation_txt" => String.t,
    :"channel" => Channel
  }
end

defimpl Poison.Decoder, for: Asterisk.ARI.Model.ChannelCallerId do
  import Asterisk.ARI.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"caller_presentation", :struct, Asterisk.ARI.Model.Int, options)
    |> deserialize(:"channel", :struct, Asterisk.ARI.Model.Channel, options)
  end
end
