-- Copyright (c) 2019, Digital Asset (Switzerland) GmbH and/or its affiliates. All rights reserved.
-- SPDX-License-Identifier: Apache-2.0

{-# LANGUAGE StandaloneDeriving #-}
module DA.Date
    ( Date
    , Month(..)
    , Time.DayOfWeek(..)
    , date
    , Time.dayOfWeek
    , toGregorian
    , addDays
    , subDate
    , monthDayCount
    , Time
    ) where

import "base" Prelude
import qualified Data.Time as Time
import qualified Data.Time.Calendar as Time

deriving instance Ord Time.DayOfWeek

type Date = Time.Day

date :: Int -> Month -> Int -> Date
date year month day = Time.fromGregorian (fromIntegral year) (fromEnum month + 1) day

data Month
    = Jan
    | Feb
    | Mar
    | Apr
    | May
    | Jun
    | Jul
    | Aug
    | Sep
    | Oct
    | Nov
    | Dec
  deriving (Eq, Ord, Show, Enum, Bounded)

toGregorian :: Date -> (Int, Month, Int)
toGregorian d =
    case Time.toGregorian d of
        (year, month, day) -> (fromIntegral year, toEnum (month - 1), day)

monthDayCount :: Int -> Month -> Int
monthDayCount year month = Time.gregorianMonthLength (fromIntegral year) (fromEnum month + 1)

addDays :: Date -> Int -> Date
addDays date days = Time.addDays (fromIntegral days) date

subDate :: Date -> Date -> Int
subDate a b = fromIntegral (Time.diffDays a b)

type Time = Time.UTCTime
