use Mix.Config

config :logger, level: :info

config :bootloader,
  init: [:nerves_runtime],
  app: :roc

config :nerves_ntp, :ntpd, "/usr/sbin/ntpd"

config :nerves_ntp, :servers, [
  "0.pool.ntp.org",
  "1.pool.ntp.org",
  "2.pool.ntp.org",
  "3.pool.ntp.org",
]

config :roc, :network_interface, "eth0"
config :roc, :storage_path, "/root/jobs"

config :roc_controller_io,
  start_button: 67,
  stop_button: 68,
  mode_button: 44,
  speaker: "ehrpwm2a",
  top_element: 66,
  bottom_element: 69,
  convection_fan: 45,
  running_light: 47,
  spi0_cs0: 48,
  spi0_cs1: 31

if Mix.env == :test, do: import_config("espec_config.exs")
