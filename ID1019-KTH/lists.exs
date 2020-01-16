defmodule Lists do
  #Returns the first argument from a predetermined list
  def tak(hd) do
        list = [1,3,4,6]
        case list do
      [] ->
        :no
      _ ->
          hd(list)
          {:ok, "res"}
    end
  end
#Drops the head and returns the tail of the list
  def drp(tl) do
    list = []
    case list do
      [] ->
        :no
      _ ->
          #tl(list)
          {:ok, "res"}
    end
  end


  #Returns the number of elements in the list
  def len(l) do


  end


  #Returns the sum of all elements in the list if the are integers



end

