module GameOfLife where

import Types
import Data.Matrix
import Data.Maybe
import Data.List


getCell :: Grid -> Location -> Maybe Cell
getCell grid (row, column) = safeGet row column grid

-- getNeighbours

topLeft :: Location -> Location
topLeft (i, j) = (i - 1, j - 1)

top :: Location -> Location
top (i, j) = (i - 1, j)

topRight :: Location -> Location
topRight (i, j) = (i - 1, j + 1)

right :: Location -> Location
right (i, j) = (i, j + 1)

bottomRight :: Location -> Location
bottomRight (i, j) = (i + 1, j + 1)

bottom :: Location -> Location
bottom (i, j) = (i + 1, j)

bottomLeft :: Location -> Location
bottomLeft (i, j) = (i + 1, j - 1)

left :: Location -> Location
left (i, j) = (i, j - 1)

getNeighboursIndex :: Location -> [Location]
getNeighboursIndex = sequence $ [top, left, right, bottom, topLeft, topRight, bottomLeft, bottomRight]

getNeighbours :: Grid -> Location -> Neighbours
getNeighbours grid currentLocation = catMaybes maybeNeighbours
    where
        neighboursIndex = getNeighboursIndex currentLocation
        maybeNeighbours = fmap (getCell grid) neighboursIndex

howManyNeighbours :: Neighbours -> Int
howManyNeighbours = length

advanceCellGeneration :: Cell -> Neighbours -> Cell
advanceCellGeneration cell neighbours
    | cell == alive && n < 2  = dead
    | cell == dead  && n < 2  = dead 
    | cell == alive && n == 2 = alive
    | cell == dead  && n == 2 = dead
    | cell == alive && n == 3 = alive
    | cell == dead  && n == 3 = alive
    | cell == alive && n > 3  = dead
    | cell == dead  && n > 3  = dead
        where 
            n = howManyNeighbours neighbours

isNeighbourAlive :: Cell -> Bool
isNeighbourAlive = id

advanceGridGeneration :: Grid -> Grid
advanceGridGeneration oldGrid = mapPos advance oldGrid
    where advance location cell = advanceCellGeneration cell (neighbours location)
          neighbours location = filter isNeighbourAlive $ getNeighbours oldGrid location