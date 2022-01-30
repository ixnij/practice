search :: (Ord a) => a -> [a] -> Bool
search a [] = False
search a xs | m < a = search a behind
            | m > a = search a front
            | otherwise = True
            where (front,m:behind) = splitAt (length xs `div` 2) xs

            -- TODO: write a function that able to return a list of result, 
            -- like this:
            -- > search 12 [1,2,3,12,12,12,14]
            -- return:
            -- > [12,12,12]
            -- > search 0 [1..20]
            -- > []
            --
search' :: (Ord a) => a -> [a] -> [a]
search' a [] = []
search' a xs | 
