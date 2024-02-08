# HTTP API Client

The goal is to enable http requests to interact with the Welcomer module.
The boilerplate code is already provided at `welcome/api/`

> ### ELIXIR FACTS: Phoenix framework
>
> Phoenix is a web framework for Elixir. It is a great tool to build web applications, APIs, and more.
>
> - You can create a new Phoenix project with `mix phx.new project_name`.
> - You can run the server with `mix phx.server`.

## Tasks:

- [ ] Create a new test for `Welcomer.Api` module that makes a request to `get /hello/:name` and expects a 200 status code and a greeting message for the given name
- [ ] See the test fail
- [ ] Implement the `get_hello/1` function in `ApiController` module delegating the business logic to `Welcomer.hello/1`
- [ ] See the test pass
