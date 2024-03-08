# Improving the design

What's wrong with the current design? How would you test that `helloAt/1` works correctly on the 3 daily time ranges from previous stage?

> ### Elixir facts: Behaviors
>
> Behaviors are a way to define a set of functions that a module must implement. They are useful to define a contract ?> that a module must follow.

### Tasks

- [ ] Create a test for `greeting someone at the morning` using `helloAt/1`
- [ ] Create a test for `greeting someone at the afternoon` using `helloAt/1`
- [ ] Create a test for `greeting someone at the evening` using `helloAt/1`

HINT: Use the following code to get a clock that you can control in your tests:

`/apps/welcomer/lib/welcomer.ex`

```elixir

defmodule Welcomer do
  @clock Application.compile_env(:welcomer, :clock)
 ...
```

`/appswelcomer/test/welcomer_test.exs`

```elixir

defmodule WelcomerTest do
  ...

  test "greeting someone at the evening" do
    # Welcomer will use TestClock when running in test environment
    clock = TestClock.new({20, 0, 0})
    ...
  end
end
```

- [ ] Create `morning/0`, `afternoon/0` and `evening/0` helper methods in `TestClock` to make the tests more readable
- [ ] Investigate about behaviors in Elixir and how to use them to rely on abstractions
- [ ] Review the config files in `config/` and how they set the `:clock` environment variable depending on the environment

This design before the improvements:
![before ](../diagrams/out/stage_1_2_before.png#center)

And after with the improvements:

![after ](../diagrams/out/stage_1_2_after.png#center)
