defmodule Husky.MixProject do
  use Mix.Project

  def project do
    [
      app: :husky,
      version: "0.1.11",
      description:
        "Git hooks made easy. Husky can prevent bad git commit, git push and more 🐶 ❤️ woof! - Elixir equivalent of the husky npm package",
      package: package(),
      elixir: "~> 1.7",
      start_permanent: Mix.env() == :prod,
      deps: deps(),
      escript: escript(),
      source_url: "https://github.com/spencerdcarlson/husky-elixir",
      homepage_url: "https://github.com/spencerdcarlson/husky-elixir"
    ]
  end

  defp package() do
    [
      licenses: ["MIT"],
      files: ~w(CHANGELOG* config LICENSE* README* lib mix.exs priv .formatter.exs),
      links: %{
        "GitHub" => "https://github.com/spencerdcarlson/husky-elixir",
        "Original NPM Package" => "https://github.com/typicode/husky"
      }
    ]
  end

  defp escript do
    [
      main_module: Husky,
      path: "priv/husky"
    ]
  end

  defp deps do
    [
      {:poison, "~> 4.0.1"},
      {:ex_doc, "~> 0.19", only: :dev, runtime: false},
      {:logger_file_backend, "~> 0.0.10", only: [:dev, :test]}
    ]
  end
end
