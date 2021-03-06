# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule Asterisk.ARI.Model.BridgeMerged do
  @moduledoc """
  Notification that one bridge has merged into another.
  """

  @derive [Poison.Encoder]
  defstruct [
    :"bridge",
    :"bridge_from"
  ]

  @type t :: %__MODULE__{
    :"bridge" => Bridge,
    :"bridge_from" => Bridge
  }
end

defimpl Poison.Decoder, for: Asterisk.ARI.Model.BridgeMerged do
  import Asterisk.ARI.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"bridge", :struct, Asterisk.ARI.Model.Bridge, options)
    |> deserialize(:"bridge_from", :struct, Asterisk.ARI.Model.Bridge, options)
  end
end

