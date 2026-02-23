defmodule TimezonesUpdaterHackney.MixProject do
  use Mix.Project

  @version "0.1.0"

  def project do
    [
      app: :timezones_updater_hackney,
      version: @version,
      build_path: "../../_build",
      config_path: "../../config/config.exs",
      deps_path: "../../deps",
      lockfile: "../../mix.lock",
      elixir: "~> 1.9",
      deps: deps()
    ]
  end

  def application do
    [
      extra_applications: [:logger]
    ]
  end

  defp deps do
    []
  end
end
