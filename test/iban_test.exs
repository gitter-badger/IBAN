defmodule IBANTest do
  use ExUnit.Case
  doctest IBAN

  test "the truth" do
    assert 1 + 1 == 2
  end
  
  test "GB82WEST12345698765432 is valid" do
    result = Validator.validate("GB82WEST12345698765432")
    assert result == :valid
  end
end
