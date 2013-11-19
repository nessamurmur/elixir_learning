defmodule Beer do
  def sing(n1, n2 // 0) do
    Enum.reduce(n1..n2, "", &(&2 <> verse(&1) <> "\n"))
  end

  def verse(n) do
    { shelf_bottles, take_bottles } = bottle_phrase(n)
    { left_bottles, _ } = bottle_phrase(n - 1)

    """
    #{String.capitalize(shelf_bottles)} of beer on the wall, #{shelf_bottles} of beer.
    #{take_bottles}, #{left_bottles} of beer on the wall.
    """
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