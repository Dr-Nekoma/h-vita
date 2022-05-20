module Games where

import Types
import Data.Matrix

testGrid :: Grid
testGrid = fromLists [ [dead, dead, dead]
                      ,[dead, alive, dead]
                      ,[dead, dead, dead]]

beaconOscillatorGrid :: Grid
beaconOscillatorGrid = fromLists [ [dead, dead, dead, dead, dead, dead]
                                  ,[dead, alive, alive, dead, dead, dead]
                                  ,[dead, alive, alive, dead, dead, dead]
                                  ,[dead, dead, dead, alive, alive, dead]
                                  ,[dead, dead, dead, alive, alive, dead]
                                  ,[dead, dead, dead, dead, dead, dead]]

blinkerOscillatorGrid :: Grid
blinkerOscillatorGrid = fromLists [ [dead, dead, dead, dead, dead]
                                  ,[dead, dead, alive, dead, dead]
                                  ,[dead, dead, alive, dead, dead]
                                  ,[dead, dead, alive, dead, dead]
                                  ,[dead, dead, dead, dead, dead]]