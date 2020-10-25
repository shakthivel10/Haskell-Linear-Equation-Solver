sub :: (Fractional a) => [a] -> [a] -> [a]
sub = zipWith (-)

scaleList :: (Fractional a) => a -> [a] -> [a]
scaleList c l = map (*c) l

subScale :: (Fractional a) => [a] -> [a] -> [a]
subScale l1 l2 = tail (sub l2 (scaleList ((head l2) / (head l1)) l1))

nonZeroFirst :: (Fractional a, Eq a) => [[a]] -> [[a]]
nonZeroFirst l = nonZeroFirstHelper [] l

nonZeroFirstHelper :: (Fractional a, Eq a) => [[a]] -> [[a]] -> [[a]]
nonZeroFirstHelper l [] = error "System has Zero or Infinite Solutions"
nonZeroFirstHelper l (x:xs)  | head x /= 0 = (x:xs) ++ l
                             | otherwise   = nonZeroFirstHelper (x:l) xs

triangulate :: (Fractional a, Eq a) => [[a]] -> [[a]]
triangulate (x:[]) = [x]
triangulate (x:xs) = let y = (nonZeroFirst (subScaleAll x xs)) in x:(triangulate y)

subScaleAll :: (Fractional a) => [a] -> [[a]] -> [[a]]
subScaleAll l [] = []
subScaleAll l (x:xs) = (subScale l x):(subScaleAll l xs)

dot :: (Fractional a) => [a] -> [a] -> a
dot l1 l2 = sum (zipWith (*) l1 l2)

solveLine :: (Fractional a) => [a] -> [a] -> a
solveLine (x:xs) l = (dot xs (l ++ [-1])) / (-1 * x)

solveTriangular :: (Fractional a) => [[a]] -> [a]
solveTriangular (x:[]) = [(solveLine x [])]
solveTriangular (x:xs) = let y = (solveTriangular xs) in (solveLine x y):y

solveSystem :: (Fractional a, Eq a) => [[a]] -> [a]
solveSystem l = solveTriangular (triangulate (nonZeroFirst l))
{-
*Main> solveSystem [[1,1,2],[1,0,1]]
[1.0,1.0]
*Main> solveSystem [[1,1,1,6],[1,2,1,8],[1,2,3,14]]
[1.0,2.0,3.0]
*Main> solveSystem [[1,1,1,1,5],[1,2,1,-2,10],[1,2,3,4,10],[1,-1,1,-1,3]]
[1.0,2.0,3.0,-1.0]
-}
