-- load from ghci :l function.hs
perimetreCercle r = 2 * pi * r


{-
Multi line comment
Comment continue	
-}

let x = 7
x /= 5 -- Return true /= is different
if x > 5 then 42 else 0

signe x = if x >= 0 then "Positif" else "Negatif"

-- Pattern matching
letter x = case x of
	0 -> "Zero"
	1 -> "One"
	_ -> "Unknow" -- _ use for all

-- Ex

myMin a b = if a < b then a else b
myMax a b = if a > b then a else b


response :: Integer
response = 42

list :: [Integer]
list = [1,2,3,4,5]

message :: String
message = "Hello World !"


number :: Maybe Integer
number = Just 123

{-
Getting the type of something in ghci :t
-}
