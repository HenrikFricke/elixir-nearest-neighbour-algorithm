defmodule NearestNeighbourAlgorithm.ShortestWay do
  @moduledoc false
  
  def shortest_way(map, list \\ [])

  def shortest_way([], list), do: list ++ [List.first(list)]

  def shortest_way([{key, _} | []], list), do: shortest_way([], list ++ [key])

  def shortest_way([{key, value} | tail], list) do
    nearest_neighbour = nearest_neighbour(value, list)
    tail
    |> List.keydelete(key, 0)
    |> List.keydelete(nearest_neighbour, 0)
    |> List.insert_at(0, List.keyfind(tail, nearest_neighbour, 0))
    |> shortest_way(list ++ [key])
  end

  defp nearest_neighbour(neighbours, list) do
    neighbours
    |> Enum.filter(fn(x) -> elem(x, 1) !== 0.0 end)
    |> Enum.filter(fn(x) -> !Enum.member?(list, elem(x, 0)) end)
    |> List.keysort(1)
    |> List.first
    |> elem(0)
  end
end
