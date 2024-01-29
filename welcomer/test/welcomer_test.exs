defmodule WelcomerTest do
  use ExUnit.Case
  doctest Welcomer

  test "greets the world" do
    assert Welcomer.hello() == :world
  end

  test "greets someone" do
    who = "someone"
    assert Welcomer.hello(who) == "Hello, #{who}!"
  end

  test "greets someone with message" do
    who = "someone"
    message = "Welcome to Elixir!"
    assert Welcomer.hello(who, message) == "Hello, #{who}! #{message}"
  end
end
