let doubleMe x = x + x

let doubleUs a b = a * 2 + b * 2

let doubleUs a b = doubleMe a + doubleMe b

let doubleSmallNumber x = if x < 100 then doubleMe x else x

take 24 [13*1, 13*2..]

[x | x <- [0..12], even x]
