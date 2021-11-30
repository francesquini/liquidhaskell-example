module Main where

{-@ bar :: {n: Int | n > 10} -> String @-}
bar :: Int -> String
bar n = show n ++ " is a large number!" -- Here n is guaranteed > 10

foo :: IO ()
foo = do x <- read <$> getLine
         putStrLn $ if x > 10 then bar x else "erro!"


main = foo
