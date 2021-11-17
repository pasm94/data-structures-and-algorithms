defmodule DataStructuresAndAlgorithms.BinarySearch do
  def find(list, value) do
    first_position = 0
    last_position = length(list) - 1

    find(list, value, first_position, last_position)
  end

  defp find(list, value, first_position, last_position) do
    middle_position = div(last_position + first_position, 2)

    IO.puts("Function executed")

    cond do
      Enum.at(list, middle_position) == value ->
        IO.puts("The value is in the position #{middle_position}.")

      first_position > last_position ->
        IO.puts("Value not found.")

      Enum.at(list, middle_position) < value ->
        find(list, value, middle_position + 1, last_position)

      Enum.at(list, middle_position) > value ->
        find(list, value, first_position, middle_position - 1)
    end
  end
end
