defmodule ROC.Mixfile do
  use Mix.Project

  @target System.get_env("MIX_TARGET") || "host"

  Mix.shell.info([:green, """
  Mix environment
    MIX_TARGET:   #{@target}
    MIX_ENV:      #{Mix.env}
  """, :reset])

  def project do
    [
      app: :roc,
      version: "0.1.0",
      elixir: "1.5.1",
      target: @target,
      archives: [nerves_bootstrap: "~> 0.6"],
      deps_path: "deps/#{@target}",
      build_path: "_build/#{@target}",
      lockfile: "mix.lock.#{@target}",
      build_embedded: Mix.env == :prod,
      start_permanent: Mix.env == :prod,
      preferred_cli_env: [espec: :test],
      aliases: aliases(@target) ++ [test: "espec"],
      deps: deps(),
    ]
  end

  # Configuration for the OTP application.
  def application, do: application(@target)

  # Target-specific application configuration:
  def application("host") do
    [extra_applications: [:logger]]
  end
  def application(_target) do
    [mod: {ROC.Application, []},
     extra_applications: [:logger]]
  end

  # Dependencies:
  def deps do
    [
      {:nerves, "0.7.5", runtime: false},
      {:exactor, "2.2.3", warn_missing: false},
      {:espec, "1.4.6", only: :test},
    ] ++ deps(@target)
  end

  # Target specific dependencies:
  def deps("host"), do: []
  def deps(target) do
    [
      {:bootloader, "0.1.2"},
      {:nerves_runtime, "0.4.4"},
      {:elixir_ale, "1.0.0"},
      {:nerves_network, "0.3.3"},
      {:nerves_ntp, "0.1.1"},
    ] ++ system(target)
  end

  def system("bbb"), do: [{:nerves_system_bbb, "0.16.1", runtime: false}]
  def system(target), do: Mix.raise "Unknown MIX_TARGET: #{target}"

  # We do not invoke the Nerves Env when running on the Host
  def aliases("host"), do: []
  def aliases(_target) do
    [
      "deps.precompile": ["nerves.precompile", "deps.precompile"],
      "deps.loadpaths":  ["deps.loadpaths", "nerves.loadpaths"],
    ]
  end
end
