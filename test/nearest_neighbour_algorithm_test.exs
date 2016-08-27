defmodule NearestNeighbourAlgorithmTest do
  use ExUnit.Case
  doctest NearestNeighbourAlgorithm

  @map [
    a: [a: 0.00, b: 5.12, c: 3.40, d: 9.63, e: 6.81],
    b: [a: 5.12, b: 0.00, c: 4.91, d: 6.85, e: 8.42],
    c: [a: 3.40, b: 4.91, c: 0.00, d: 6.67, e: 3.87],
    d: [a: 9.63, b: 6.85, c: 6.67, d: 0.00, e: 6.88],
    e: [a: 6.81, b: 8.42, c: 3.87, d: 6.88, e: 0.00]
  ]

  test "returns list of the shortest way" do
    assert NearestNeighbourAlgorithm.shortest_route(@map) == [:a, :c, :e, :d, :b, :a]
  end
end
