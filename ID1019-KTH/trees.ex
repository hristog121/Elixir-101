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
    {:node, element, :nil, :nil}
  end

  def insert(element, {:leaf, value}) when element < value  do
        {:leaf, element }
       end

  def insert(element, {:leaf, value}) do
      {:leaf, value }
  end

  def insert(element, {:node, value, left, right }) when element < value do
    insert(element, left)
  end

  def insert(element, {:node, value, left, right })  do
    insert(element, right )
  end

end