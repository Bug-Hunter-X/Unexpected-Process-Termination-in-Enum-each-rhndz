```elixir
list = [1, 2, 3, 4, 5]

# Using Enum.map to avoid premature termination
Enum.map(list, fn x ->
  if x == 3 do
    # Instead of exiting, return a value to signify special handling
    :skip
  else
    IO.puts(x)
    x
  end
end)

#Alternative Solution using a for loop
for x <- list do
  if x != 3 do
    IO.puts x
  end
end
```