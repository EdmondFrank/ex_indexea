defmodule ExIndexea.MixProject do
  use Mix.Project

  def project do
    [
      app: :ex_indexea,
      version: "0.1.0",
      elixir: "~> 1.13",
      start_permanent: Mix.env() == :prod,
      build_embedded: Mix.env() == :prod,
      deps: deps(),
      descpription: description(),
      package: package(),
      name: "ExIndexea",
      source_url: "https://github.com/EdmondFrank/ex_indexea"
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger]
    ]
  end

  defp description() do
    """
    Indexea.com SDK for Elixir
    """
  end

  defp package() do
    [
      maintainers: ["Edmond Frank"],
      licenses: ["MIT"],
      links: %{"Github" => "https://github.com/EdmondFrank/ex_indexea"},
      files:
        ~w(mix.exs README.md lib config .formatter.exs mix.exs README* readme* LICENSE* license* CHANGELOG* changelog*)
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:jason, "~> 1.4"},
      {:confex, "~> 3.5"},
      {:httpoison, "~> 2.2"}
    ]
  end
end
