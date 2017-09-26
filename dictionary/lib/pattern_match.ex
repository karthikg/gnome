defmodule Pattern do
  def func ({a,b}) do
    IO.puts "a  = #{a} b= #{b}"
  end
  def swap ({a,b}) do
      {b,a}
  end
  def equal(a, a), do: true
  def equal(_, _), do: false

end
