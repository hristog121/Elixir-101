defmodule Trees do
  #Find if a key is  a member of the tree
  def member(_,:nil) do :no end

  def member(e, {:leaf,e}) do :yes end
  def member(_, {:leaf, _}) do :no end

  def member(e, {:node, e, _, _}) do :yes end
  def member(e, {:node, v, left, _}) when e < v do
    member(e,left)
  end
  def member(e, {:node, _, _, right})  do
    member(e, right)
  end

  #Insert element into the tree
  def insert(e, :nil)  do  ...  end
  def insert(e, {:leaf, v}) when e < v  do

       end

  def insert(e, {:leaf, v}) do

      end
  def insert(e, {:node, v, left, right }) when e < v do
    {:node, e, v, insert(e,left)}
  end

  def insert(e, {:node, v, left, right })  do
    {:node, e, v, insert(e,right)}
  end

end
