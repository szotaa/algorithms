module CaesarCipher (
    encode,
    decode
) where

encode :: (Enum a) => Int -> [a] -> [a]

encode value [] = []
encode value (x:xs) = iterate succ x !! value : encode value xs

decode :: (Enum a) => Int -> [a] -> [a]

decode value [] = []
decode value (x:xs) = iterate pred x !! value : decode value xs