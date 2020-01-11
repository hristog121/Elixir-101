defmodule Hello do
  #It will say Hello world
  def world do
    IO.puts "Hello, world!"
  end

  @doc """
  name . param - string
  prints out Hello username
  """
  def greet(name) do
    IO.puts "Hello, #{name}"
  end
end

Hello.greet "Ice"
