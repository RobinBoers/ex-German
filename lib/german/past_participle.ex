defmodule German.PastParticiple do
  @moduledoc """
  Module to generate a past participle in German.
  """

  @type verb() :: charlist()

  @consonants ['b', 'c', 'd', 'f', 'g', 'h', 'j', 'k', 'l', 'm', 'n', 'p', 'q', 'r', 's', 't', 'v', 'w', 'x', 'z']

  @d_sounds ['men', 'nen']

  @spec get(verb()) :: verb()
  def get(verb) when is_binary(verb), do: get(String.to_charlist(verb))
  def get(verb) do
    case verb do
      'sein' -> 'gewesen'
      'haben' -> 'gehabt'
      'werden' -> 'geworden'
      _ -> conjugate(verb)
    end
  end

  @spec conjugate(verb()) :: verb()
  defp conjugate(verb) do
    base = get_base(verb)
    |> convert_base(verb)

    last_letter = Enum.take(base, -1)
    last_three = Enum.take(verb, -3)
    verb_without_last_three = Enum.drop(verb, -3)
    last_letter_verb_without_lt = Enum.take(verb_without_last_three, -1)

    cond do
      last_letter == 't' or last_letter == 'd'
        -> base ++ [?e, ?t]

      (last_three in @d_sounds and last_letter_verb_without_lt in @consonants) and (verb not in ['lernen', 'warnen'])
        -> base ++ [?e, ?t]

      true -> base ++ [?t]
    end
  end

  @spec get_base(verb()) :: verb()
  defp get_base(verb) do
    cond do
      Enum.take(verb, -2) == 'en' -> Enum.drop(verb, -2)
      Enum.take(verb, -1) == 'n' -> Enum.drop(verb, -1)
    end
  end

  @spec convert_base(charlist(), verb()) :: verb()
  defp convert_base(base, verb) do
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
