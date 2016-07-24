defmodule Fib do 
  def a(0), do: 1
  def a(1), do: 1
  def a(n), do: a(n-1) + a(n-2)
end

