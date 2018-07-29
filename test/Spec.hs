import Test.Hspec
import Test.Hspec.Runner (configFastFail, defaultConfig, hspecWith)

import Lib (isValidBST)

main :: IO ()
main = hspecWith defaultConfig {configFastFail = True} specs

specs :: Spec
specs = describe "isValidBST function" $ do
          it "returns false if input is not valid BST" $ do
            isValidBST [3,2,5,1] `shouldBe` False
            isValidBST [1,3,4,2] `shouldBe` False
            isValidBST [3,4,5,1,2] `shouldBe` False

          it "returns true if input is valid BST" $ do
            isValidBST [7,5,3,1,6,10,15] `shouldBe` True
            isValidBST [1,2,3] `shouldBe` True
            isValidBST [2,1,3] `shouldBe` True
            isValidBST [3,2,1,4,5,6] `shouldBe` True
            isValidBST [] `shouldBe` True
