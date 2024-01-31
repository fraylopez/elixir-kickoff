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

  def helloAt(_who, {h, m, s}) do
    # Implement this function
    if h < 12 do
      "Good morning, #{_who}!, the time is #{h}:#{m}:#{s}"
    else
      "Good afternoon, #{_who}!"
    end
  end

  def helloAt(_who) do
    # Implement this function
    {h, m, s} = @clock.time()
    helloAt(_who, {h, m, s})
  end
end