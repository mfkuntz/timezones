defmodule Timezones.App do
  @moduledoc false

  use Application

  def start(_type, _args) do
    children = [Timezones.EtsHolder]
    children = case Application.fetch_env(:timezones, :autoupdate) do
      {:ok, :enabled} -> children ++ [Timezones.ReleaseUpdater]
      {:ok, :disabled} -> children
    end

    {:ok, pid} = Supervisor.start_link(children, strategy: :one_for_one)

    # Make zone atoms exist so that when to_existing_atom is called, all of the zones exist
    Timezones.zone_list() |> Enum.map(&(&1 |> String.to_atom()))

    {:ok, pid}
  end
end
