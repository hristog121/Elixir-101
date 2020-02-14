defmodule Exam_2019_06_05 do

  def drop(list, n) do
    drop(list,n,n)
  end

  def drop([],_,_) do
    []
  end

  def drop([_|rest], 1, n) do
    drop(rest,n,n)
  end

  def drop([element|rest],acc, n) do
    [element|drop(rest, acc-1, n)]
  end

end
