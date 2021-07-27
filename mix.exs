defmodule ScrollHat.MixProject do
  use Mix.Project

  @version "0.1.0"
  @app :scroll_hat

  def project do
    [
      app: @app,
      version: @version,
      elixir: "~> 1.10",
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  def application do
    [
      extra_applications: [:logger]
    ]
  end

  defp deps do
    [
      {:circuits_i2c, "~> 0.3.9"},
      {:circuits_gpio, "~> 0.4.8"}
    ]
  end
end
