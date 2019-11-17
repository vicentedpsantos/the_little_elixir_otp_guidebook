# Implement sum/1. This function should take in a list of numbers and return a sum of the list

defmodule Math do
  def sum([]), do: 0
  def sum([ head | tail ]), do: head + sum(tail)
end

IO.puts Math.sum([1, 2, 3, 4])

# Transform [1, [[2], 3]] to [9, 4, 1] with and without the pipe operator
defmodule MyFlattener do
  def flatten([]), do: []
  def flatten([ head | tail ]), do: flatten(head) ++ flatten(tail)
  def flatten(head), do: [ head ]
end

IO.puts MyFlattener.flatten([1, [[2], 3]]) |> Enum.map(fn x -> x * x end) |> Enum.reverse

# Translate crypto:md5("Tales from the Crypt") from Erlang to Elixir
IO.puts :crypto.hash(:md5, "Tales from the Crypt") |> Base.encode16()
