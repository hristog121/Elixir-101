defmodule Sorting do
  # Inserts element in the right place in the list
  def insert(element, []) do
    [element]
  end

  def insert(element, list) do
    [min | rest] = list

    if min >= element do
      [element | [min | rest]]
    else
      [min | insert(element, rest)]
    end
  end

  # The actual sorting
  def isort(list) do
    isort(list, [])
  end

  def isort([], sorted) do
    sorted
  end

  def isort([h | t], sorted) do
    isort(t, insert(h, sorted))
  end
end
