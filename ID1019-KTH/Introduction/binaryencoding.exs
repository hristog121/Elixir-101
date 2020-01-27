defmodule BinaryEncoding do
  # Integer to binary - takes a Integer and returns a binary string


  def dec_bin(number) do
    dec_bin(number,[])
  end

  def dec_bin(0, list) do
    list
  end

  def dec_bin(number, list) do
    if rem(number,2) == 0 do
      dec_bin(div(number,2), [0 | list])
    else
      dec_bin(div(number, 2), [1 | list])
    end

  end


  #Better way of converting Dec to Bin - with acumulator
  def to_better(n) do
    to_better(n, [])
  end

  def to_better(0, b) do
    b
  end

  def to_better(n, b) do
    to_better(div(n, 2), [rem(n, 2) | b])
  end

  @doc """
  TODO
  Read the list. Check the position of the element and lift on pow2.
  Index # ^ pow2
  """
  def bin_int(x) do
    bin_int(x, 0)
  end

  def bin_int([], n) do
   n
  end
  def bin_int([x | left], n) do
    bin_int(left, n +  ( (rem(x, 2)) * (:math.pow(2,length(left)) ) ))
  end
end

