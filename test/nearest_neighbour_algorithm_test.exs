defmodule NearestNeighbourAlgorithmTest do
  use ExUnit.Case
  import NearestNeighbourAlgorithm

  doctest NearestNeighbourAlgorithm

  @map_with_float [
    a: [a: 0.00, b: 5.12, c: 3.40, d: 9.63, e: 6.81],
    b: [a: 5.12, b: 0.00, c: 4.91, d: 6.85, e: 8.42],
    c: [a: 3.40, b: 4.91, c: 0.00, d: 6.67, e: 3.87],
    d: [a: 9.63, b: 6.85, c: 6.67, d: 0.00, e: 6.88],
    e: [a: 6.81, b: 8.42, c: 3.87, d: 6.88, e: 0.00]
  ]

  @map_with_integer [
    a: [a: 0, b: 5, c: 3, d: 9, e: 6],
    b: [a: 5, b: 0, c: 4, d: 6, e: 8],
    c: [a: 3, b: 4, c: 0, d: 6, e: 3],
    d: [a: 9, b: 6, c: 6, d: 0, e: 6],
    e: [a: 6, b: 8, c: 3, d: 6, e: 0]
  ]

  test "returns list of the shortest route" do
    assert shortest_route(@map_with_float) == [:a, :c, :e, :d, :b, :a]
    assert shortest_route(@map_with_integer) == [:a, :c, :e, :d, :b, :a]
  end
end
