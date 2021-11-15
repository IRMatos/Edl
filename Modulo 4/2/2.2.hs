data Lista x = No x (Lista x) | Vazio
    deriving Show

data Arvore x = Galho (Arvore x) x (Arvore x) | Folha
    deriving Show

lb :: Arvore Boole
lb = Galho (Galho (Galho (Folha) False (Folha)) True (Folha)) True (Galho (Folha) True (Folha))

li :: Arvore (Lista Int)
li = Galho (Folha) (No 1 Vazio) (Galho (Folha) (No 2 Vazio) (Folha))


main = print(lb, " - ", li)
