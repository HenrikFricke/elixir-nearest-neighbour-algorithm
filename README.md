# Nearest neighbour algorithm [![Build Status](https://travis-ci.org/HenrikFricke/elixir-nearest-neighbour-algorithm.svg?branch=master)](https://travis-ci.org/HenrikFricke/elixir-nearest-neighbour-algorithm)

>[Nearest neighbour algorithm](https://en.wikipedia.org/wiki/Nearest_neighbour_algorithm)
written in Elixir.

## Installation

If [available in Hex](https://hex.pm/docs/publish), the package can be installed as:

1. Add `nearest_neighbour_algorithm` to your list of dependencies in `mix.exs`:

  ```elixir
  def deps do
    [{:nearest_neighbour_algorithm, "~> 0.1.0"}]
  end
  ```

## Usage

Based on the [Travelling salesman problem](https://en.wikipedia.org/wiki/Travelling_salesman_problem) we create a list with all points, where we want to find the shortest route between them.

Example:

```elixir
iex> map = [
  a: [a: 0.00, b: 5.12, c: 3.40, d: 9.63, e: 6.81],
  b: [a: 5.12, b: 0.00, c: 4.91, d: 6.85, e: 8.42],
  c: [a: 3.40, b: 4.91, c: 0.00, d: 6.67, e: 3.87],
  d: [a: 9.63, b: 6.85, c: 6.67, d: 0.00, e: 6.88],
  e: [a: 6.81, b: 8.42, c: 3.87, d: 6.88, e: 0.00]
]
iex> NearestNeighbourAlgorithm.shortest_route(map)
[:a, :c, :e, :d, :b, :a]
```

As you can see the map describes the distances between the points, it's
the same like the following table:

|     |  A  |  B  |  C  |  D  |  E  |
|:---:|:---:|:---:|:---:|:---:|:---:|
|  A  |  0  | 5.12| 3.4 | 9.63| 6.81|
|  B  | 5.12|  0  | 4.91| 6.85| 8.42|
|  C  | 3.4 | 4.91|  0  | 6.67| 3.87|
|  D  | 9.63| 6.85| 6.67|  0  | 6.88|
|  E  | 6.81| 8.42| 3.87| 6.88|  0  |

The algorithm will start to the first point, which is `:a` in our example. Then it will look up the nearest neighbour of `:a`, which is `:c`. He will move to `:c` and repeat the steps until every point has been reached. So in our example the shortest route is:

A - C - E - D - B - A.

## License

The MIT License (MIT)
Copyright (c) 2016 Henrik Fricke

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies
of the Software, and to permit persons to whom the Software is furnished to do
so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS
FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR
COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER
IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION
WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
