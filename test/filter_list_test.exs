defmodule FilterListTest do
  use ExUnit.Case
  doctest FilterList

  test "filters a given list" do
    mixed_list = ~w(1 2 3 a b c)
    string_list = ~w(a b c)
    numbers_list = ~w(1 2 3)

    assert FilterList.filter(mixed_list) == 2
    assert FilterList.filter(string_list) == 0
    assert FilterList.filter([]) == 0
  end
end
