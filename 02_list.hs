-- List are linked list
[1,2,3]

-- Concat list (linear time cause need to rebuild the first part of the list)
[1,2] ++ [3,4]

-- cons operator - insert at the begin of the list
0 : [3 , 4]

1 : 5 : []

let xs = [0,1,2,3]
head xs -- first element of the list ( Constant time )
tail xs -- all elements except the first ( Constant time )
init xs -- all elements execpt the last (Linear time )

xs !! 2 -- get element at 2 index => 2 (Linear time )

null xs -- check if list is empty (constant time)
null []

42 `elem` xs -- Check if 42 exists in xs

reverse xs  -- (Linear time )
length xs -- (Linear time )
minimum xs -- (Linear time )
maximum xs  -- (Linear time )
last xs -- (Linear time )



sum xs -- sum all the elements (Linear time )
product xs -- product of all the elements (Linear time )


-- Strings are list of char
['H', 'e', 'l', 'l', 'o', '!'] -- "Hello!"
"Hello" < "Bonjour"
'a':"bcd"
"Hello " ++ "World"


-- Sequence knows as Texas Range
let sequence = [0..10]
[2,4..10] -- two by two
let alphabet = ['a'..'z']


-- Infinite list
[1..]
take 5 [1..]


-- List comprehensions
[2 ^ n | n <- [1..10]]
-- [Expression building the result | where n came from list 1 to 10 , Predicates... ]
[2 ^ n | n <- [1..10], 2 ^ n >= 10, 2 ^ n < 100]

[x | x <- "outrageous" , not (elem x "aeiou")]

[[x | x <- word, not (x `elem` "aeiou")] | word <- ["bell", "book", "canddle"]]

-- Multiplication tables
[[x * y | x <- [1..5]] | y <- [1..5]]

-- _ when u dont care about the variable -- for each element of x return 1 and sum
length' xs = sum [1 | _ <- xs]

