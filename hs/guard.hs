fn :: (RealFloat n) => n -> n -> String
fn w h
  | bi <= 18.5 = "EMo"
  | bi <= 25.0 = "Pfft"
  | bi <= 30.0 = "FAT"
  | otherwise = "No prob"
  where
    bi = w / h ^ 2
