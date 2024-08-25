{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE DataKinds #-}
module Main where

import Data.Text
import Servant
import Network.Wai.Handler.Warp

main :: IO ()
main = do
    run 8081 app
    return () 


type API = "hello" :> Get '[PlainText] Text

server :: Server API
server = return "Hello, world!"

app :: Application
app = serve (Proxy :: Proxy API) server

-- server1 :: Server UserAPI
-- server1 = return "hello"

-- userApi :: Proxy UserAPI
-- userApi = Proxy

-- app1 :: Application
-- app1 = serve userApi server1
