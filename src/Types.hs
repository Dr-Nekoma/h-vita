module Types where
import Data.Matrix

type Location = (Int, Int)            -- Cell's position on the Grid
type NumberOfNeighbours = Int         -- The number of neighbours for a given cell
type Cell = Bool                      -- Cell
alive = True                          -- State for alive cell
dead = False                          -- State for dead Cell
type Neighbours = [Cell]              -- Alias for cell neighbours
type Grid = Matrix Cell               -- The game board
type DisplayCellSize = (Float, Float) -- Size of cell for display
