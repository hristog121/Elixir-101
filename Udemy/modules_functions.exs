defmodule Calc do
  def factorial(0) do
    1
  end

  def factorial(n) when is_integer(n) and n > 0 do
    n * factorial(n - 1)
  end

  def plus(a,b) do
    a + b
  end

  def mult(a,b) do
    do_some_priv_stuff()
    a * b
  end

  defp do_some_priv_stuff do
    "Private stuff" |> IO.puts
  end

end
