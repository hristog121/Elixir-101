defmodule Calc do
  def fact(0) do
    1
  end
  def fact(a) do
    a * fact(a-1)
  end
end


defmodule ListUtils do
  def map([head|tail], fun)do
    [fun.(head)| map(tail,fun)]
  end
  def mult([]) do
    1
  end
  def mult([head | tail]) do
    head * mult(tail)
  end
end

ListUtils.mult([1,2,3]) |>
IO.puts
