infixl 9 |>

a |> b = \x -> b (a x)
