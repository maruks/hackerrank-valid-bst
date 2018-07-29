module Main where

import Control.Monad (replicateM_)
import Lib (isValidBST)

processTest :: IO ()
processTest = do
  _ <- getLine
  input <- getLine
  let xs = map read $ words input :: [Int]
  let output = if isValidBST xs then "YES" else "NO"
  putStrLn output

main :: IO ()
main = do
  tests <- getLine
  replicateM_ (read tests :: Int) processTest
