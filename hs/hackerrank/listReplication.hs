f :: Int -> [Int] -> [Int]
f n = foldl (++) [] . map (\x -> [ x|_<-[1..n]])

-- This part handles the Input and Output and can be used as it is.

main :: IO ()
main = getContents >>=
       mapM_ print. (\(n:arr) -> f n arr). map read. words
