defmodule Gallows.Views.Helpers.GameStateHelper do
  import Phoenix.HTML, only: [ raw: 1 ]
  @responses %{
      :won        => { :success, "You Won! "},
      :lost       => { :danger, "You Lost! "},
      :good_guess => { :success, "Good guess! "},
      :bad_guess  => { :warning, "Bad guess! "},
      :already_guessed => { :info, "You already guessed that! "},

  }
  def turn(left, target) when target >= left do
    "opacity: 1"
  end
  def turn(left, target) do
    "opacity: 0.1"
  end
  def game_state(state) do
    @responses[state]
    |> alert()
  end

  defp alert(nil), do: ""

  defp alert({class, message}) do
  """
  <div class="alert alert-#{class}">
  #{message}
  </div>
  """
  |> raw()
  end


end
