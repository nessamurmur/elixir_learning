defmodule Words do
  def count(sentence) do
    word_list = sentence |> String.downcase |> remove_punctuation
    word_hash = HashDict.new()
    List.foldl(word_list, word_hash, fn (word, hash) -> count_words(word, hash) end)
  end

  defp remove_punctuation(string) do
    Regex.scan(%r/\w+/, string)
  end

  defp count_words(word, hash) do
    HashDict.update(hash, word, 1, fn (value) -> value + 1 end)
  end
end
