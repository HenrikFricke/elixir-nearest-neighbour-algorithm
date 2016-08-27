defmodule NearestNeighbourAlgorithm.ShortestRoute do
  @moduledoc false

  def shortest_route(points, route \\ [])

  def shortest_route([], route), do: route ++ [List.first(route)]

  def shortest_route([{key, _} | []], route) do
    shortest_route([], route ++ [key])
  end

  def shortest_route([{key, value} | tail], route) do
    nearest_neighbour = nearest_neighbour(value, route)
    tail
    |> List.keydelete(key, 0)
    |> List.keydelete(nearest_neighbour, 0)
    |> List.insert_at(0, List.keyfind(tail, nearest_neighbour, 0))
    |> shortest_route(route ++ [key])
  end

  defp nearest_neighbour(neighbours, route) do
    neighbours
    |> Enum.filter(fn(x) -> elem(x, 1) !== 0.0 end)
    |> Enum.filter(fn(x) -> !Enum.member?(route, elem(x, 0)) end)
    |> List.keysort(1)
    |> List.first
    |> elem(0)
  end
end
