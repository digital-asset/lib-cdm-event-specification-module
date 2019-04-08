# Module Org.Isda.Cdm.EventSpecificationModule.EventBuilder.Derived



## Functions

* `buildDerivedEvents` : `RefData` `->` `DerivedSpec` `->` `[` `Event` `]`  
  Build derived events (e.g. interest rate payments, resets, etc.). Returns all events that
  have not been applied yet. If the event is not fully known yet (e.g. an observation for a reset is not
  available yet or a reset for a floating rate coupon), then an empty primitive is returned.

# Module Org.Isda.Cdm.EventSpecificationModule.EventBuilder.NewTrade



## Functions

* `buildNewTradeEvent` : `NewTradeSpec` `->` `Event`  
  Build NewTrade event

# Module Org.Isda.Cdm.EventSpecificationModule.EventBuilder.Novation



## Functions

* `buildNovationEvent` : `NovationSpec` `->` `Event`  
  Build Novation event
* `buildPartialNovationEvent` : `PartialNovationSpec` `->` `Event`  
  Build Partial Novation event

# Module Org.Isda.Cdm.EventSpecificationModule.EventBuilder.Termination



## Functions

* `buildTerminationEvent` : `TerminationSpec` `->` `Event`  
  Build Termination event
* `buildPartialTerminationEvent` : `PartialTerminationSpec` `->` `Event`  
  Build PartialTermination event

# Module Org.Isda.Cdm.EventSpecificationModule.Types.EventSpec



## Data Types

### `data` `BaseEvent`

  The base event used to build a valid event.
* `BaseEvent`

  | Field                | Type/Description |
  | :------------------- | :----------------
  | `account`            | `[` `Account` `]` |
  |                      | Optional account information that could be associated to the event. |
  | `action`             | `ActionEnum` |
  |                      | Specifies whether the event is a new, a correction or a cancellation. |
  | `effectiveDate`      | `Optional` `Date` |
  |                      | The date on which the event contractually takes effect, when different from the event date. |
  | `eventDate`          | `Date` |
  |                      | The date on which the event is taking place. This is the equivalent of the trade date in the case of an execution or a contract. |
  | `eventIdentifier`    | `[` `Identifier` `]` |
  |                      | The identifier(s) that uniquely identify a lifecycle event. The unbounded cardinality is meant to provide the ability to associate identifiers that are issued by distinct parties. As an example, each of the parties to the event may choose to associate their own identifiers to the event. |
  | `id`                 | `Optional` `Text` |
  | `messageInformation` | `Optional` `MessageInformation` |
  | `transfer`           | `[` `TransferPrimitive` `]` |
  | `timestamp`          | `[` `EventTimestamp` `]` |
  |                      | The set of timestamp(s) associated with the event as a collection of [dateTime, qualifier]. |

### `data` `DerivedSpec`

  The spec for derived events (e.g. interest rate payments, resets, etc.)
* `DerivedSpec`

  | Field        | Type/Description |
  | :----------- | :----------------
  | `fromDate`   | `Optional` `Date` |
  |              | Events starting from this date will be included (leave empty to include all events). |
  | `toDate`     | `Optional` `Date` |
  |              | Events until this date will be included (leave empty to include all events). |
  | `pastEvents` | `[` `Event` `]` |
  |              | The list of events that were already applied to the contract. This is required to e.g. imply which payments were already made or get the reset value for a certain period. |
  | `contract`   | `Contract` |

### `data` `NewTradeSpec`

  The spec for a new trade event.
* `NewTradeSpec`

  | Field   | Type/Description |
  | :------ | :----------------
  | `base`  | `BaseEvent` |
  |         | The base event used to build the event. |
  | `after` | `PostInceptionState` |
  |         | The post inception state |

### `data` `NovationSpec`

  The spec for a novation event.
* `NovationSpec`

  | Field         | Type/Description |
  | :------------ | :----------------
  | `base`        | `BaseEvent` |
  |               | The base event used to build the event. |
  | `contract`    | `Contract` |
  |               | The contract the novation is applied to. |
  | `contractNew` | `Contract` |
  |               | The contract that results from the novation. |

### `data` `PartialNovationSpec`

  The spec for a partial novation event.
* `PartialNovationSpec`

  | Field         | Type/Description |
  | :------------ | :----------------
  | `base`        | `BaseEvent` |
  |               | The base event used to build the event. |
  | `contract`    | `Contract` |
  |               | The contract the partial novation is applied to. |
  | `change`      | `[` `ContractualQuantity` `]` |
  |               | The change in quantity applied in the partial novation. |
  | `contractNew` | `Contract` |
  |               | The contract that results from the novation. |

### `data` `PartialTerminationSpec`

  The spec for a partial termination event
* `PartialTerminationSpec`

  | Field      | Type/Description |
  | :--------- | :----------------
  | `base`     | `BaseEvent` |
  |            | The base event used to build the event. |
  | `contract` | `Contract` |
  |            | The contract the termination is applied to. |
  | `change`   | `[` `ContractualQuantity` `]` |
  |            | The change in quantity applied in the partial termination. |

### `data` `TerminationSpec`

  The spec for a termination event.
* `TerminationSpec`

  | Field      | Type/Description |
  | :--------- | :----------------
  | `base`     | `BaseEvent` |
  |            | The base event used to build the event. |
  | `contract` | `Contract` |
  |            | The contract the termination is applied to. |



