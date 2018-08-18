caesarEncode :: (Enum a) => Int -> [a] -> [a]

caesarEncode value [] = []
caesarEncode value (x:xs) = iterate succ x !! value : caesarEncode value xs

caesarDecode :: (Enum a) => Int -> [a] -> [a]

caesarDecode value [] = []
caesarDecode value (x:xs) = iterate pred x !! value : caesarDecode value xs