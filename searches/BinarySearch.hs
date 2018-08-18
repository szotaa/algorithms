module BinarySearch (
    binarySearch
) where

binarySearch :: (Ord a) => a -> [a] -> Maybe Int

binarySearch value [] = Nothing
binarySearch value xs 
    | midElement == value = Just midIndex
    | midElement < value = fmap ((+1) . (+midIndex)) (binarySearch value (drop (midIndex + 1) xs)) 
    | otherwise = binarySearch value (take midIndex xs)     
        where midIndex = length xs `div` 2
              midElement = xs !! midIndex