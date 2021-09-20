fn :: (RealFloat n) => n -> n -> String
fn w h
        | w / h ^ 2 <= 18.5 = "EMo"
        | w / h ^ 2 <= 25.0 = "Pfft"
        | w / h ^ 2 <= 30.0 = "FAT"
        | otherwise = "No prob"
