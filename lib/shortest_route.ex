defmodule NearestNeighbourAlgorithm.ShortestRoute do
  @moduledoc false

  # header: defines defaults
  def shortest_route(points, route \\ [])

  # terminates recursion and add first point as last one to the route
  def shortest_route([], route), do: route ++ [List.first(route)]

  # last one in the recursion
  def shortest_route([{point, _neighbours} | []], route) do
    shortest_route([], route ++ [point])
  end

  # sorts the nearest neighbour to the beginning of the list
  def shortest_route([{point, neighbours} | tail], route) do
    nearest_neighbour = nearest_neighbour(neighbours, route)
    tail
    |> List.keydelete(point, 0)
    |> List.keydelete(nearest_neighbour, 0)
    |> List.insert_at(0, List.keyfind(tail, nearest_neighbour, 0))
    |> shortest_route(route ++ [point])
  end

  # returns nearest neighbour of given point
  defp nearest_neighbour(neighbours, route) do
    neighbours
    |> Enum.filter(fn {_point, distance} -> distance !== 0.0 && distance !== 0 end)
    |> Enum.filter(fn {point, _distance} -> !Enum.member?(route, point) end)
    |> List.keysort(1)
    |> List.first
    |> elem(0)
  end
end
