-- import Fix
squareRoot 0 x = x
squareRoot n x = (squareRoot (n - 1) x + x / squareRoot (n - 1) x) / 2.0

sr 0 x = [x]
sr n x = (sr (n - 1) x) : ((sr (n - 1) x + x / sr (n - 1) x) / 2.0)
-- squareRoot' n x = iterate (fix (\f n x -> (f (n - 1) x + x / f (n - 1) x) / 2.0) n) 0
--  (\f n -> (f (n - 1) x + x / f (n - 1) x) / 2.0) (fix (\f n -> (f (n - 1) x + x / f (n - 1) x) / 2.0)) 
