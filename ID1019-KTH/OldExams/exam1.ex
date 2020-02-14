defmodule Exam1 do
  def drop(list, n) do
    drop(list, n, n)
  end

  def drop([], _, _) do
    []
  end

  def drop([_ | rest], 1, n) do
    drop(rest, n, n)
  end

  def drop([elem | rest], i, n) do
    [elem | drop(rest, i - 1, n)]
  end
end
