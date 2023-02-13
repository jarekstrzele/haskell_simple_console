import qualified Data.Text as T
import qualified Data.Text.IO as TIO
import qualified Data.ByteString as B

main :: IO ()
main = do
    B.writeFile "newFile.txt" (T.encodeUtf8 (T.pack "Polskie znaki żźćęóń"))
    contents <- TIO.readFile "newFile.txt"
    TIO.putStrLn contents