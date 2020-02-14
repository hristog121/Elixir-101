defmodule Deceisions do
  #The cond construction
  def de_cond(guess) do

    cond do
      guess == 10 -> IO.puts "You Guessed 10!"
      guess == 46 -> IO.puts "You Guessed 46!"
      guess == 42 -> IO.puts "You Guessed 42!"
    end
  end

  def de_case(value) do
    case value do
       1 -> IO.puts("Hi, I'm one")
       2 -> IO.puts("hi, I'm two")
       _ -> IO.puts("Wooops, you didn't match!")

    end
  end
end
