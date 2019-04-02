# ISDA CDM Event Specification Module

    Copyright (c) 2019, Digital Asset (Switzerland) GmbH and/or its affiliates. All rights reserved.
    SPDX-License-Identifier: Apache-2.0

## Introduction

This introduction assumes you're already familiar with the ISDA Common Domain Model (CDM). For a general introduction to the CDM, see [the documentation at CDM](https://portal.cdm.rosetta-technology.io).

The **CDM Event Specification Module** is an extension to the CDM schema that standardizes the process of generating valid CDM event messages. It does this adding to the schema a specification of the required logic that unambiguously specifies how events operate. For example, how the next CDM payment event can be derived from a CDM interest rate swap contract, an interest rate observation and the relevant holiday calendars.

This avoids different users of the CDM coming up with different event representations. More importantly, in a DLT setup, all participants need to agree on both the data representation and the business logic. This module closes this gap.

The CDM Event Specification Module is currently available in [DAML](daml) and [Haskell](haskell). Further languages like Java or C# might follow by compiling the module into other languages. This has the big advantage that the Event Specification Module can be shared between different database or distributed ledger technologies thereby making sure that everyone agrees not only on the schema but also on how events operate.

For reference, the set of of [CDM types](docs/autogen/CdmTypes.md) are documented as well.

## Summary

The Event Specification Module consists of a set of pure (deterministic, side-effect-free with no IO) functions that you can use to build valid CDM events.

The entry point to derive a valid CDM event is a **specification type** together with a **build** function.

For example, a termination event can be fully described by the contract the termination should be applied to and some information common to all events (e.g. `eventDate`, `effectiveDate`, `eventIdentifier`, or `timestamp`) that are captured in a [BaseEvent](docs/autogen/EventBuilder.md):

* `buildTerminationEvent` : `TerminationSpec` `->` `Event`

* `TerminationSpec`

  | Field      | Type/Description |
  | :--------- | :----------------
  | `base`     | `BaseEvent`
  |            | The base event used to build the event.
  | `contract` | `Contract`
  |            | The contract the termination is applied to.


Another obvious example is events that are directly derived from a CDM contract. A basis swap, for example, defines a set of reset and cash transfer events happening throughout its lifetime. You can build these events using:

* `buildDerivedEvents` : `Fetch` `f` `=>` `DerivedSpec` `->` `f` `[` `Event` `]`

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

A list of supported specs and build functions is available [here](docs/autogen/EventBuilder.md).


## Reference Data

The execution of the `buildDerivedEvents` function is done in a fetch-able context where [reference data](docs/autogen/RefData.md) can be fetched as part of the execution. You can tell this is the case because the result of `buildDerivedEvents` is of type `f [Event]`, where `f` is an instance of `Fetch`. 

This is an important feature because many events depend on reference data. Generating interest rate payments for an interest rate swap, for example, involves rolling out calculation schedules by applying date adjustments with respect to a given set of holiday calendars. Moreover, if the holidays change, the dates need to be re-calculated.

From a more technical point of view, `f` needs to be an instance of `Fetch` defined by the following typeclass:

```
class (Action f) => Fetch f where
  fetchHolidayCalendar : HolidayCalendarKey -> f (Optional HolidayCalendarData)
  fetchObservation : ObservationKey -> f (Optional ObservationPrimitive)
```

The advantage of such an approach is that reference data do not have to be provided upfront to the calculation but can be fetched as needed. The actual implementation of `f` can then depend on the underlying technology - it could represent a connection to a SQL database, or a type updating the state of a distribution ledger.


## Auxiliary Functions

The module exposes some [auxiliary functions](docs/autogen/Auxiliary.md) that can be used when working with CDM events. This, e.g., includes a function to net transfers or a function to extract all `after` contracts from an event.


## Reference Documentation

For a list of supported specs and build functions, see [EventBuilders](docs/autogen/EventBuilder.md). Derived events can currently be calculated for:
* basic fixed vs. float interest rate swaps
* basis swaps
* credit default swaps

The implementation checks for non-supported features in a CDM contract and will fail if any are set.
