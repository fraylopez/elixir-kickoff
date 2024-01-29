defmodule CliTest do
  use ExUnit.Case
  doctest Cli

  test "launches the app" do
    assert Cli.launch() == :ok
  end
end
