# Introducing the project

We have a `Welcomer` module that greets people. It has a `hello/1` function that takes a name and returns a greeting message. It also has a `helloAt/1` function that takes a name and returns the proper greeting message according to the time of the day.

> ### Elixir facts: mix
>
> `mix` is a build tool that provides tasks for creating, compiling, and testing Elixir projects, managing its dependencies, and more.
>
> You can run `mix` tasks from the command line. For example, to run the tests, you can run `mix test`.
> To get the dependencies, you can run `mix deps.get`.
> To get a list of available tasks, you can run `mix help`.

## Tasks:

### Run the tests

- [ ] Run the tests from the command line

- [ ] OPTIONAL: Run the tests from UI extension

### Fix the failing `welcomer_test.exs` tests.

- [ ] Make the failing tests pass as fast as possible
- [ ] Refactor the code so it has no conditional statements and see the tests pass
- [ ] See the tests pass again

### Add a new feature: Retrieve time automatically from the system.

- [ ] Create a test for `greeting someone at the current system time`
- [ ] See the test fail
- [ ] Implement `helloAt/1` in `Welcomer` module
- [ ] See the test pass

HINT: You can use the following code to get the current time:

```
:calendar.local_time()
```
