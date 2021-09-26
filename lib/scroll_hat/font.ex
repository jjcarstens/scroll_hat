defmodule ScrollHat.Font do
  @callback char_matrix(char(), brightness :: 1..255) :: list()

  @empty [[], [], [], [], [], [], []]

  def text_to_canvas(text, font \\ Big, brightness \\ 100) do
    for c <- String.to_charlist(text), reduce: @empty do
      acc ->
        Enum.zip_with(acc, font.char_matrix(c, brightness), &(&1 ++ &2))
    end
  end
end
