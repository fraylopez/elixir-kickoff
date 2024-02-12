# Polyglot welcome

The goal is to add a simple translation feature to our `Welcomer` module.

## Tasks:

### Wire the translator to the Welcomer

- [ ] Create a test for `Welcomer.hello_in_language/2` that expects a name and a language code (use `en` or `es`) and returns a greeting message in the given language.
- [ ] See the test fail
- [ ] Implement `Welcomer.hello_in_language/2` to make the test pass

### Do some error handling

- [ ] Create a test for `Welcomer.hello_in_language/2` that expects a missing language code and returnsa tuple with `{:error, "Unsupported language"}`.
- [ ] See the test fail
- [ ] Modify `Welcomer.hello_in_language/2` to make the test pass
