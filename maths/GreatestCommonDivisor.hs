gcd' :: Int -> Int -> Int

gcd' x 0 = x
gcd' x y = gcd' y z
    where z = x `mod` y