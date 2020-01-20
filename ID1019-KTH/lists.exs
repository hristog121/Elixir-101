defmodule Lists do
  # Returns the first argument from a predetermined list
  def tak([h | t]) do
    h
  end

  # Drops the head and returns the tail of the list
  def drp([h | t]) do
    t
  end

  # Returns the number of elements in the list
  def len([]) do
    0
  end

  def len([h | t]) do
    1 + len(t)
  end

  # Returns the sum of all elements in the list if the are integers
  def sum_that_list([h | t], ack) do
    sum_that_list(t, h + ack)
  end

  def sum_that_list([], ack) do
    ack
  end

  # Returns a list where all elements are dublicated
  def dublicate([]) do
    []
  end

  def dublicate([h | t]) do
    [h, h | dublicate(t)]
  end

  # Adding element x, to the list if the element is not in the list
  def add_element(x, []) do
    [x]
  end

  def add_element(x, [x|t]) do
    [x|t]
  end

  def add_element(x,[h|t]) do
    [h|add_element(x, t)]
  end

  #Remove all accurences of x in the list
  def remove_element(_, []) do
    []
  end
  def remove_element(x, [x|t]) do
    remove_element(x, t)
  end
  def remove_element(x, [h|t]) do
        [h|remove_element(x, t)]
    end
 #Returns a list of all unique elements in the list
  def unique_element([]) do [] end
  def unique_element([x|t]) do
        [x|unique_element(remove_element(x, t))]
  end

end
