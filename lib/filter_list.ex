defmodule FilterList do
  @moduledoc """
  Filters a given list and return how much odd numbers this list has.
  """
  def filter(list) do
    list
    |> Enum.map(&parse_int/1)
    |> Enum.count(&is_odd/1)
  end

  defp is_odd(item), do: if is_number(item), do: rem(item, 2) != 0

  defp parse_int(item) do
    case Integer.parse(item) do
      {number, ""} -> number
      _ -> {:error, :not_a_number}
    end
  end
end
