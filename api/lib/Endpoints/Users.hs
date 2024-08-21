{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE TypeOperators #-}

module Endpoints.Users (UserAPI, users1) where

import Data.Aeson
import GHC.Generics
import Servant.API (Get, JSON, QueryParam, type (:>))
import Data.Time.Calendar

type UserAPI =
    "user"
        :> "profile"
        :> Get '[JSON] [User]

users1 :: [User]
users1 =
  [ User "Isaac Newton"    372 "isaac@newton.co.uk" (fromGregorian 1683  3 1)
  , User "Albert Einstein" 136 "ae@mc2.org"         (fromGregorian 1905 12 1)
  ]

data User = User
    { name :: String
    , age :: Int
    , email :: String
    , registrationDate :: Day
    }
    deriving (Eq, Show, Generic)

instance ToJSON User