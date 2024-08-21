module Main where

import Endpoints.Users (users1, UserAPI)

import Servant

main :: IO ()
main = do
    putStrLn "Hello, Haskell!"
    return ()


server1 :: Server UserAPI
server1 = return users1
