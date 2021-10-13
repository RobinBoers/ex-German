defmodule German do
  @moduledoc """
  Public API for `German`.
  """

  @typedoc """
  A charlist representing the verb we're trying to conjugate.
  """
  @type verb() :: charlist()

  alias German.{Verbs, PastParticiple}

  @doc """
  Method to conjugate a verb in German given a personal noun and a verb.

  ## Examples
      iex> German.get_verb({:ich, 'gehen'})
      'gehe'

      iex> German.get_verb({:ihr, 'arbeiten'})
      'arbeitet'
  """
  @spec get_verb({atom(), verb()}) :: verb()
  defdelegate get_verb(x), to: Verbs, as: :get

  @doc """
    Method to conjugate a past participle in German given a verb.

  ## Examples
      iex> German.get_past_participle('fotografieren')
      'fotografiert'

      iex> German.get_past_participle('haben')
      'gehabt'
  """
  @spec get_past_participle(verb()) :: verb()
  defdelegate get_past_participle(verb), to: PastParticiple, as: :get

end
