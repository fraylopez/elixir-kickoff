# CLI App

We need a way to interact with our `Welcomer` module.
The cli project contains a `Cli` module that renders the app on the terminal.

> ### ELIXIR FACTS: iex
>
> `iex` is short for Interactive Elixir. It is a REPL (Read-Eval-Print Loop) that allows you to interact with Elixir code.
> You can run`iex` from the terminal and create code on the fly. It is a great tool to test small pieces of code and >to understand how Elixir works.
>
> To load a mix project in `iex`, you can run `iex -S mix` from the terminal.

## Tasks:

### Run cli in iex

```
iex -S mix

> Cli.launch()
```

- [ ] Greet the world
- [ ] Greet `yourself`
- [ ] Greet `yourself` with message: `Elixir is awesome!`
