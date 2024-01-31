## Setup environment

- [ ] Install Erlang
- [ ] Install Elixir

## OPTIONAL: Setup VSCode

- [ ] Install VSCode
- [ ] Install ElixirLS extension
- [ ] Install ElixirLS Dialyzer extension
- [ ] OPTIONAL: Install Elixir Test Explorer extension

# Tasks:

### Task 1: Run cli in iex

```
iex -S mix

> Cli.launch()
```

- [ ] Greet the world
- [ ] Greet `yourself`
- [ ] Greet `yourself` with message: `Elixir is awesome!`

### Task 2: Run the tests

- [ ] Run the tests from the command line
- [ ] OPTIONAL: Run the tests from UI extension

### Task 3: Fix the failing `welcomer_test.exs` tests.

- [ ] Make the failing tests pass as fast as possible
- [ ] Refactor the code so it has no conditional statements and see the tests pass
- [ ] See the tests pass again

### Task 4: Add a new feature: Retrieve time automatically from the system.

- [ ] Create a test for `greeting someone at the current system time`
- [ ] See the test fail
- [ ] Implement `helloAt/1` in `Welcomer` module

  HINT: You can use the following code to get the current time:

  ```
  :calendar.local_time()
  ```

- [ ] See the test pass

### Task 5: Improve the design

What's wrong with the current design? How would you test that `helloAt/1` works correctly on the 3 time ranges from [Task 3](#Task3)?

HINT: Use the following code to get a clock that you can control in your tests:

```
defmodule Welcomer do
  @clock Application.compile_env(:welcomer, :clock) # this is the clock that you can control in your tests

 ...

  def helloAt(name) do
    local_time = @clock.time()
    ...
  end
```

- [ ] Create a test for `greeting someone at the morning` using `helloAt/1`
- [ ] Create a test for `greeting someone at the afternoon` using `helloAt/1`
- [ ] Create a test for `greeting someone at the evening` using `helloAt/1`
