--data ListaInt = No Int ListaInt | Vazio

--l = No 10 (No 20 (No 30 Vazio) )

--mapInt :: (Int -> Int) -> ListaInt -> ListaInt
--mapInt f l = 
--    case l of
--        Vazio -> Vazio
--        No z m -> No (f z) (mapInt f m)
        
        
--m = mapInt(*2) l 


data Lista a = No a (Lista a) | Vazio

l = No 10 (No 20 (No 30 Vazio) )

mapP :: (x -> y) -> Lista x -> Lista y
mapP f l = 
    case l of
        Vazio -> Vazio
        No z m -> No (f z) (mapP f m)
        
m = mapP(*2) l 

main = putStrLn "ok"
