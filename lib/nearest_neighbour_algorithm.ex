defmodule NearestNeighbourAlgorithm do
  @moduledoc """
  [Nearest neighbour algorithm](https://en.wikipedia.org/wiki/Nearest_neighbour_algorithm)
  written in Elixir.
  """

  @doc """
  Calculates the shortest possible route between multiple points
  (known as Travelling salesman problem).

  Returns a list.

  ## Examples

      iex> map = [a: [a: 0.00, b: 5.12, c: 3.40, d: 9.63, e: 6.81], b: [a: 5.12, b: 0.00, c: 4.91, d: 6.85, e: 8.42], c: [a: 3.40, b: 4.91, c: 0.00, d: 6.67, e: 3.87], d: [a: 9.63, b: 6.85, c: 6.67, d: 0.00, e: 6.88], e: [a: 6.81, b: 8.42, c: 3.87, d: 6.88, e: 0.00]]
      iex> NearestNeighbourAlgorithm.shortest_route(map)
      [:a, :c, :e, :d, :b, :a]
  """
  defdelegate shortest_route(points), to: NearestNeighbourAlgorithm.ShortestRoute
end
