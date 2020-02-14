mad_printer = fn(initial_string) ->
  initial_string |>
  String.reverse |>
  IO.puts

end

Enum.each ["Hello","there"], &IO.puts/1
#Invoke lambda func
#mad_printer.("Hello there")
