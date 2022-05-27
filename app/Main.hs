module Main where

import GameOfLife
import Games
import Display
import Types

main :: IO ()
main = playGame gliderGrid
