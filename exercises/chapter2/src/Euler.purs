module Euler
  ( answer
  )
  where

import Prelude

import Data.List (List, range, filter)
import Data.Foldable (sum)

ns :: Int -> List Int
ns n = range 0 (n - 1)

multiples :: Int -> List Int
multiples n = filter (\n -> mod n 3 == 0 || mod n 5 == 0) (ns n)

answer :: Int -> Int
answer n = sum (multiples n)
