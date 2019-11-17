defmodule MyFlattener do
  def flatten([]), do: []
  def flatten([ head | tail ]), do: flatten(head) ++ flatten(tail)
  def flatten(head), do: [ head ]
end

MyFlattener.flatten([1, 2, [2, [3, 2, [ 6, 4]]], 6])
MyFlattener.flatten([1, 2, [2, [3, 2, [ 6, 4]], [2, 3, [3, 43]]], 6])
