defmodule NearestNeighbourAlgorithm.Mixfile do
  use Mix.Project

  def project do
    [app: :nearest_neighbour_algorithm,
     version: "0.1.0",
     elixir: "~> 1.3",
     package: package,
     build_embedded: Mix.env == :prod,
     start_permanent: Mix.env == :prod,
     deps: deps]
  end

  # Configuration for the OTP application
  #
  # Type "mix help compile.app" for more information
  def application do
    [applications: [:logger]]
  end

  defp deps do
    [
      {:ex_doc, "~> 0.11", only: :dev}
    ]
  end
  
  defp package do
    [
      maintainers: ["Henrik Fricke <henrikfricke@web.de>"],
      description: """
      Nearest neighbour algorithm written in Elixir.
      """,
      licenses: ["MIT"],
      links: %{
        "GitHub" => "https://github.com/HenrikFricke/elixir-nearest-neighbour-algorithm"
      }
    ]
  end
end
