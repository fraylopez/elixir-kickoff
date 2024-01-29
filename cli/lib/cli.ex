defmodule Cli do
  @moduledoc """
  Documentation for `Cli`.
  """

  @doc """
  Hello world.

  ## Examples

      iex> Cli.hello()
      :world

  """
  def launch do
    loop()
  end

  defp loop do
    draw_menu()
    |> String.trim()
    |> handle_input()

    loop()
  end

  defp draw_menu do
    IO.puts("What do you want to do?")

    IO.puts(" 1. Greet the world")
    IO.puts(" 2. Greet someone")
    IO.puts(" 3. Greet someone with a message")

    IO.gets("Please enter a number:")
  end

  defp handle_input(input) do
    case input do
      "1" -> greet_world()
      "2" -> greet_someone()
      "3" -> greet_someone_with_message()
      _ -> IO.puts("Invalid input!")
    end
  end

  defp greet_world do
    IO.puts(Welcomer.hello())
  end

  defp greet_someone do
    IO.gets("Who do you want to greet?")
    |> String.trim()
    |> Welcomer.hello()
    |> IO.puts()
  end

  defp greet_someone_with_message do
    who =
      IO.gets("Who do you want to greet?")
      |> String.trim()

    message =
      IO.gets("What message do you want to send?")
      |> String.trim()

    Welcomer.hello(who, message)
    |> IO.puts()
  end
end
