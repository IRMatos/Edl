--  Altura e Idade
data Base = Base Double Int
    deriving Show

-- Um Guerreiro que tem forca
-- Um Mago que tem magia
-- Um Curandeiro que tem cura
data Personagem = Guerreiro Base Int | Mago Base Double | Curandeiro Base Int
    deriving Show
 

p1 :: Personagem
p1 = Guerreiro (Base 1.9 23) 50

p2 :: Personagem
p2 = Curandeiro (Base 1.7 35) 90

main = print(p1," - ",p2)
