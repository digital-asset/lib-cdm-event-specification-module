# Module Org.Isda.Cdm.EventSpecificationModule.Types.ReferenceData.Fetch



## Data Types

### `data` `RefData`

  Collection of reference data
* `RefData`

  | Field              | Type/Description |
  | :----------------- | :----------------
  | `holidayCalendars` | `[` `HolidayCalendarData` `]` |
  | `observations`     | `[` `ObservationPrimitive` `]` |



# Module Org.Isda.Cdm.EventSpecificationModule.Types.ReferenceData.HolidayCalendar



## Data Types

### `data` `HolidayCalendarData`

  Holiday calendar reference data.
* `HolidayCalendarData`

  | Field      | Type/Description |
  | :--------- | :----------------
  | `label`    | `Text` |
  |            | The label of the holiday calendar. |
  | `weekend`  | `[` `DayOfWeek` `]` |
  |            | A list of weekend days (e.g. Sunday, Saturday) that are holidays. |
  | `holidays` | `[` `Date` `]` |
  |            | An explicit list of holiday dates. |

### `data` `HolidayCalendarKey`

  Key to an holiday calendar.
* `HolidayCalendarKey`

  | Field   | Type/Description |
  | :------ | :----------------
  | `label` | `Text` |
  |         | The label of the holiday calendar. |



# Module Org.Isda.Cdm.EventSpecificationModule.Types.ReferenceData.Key



## Typeclasses

### `class` Key v k where

  A class for types that have a corresponding key.
  * `getKey` : `v` `->` `k`  
    Obtain the corresponding key.



# Module Org.Isda.Cdm.EventSpecificationModule.Types.ReferenceData.Observation



## Data Types

### `data` `ObservationKey`

  Key to an holiday calendar.
* `ObservationKey`

  | Field    | Type/Description |
  | :------- | :----------------
  | `source` | `ObservationSource` |
  |          | The observation source. |
  | `date`   | `Date` |
  |          | The date of the observation. |
  | `side`   | `Optional` `QuotationSideEnum` |
  |          | The side (bid/mid/ask) of the observation. |



