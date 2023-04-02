import Test.Hspec
import Lib

-- `do` indicates we're going to sequence things 

main :: IO ()
main = hspec $ do 
    describe "How to write a test" $ do 
        it "Should be able to tun tests" $ do 
            someString `shouldBe` "someString"
