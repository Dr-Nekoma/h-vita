module Games where

import Types
import Data.Matrix

testGrid :: Grid
testGrid = fromLists [ [alive, dead, dead]
                      ,[dead, alive, dead]
                      ,[dead, dead, alive]]

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
                                  
gliderGrid :: Grid
gliderGrid = fromLists [ [dead, alive, dead, dead, dead, dead, dead, dead, dead, dead, dead, dead, dead]
                        ,[dead, dead, alive, dead, dead, dead, dead, dead, dead, dead, dead, dead, dead]
                        ,[alive, alive, alive, dead, dead, dead, dead, dead, dead, dead, dead, dead, dead]
                        ,[dead, dead, dead, dead, dead, dead, dead, dead, dead, dead, dead, dead, dead]
                        ,[dead, dead, dead, dead, dead, dead, dead, dead, dead, dead, dead, dead, dead]
                        ,[dead, dead, dead, dead, dead, dead, dead, dead, dead, dead, dead, dead, dead]
                        ,[dead, dead, dead, dead, dead, dead, dead, dead, dead, dead, dead, dead, dead]
                        ,[dead, dead, dead, dead, dead, dead, dead, dead, dead, dead, dead, dead, dead]
                        ,[dead, dead, dead, dead, dead, dead, dead, dead, dead, dead, dead, dead, dead]
                        ,[dead, dead, dead, dead, dead, dead, dead, dead, dead, dead, dead, dead, dead]
                        ,[dead, dead, dead, dead, dead, dead, dead, dead, dead, dead, dead, dead, dead]
                        ,[dead, dead, dead, dead, dead, dead, dead, dead, dead, dead, dead, dead, dead]
                        ,[dead, dead, dead, dead, dead, dead, dead, dead, dead, dead, dead, dead, dead]]