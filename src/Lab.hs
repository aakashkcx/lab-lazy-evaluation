--------------------------------------------------------------------------------
-- Functional Programming (CS141)                                             --
-- Lab: Lazy evaluation                                                       --
--------------------------------------------------------------------------------

module Lab where

--------------------------------------------------------------------------------
-- Infinite data structures

-- | The infinite list of ones.
ones :: [Int]
ones = 1 : ones 

-- | An infinite list modelled after the Fibonacci numbers, but where the
-- seed values are x and y. (Exponential time complexity!)
foos :: Integer -> Integer -> [Integer]
foos x y = x : y : zipWith (+) (foos x y) (tail (foos x y))

-- | An infinite list modelled after the Fibonacci numbers, but where the
-- seed values are x and y. (Linear time complexity if you do it right!)
foos' :: Integer -> Integer -> [Integer]
foos' x y = let (a:as) = foos x y
                bs     = (a:as)
                c      = zipWith (+) bs as
            in x : y : c

--------------------------------------------------------------------------------
