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
iex> German.Verbs.get({:ich, 'gehen'})
'gehe'

iex> German.Verbs.get({:ihr, 'arbeiten'})
'arbeitet'

iex> German.Verbs.get({:sie, 'können'})
'kann'

iex> German.Verbs.get({:ihr, 'möchten'})
'möchtet'

iex> German.PastParticiple.get('fotografieren')
'fotografiert'
```

## Documentation

Docs are generated using [ex_doc](https://hexdocs.pm/ex_doc/readme.html). To build, run:

```bash
mix docs
```
