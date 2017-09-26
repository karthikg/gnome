defmodule Lists do
  def len([]), do: 0
  def len([_head| tail]), do: 1 + len(tail)
  def sum([]), do: 0
  def sum([head | tail]) do
     head + sum(tail)
   end
def sum_pairs([]), do: []
def sum_pairs([ h1, h2 | t]), do: [ h1 + h2 | sum_pairs(t) ]

def even_length([]), do: true
def even_length([_]), do: false
def even_length([ h1, h2 | t]), do: [even_length(t) ]


end
