import EightQueens

main = mapM_ p (myq 12)
  where m a = do putStr $ show a
                 putStr " "
        p dd = do mapM_ m dd
                  putStr "\n"
