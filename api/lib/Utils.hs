module Utils (
    stringListToSet,
    listToMap,
    listToSeq,
) where

import qualified Data.Map.Strict as Map
import qualified Data.Sequence as Seq
import qualified Data.Set as Set

stringListToSet :: [String] -> Set.Set String
stringListToSet = Set.fromList

listToMap :: (Ord k) => [(k, v)] -> Map.Map k v
listToMap = Map.fromList

listToSeq :: [a] -> Seq.Seq a
listToSeq = Seq.fromList