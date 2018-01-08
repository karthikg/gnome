defmodule TextClient.Summary1 do
  alias TextClient.State
  def display(game = %{ tally: tally }) do
    IO.puts [
      "\n",
      "words so far: #{Enum.join(tally.letters," ")}\n",
      "Guesses left: #{tally.turns_left}\n"
    ]
    game
  end
end
