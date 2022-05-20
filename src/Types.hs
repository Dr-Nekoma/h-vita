module Types where
import Data.Matrix

type Location = (Int, Int) -- Cell's position on the Grid
type NumberOfNeighbours = Int -- The size of the Grid
type Cell = Bool -- Cell
alive = True
dead = False
type Neighbours = [Cell] -- Cell
type Grid = Matrix Cell -- The board
