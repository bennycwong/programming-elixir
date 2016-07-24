defmodule Sum do
 def up(0), do: 0
 def up(1), do: 1
 def up(n), do: n + up(n-1)




end

