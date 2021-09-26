# German

Set of modules with methods to conjucate German verbs.

I made it to exercise both my programming skills in Elixir and German.

## Installation

Git clone from master:

```
git clone https://github.com/RobinBoers/ex-German
```

## Examples

```elixir

iex> German.Verbs.get({:sie, 'können'})
'kann'

iex> German.Verbs.get({:ihr, 'möchten'})
'möchtet'

iex> German.PastParticiple.get('fotografieren')
'fotografiert'

iex> German.PastParticiple.get('haben')
'gehabt'

```

## Documentation

Docs are generated using [ex_doc](https://hexdocs.pm/ex_doc/readme.html). To build, run:

```
mix docs
```
