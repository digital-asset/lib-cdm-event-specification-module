module DA.Date where

import "base" Prelude

-- | The `DayOfWeek` type represents one the seven days of the week.
data DayOfWeek
    = Monday
    | Tuesday
    | Wednesday
    | Thursday
    | Friday
    | Saturday
    | Sunday
  deriving (Eq, Ord, Show, Enum, Bounded)

data Date = Date
  deriving (Eq, Ord, Show)

date :: Int -> Month -> Int -> Date
date _ _ _ = Date

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
toGregorian _ = error "not implemented"

dayOfWeek :: Date -> DayOfWeek
dayOfWeek _ = error "not implemented"

monthDayCount :: Int -> Month -> Int
monthDayCount _ _ = error "not implemented"

addDays :: Date -> Int -> Date
addDays _ _ = error "not implemented"

data Time = Time
  deriving (Eq, Ord, Show)
