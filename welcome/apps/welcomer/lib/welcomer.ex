defmodule Welcomer do
  @clock Application.compile_env(:welcomer, :clock)
  def hello do
    "Hello, world!"
  end

  def hello(who) do
    "Hello, #{who}!"
  end

  def hello(who, message) do
    "Hello, #{who}! #{message}"
  end

  def helloAt(who, {h, _, _}) when h < 12, do: "Good morning, #{who}!"
  def helloAt(who, {h, _, _}) when h >= 12 and h < 18, do: "Good afternoon, #{who}!"
  def helloAt(who, {h, _, _}) when h > 18, do: "Good evening, #{who}!"

  def helloAt(who) do
    helloAt(who, @clock.time())
  end
end
