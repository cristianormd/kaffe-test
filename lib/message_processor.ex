defmodule MessageProcessor do
  def handle_message(%{key: key, value: value} = message) do
    IO.inspect message
    IO.puts "#{key}: #{value}"
    :ok # The handle_message function MUST return :ok
  end

  def handle_message(_) do
    IO.puts "hue"
    :ok # The handle_message function MUST return :ok
  end

  def handle_message(_, _) do
    IO.puts "hue"
    :ok # The handle_message function MUST return :ok
  end

  def handle_message(_, _, _) do
    IO.puts "hue"
    :ok # The handle_message function MUST return :ok
  end

  def handle_message(_, _, _, _) do
    IO.puts "hue"
    :ok # The handle_message function MUST return :ok
  end
end
