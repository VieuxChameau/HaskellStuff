response :: Integer
response = 42

list :: [Integer]
list = [1,2,3,4,5]

message :: String
message = "Hello World !"


number :: Maybe Integer
number = Just 123

-- load from ghci :l function.hs
perimetreCercle r = 2 * pi * r

hypotenuse a b = sqrt (a ^ 2 + b ^ 2)

identifyCamel humps = if humps == 1
                        then "Dromedary"
                        else "Bactrian"


let x = 7
x /= 5 -- Return true /= is different
if x > 5 then 42 else 0

signe x = if x >= 0 then "Positif" else "Negatif"


myMin a b = if a < b then a else b
myMax a b = if a > b then a else b



-- Motif

increasing :: (Ord a) => [a] -> Bool
increasing [] = True
increasing [x] = True
increasing (x:y:ys) = x <= y && increasing  (y:ys)


increasing :: (Ord a) => [a] -> Bool
increasing (x:y:ys) = x <= y && increasing  (y:ys)
increasing _ = True

-- No existing function for tripple
first :: (a, b, c) -> a
first (x, _, _) = x

second :: (a, b, c) -> b
second (_, y, _) = y

third :: (a, b, c) -> c
third (_, _, z) = z


head' :: [a] -> a
head' [] = error "Can't call head on an empty list, dummy!"
head' (x:_) = x

length' :: (Num b) => [a] -> b
length' [] = 0
length' (_:xs) = 1 + length' xs

-- gardes

bmiTell :: (RealFloat a) => a -> String
bmiTell bmi
    | bmi <= 18.5 = "You're underweight, you emo, you!"
    | bmi <= 25.0 = "You're supposedly normal. Pffft, I bet you're ugly!"
    | bmi <= 30.0 = "You're fat! Lose some weight, fatty!"
    | otherwise   = "You're a whale, congratulations!"

bmiTell :: (RealFloat a) => a -> a -> String
bmiTell weight height
    | bmi <= skinny = "You're underweight, you emo, you!"
    | bmi <= normal = "You're supposedly normal. Pffft, I bet you're ugly!"
    | bmi <= fat    = "You're fat! Lose some weight, fatty!"
    | otherwise     = "You're a whale, congratulations!"
    where bmi = weight / height ^ 2
          skinny = 18.5
          normal = 25.0
          fat = 30.0

max' :: (Ord a) => a -> a -> a
max' a b
    | a > b     = a
    | otherwise = b

-- Expression case
letter x = case x of
	0 -> "Zero"
	1 -> "One"
	_ -> "Unknow" -- _ use for all



quicksort :: (Num a) => [a] -> a
quicksort [] = []
quicksort [x] = [x]
quicksort (x:xs) = let smallerSorted = quicksort [a | a <- xs, a <= x]
        biggerSorted = quicksort [a | a <- xs, a > x]
	in  smallerSorted ++ [x] ++ biggerSorted