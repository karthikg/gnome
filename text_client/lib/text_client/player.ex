defmodule  TextClient.Player do
  alias TextClient.{Mover,Prompter,State,Summary}

  # won , lost, good guess, bad guess, already used, initializing
  def play(%State{tally: %{game_state: :won, letter: letters}}) do
    exit_with_message("You WON!", letters)
  end
  def play(%State{tally: %{game_state: :lost, letters: letters }}) do
    exit_with_message("Sorry, you lost!", letters)
  end
  def play(game = %State{tally: %{game_state: :good_guess}}) do
    continue_with_message(game, "That's a good guess!")
  end
  def play( game = %State{tally: %{game_state: :bad_guess}}) do
    continue_with_message(game, "Sorry, that isn't in the word")
  end
  def play( game = %State{tally: %{game_state: :already_used}}) do
    continue_with_message(game, "You have already used that letter")
  end

  def play(game = %State{}) do
    continue(game)
  end

def display(game) do
  game
end
def prompt(game) do
  game
end
def make_move(game) do
  game
end
def continue(game = %State{}) do
  game
    |> Summary.display()
    |> Prompter.accept_move()
    |>Mover.make_move()
    |> play()

end

###############**************##################
def continue_with_message(game, message) do
  IO.puts message
  continue(game)
end
  defp exit_with_message(msg, letters) do
    IO.puts(["\n", msg, "The word was #{Enum.join(letters)}"])
  end
end
