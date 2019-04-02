defmodule TagTag.MixProject do
  use Mix.Project

  def project do
    [
      app: :tag_tag,
      version: "0.1.0",
      elixir: "~> 1.8",
      elixirc_paths: elixirc_paths(Mix.env()),
      compilers: [:phoenix, :gettext] ++ Mix.compilers(),
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  def application do
    [
      mod: {TagTag.Application, []},
      extra_applications: [:logger, :runtime_tools]
    ]
  end

  defp elixirc_paths(:test), do: ["lib", "test/support"]
  defp elixirc_paths(_), do: ["lib"]

  defp deps do
    [
      {:phoenix, "~> 1.4.2", override: true},
      {:phoenix_live_view, github: "andrebnf/phoenix_live_view"},
      {:plug_cowboy, "~> 2.0"},
      {:plug, "~> 1.7"},
      {:phoenix_pubsub, "~> 1.1"},
      {:phoenix_html, "~> 2.13", github: "phoenixframework/phoenix_html", override: true},
      {:phoenix_live_reload, "~> 1.0", only: :dev},
      {:gettext, "~> 0.11"},
      {:jason, "~> 1.0"},
      {:cowboy, "~> 2.0"}
    ]
  end
end
