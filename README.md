# German

Set of modules with methods to conjugate German verbs.

I made it to exercise both my programming skills in Elixir and German.

## Installation

Git clone from master:

```bash
git clone https://github.com/RobinBoers/ex-german
```

## Examples

```elixir
iex> German.get_verb({:ich, 'gehen'})
'gehe'

iex> German.get_verb({:ihr, 'arbeiten'})
'arbeitet'

iex> German.get_verb({:sie, 'können'})
'kann'

iex> German.get_verb({:ihr, 'möchten'})
'möchtet'

iex> German.get_past_participle('fotografieren')
'fotografiert'
```

## Documentation

Docs are generated using [ex_doc](https://hexdocs.pm/ex_doc/readme.html). To build, run:

```bash
mix docs
```
