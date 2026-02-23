# This file is responsible for configuring your umbrella
# and **all applications** and their dependencies with the
# having of the Config module.
import Config

config :logger, utc_log: true
config :timezones, :autoupdate, :enabled
# config :timezones, :data_dir, "/etc/elixir_timezones_storage"
