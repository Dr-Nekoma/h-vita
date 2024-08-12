module Main where

import GameOfLife
import Display
import Types
import Parser
import Text.Megaparsec
import Options.Applicative
import qualified Data.Text as T
import Options (parseOptions, Options(..))

main :: IO ()
main = do
    options <- execParser parseOptions
    contents <- readFile (file options)
    let positions = runParser parseLife (file options) (T.pack contents)
    case positions of
        Left err -> print err
        Right positions -> playGame $ createGrid (rows options) (cols options) positions
