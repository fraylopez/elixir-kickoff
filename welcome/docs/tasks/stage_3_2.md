# Polyglot welcome

The goal is to add a simple translation feature to our `Welcomer` module.

## Tasks:

### Translator module

- [ ] Create a new module `Welcomer.Translator` that receives a language code (use `en` or `es` for the test) and returns a greeting message in the given language.
- [ ] Create a new test for `Welcomer.Translator` module that expects a language code and returns a greeting message in the given language.
- [ ] See the test fail
- [ ] Implement the `greet/1` function in `Welcomer.Translator` module to make the test pass

### Wire the translator to the Welcomer

- [ ] Create a test for `Welcomer.hello_in_language/2` that expects a name and a language code and returns a greeting message in the given language.
- [ ] See the test fail
- [ ] Implement the `hello_in_language/2` function in `Welcomer` module using `Welcomer.Translator.greet/1` to make the test pass
