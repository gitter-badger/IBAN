defmodule Validator do
  @moduledoc """
  Placehold for validation test
  """
  
  def validate(iban) do
    {country_code, _} = String.split_at(iban, 2) # have fun that kills process if issue, let it die
    length = Parser.length(country_code) # have fun that kills process if issue, let it die
    case length == String.length(iban) do
      true ->
        {front, back} = String.split_at(iban, 4) # have fun that kills process if issue, let it die
        next_phase = back <> front # be part of fun in line above
        numberfied_string = numberfy_string(next_phase)
      false ->
        {:invalid}
    end
  end
  
  @doc """
  Testing some options for getting strings to number.
  Ex.
    W E S T12345698765432 G B82	 -> 3214282912345698765432161182
    W E S T -> 32142829
    G B -> 1611
  """
  def numberfy_string(text) do
    _numberfy_string(text, "")
  end
  
  #def numberfy_string([head|tail], new_list) do
    # String.codepoints("GB")
    # List.to_integer(String.to_char_list("GB"), 28)
    
    # Enum.map(6..10, fn(x) -> x*x end)
    # |> Enum.map(fn(x) -> IO.inspect(x) end)
    # @alfredbaudisch: I was thinking of solving this by 
  #end
  
  defp _numberfy_string(string, number_string) do
    case String.length(string) do
      0 ->
        number_string
      _ ->
        {head, tail} = String.split_at(string, 1)
        number = 
          alphabetic_number( head ) 
          |> Integer.to_string
        new_number_string = number_string <> number
        _numberfy_string(tail, new_number_string )
    end
  end
  
  def alphabetic_number(letter) do
    letter 
    |> String.upcase
    |> number_fact
  end
  
  def number_fact("1"), do: 1
  def number_fact("2"), do: 2
  def number_fact("3"), do: 3
  def number_fact("4"), do: 4
  def number_fact("5" ), do: 5
  def number_fact("6" ), do: 6
  def number_fact("7" ), do: 7
  def number_fact("8" ), do: 8
  def number_fact("9" ), do: 9
  def number_fact("A" ), do: 10
  def number_fact("B" ), do: 11
  def number_fact("C" ), do: 12
  def number_fact("D" ), do: 13
  def number_fact("E" ), do: 14
  def number_fact("F" ), do: 15
  def number_fact("G" ), do: 16
  def number_fact("H" ), do: 17
  def number_fact("I" ), do: 18
  def number_fact("J" ), do: 19
  def number_fact("K" ), do: 20
  def number_fact("L" ), do: 21
  def number_fact("M" ), do: 22
  def number_fact("N" ), do: 23
  def number_fact("O" ), do: 24
  def number_fact("P" ), do: 25
  def number_fact("Q" ), do: 26
  def number_fact("R" ), do: 27
  def number_fact("S" ), do: 28
  def number_fact("T" ), do: 29
  def number_fact("U" ), do: 30
  def number_fact("V" ), do: 31
  def number_fact("W" ), do: 32
  def number_fact("X" ), do: 33
  def number_fact("Y" ), do: 34
  def number_fact("Z" ), do: 35
  
end