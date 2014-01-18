defmodule Hububba.Mixfile do
  use Mix.Project

  def project do
    [ app: :hububba,
      version: "0.0.1",
      build_per_environment: true,
      dynamos: [Hububba.Dynamo],
      compilers: [:elixir, :dynamo, :app],
      deps: deps ]
  end

  # Configuration for the OTP application
  def application do
    [ applications: [:cowboy, :dynamo],
      mod: { Hububba, [] } ]
  end

  defp deps do
    [ { :cowboy, github: "extend/cowboy" },
      { :dynamo, github: "dynamo/dynamo" },
      { :postgrex, github: "ericmj/postgrex" },
      { :ecto, github: "elixir-lang/ecto" } ]
  end
end
