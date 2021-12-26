import Data.Char

-- this is a very fool program.
main = do
 origin <- getContents
 let uppers = length $ filter isUpper origin
     lowers = length $ filter isLower origin
     total  = length origin
 putStrLn $ "There is " ++ (show uppers) ++ " upper chars."
 putStrLn $ "There is " ++ (show lowers) ++ " lower chars."
 putStrLn $ "There is " ++ (show total)  ++ " chars in tota l."
