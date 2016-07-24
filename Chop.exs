defmodule Chop do
  def guess(actual, low..high)
  when actual == div(low+high,2) do
    guess = div(low+high,2)
    IO.puts "Is it #{guess}?"
    IO.puts "Yes, it is #{guess}"
  end  
  
  def guess(actual, low..high)
  when actual > div(low+high,2) do
    guess = div(low+high, 2)
    IO.puts "Is it #{guess}"
    guess(actual, guess..high)
  end
  def guess(actual, low..high)
  when actual < div(low+high,2) do
    guess = div(low+high, 2)
    IO.puts "Is it #{guess}"
    guess(actual, low..guess)
    end
end
