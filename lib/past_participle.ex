defmodule German.PastParticiple do
  @moduledoc """
    Module to generate a past participle in German.
  """

  @typedoc """
    A charlist representing the verb we're trying to conjugate.
  """
  @type verb() :: charlist()

  @consonants ['b', 'c', 'd', 'f', 'g', 'h', 'j', 'k', 'l', 'm', 'n', 'p', 'q', 'r', 's', 't', 'v', 'w', 'x', 'z']

  @doc """
    Method to conjugate a past participle in German given a verb.

  ## Examples
      iex> German.PastParticiple.get('fotografieren')
      'fotografiert'

      iex> German.PastParticiple.get('haben')
      'gehabt'
  """
  @spec get(verb()) :: verb()
  def get(verb) when is_binary(verb), do: get(String.to_charlist(verb))
  def get(verb) do
    cond do
      verb == 'sein' -> 'gewesen'
      verb == 'haben' -> 'gehabt'
      true ->
        base = get_base(verb)
        y = Enum.take(base, -1)
        a = Enum.take(verb, -3)

        cond do
          y == 't' or y == 'd' -> base ++ [?e, ?t]
          ((a == 'nen' or a == 'men') and Enum.take(Enum.drop(verb, -3), -1) in @consonants) and (verb not in ['lernen', 'warnen'])  -> base ++ [?e, ?t]
          true -> base ++ [?t]
        end
    end
  end

  @doc """
    Generate 'base' used to conjucate the past participle of a verb.

  ## Examples
      iex> German.PastParticiple.get_base('fotografieren')
          'fotografier'
  """
  @spec get_base(verb()) :: verb()
  def get_base(verb) do

    base = cond do
      Enum.take(verb, -2) == 'en' -> Enum.drop(verb, -2)
      Enum.take(verb, -1) == 'n' -> Enum.drop(verb, -1)
    end

    x = Enum.take(verb, -5)
    b = Enum.take(verb, 2)
    c = Enum.take(verb, 3)

    cond do
      x == 'ieren' -> base
      b == 'be' or b == 'er' or c == 'ver' -> base
      true -> [?g, ?e] ++ base
    end
  end
end
