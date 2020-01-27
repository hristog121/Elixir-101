defmodule Trees do
  #Find if a key is  a member of the tree
  def member(_,:nil) do :no end

  def member(element, {:leaf,element}) do :yes end
  def member(_, {:leaf, _}) do :no end

  def member(element, {:node, element, _, _}) do :yes end
  def member(element, {:node, value, left, _}) when element < value do
    member(element,left)
  end
  def member(element, {:node, _, _, right})  do
    member(element, right)
  end

  #Insert element into the tree
  def insert(element, :nil)  do
    {:leaf, element}
  end

  def insert(element, {:leaf, value} = right) when element < value  do
        {:node, element, :nil, right }
       end

  def insert(element, {:leaf, _} = left) do
      {:node, element, left, :nil }
  end

  def insert(element, {:node, value, left, right }) when element < value do
    {:node, value, insert(element, left), right}
  end

  def insert(element, {:node, value, left, right })  do
    {:node, value, left, insert(element, right)}
  end

  #Delete elements in the tree
  def delete(element, {:leaf, element}) do

  end


end
