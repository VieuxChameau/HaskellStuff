2 * 3
4 ^ 5

42 `mod` 5
-- same as
mod 42 5

-- Pair
let paire = (5,7)
fst pair -- first element
snd paire -- Second element


-- List
[1,2,3]
-- Concat list
[1,2] ++ [3,4]

-- cons - insert at the begin of the list
0:[3,4]

let xs = [0,1,2,3]
head xs -- first element of the list
tail xs -- all element except the first

xs !! 2 -- get element at 2 index => 2

42 `elem` xs -- Check if 42 exists in xs

reverse xs
length xs
minimum xs
maximum xs

sum xs -- sum all the elements
product xs -- product of all the elements

-- Sequence
let sequence = [0..10]

-- Strings are list of char
'a':"bcd"
"Hello " ++ "World"

