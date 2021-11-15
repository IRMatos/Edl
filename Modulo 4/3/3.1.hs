data Lista x = No x (Lista x) | Vazio
    deriving Show

l = No 10 (No 20 (No 30 Vazio) )

filterP :: (x -> Bool) -> Lista x -> Lista x
filterP f l =
    case l of
        Vazio -> Vazio
        No z resto -> 
            case (f z) of
                True -> No z (filterP f resto)
                False -> (filterP f resto)
    

l2 = filterP(\z -> z>15) l

main = print(l2)
