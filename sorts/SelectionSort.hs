import Data.List

selectionSort :: (Ord a) => [a] -> [a]

selectionSort [] = []
selectionSort (x:xs) =  if x <= min
                        then x : selectionSort xs
                        else min : selectionSort(x : delete min xs)
                            where min = if xs == []
                                        then x
                                        else minimum xs