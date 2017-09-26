defmodule Hangman do
  def hello do
    #IO.puts Inflex.pluralize (Dictionary.random_word())
Dictionary.random_word() |> Inflex.pluralize |> IO.puts
  end
end
