defmodule German.ModalAuxiliaryVerbs do
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
      iex> German.ModalAuxiliaryVerbs.get({:sie, 'können'})
      'kann'
      iex> German.ModalAuxiliaryVerbs.get({:ihr, 'möchten'})
      'möchtet'
  """
  @spec get({pers :: atom(), verb()}) :: verb()
  def get({_pers, verb}) when is_binary(verb), do: get(String.to_charlist(verb))
  def get({pers, verb}) do
    cond do
      pers in @form_one ->
        verb
        |> switchchar
        |> Enum.drop(-2)

      pers in @form_two ->
        verb = verb
        |> switchchar
        |> Enum.drop(-2)

        x = List.last(verb)
        if(x == ?B or x == ?s) do
          verb ++ [?t]
        else
          verb ++ [?s, ?t]
        end
      pers in @form_three ->
        verb

      pers in @form_four ->
        cond do
          verb == 'möchten' -> Enum.drop(verb, -2) ++ [?e, ?t]
          true -> Enum.drop(verb, -2) ++ [?t]
        end
    end
  end

  @doc """
    Method to change the structure of the verb for @form_one and @form_two.

    This is a helper function used in `get()`
  """
  @spec switchchar(verb()) :: verb()
  def switchchar(verb) do
    case verb do
      'können' -> 'kannen'
      'dürfen' -> 'darfen'
      'mögen' -> 'magen'
      'wissen' -> 'weiBen'
      'sollen' -> 'sollen'
      'möchten' -> 'möchteen'
      'müssen' -> 'mussen'
      'wollen' -> 'willen'
    end
  end

end
