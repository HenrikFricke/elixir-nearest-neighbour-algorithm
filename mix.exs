defmodule NearestNeighbourAlgorithm.Mixfile do
  use Mix.Project

  def project do
    [app: :nearest_neighbour_algorithm,
     version: "1.0.3",
     elixir: "~> 1.3",
     package: package,
     build_embedded: Mix.env == :prod,
     start_permanent: Mix.env == :prod,
     test_coverage: [tool: ExCoveralls],
     preferred_cli_env: ["coveralls": :test, "coveralls.detail": :test, "coveralls.post": :test, "coveralls.html": :test],
     deps: deps,
     docs: docs]
  end

  # Configuration for the OTP application
  #
  # Type "mix help compile.app" for more information
  def application do
    [applications: [:logger]]
  end

  defp docs do
    [
      extras: ["README.md"],
      main: "readme",
      source_url: "https://github.com/HenrikFricke/elixir-nearest-neighbour-algorithm"
    ]
  end

  defp deps do
    [
      {:ex_doc, "~> 0.11", only: :dev},
      {:excoveralls, "~> 0.5", only: :test}
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
