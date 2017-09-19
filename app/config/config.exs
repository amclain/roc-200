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
