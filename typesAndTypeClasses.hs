{-
    Typeclasses are set of Types (equivalent of java interface)
    Types are set of values (equivalent of java class)


    Integer type values : -1 , 3 ,5
    Num type classes : Integer, Int, Double, Float
-}


{-
Getting the type of something in ghci :t
-}


-- The last type is the return type
addThree :: Int -> Int -> Int -> Int

:t (==)
(==) :: (Eq a) => a -> a -> Bool
-- Before the => the constraint of class the type of a should be part of Eq
