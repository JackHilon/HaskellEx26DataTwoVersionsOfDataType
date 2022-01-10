import Data.List
import System.IO


-- Circle centerX centerY radius -- Rectangle node1X node1Y node2X node2Y
data Shape = Circle Double Double Double 
    | Rectangle Double Double Double Double
    deriving Show


area::Shape -> Double
area (Circle _ _ r) = pi * r * r
area (Rectangle x1 y1 x2 y2) = (abs(x1 - x2)) * (abs(y1 - y2))


-- another way to writing using dollar sign
areaUsingDollar::Shape -> Double
areaUsingDollar (Circle _ _ r) = pi * r * r
areaUsingDollar (Rectangle x1 y1 x2 y2) = (abs $ x1 - x2) * (abs $ y1 - y2)

c1::Shape
c1 = (Circle 0 0 1)

c2::Shape
c2 = (Circle 1 0 2)

r1::Shape
r1 = (Rectangle 1 1 4 4)

r2:: Shape
r2 = (Rectangle 1 1 2 8.5)

res = putStrLn . show $ 1 + 2

main = do 
    putStrLn("Circles....")
    print(area c1)
    print(areaUsingDollar c2)
    putStrLn("Rectangles....")
    print(area r1)
    print(areaUsingDollar r2)
    putStrLn("area inst using dollar")
    let a1 = area $ Rectangle 1 1 3 6
    print(a1)
    
