defmodule Recursion do
  @doc """
  Compute the product between of n and m

  product of n and m:
  if n is 0
    then...
  otherwise
    the result ...
  """
  def prod(m, n) do
    case m do
      0 -> 0
      _ ->
        n + (m - 1) * n

    end
  end

  #Computes m to the power of n recursively - without carying if the eponent is odd or even
  def power(m, n) do
    case n do
      0 ->
        1
      _ ->
        m * power(m, n - 1)
    end
  end

  #Faster way of computing m to the nth power - NOT WORKING
  def qpower(m, n) do
    case rem(n, 2) do
      0 ->
        power(power(m,2), div(n, 2))
      _ ->
        m * qpower(power(m,2), div(n-1, 2))

    end

  end

end
