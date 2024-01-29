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

  test "greets someone in the morning" do
    who = "someone"
    time = TimeHelper.morning()
    assert Welcomer.helloAt(who, time) == "Good morning, #{who}!"
  end

  test "greets someone in the afternoon" do
    who = "someone"
    time = TimeHelper.afternoon()
    assert Welcomer.helloAt(who, TimeHelper.timeAt(13)) == "Good afternoon, #{who}!"
  end

  test "greets someone in the evening" do
    who = "someone"
    time = TimeHelper.evening()
    assert Welcomer.helloAt(who, TimeHelper.timeAt(19)) == "Good evening, #{who}!"
  end
end
