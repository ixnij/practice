fn :: (Num a) => [a] -> a
fn = sum . map (+ 2)
