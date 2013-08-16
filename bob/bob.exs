defmodule Teenager do
  import :all, String

  def hey(sentence) do 
    cond do
      silence?(sentence) -> "Fine. Be that way!"
      shouted?(sentence) -> "Woah, chill out!"
      true -> check_ending(sentence)
    end
  end
  
  defp silence?(sentence) do
    sentence == ""
  end

  defp shouted?(sentence) do
    upcase(sentence) == sentence
  end

  defp check_ending(sentence) do
    case last(sentence) do
      "?" -> "Sure."
      "!" -> "Whatever."
      _ -> "Whatever."
    end
  end

end
