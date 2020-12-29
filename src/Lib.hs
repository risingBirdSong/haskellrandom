module Lib
    ( someFunc
    ) where

-- import qualified Data.Vector.Unboxed as U
import System.Random.Stateful
import System.Random
import Data.List


rolls :: RandomGen g => Int -> g -> [Word]
rolls n = take n . unfoldr (Just . uniformR (1, 6))
pureGen = mkStdGen 137
rolling = rolls 10 pureGen :: [Word]


someFunc :: IO ()
someFunc = putStrLn "someFunc"
