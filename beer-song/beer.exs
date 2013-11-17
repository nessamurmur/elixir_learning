defmodule Beer do
  def sing(n) do
    sing(n, 0)
  end

  def sing(n1, n2) do
    Enum.reduce(n1..n2, "", fn(num, acc) -> 
                                acc <> verse(num) <> "\n" end)
  end

  def verse(n) do
    { shelf_bottles, take_bottles } = bottle_phrase(n)
    { left_bottles, _ } = bottle_phrase(n - 1)

    "#{String.capitalize(shelf_bottles)} of beer on the wall, #{shelf_bottles} of beer.\n#{take_bottles}, #{left_bottles} of beer on the wall.\n"
  end

  def bottle_phrase(n) do
    cond do
    n > 1 ->
      { "#{n} bottles", "Take one down and pass it around" }
    n == 1 ->
      { "1 bottle", "Take it down and pass it around" }
    n < 0 ->
      { "99 bottles", "" }
    true ->
      { "no more bottles", "Go to the store and buy some more" }
    end
  end
end