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

  # Mergesort - split, merge do the whole sort

  # split
  def msplit([], l1, l2) do
    {l1, l2}
  end

  def msplit([h | t], l1, l2) do
    msplit(t, [h | l2], l1)
  end

  # Merge
  def merge(l1, []) do
    l1
  end

  def merge([], l2) do
    l2
  end

  def merge([h1 | t1], [h2 | _] = l2) when h1 < h2 do
    [h1 | merge(t1, l2)]
  end

  def merge(l1, [h2 | t2]) do
    [h2 | merge(l1, t2)]
  end

  def msort([]) do
    []
  end

  def msort([x]) do
    [x]
  end

  # Actual Merge Sort
  def msort(list) do
    {l1, l2} = msplit(list, [], [])
    merge(msort(l1), msort(l2))
  end

  # Quick Sort

  def qsort([]) do
    []
  end

  def qsort([p | l]) do
    {l1, l2} = qsplit(p, l, [], [])
    small = qsort(l1)
    large = qsort(l2)
    append(small, [p | large])
  end

  def qsplit([], l1, l2) do
    {l1, l2}
  end

  def qsplit(_, [], small, large) do
    {small, large}
  end

  def qsplit(p, [h | t], small, large) do
    IO.puts(inspect(h < p))
    if h < p do
      qsplit(p, t, [h | small], large)
    else
      qsplit(p, t, small, [h | large])
    end
  end

  def append(small, large) do
    case small do
      [] ->
        large

      [h | t] ->
        [h | append(t,large)]
    end
  end
end
