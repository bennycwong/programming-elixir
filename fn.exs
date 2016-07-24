list_concat = fn x,y -> x ++ y end
sum = fn x, y, z -> x + y + z end
pair_tuple_to_list = fn {x, y} -> [x, y] end

IO.puts "List:" 
IO.inspect list_concat.([:a, :b], [:c, :d])
IO.puts "Sum: #{sum.(1,2,3)}"

IO.puts "pair:"
IO.inspect pair_tuple_to_list.( { 1234, 5678 } )
