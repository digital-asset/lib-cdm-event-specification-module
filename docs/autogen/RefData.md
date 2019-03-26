# Module ISDA.CDM.Types.ReferenceData.Fetch
============



## Typeclasses

### `class` `(` `Action` `f` `)` => Fetch f where

  Instances of `Fetch` allow to fetch reference data. This can, e.g. be a database connection, a connection to a distributed ledger, or even a fixed set of reference data (for testing purposes).
  * `fetchHolidayCalendar` : `HolidayCalendarKey` `->` `f` `(` `Optional` `HolidayCalendarData` `)`  
    Fetch holiday calendar by key.
  * `fetchObservation` : `ObservationKey` `->` `f` `(` `Optional` `ObservationPrimitive` `)`  
    Fetch observation by key.



# Module ISDA.CDM.Types.ReferenceData.HolidayCalendar
============



## Data Types

### `data` `HolidayCalendarData`

  Holiday calendar reference data.
* `HolidayCalendarData`

  | Field      | Type/Description |
  | :--------- | :----------------
  | `label`    | `Text`
  |            | The label of the holiday calendar.
  | `weekend`  | `[` `DayOfWeek` `]`
  |            | A list of weekend days (e.g. Sunday, Saturday) that are holidays.
  | `holidays` | `[` `Date` `]`
  |            | An explicit list of holiday dates.

### `data` `HolidayCalendarKey`

  Key to an holiday calendar.
* `HolidayCalendarKey`

  | Field   | Type/Description |
  | :------ | :----------------
  | `label` | `Text`
  |         | The label of the holiday calendar.



# Module ISDA.CDM.Types.ReferenceData.Key
============



## Typeclasses

### `class` Key v k where

  A class for types that have a corresponding key.
  * `getKey` : `v` `->` `k`  
    Obtain the corresponding key.



# Module ISDA.CDM.Types.ReferenceData.Observation
============



## Data Types

### `data` `ObservationKey`

  Key to an holiday calendar.
* `ObservationKey`

  | Field    | Type/Description |
  | :------- | :----------------
  | `source` | `ObservationSource`
  |          | The observation source.
  | `date`   | `Date`
  |          | The date of the observation.
  | `side`   | `Optional` `QuotationSideEnum`
  |          | The side (bid/mid/ask) of the observation.



