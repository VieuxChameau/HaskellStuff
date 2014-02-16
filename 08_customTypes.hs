module Shapes
( Shape(..) -- this export the type shape and all the value constructors
  Shape(Circle)
)
where

-- this create a new type Shape after the equals is the value constructor
-- Circle and Rectangle are just function that take float and return Shape
-- deriving to be able to print to the output
data Shape = Circle Float Float Float | Rectangle Float Float Float Float deriving (Show)

data Person = Person String String Int Float String String deriving (Show)

let guy = Person "Buddy" "Finklestein" 43 184.2 "526-2928" "Chocolate"

-- getters
firstName :: Person -> String
firstName (Person firstname _ _ _ _ _) = firstname

lastName :: Person -> String
lastName (Person _ lastname _ _ _ _) = lastname

-- to avoid this prefer the use of the record syntax
data Person = Person { firstName :: String
                     , lastName :: String
                     , age :: Int
                     , height :: Float
                     , phoneNumber :: String
                     , flavor :: String
                     } deriving (Show)


data Car = Car {company :: String, model :: String, year :: Int} deriving (Show)
-- with record syntax when calling the value ctor no need to keep the order
Car {company="Ford", model="Mustang", year=1967}

-- Devriving Eq
-- When deriving Eq haskell look if the value constructor are the same and will compare every pair of params, so the params need to derive Eq too
data Person = Person { firstName :: String
                     , lastName :: String
                     , age :: Int
                     , height :: Float
                     , phoneNumber :: String
                     , flavor :: String
                     } deriving (Eq)


-- Enum : type with predecessors and successors
-- Bounded : for bouded type a minimum and maximum
-- Ord to compare the type >
-- Read : allow to create a new instance from a string --> read "Sunday" Day
data Day = Monday | Tuesday | Wednesday | Thursday | Friday | Saturday | Sunday deriving (Eq, Ord, Show, Read, Bounded, Enum)
minBound :: Day -- Monday
succ Monday -- Tuesday

-- Type synonyms
type PhoneNumber = String


-- to create a class
class Eq a where
    (==) :: a -> a -> Bool -- define a function prototype
    (/=) :: a -> a -> Bool
    x == y = not (x /= y) -- the implementation of ==
    x /= y = not (x == y)
