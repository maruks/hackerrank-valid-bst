module Lib (isValidBST) where

isValidBST :: [Int] -> Bool
isValidBST [] = True
isValidBST (x:xs) = let (left, right) = span (< x) xs
                        valid = all (> x) right in
                        valid && isValidBST left && isValidBST right
