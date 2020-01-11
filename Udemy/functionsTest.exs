defmodule Greeter do
#  def say(name) do
#    IO.puts "Hello, #{name}"
# end

#Declare a private function
defp raise_error do
  IO.puts "Error"
end

def say(name), do: IO.puts "Hello, #{name}"



  def say(name, lang \\ "en") when is_binary(lang) do
    case lang do
      "en" ->
        IO.puts "Hello, #{name}"
      "fr"->
          IO.puts "Bonjour, #{name}"
      _->
          raise_error

    end

  end
end
