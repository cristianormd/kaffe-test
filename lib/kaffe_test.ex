defmodule KaffeTest do
  use Application
  import Supervisor.Spec

  def start(_type, _args) do
    children = [
      worker(Kaffe.Consumer, ["my_consumer_group", ["batata"], MessageProcessor, false])
    ]
    Supervisor.start_link(children, [])
  end
  @moduledoc """
  Documentation for KaffeTest.
  """

  @doc """
  Hello world.

  ## Examples

      iex> KaffeTest.hello
      :world

  """
end
