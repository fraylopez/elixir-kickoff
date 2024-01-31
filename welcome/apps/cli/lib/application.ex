defmodule Cli.Application do
  use Application

  def start(_, _) do
    Cli.launch()
    {:ok, self()}
  end
end
