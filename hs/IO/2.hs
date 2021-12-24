import Control.Monad

main = do
  name <- getChar
  when (name /= ' ') $ do
    putChar name
    main
