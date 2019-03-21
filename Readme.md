ISDA CDM Event Specification Module
====================================

    Copyright (c) 2019, Digital Asset (Switzerland) GmbH and/or its affiliates. All rights reserved.
    SPDX-License-Identifier: Apache-2.0

Introduction
-------------

For a general introduction to the Common Domain Model (CDM), see the documentation at [CDM](https://portal.cdm.rosetta-technology.io).

The CDM Event Specification Module helps to standardize the process of generating valid CDM event messages by adding a specification of the required logic to the CDM schema itself. The library allows to unambiguously specify how events operate, e.g., how the next CDM payment event can be derived from a CDM interest rate swap contract, an interest rate observation and the relevant holiday calendars.

For reference, the set of of [CDM types](docs/autogen/CdmTypes.md) are documented as well.


Summary
-------

The Event Specification Module consists of a set of pure (deterministic, side-effect free with no IO) functions that allow to build valid CDM events.

The entry point to derive a valid CDM event is always a **specification type** together with a **build** function. A termination event, for example, can be fully described by the contract the termination should be applied to and some information common to all events (e.g. `eventDate`, `effectiveDate`, `eventIdentifier`, or `timestamp`) that are encapsulated in a [BaseEvent](docs/autogen/EventBuilder.md):

* `buildTerminationEvent` : `TerminationSpec` `->` `Event`

* `TerminationSpec`

  | Field      | Type/Description |
  | :--------- | :----------------
  | `base`     | `BaseEvent`
  |            | The base event used to build the event.
  | `contract` | `Contract`
  |            | The contract the termination is applied to.


Another prominent example is the creation of events that are directly derived from a CDM contract itself. A basis swap, for example, defines a set of reset and cash transfer events happening throughout its lifetime. The events can be built by:

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

The result of the `buildDerivedEvents` function is of type `f [Event]` where `f` is an instance of `Fetch`. This implies that [reference data](docs/autogen/RefData.md) are fetched as part of the calculation. This is an important feature because many events depend on reference data. Generating interest rate payments for an interest rate swap, for example, involves rolling out calculation schedules by applying date adjustments with respect to a given set of holiday calendars. Moreover, if the holidays change, the dates need to be re-calculated.

From a more technical point of view, `f` needs to be an instance of `Fetch` defined by the following typeclass:

```
class (Action f) => Fetch f where
  fetchHolidayCalendar : HolidayCalendarKey -> f (Optional HolidayCalendarData)
  fetchObservation : ObservationKey -> f (Optional ObservationPrimitive)
```

This can, e.g., be a database connection, a connection to a distributed ledger, or even a fixed set of reference data (for testing purposes).

Auxiliary Functions
-------------------

Finally, the module exposes some [auxiliary functions](docs/autogen/Auxiliary.md) that can be used when working with CDM events. This, e.g., includes a function to net transfers or a function to extract all `after` contracts from an event.
