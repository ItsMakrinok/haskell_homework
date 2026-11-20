{-
3. задать список примитивных пифагоровых троек на натуральных числах (математическое определение см. в Википедии, а необходимые функции см. в http://haskell.ru/basic.html#sect6.4.2).
-}


list = [(x,y,z) | z <- [1..],
                     x <- [1..z-1],
                     y <- [x+1..z-1],
                     x*x + y*y == z*z]
primlist = [(x,y,z) | (x,y,z) <- list,
                       gcd x y == 1]

main = do
    print(take 10 primlist)
