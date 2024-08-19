{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE TypeOperators #-}

module Endpoints.Users (UserAPI) where

import Data.Aeson
import Data.Time (UTCTime)
import GHC.Generics
import Servant.API (Get, JSON, QueryParam, type (:>))

type UserAPI =
    "user"
        :> "profile"
        :> QueryParam "sortBy"
        :> Get '[JSON] [User]

data User = User
    { name :: String
    , age :: Int
    , email :: String
    , registrationDate :: UTCTime
    }
    deriving (Eq, Show, Generic)

instance ToJSON User