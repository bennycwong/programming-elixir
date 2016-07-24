defmodule MyList do
  def reduce([], value, _) do
    value
  end
  def reduce([head | tail], value, func) do
    reduce(tail, func.(head, value), func)
  end

  def mapsum([], _) do
    0
  end

  def mapsum([head | tail], func) do
    func.(head) + mapsum(tail, func)
  end

  defp _max([], current_max) do
    current_max
  end

  defp _max([head | tail], current_max) do
    cond do
      current_max > head -> _max(tail, current_max)
      true -> _max(tail, head)
    end
  end

  def max([head | tail]) do
    _max(tail, head)
  end

  def caesar([], _n), do: []

  def caesar([ head | tail ], n)
    when head+n <= ?z,
    do: [ head+n | caesar(tail, n) ]

  def caesar([ head | tail ], n), 
    do: [ head+n-26 | caesar(tail, n) ]


end
