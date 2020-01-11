#If - else usage
if is_integer(12.2) do
  IO.puts "Is integer "
else
  IO.puts "Not an integer"
end

#Compare with unless
unless is_integer(12.2) do
  IO.puts "Not an integer"
end

#Usage of Cases
case :hello do
   :world->
    IO.puts "Hello World!"
    :"hello"->
      IO.puts "Hello there"
      _ ->
        IO.puts "This always comes if nothing else"
end

#Condion "cond" matches conditions rather values

cond do
  9+1 == 12 ->
    IO.puts "NOT TRUE"
  8-2 == 6 ->
    IO.puts "TRUE, this should print out"
    true ->
      IO.puts "True"

end
