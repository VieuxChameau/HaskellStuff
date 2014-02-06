-- High order function : is the function that take a function or return a function
-- Currying : transforming a function that take multiple arguments as a functions chain

addOne :: Int -> Int
addOne x = x + 1

map addOne [5,6,7]


max :: Int -> Int -> Int
-- is max :: Int -> (Int -> Int) max is a function that take an int and return an function that take an int and return an int


addInt :: Int -> Int -> Int
addInt x y = x + y

-- is the same as addInt :: Int -> (Int -> Int)
addInt 5 3
(addInt 5) 3 -- This apply 3 to the function return by the addInt 5


let addThree = addInt 3 -- Partially apply addInt
addThree 5 -- result 8

map (max 3) [1,4,6] -- Partially apply max, so return the Iterate value if greather than 3


let doubleInt = map (* 2)
doubleInt [5..10]

zipWith (+) [1..4] [1..3] -- apply the function/operator + to each elements

filter (>5) [1..10] // filter take a predicate and a list return the elements satisfying the predicate


(/5) -- infixe function


applyTwice :: (a -> a) -> a -> a
applyTwice f x = f (f x)


applyTwice (+3) 10 -- 3 + (3 + 10) = 16


-- Lambda are anonymous function

map (\x -> x + 1) [1..10] -- the \ represent the lamda character
-- same as
map (+1) [1..10]

zipWith (\a b -> (a * 30 + 3) / b) [5,4,3,2,1] [1,2,3,4,5]

-- foldl for left fold (pli a gauche) start from the left of the list
-- fold take a binary function the initial accumulator

foldl (+) 0 [5,3,6] --  ((0 + 5) + 3) + 6)
