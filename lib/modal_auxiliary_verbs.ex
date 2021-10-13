defmodule German.ModalVerbs do
  @moduledoc """
    Module to generate all the variants of the modal auxiliary verbs in German.
  """

  @typedoc """
    A charlist representing the verb we're trying to conjugate.
  """
  @type verb() :: charlist()

  @form_one [:ich, :er, :sie, :es]
  @form_two [:du]
  @form_three [:wir, :siemv, :Sie]
  @form_four [:ihr]

  @doc """
    Method to conjugate a modal auxiliary verb in German given a personal noun and a verb.

  ## Examples
      iex> German.ModalVerbs.get({:sie, 'können'})
      'kann'
      iex> German.ModalVerbs.get({:ihr, 'möchten'})
      'möchtet'
  """
  @spec get({atom(), verb()}) :: verb()
  def get({_pers, verb}) when is_binary(verb), do: get(String.to_charlist(verb))
  def get({pers, verb}) do
    cond do
      pers in @form_one -> conjugate({1, verb})
      pers in @form_two -> conjugate({2, verb})
      pers in @form_three -> conjugate({3, verb})
      pers in @form_four -> conjugate({4, verb})
    end
  end

  @spec conjugate({non_neg_integer(), verb()}) :: verb()
  defp conjugate({1, verb}) do
    get_base(verb)
  end

  defp conjugate({2, verb}) do
    base = get_base(verb)
    case List.last(base) do
      ?ß -> base ++ [?t]
      ?s -> base ++ [?t]
      _ -> base ++ [?s, ?t]
    end
  end

  defp conjugate({3, verb}), do: verb

  defp conjugate({4, verb}) do
    case verb do
      'möchten' -> Enum.drop(verb, -2) ++ [?e, ?t]
      _ -> Enum.drop(verb, -2) ++ [?t]
    end
  end

  @spec get_base(verb()) :: verb()
  defp get_base('können'), do: 'kann'
  defp get_base('dürfen'), do: 'darf'
  defp get_base('mögen'), do: 'mag'
  defp get_base('wissen'), do: 'weiß'
  defp get_base('sollen'), do: 'soll'
  defp get_base('müssen'), do: 'muss'
  defp get_base('wollen'), do: 'will'
  defp get_base('möchten'), do: 'möchte'
end
