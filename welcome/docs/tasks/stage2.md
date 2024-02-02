### Improve the design

What's wrong with the current design? How would you test that `helloAt/1` works correctly on the 3 daily time ranges from previous stage?

HINT: Use the following code to get a clock that you can control in your tests:

`/apps/welcomer/lib/welcomer.ex`

```elixir

defmodule Welcomer do
  @clock Application.compile_env(:welcomer, :clock) # this is the clock that you can control in your tests

 ...

  def helloAt(name) do
    local_time = @clock.time()
    ...
  end
```

`/appswelcomer/test/welcomer_test.exs`

```elixir

defmodule WelcomerTest do
  ...

  test "greeting someone at the evening" do
    clock = TestClock.new({20, 0, 0})
    # Welcomer is using TestClock when running in test environment
    ...
  end
end
```

- [ ] Create a test for `greeting someone at the morning` using `helloAt/1`
- [ ] Create a test for `greeting someone at the afternoon` using `helloAt/1`
- [ ] Create a test for `greeting someone at the evening` using `helloAt/1`

This design before the improvements:

![before ](/docs/diagrams/out/stage2_before.png#center)

And after with the improvements:

![after ](/docs/diagrams/out/stage2_after.png#center)
