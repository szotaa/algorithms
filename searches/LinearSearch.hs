linearSearch :: (Eq a) => a -> [a] -> Int

linearSearch value [] = error "Element not found"
linearSearch value (x:xs)
    | x == value = 0
    | otherwise = 1 + (linearSearch value xs)
