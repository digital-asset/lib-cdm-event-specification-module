# ISDA CDM Event Specification Module
[![CircleCI](https://circleci.com/gh/DACH-NY/lib-cdm-event-specification-module/tree/master.svg?style=svg&circle-token=1a44258602b7de642ef59d7ffcb61734bd88c89b)](https://circleci.com/gh/DACH-NY/lib-cdm-event-specification-module/tree/master)


    Copyright (c) 2019, Digital Asset (Switzerland) GmbH and/or its affiliates. All rights reserved.
    SPDX-License-Identifier: Apache-2.0

The **CDM Event Specification Module** is an extension to the ISDA Common Domain Model (CDM) schema that standardizes the process of generating valid CDM event messages by adding a machine readable specification of the required business logic to the CDM.

If you are not familiar with the CDM already, we recommend to read the [documentation of the CDM](https://portal.cdm.rosetta-technology.io) first. For reference, the set of [CDM types](docs/autogen/CdmTypes.md) are documented as well.

## How to use

The CDM Event Specification Module provides a set of pure (deterministic, side-effect-free with no IO) "builder" functions that can be used to build valid CDM events. The concept of a function exists in almost any program language - it takes some values as input and returns a result. The specification is written in [DAML](daml) and translated into other languages. Currently, [Haskell](haskell) is available.


### Example: Termination
If you want to build a valid CDM termination event, a `buildTerminationEvent` function can be called that takes a minimal set of fields as input and returns a fully populated CDM event. The specification for it looks as follows:

* `buildTerminationEvent` : `TerminationSpec` `->` `Event`

* `TerminationSpec`

  | Field      | Type/Description |
  | :--------- | :----------------
  | `base`     | `BaseEvent`
  |            | The base event used to build the event.
  | `contract` | `Contract`
  |            | The contract the termination is applied to.

The [BaseEvent](docs/autogen/EventBuilder.md) is a type that holds some information common to all events, e.g. `eventDate`, `effectiveDate`, `eventIdentifier`, or `timestamp`. In addition, it requires the contract the termination should be applied to.

### Example: Derived Events
If you want to build events that can be derived from a CDM contract, e.g. a reset or cash transfer event for an interest rate swap, the module provides a `buildDerivedEvents` function that allows to do so:

* `buildDerivedEvents` : `RefData` `->` `DerivedSpec` `->` `[` `Event` `]`

* `DerivedSpec`

  | Field        | Type/Description |
  | :----------- | :----------------
  | `fromDate`   | `Optional` `Date`
  |              | Events starting from this date will be included (leave empty to include all events).
  | `toDate`     | `Optional` `Date`
  |              | Events until this date will be included (leave empty to include all events).
  | `pastEvents` | `[` `Event` `]`
  |              | The list of events that were already applied to the contract. This is required to e.g. imply which
  |              | payments were already made or get the reset value for a certain period.
  | `contract`   | `Contract`

Note that the function also takes some [reference data](docs/autogen/RefData.md) as input that are required as part of the function execution.

## Reference Documentation

For a list of supported specs and builder functions, see [EventBuilders](docs/autogen/EventBuilder.md). Derived events can currently be calculated for:
* basic fixed vs. float interest rate swaps
* basis swaps
* credit default swaps

Note that the implementation checks for non-supported features in a CDM contract and will fail if any are set.

## Auxiliary Functions

The module also exposes some [auxiliary functions](docs/autogen/Auxiliary.md) that can be used when working with CDM events. This, e.g., includes a function to net transfers or a function to extract all `after` contracts from an event.

## FAQ

**Why does the industry need this?**

Traditionally, standards have focused on data representation only. The task of generating valid events is not trivial though. Generating payment events involves rolling out a calculation schedule and applying date adjustments before calculating day count fractions and interest amounts. Moreover, in a Distributed Ledger Technology (DLT) setup, participants have to not only agree on the data model, but also on the business logic. The CDM Event Specification Module closes this gap by adding a machine readable specification of the required business logic to the CDM itself.

**What is meant by specification?**

Essentially, it's a reference implementation that can be translated into other languages. The specification is written in DAML and can directly be used in DAML applications. The important point is that it is also translated into other languages. Haskell is currently available but other languages like Java or C# will follow.
