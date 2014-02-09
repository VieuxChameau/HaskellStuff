import Data.List -- import all the functions defines in the Module Data.List

import Data.List hiding (nub) -- import all the functions defines in the Module Data.List except nub

import qualified Data.Map -- force to use the namespace Data.Map to call a function define in Data.Map

import qualified Data.Map as M -- same as previous with an alias


-- Data.List

and $ map (>4) [5,6,7,8]

any (==4) [2,3,5,6,1,4]

all (>4) [6,9,10]

[1..10] \\ [2,5,9] -- --> [1,3,4,6,7,8,10]

[1..7] `intersect` [5..10]


-- Data.Char

map digitToInt "34538"


-- Data.Map
-- Map : Association lists -- dictionaries

phoneBook =
    [("betty","555-2938")
    ,("bonnie","452-2928")
    ,("patsy","493-2928")
    ,("lucille","205-2928")
    ,("wendy","939-8282")
    ,("penny","853-2492")
    ]


-- Data.Set set are ordered



module Geometry.Sphere
( volume
, area
) where

volume :: Float -> Float
volume radius = (4.0 / 3.0) * pi * (radius ^ 3)

area :: Float -> Float
area radius = 4 * pi * (radius ^ 2)
