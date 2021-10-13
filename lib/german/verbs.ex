defmodule German.Verbs do
  @moduledoc """
  Module to generate all the variants of the regular verbs in German.
  """

  @type verb() :: charlist()

  @form_one [:ich]
  @form_two [:er, :sie, :es, :ihr]
  @form_three [:du]
  @form_four [:wir, :siemv, :Sie]
  @modal_auxiliary_verbs ['können', 'dürfen', 'mögen', 'wissen', 'sollen', 'möchten', 'müssen', 'wollen']
  @irregular_verbs ['haben', 'sein', 'werden']

  @s_sounds ['s', 'x', 'z', 'ß', 'sch']
  @t_sounds ['t', 'd', 'men', 'nen']

  @consonants ['b', 'c', 'd', 'f', 'g', 'h', 'j', 'k', 'l', 'm', 'n', 'p', 'q', 'r', 's', 't', 'v', 'w', 'x', 'z']

  @spec get({pers :: atom(), verb()}) :: verb()
  def get({_pers, verb}) when is_binary(verb), do: get(String.to_charlist(verb))
  def get({pers, verb}) do
    cond do
      verb in @modal_auxiliary_verbs ->
        German.ModalVerbs.get({pers, verb})

      verb in @irregular_verbs ->
        conjugate_irregular({pers, verb})

      true ->
        base = get_base(verb)

        cond do
          pers in @form_one ->
            base ++ [?e]

          pers in @form_two ->
            cond do
              Enum.take(base, -1) in @s_sounds or Enum.take(base, -3) in @s_sounds ->
                base ++ [?t]

              Enum.take(base, -1) in @t_sounds or (Enum.take(verb, -3) in @t_sounds and Enum.take(Enum.drop(verb, -3), -1) in @consonants and (verb != 'lernen' and verb != 'warnen')) ->
                base ++ [?e, ?t]

              true -> base ++ [?t]
            end

          pers in @form_three ->
            cond do
              Enum.take(base, -1) in @s_sounds or Enum.take(base, -3) in @s_sounds ->
                base ++ [?t]

              Enum.take(base, -1) in @t_sounds or (Enum.take(verb, -3) in @t_sounds and Enum.take(Enum.drop(verb, -3), -1) in @consonants and verb not in ['lernen', 'warnen']) ->
                base ++ [?e, ?s, ?t]

              true -> base ++ [?s, ?t]
            end

          pers in @form_four ->
            verb
        end
    end
  end

  @spec get_base(verb()) :: verb()
  defp get_base(verb) do
    cond do
      Enum.take(verb, -2) == 'en' -> Enum.drop(verb, -2)
      Enum.take(verb, -1) == 'n' -> Enum.drop(verb, -1)
    end
  end

  @spec conjugate_irregular({atom(), verb()}) :: verb()
  defp conjugate_irregular({_pers, verb}) when is_binary(verb), do: conjugate_irregular(String.to_charlist(verb))
  defp conjugate_irregular({pers, verb}) do
    case verb do
      'sein' ->
         cond do
          pers in @form_one ->
            'bin'

          pers in @form_three ->
            'bist'

          pers == :ihr ->
            'seit'

          pers in @form_two ->
            'ist'

          pers in @form_four ->
            'sind'
        end

      'haben' ->
        cond do
          pers in @form_one ->
            'habe'

          pers in @form_three ->
            'hast'

          pers == :ihr ->
            'habt'

          pers in @form_two ->
            'hat'

          pers in @form_four ->
            'haben'
        end

      'werden' ->
        IO.puts('Not supported yet.')
    end
  end
end
