module LeastCommonMultiple (
    lcm'
) where

lcm' :: (Integral a) => a -> a -> a

lcm' x y = abs (x * y) `div` (gcd x y)