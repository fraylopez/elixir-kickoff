defmodule Welcomer do
  # @clock Application.compile_env(:welcomer, :clock)
  def hello do
    "Hello, world!"
  end

  def hello(who) do
    "Hello, #{who}!"
  end

  def hello(who, message) do
    "Hello, #{who}! #{message}"
  end

  def helloAt(_who, {h, m, s}) do
    # Implement this function
  end

  def helloAt(_who) do
    # Implement this function
  end
end
