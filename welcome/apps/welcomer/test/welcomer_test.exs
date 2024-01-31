defmodule WelcomerTest do
  use ExUnit.Case
  doctest Welcomer

  test "greets the world" do
    assert Welcomer.hello() == "Hello, world!"
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

  test "greets someone in the morning (before 12)" do
    who = "someone"
    assert Welcomer.helloAt(who, {11, 0, 0}) == "Good morning, #{who}!"
  end

  test "greets someone in the afternoon (12 - 18)" do
    who = "someone"
    assert Welcomer.helloAt(who, {13, 0, 0}) == "Good afternoon, #{who}!"
  end

  test "greets someone in the evening (after 18)" do
    who = "someone"
    assert Welcomer.helloAt(who, {19, 0, 0}) == "Good evening, #{who}!"
  end
end
