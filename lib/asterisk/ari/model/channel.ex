# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule Asterisk.ARI.Model.Channel do
  @moduledoc """
  A specific communication connection between Asterisk and an Endpoint.
  """

  @derive [Poison.Encoder]
  defstruct [
    :"id",
    :"name",
    :"state",
    :"caller",
    :"connected",
    :"accountcode",
    :"dialplan",
    :"creationtime",
    :"language",
    :"channelvars"
  ]

  @type t :: %__MODULE__{
    :"id" => String.t,
    :"name" => String.t,
    :"state" => String.t,
    :"caller" => CallerId,
    :"connected" => CallerId,
    :"accountcode" => String.t,
    :"dialplan" => DialplanCep,
    :"creationtime" => DateTime,
    :"language" => String.t,
    :"channelvars" => Object
  }
end

defimpl Poison.Decoder, for: Asterisk.ARI.Model.Channel do
  import Asterisk.ARI.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"caller", :struct, Asterisk.ARI.Model.CallerId, options)
    |> deserialize(:"connected", :struct, Asterisk.ARI.Model.CallerId, options)
    |> deserialize(:"dialplan", :struct, Asterisk.ARI.Model.DialplanCep, options)
    |> deserialize(:"channelvars", :struct, Asterisk.ARI.Model.Object, options)
  end
end
