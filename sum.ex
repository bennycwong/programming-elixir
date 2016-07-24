defmodule Array do

  def sum([]) do
    0
  end

  def sum([ head | tail ]) do
    head + sum(tail)
  end
  
  def map([], _func) do
    [] 
  end
 
  def map([ head | tail ], func) do
    [ func.(head) | map(tail, func) ]
  end



end


[1, 2, 3, 4, 5] |> Array.map fn x -> x * x |> IO.puts
