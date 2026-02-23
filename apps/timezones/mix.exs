defmodule Timezones.MixProject do
  use Mix.Project

  @version "1.1.3"

  def project do
    [
      app: :timezones,
      name: "Timezones",
      version: @version,
      build_path: "../../_build",
      deps_path: "../../deps",
      lockfile: "../../mix.lock",
      elixir: "~> 1.9",
      deps: deps(),
      docs: docs(),
      description: description(),
      package: package(),
      source_url: "https://github.com/lau/tzdata"
    ]
  end

  def application do
    [
      extra_applications: [:logger],
      env: env(),
      mod: {Timezones.App, []}
    ]
  end

  defp deps do
    [
      {:hackney, "~> 1.17"},
      {:ex_doc, "~> 0.21", only: :dev, runtime: false}
    ]
  end

  defp docs do
    [
      main: "readme",
      extras: ["README.md"],
      source_ref: "v#{@version}"
    ]
  end

  defp env do
    [
      autoupdate: :enabled,
      data_dir: nil,
      http_client: Timezones.HTTPClient.Hackney
    ]
  end

  defp description do
    """
    Timezones is a parser and library for the tz database.
    """
  end

  defp package do
    %{
      licenses: ["MIT"],
      maintainers: ["Lau Taarnskov"],
      links: %{"GitHub" => "https://github.com/lau/tzdata"},
      files: ~w(lib priv mix.exs README* LICENSE*
                 CHANGELOG*)
    }
  end
end
