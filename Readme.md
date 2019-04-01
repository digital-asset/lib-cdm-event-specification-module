ISDA CDM Event Specification Module
====================================

Test

    Copyright (c) 2019, Digital Asset (Switzerland) GmbH and/or its affiliates. All rights reserved.
    SPDX-License-Identifier: Apache-2.0

Introduction
-------------

For a general introduction to the Common Domain Model (CDM), see the documentation at [CDM](https://portal.cdm.rosetta-technology.io).

The CDM Event Specification Module helps to standardize the process of generating valid CDM event messages by adding a specification of the required logic to the CDM schema itself. The module allows to unambiguously specify how events operate, e.g., how the next CDM payment event can be derived from a CDM interest rate swap contract, an interest rate observation and the relevant holiday calendars. This is complementary to the CDM schema, but is deemed to be an important extension because it avoids that different users of the CDM come up with different event representations. More importantly, in a DLT setup, all participants need to agree not only on the data representation but also on the business logic. The CDM module closes this gap.

The CDM Event Specification Module is available in [DAML](daml) and [Haskell](haskell) currently. Further languages like Java or C# might follow by compiling the module into other languages. This has the big advantage that the Event Specification Module can be shared between different database or distributed ledger technologies thereby making sure that everyone agrees not only on the schema but also on how events operate.

For reference, the set of of [CDM types](docs/autogen/CdmTypes.md) are documented as well.


Summary
-------

The Event Specification Module consists of a set of pure (deterministic, side-effect free with no IO) functions that allow to build valid CDM events.

The entry point to derive a valid CDM event is a **specification type** together with a **build** function. A termination event, for example, can be fully described by the contract the termination should be applied to and some information common to all events (e.g. `eventDate`, `effectiveDate`, `eventIdentifier`, or `timestamp`) that are captured in a [BaseEvent](docs/autogen/EventBuilder.md):

* `buildTerminationEvent` : `TerminationSpec` `->` `Event`

* `TerminationSpec`

  | Field      | Type/Description |
  | :--------- | :----------------
  | `base`     | `BaseEvent`
  |            | The base event used to build the event.
  | `contract` | `Contract`
  |            | The contract the termination is applied to.


Another obvious example are events that are directly derived from a CDM contract. A basis swap, for example, defines a set of reset and cash transfer events happening throughout its lifetime. Those events can be built by:

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


Reference Data
--------------

Note that the result of the `buildDerivedEvents` function is of type `f [Event]` where `f` is an instance of `Fetch`. This means that the execution of the function is done in a fetch-able context where [reference data](docs/autogen/RefData.md) can be fetched as part of the execution. This is an important feature because many events depend on reference data. Generating interest rate payments for an interest rate swap, for example, involves rolling out calculation schedules by applying date adjustments with respect to a given set of holiday calendars. Moreover, if the holidays change, the dates need to be re-calculated.

From a more technical point of view, `f` needs to be an instance of `Fetch` defined by the following typeclass:

```
class (Action f) => Fetch f where
  fetchHolidayCalendar : HolidayCalendarKey -> f (Optional HolidayCalendarData)
  fetchObservation : ObservationKey -> f (Optional ObservationPrimitive)
```

The advantage of such an approach is that reference data do not have to be provided upfront to the calculation but can be fetched as needed. The actual implementation of `f` can then depend on the underlying technology - it can, e.g., represent a connection to a SQL database or a type updating the state of a distribution ledger.


Auxiliary Functions
-------------------

The module exposes some [auxiliary functions](docs/autogen/Auxiliary.md) that can be used when working with CDM events. This, e.g., includes a function to net transfers or a function to extract all `after` contracts from an event.


Scope
-----

For a list of supported specs and build functions go to [EventBuilders](docs/autogen/EventBuilder.md). Derived events can currently be calculated for basic fixed vs. float interest rate swaps, basis swaps, and credit default swaps. The implementation checks for non-supported features in a CDM contract and will fail if any are set.
