defmodule Welcomer do
  def hello do
    :world
  end

  def hello(who) do
    "Hello, #{who}!"
  end

  def hello(who, message) do
    "Hello, #{who}! #{message}"
  end
end
