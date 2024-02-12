# Persitance

The goal is to add a simple persistance feature to our `Welcomer` module based on a key-value store in a text file.

## Tasks:

### Repository module

- [ ] Create a new module `Welcomer.Repository` that receives a key and a value and saves it to a text file.
- [ ] Create a new test for `Welcomer.Repository` module that expects a key and a value and saves it to a text file.
- [ ] See the test fail
- [ ] Implement the `save/2` function in `Welcomer.Repository` module to make the test pass

NOTE: The text file should be named `greetings.txt` and the content should be in JSON format.

```json
{
  "en": "Hello, %{name}!",
  "es": "¡Hola, %{name}!"
}
```

### Wire the Repository to the Welcomer

- [ ] Create a test for `add new language` that expects a name and saves it to a text file.
- [ ] See the test fail
- [ ] Implement the `add_language/2` function in `Welcomer` module using `Welcomer.Repository.save/2` to make the test pass
- [ ] Create a test for `greeting someone in a new language` that expects a name and a language code and returns a greeting message in the given language.
- [ ] See the test fail
- [ ] Implement the `hello_in_language/2` function in `Welcomer` module using `Welcomer.Repository.save/2` to make the test pass
- [ ] Create a test for `get_available_languages/0` that returns a list of available languages codes sepparated by commas (`en, es, ...`).

### Do some error handling

- [ ] Create a test for `Welcomer.Repository` module that expects an already stored language and returns a tuple with `{:error, "Language already exists"}`.
- [ ] See the test fail
- [ ] Modify the `save/2` function in `Welcomer.Repository` module to make the test pass
- [ ] Create a test for `Welcomer` module that expects an invalid language code and returns a tuple with `{:error, "Unsupported language"}`.
