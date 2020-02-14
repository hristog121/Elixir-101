value = %{"language" => "Elixir", "platform" => "Eduonix"}
value = %{language: "Elixir", platform: "Eduonix"}
IO.puts value[:language]
IO.puts value.platform
IO.inspect value[:some_key]

new_value = %{ value | language: "Erlang", platform: "IDK"}
IO.inspect new_value
