# Module ISDA.CDM.Types.Classes
============

This file is auto-generated from the ISDA Common
Domain Model, do not edit.
@version 0.0.0.master

## Data Types

### `data` `Account`

  The account specification.
* `Account`

  | Field                | Type/Description |
  | :------------------- | :----------------
  | `accountBeneficiary` | `Optional` `(` `ReferenceWithMeta` `Party` `)`
  |                      | A reference to the party beneficiary of the account.
  | `accountName`        | `Optional` `(` `FieldWithMeta` `Text` `)`
  |                      | The name by which the account is known.
  | `accountNumber`      | `FieldWithMeta` `Text`
  |                      | The account number.
  | `accountType`        | `Optional` `(` `FieldWithMeta` `AccountTypeEnum` `)`
  |                      | The type of account, e.g. client, house.
  | `id`                 | `Optional` `Text`
  | `servicingParty`     | `Optional` `(` `ReferenceWithMeta` `Party` `)`
  |                      | The reference to the legal entity that services the
  |                      | account, i.e. in the books of which the account is
  |                      | held.

### `data` `ActualPrice`

* `ActualPrice`

  | Field             | Type/Description |
  | :---------------- | :----------------
  | `amount`          | `Decimal`
  | `currency`        | `Optional` `(` `FieldWithMeta` `Text` `)`
  |                   | Specifies the currency associated with the net price.
  |                   | This element is not present if the price is expressed
  |                   | in percentage terms (as specified through the
  |                   | priceExpression element).
  | `priceExpression` | `PriceExpressionEnum`
  |                   | Specifies whether the price is expressed in absolute
  |                   | or relative terms.

### `data` `AdditionalDisruptionEvents`

  A type for defining the Additional Disruption Events.
* `AdditionalDisruptionEvents`

  | Field                        | Type/Description |
  | :--------------------------- | :----------------
  | `changeInLaw`                | `Optional` `Bool`
  |                              | 2002 ISDA Equity Derivatives Definitions: Change in
  |                              | Law | 2018 ISDA CDM Equity Confirmation for Security
  |                              | Equity Swap: Change In Law | If true, then change in
  |                              | law is applicable.
  | `determiningPartyReference`  | `Optional` `(` `ReferenceWithMeta` `Party` `)`
  |                              | A reference to the party which determines additional
  |                              | disruption events.
  | `failureToDeliver`           | `Optional` `Bool`
  |                              | 2002 ISDA Equity Derivatives Definitions: Failure to
  |                              | Deliver | Where the underlying is shares and the
  |                              | transaction is physically settled, then, if true, a
  |                              | failure to deliver the shares on the settlement date
  |                              | will not be an event of default for the purposes of
  |                              | the master agreement.
  | `foreignOwnershipEvent`      | `Optional` `Bool`
  |                              | If true, then foreign ownership event is applicable.
  | `hedgingDisruption`          | `Optional` `Bool`
  |                              | 2002 ISDA Equity Derivatives Definitions: Hedging
  |                              | Disruption | If true, then hedging disruption is
  |                              | applicable.
  | `increasedCostOfHedging`     | `Optional` `Bool`
  |                              | 2002 ISDA Equity Derivatives Definitions: Increased
  |                              | Cost of Hedging | If true, then increased cost of
  |                              | hedging is applicable.
  | `increasedCostOfStockBorrow` | `Optional` `Bool`
  |                              | 2002 ISDA Equity Derivatives Definitions: Increased
  |                              | Cost of Stock Borrow | If true, then increased cost
  |                              | of stock borrow is applicable.
  | `initialStockLoanRate`       | `Optional` `Decimal`
  |                              | Specifies the initial stock loan rate for Increased
  |                              | Cost of Stock Borrow. A percentage of 5% is
  |                              | represented as 0.05.
  | `insolvencyFiling`           | `Optional` `Bool`
  |                              | 2002 ISDA Equity Derivatives Definitions: Insolvency
  |                              | Filing | If true, then insolvency filing is
  |                              | applicable.
  | `lossOfStockBorrow`          | `Optional` `Bool`
  |                              | 2002 ISDA Equity Derivatives Definitions: Loss of
  |                              | Stock Borrow | If true, then loss of stock borrow is
  |                              | applicable.
  | `maximumStockLoanRate`       | `Optional` `Decimal`
  |                              | Specifies the maximum stock loan rate for Loss of
  |                              | Stock Borrow. A percentage of 5% is represented as
  |                              | 0.05.

### `data` `AdditionalFixedPayments`

  A class to specify the events that will give rise to
  the payment additional fixed payments.
* `AdditionalFixedPayments`

  | Field                             | Type/Description |
  | :-------------------------------- | :----------------
  | `interestShortfallReimbursement`  | `Optional` `Bool`
  |                                   | An additional Fixed Payment Event. Corresponds to the
  |                                   | payment by or on behalf of the Issuer of an actual
  |                                   | interest amount in respect to the reference
  |                                   | obligation that is greater than the expected interest
  |                                   | amount. ISDA 2003 Term: Interest Shortfall
  |                                   | Reimbursement.
  | `principalShortfallReimbursement` | `Optional` `Bool`
  |                                   | An additional Fixed Payment Event. Corresponds to the
  |                                   | payment by or on behalf of the Issuer of an actual
  |                                   | principal amount in respect to the reference
  |                                   | obligation that is greater than the expected
  |                                   | principal amount. ISDA 2003 Term: Principal Shortfall
  |                                   | Reimbursement.
  | `writedownReimbursement`          | `Optional` `Bool`
  |                                   | An Additional Fixed Payment. Corresponds to the
  |                                   | payment by or on behalf of the issuer of an amount in
  |                                   | respect to the reference obligation in reduction of
  |                                   | the prior writedowns. ISDA 2003 Term: Writedown
  |                                   | Reimbursement.

### `data` `AdditionalRegime`

  A class to specify the additional regulatory
  regime(s) that might be specified by the parties to a
  legal agreement, such as the ISDA 2016 and 2018 CSA
  for Initial Margin.
* `AdditionalRegime`

  | Field                 | Type/Description |
  | :-------------------- | :----------------
  | `additionalType`      | `AdditionalTypeEnum`
  |                       | The Additional Type of transaction that can require
  |                       | the collection or delivery of initial margin under
  |                       | the specified regulatory regime for the purposes of
  |                       | Covered Transactions, as specified in ISDA 2016
  |                       | Credit Support Annex for Initial Margin, paragraph
  |                       | 13, General Principles, (b)(B).
  | `isApplicable`        | `Bool`
  |                       | A boolean flag to specify whether the regulatory
  |                       | regime is applicable.
  | `regime`              | `Text`
  |                       | The additional regulatory regime as specified by the
  |                       | parties.
  | `retrospectiveEffect` | `Bool`
  |                       | ISDA 2016 CSA for Initial Margin, paragraph 13
  |                       | (b)(i): if `Retrospective Effect` is specified as
  |                       | applicable to a Regime (a `Retrospective Regime`)
  |                       | then all Covered Transactions (IM) under all other
  |                       | Regimes with an earlier Regime Effective Time will,
  |                       | to the extent that they would have been Covered
  |                       | Transactions (IM) under such Retrospective Regime had
  |                       | such Transactions been entered into at or after the
  |                       | Regime Effective Time of the Retrospective Regime, be
  |                       | deemed to be Covered Transactions (IM) for such
  |                       | Retrospective Regime.
  | `simmException`       | `SimmException`
  |                       | The specified exception to the ISDA Standard Initial
  |                       | Margin Model.

### `data` `AdditionalType`

  The specification of the Additional Type of
  transaction that can require the collection or
  delivery of initial margin under a given regulatory
  regime for the purposes of Covered Transactions, as
  specified in ISDA 2016 Credit Support Annex for
  Initial Margin, paragraph 13, General Principles,
  (b)(B).
* `AdditionalType`

  | Field           | Type/Description |
  | :-------------- | :----------------
  | `customValue`   | `Optional` `Text`
  |                 | The qualification of the Additional Type of
  |                 | transaction that can require the collection or
  |                 | delivery of initial margin when specified as a custom
  |                 | value by the parties to the legal agreement.
  | `standardValue` | `AdditionalTypeEnum`
  |                 | The qualification of the Additional Type of
  |                 | transaction that can require the collection or
  |                 | delivery of initial margin when specified as a
  |                 | standard value.

### `data` `AdjustableDate`

  A class for defining a date that shall be subject to
  adjustment if it would otherwise fall on a day that
  is not a business day in the specified business
  centers, together with the convention for adjusting
  the date.
* `AdjustableDate`

  | Field                      | Type/Description |
  | :------------------------- | :----------------
  | `adjustedDate`             | `Optional` `(` `FieldWithMeta` `Date` `)`
  |                            | The date once the adjustment has been performed.
  |                            | (Note that this date may change if the business
  |                            | center holidays change).
  | `dateAdjustments`          | `Optional` `BusinessDayAdjustments`
  |                            | The business day convention and financial business
  |                            | centers used for adjusting the date if it would
  |                            | otherwise fall on a day that is not a business date
  |                            | in the specified business centers.
  | `dateAdjustmentsReference` | `Optional` `(` `ReferenceWithMeta` `BusinessDayAdjustments` `)`
  |                            | A pointer style reference to date adjustments defined
  |                            | elsewhere in the document.
  | `id`                       | `Optional` `Text`
  | `unadjustedDate`           | `Date`
  |                            | A date subject to adjustment.

### `data` `AdjustableDates`

  A class for defining a series of dates that shall be
  subject to adjustment if they would otherwise fall on
  a day that is not a business day in the specified
  business centers, together with the convention for
  adjusting the dates.
* `AdjustableDates`

  | Field             | Type/Description |
  | :---------------- | :----------------
  | `adjustedDate`    | `[` `FieldWithMeta` `Date` `]`
  |                   | The date(s) once the adjustment has been performed.
  |                   | (Note that this date may change if the business
  |                   | center holidays change).
  | `dateAdjustments` | `BusinessDayAdjustments`
  |                   | The business day convention and financial business
  |                   | centers used for adjusting the date if it would
  |                   | otherwise fall on a day that is not a business date
  |                   | in the specified business centers.
  | `id`              | `Optional` `Text`
  | `unadjustedDate`  | `[` `Date` `]`
  |                   | A date subject to adjustment.

### `data` `AdjustableOrAdjustedDate`

  A class for defining a date that shall be subject to
  adjustment if it would otherwise fall on a day that
  is not a business day in the specified business
  centers, together with the convention for adjusting
  the date.
* `AdjustableOrAdjustedDate`

  | Field             | Type/Description |
  | :---------------- | :----------------
  | `adjustedDate`    | `Optional` `(` `FieldWithMeta` `Date` `)`
  |                   | The date once the adjustment has been performed.
  |                   | (Note that this date may change if the business
  |                   | center holidays change).
  | `dateAdjustments` | `Optional` `BusinessDayAdjustments`
  |                   | The business day convention and financial business
  |                   | centers used for adjusting the date if it would
  |                   | otherwise fall on a day that is not a business date
  |                   | in the specified business centers.
  | `id`              | `Optional` `Text`
  | `unadjustedDate`  | `Optional` `Date`
  |                   | A date subject to adjustment.

### `data` `AdjustableOrAdjustedOrRelativeDate`

  This Rosetta class specifies the date as either an
  unadjusted, adjusted or relative date. It supplements
  the features of the AdjustableOrAdjustedDate to
  support the credit default swap option premium, which
  uses the relative date construct.
* `AdjustableOrAdjustedOrRelativeDate`

  | Field             | Type/Description |
  | :---------------- | :----------------
  | `adjustedDate`    | `Optional` `(` `FieldWithMeta` `Date` `)`
  |                   | The date once the adjustment has been performed.
  |                   | (Note that this date may change if the business
  |                   | center holidays change).
  | `dateAdjustments` | `Optional` `BusinessDayAdjustments`
  |                   | The business day convention and financial business
  |                   | centers used for adjusting the date if it would
  |                   | otherwise fall on a day that is not a business date
  |                   | in the specified business centers.
  | `id`              | `Optional` `Text`
  | `relativeDate`    | `Optional` `RelativeDateOffset`
  |                   | A date specified as some offset to another date (the
  |                   | anchor date).
  | `unadjustedDate`  | `Optional` `Date`
  |                   | A date subject to adjustment.

### `data` `AdjustableOrRelativeDate`

  A class giving the choice between defining a date as
  an explicit date together with applicable adjustments
  or as relative to some other (anchor) date.
* `AdjustableOrRelativeDate`

  | Field            | Type/Description |
  | :--------------- | :----------------
  | `adjustableDate` | `Optional` `AdjustableDate`
  |                  | A date that shall be subject to adjustment if it
  |                  | would otherwise fall on a day that is not a business
  |                  | day in the specified business centers, together with
  |                  | the convention for adjusting the date.
  | `id`             | `Optional` `Text`
  | `relativeDate`   | `Optional` `AdjustedRelativeDateOffset`
  |                  | A date specified as some offset to another date (the
  |                  | anchor date).

### `data` `AdjustableOrRelativeDates`

  A class giving the choice between defining a series
  of dates as an explicit list of dates together with
  applicable adjustments or as relative to some other
  series of (anchor) dates.
* `AdjustableOrRelativeDates`

  | Field             | Type/Description |
  | :---------------- | :----------------
  | `adjustableDates` | `Optional` `AdjustableDates`
  |                   | A series of dates that shall be subject to adjustment
  |                   | if they would otherwise fall on a day that is not a
  |                   | business day in the specified business centers,
  |                   | together with the convention for adjusting the date.
  | `id`              | `Optional` `Text`
  | `relativeDates`   | `Optional` `RelativeDates`
  |                   | A series of dates specified as some offset to another
  |                   | series of dates (the anchor dates).

### `data` `AdjustedRelativeDateOffset`

  A type defining a date (referred to as the derived
  date) as a relative offset from another date
  (referred to as the anchor date) plus optional date
  adjustments.
* `AdjustedRelativeDateOffset`

  | Field                      | Type/Description |
  | :------------------------- | :----------------
  | `adjustedDate`             | `Optional` `Date`
  |                            | The date once the adjustment has been performed.
  |                            | (Note that this date may change if the business
  |                            | center holidays change).
  | `businessCenters`          | `Optional` `BusinessCenters`
  | `businessCentersReference` | `Optional` `(` `ReferenceWithMeta` `BusinessCenters` `)`
  |                            | A pointer style reference to a set of financial
  |                            | business centers defined elsewhere in the document.
  |                            | This set of business centers is used to determine
  |                            | whether a particular day is a business day or not.
  | `businessDayConvention`    | `BusinessDayConventionEnum`
  |                            | The convention for adjusting a date if it would
  |                            | otherwise fall on a day that is not a business day,
  |                            | as specified by an ISDA convention (e.g. Following,
  |                            | Precedent).
  | `dateRelativeTo`           | `Optional` `(` `BasicReferenceWithMeta` `Date` `)`
  |                            | Specifies the anchor as an href attribute. The href
  |                            | attribute value is a pointer style reference to the
  |                            | element or component elsewhere in the document where
  |                            | the anchor date is defined.
  | `dayType`                  | `Optional` `DayTypeEnum`
  |                            | In the case of an offset specified as a number of
  |                            | days, this element defines whether consideration is
  |                            | given as to whether a day is a good business day or
  |                            | not. If a day type of business days is specified then
  |                            | non-business days are ignored when calculating the
  |                            | offset. The financial business centers to use for
  |                            | determination of business days are implied by the
  |                            | context in which this element is used. This element
  |                            | must only be included when the offset is specified as
  |                            | a number of days. If the offset is zero days then the
  |                            | dayType element should not be included.
  | `id`                       | `Optional` `Text`
  | `period`                   | `PeriodEnum`
  |                            | A time period, e.g. a day, week, month or year of the
  |                            | stream. If the periodMultiplier value is 0 (zero)
  |                            | then period must contain the value D (day).
  | `periodMultiplier`         | `Int`
  |                            | A time period multiplier, e.g. 1, 2 or 3 etc. A
  |                            | negative value can be used when specifying an offset
  |                            | relative to another date, e.g. -2 days.
  | `relativeDateAdjustments`  | `Optional` `BusinessDayAdjustments`
  |                            | The business day convention and financial business
  |                            | centers used for adjusting the relative date if it
  |                            | would otherwise fall on a day that is not a business
  |                            | date in the specified business centers.

### `data` `AllocationOutcome`

  A class to specify the allocated outcome as the
  combination of an execution which state is specified
  as &#39;Allocated&#39; and a contract or set of
  contract(s). (The allocation to one single contract
  is deemed appropriate.)
* `AllocationOutcome`

  | Field       | Type/Description |
  | :---------- | :----------------
  | `contract`  | `[` `Contract` `]`
  | `execution` | `Execution`

### `data` `AllocationPrimitive`

  The primitive event to represent a split/allocation
  of a contractual product or a contract.
* `AllocationPrimitive`

  | Field    | Type/Description |
  | :------- | :----------------
  | `after`  | `AllocationOutcome`
  | `before` | `ExecutionState`

### `data` `AmericanExercise`

  A class defining the exercise period for an American
  style option together with any rules governing the
  notional amount of the underlying which can be
  exercised on any given exercise date and any
  associated exercise fees.
* `AmericanExercise`

  | Field                    | Type/Description |
  | :----------------------- | :----------------
  | `commencementDate`       | `AdjustableOrRelativeDate`
  |                          | The first day of the exercise period for an American
  |                          | style option.
  | `earliestExerciseTime`   | `BusinessCenterTime`
  |                          | The earliest time at which notice of exercise can be
  |                          | given by the buyer to the seller (or seller&#39;s
  |                          | agent) to, and including, the expiration date.
  | `exerciseFeeSchedule`    | `Optional` `ExerciseFeeSchedule`
  |                          | The fees associated with an exercise date. The fees
  |                          | are conditional on the exercise occurring. The fees
  |                          | can be specified as actual currency amounts or as
  |                          | percentages of the notional amount being exercised.
  | `expirationDate`         | `AdjustableOrRelativeDate`
  |                          | The last day within an exercise period for an
  |                          | American style option. For a European style option it
  |                          | is the only day within the exercise period.
  | `expirationTime`         | `BusinessCenterTime`
  |                          | The latest time for exercise on expirationDate.
  | `id`                     | `Optional` `Text`
  | `latestExerciseTime`     | `Optional` `BusinessCenterTime`
  |                          | For a Bermuda or American style option, the latest
  |                          | time on an exercise business day (excluding the
  |                          | expiration date) within the exercise period that
  |                          | notice can be given by the buyer to the seller or
  |                          | seller&#39;s agent. Notice of exercise given after
  |                          | this time will be deemed to have been given on the
  |                          | next exercise business day.
  | `multipleExercise`       | `Optional` `MultipleExercise`
  |                          | As defined in the 2000 ISDA Definitions, Section
  |                          | 12.4. Multiple Exercise, the buyer of the option has
  |                          | the right to exercise all or less than all the
  |                          | unexercised notional amount of the underlying swap on
  |                          | one or more days in the exercise period, but on any
  |                          | such day may not exercise less than the minimum
  |                          | notional amount or more that the maximum notional
  |                          | amount, and if an integral multiple amount is
  |                          | specified, the notional amount exercised must be
  |                          | equal to, or be an integral multiple of, the integral
  |                          | multiple amount.
  | `relevantUnderlyingDate` | `Optional` `AdjustableOrRelativeDates`
  |                          | The date on the underlying set by the exercise of an
  |                          | option. What this date is depends on the option (e.g.
  |                          | in a swaption it is the swap effective date, in an
  |                          | extendible/cancelable provision it is the swap
  |                          | termination date).

### `data` `AmountSchedule`

  A class to specify a currency amount or a currency
  amount schedule.
* `AmountSchedule`

  | Field          | Type/Description |
  | :------------- | :----------------
  | `currency`     | `[` `FieldWithMeta` `Text` `]`
  |                | The currency in which the amount schedule is
  |                | denominated. The currency is specified outside of the
  |                | actual schedule in order to be applied uniformly to
  |                | it. The list of valid currencies is not presently
  |                | positioned as an enumeration as part of the CDM
  |                | because that scope is limited to the values specified
  |                | by ISDA and FpML. As a result, implementers have to
  |                | make reference to the relevant standard, such as the
  |                | ISO 4217 standard for currency codes.
  | `id`           | `Optional` `Text`
  | `initialValue` | `Decimal`
  |                | The initial rate or amount, as the case may be. An
  |                | initial rate of 5% would be represented as 0.05.
  | `step`         | `[` `Step` `]`
  |                | The schedule of step date and value pairs. On each
  |                | step date the associated step value becomes effective
  |                | A list of steps may be ordered in the document by
  |                | ascending step date. An FpML document containing an
  |                | unordered list of steps is still regarded as a
  |                | conformant document.

### `data` `ApplicableRegime`

  A class to specify the applicable regulatory
  regime(s) that parties to a legal agreement, such as
  the ISDA 2016 and 2018 CSA for Initial Margin, might
  be subject to.
* `ApplicableRegime`

  | Field                 | Type/Description |
  | :-------------------- | :----------------
  | `additionalType`      | `AdditionalTypeEnum`
  |                       | The Additional Type of transaction that can require
  |                       | the collection or delivery of initial margin under
  |                       | the specified regulatory regime for the purposes of
  |                       | Covered Transactions, as specified in ISDA 2016
  |                       | Credit Support Annex for Initial Margin, paragraph
  |                       | 13, General Principles, (b)(B).
  | `isApplicable`        | `Bool`
  |                       | A boolean flag to specify whether the regulatory
  |                       | regime is applicable.
  | `regime`              | `RegulatoryRegimeEnum`
  |                       | The applicable regulatory regime, as specified
  |                       | through an enumeration.
  | `retrospectiveEffect` | `Bool`
  |                       | ISDA 2016 CSA for Initial Margin, paragraph 13
  |                       | (b)(i): if `Retrospective Effect` is specified as
  |                       | applicable to a Regime (a `Retrospective Regime`)
  |                       | then all Covered Transactions (IM) under all other
  |                       | Regimes with an earlier Regime Effective Time will,
  |                       | to the extent that they would have been Covered
  |                       | Transactions (IM) under such Retrospective Regime had
  |                       | such Transactions been entered into at or after the
  |                       | Regime Effective Time of the Retrospective Regime, be
  |                       | deemed to be Covered Transactions (IM) for such
  |                       | Retrospective Regime.
  | `simmException`       | `SimmException`
  |                       | The specified exception to the ISDA Standard Initial
  |                       | Margin Model.

### `data` `Asian`

  As per ISDA 2002 Definitions.
* `Asian`

  | Field                | Type/Description |
  | :------------------- | :----------------
  | `averagingInOut`     | `AveragingInOutEnum`
  | `averagingPeriodIn`  | `Optional` `AveragingPeriod`
  |                      | The averaging in period.
  | `averagingPeriodOut` | `Optional` `AveragingPeriod`
  |                      | The averaging out period.
  | `strikeFactor`       | `Optional` `Decimal`
  |                      | The factor of strike.

### `data` `AssetPool`

  Characterizes the asset pool behind an asset backed
  bond.
* `AssetPool`

  | Field           | Type/Description |
  | :-------------- | :----------------
  | `currentFactor` | `Optional` `Decimal`
  |                 | The part of the mortgage that is currently
  |                 | outstanding. It is expressed similarly to the initial
  |                 | factor, as factor multiplier to the mortgage. This
  |                 | term is formally defined as part of the &#39;ISDA
  |                 | Standard Terms Supplement for use with credit
  |                 | derivatives transactions on mortgage-backed security
  |                 | with pas-as-you-go or physical settlement&#39;.
  | `effectiveDate` | `Optional` `Date`
  |                 | Optionally it is possible to specify a version
  |                 | effective date when a version is supplied.
  | `initialFactor` | `Decimal`
  |                 | The part of the mortgage that is outstanding on trade
  |                 | inception, i.e. has not been repaid yet as principal.
  |                 | It is expressed as a multiplier factor to the
  |                 | mortgage: 1 means that the whole mortgage amount is
  |                 | outstanding, 0.8 means that 20% has been repaid.
  | `version`       | `Optional` `Text`
  |                 | The asset pool version.

### `data` `AssignedIdentifier`

  A class to specify the identifier value and its
  associated version.
* `AssignedIdentifier`

  | Field        | Type/Description |
  | :----------- | :----------------
  | `identifier` | `FieldWithMeta` `Text`
  |              | The identifier value.
  | `version`    | `Optional` `Int`
  |              | The identifier version, which is specified as an
  |              | integer and is meant to be incremented each time the
  |              | transaction terms (whether contract or event) change.
  |              | This version is made option to support the use case
  |              | where the identifier is referenced without the
  |              | version. The constraint that a contract and a
  |              | lifecycle event need to have an associated version is
  |              | enforced through data rules.

### `data` `AutomaticExercise`

  A type to define automatic exercise of a swaption.
  With automatic exercise the option is deemed to have
  exercised if it is in the money by more than the
  threshold amount on the exercise date.
* `AutomaticExercise`

  | Field           | Type/Description |
  | :-------------- | :----------------
  | `thresholdRate` | `Decimal`
  |                 | A threshold rate. The threshold of 0.10% would be
  |                 | represented as 0.001

### `data` `AveragingObservationList`

  An unordered list of weighted averaging observations.
* `AveragingObservationList`

  | Field                  | Type/Description |
  | :--------------------- | :----------------
  | `averagingObservation` | `[` `WeightedAveragingObservation` `]`
  |                        | A single weighted averaging observation.

### `data` `AveragingPeriod`

  Period over which an average value is taken.
* `AveragingPeriod`

  | Field                   | Type/Description |
  | :---------------------- | :----------------
  | `averagingDateTimes`    | `Optional` `DateTimeList`
  |                         | An unweighted list of averaging observation date and
  |                         | times.
  | `averagingObservations` | `Optional` `AveragingObservationList`
  |                         | A weighted list of averaging observation date and
  |                         | times.
  | `marketDisruption`      | `Optional` `(` `FieldWithMeta` `MarketDisruptionEnum` `)`
  |                         | The market disruption event as defined by ISDA 2002
  |                         | Definitions.
  | `schedule`              | `[` `AveragingSchedule` `]`
  |                         | A schedule for generating averaging observation
  |                         | dates.

### `data` `AveragingSchedule`

  Class to representing a method for generating a
  series of dates.
* `AveragingSchedule`

  | Field                      | Type/Description |
  | :------------------------- | :----------------
  | `averagingPeriodFrequency` | `CalculationPeriodFrequency`
  |                            | The frequency at which averaging period occurs with
  |                            | the regular part of the valuation schedule and their
  |                            | roll date convention.
  | `endDate`                  | `Date`
  |                            | Date on which this period ends.
  | `startDate`                | `Date`
  |                            | Date on which this period begins.

### `data` `Barrier`

  As per ISDA 2002 Definitions.
* `Barrier`

  | Field          | Type/Description |
  | :------------- | :----------------
  | `barrierCap`   | `Optional` `TriggerEvent`
  |                | A trigger level approached from beneath.
  | `barrierFloor` | `Optional` `TriggerEvent`
  |                | A trigger level approached from above.

### `data` `Basket`

* `Basket`

  (no fields)

### `data` `BasketReferenceInformation`

  CDS Basket Reference Information.
* `BasketReferenceInformation`

  | Field           | Type/Description |
  | :-------------- | :----------------
  | `basketId`      | `[` `FieldWithMeta` `Text` `]`
  |                 | A CDS basket identifier.
  | `basketName`    | `Optional` `(` `FieldWithMeta` `Text` `)`
  |                 | The name of the basket expressed as a free format
  |                 | string. FpML does not define usage rules for this
  |                 | element.
  | `mthToDefault`  | `Optional` `Int`
  |                 | M th reference obligation to default to allow
  |                 | representation of N th to M th defaults.
  | `nthToDefault`  | `Optional` `Int`
  |                 | N th reference obligation to default triggers payout.
  | `referencePool` | `ReferencePool`
  |                 | This element contains all the reference pool items to
  |                 | define the reference entity and reference
  |                 | obligation(s) in the basket.
  | `tranche`       | `Optional` `Tranche`
  |                 | This element contains CDS tranche terms.

### `data` `BermudaExercise`

  A class defining the Bermuda option exercise dates
  and the expiration date together with any rules
  governing the notional amount of the underlying which
  can be exercised on any given exercise date and any
  associated exercise fee.
* `BermudaExercise`

  | Field                    | Type/Description |
  | :----------------------- | :----------------
  | `bermudaExerciseDates`   | `AdjustableOrRelativeDates`
  |                          | The dates that define the Bermuda option exercise
  |                          | dates and the expiration date. The last specified
  |                          | date is assumed to be the expiration date. The dates
  |                          | can either be specified as a series of explicit dates
  |                          | and associated adjustments or as a series of dates
  |                          | defined relative to another schedule of dates, for
  |                          | example, the calculation period start dates. Where a
  |                          | relative series of dates are defined the first and
  |                          | last possible exercise dates can be separately
  |                          | specified.
  | `earliestExerciseTime`   | `BusinessCenterTime`
  |                          | The earliest time at which notice of exercise can be
  |                          | given by the buyer to the seller (or seller&#39;s
  |                          | agent) on each Bermuda option exercise date and the
  |                          | expiration date.
  | `exerciseFeeSchedule`    | `Optional` `ExerciseFeeSchedule`
  |                          | The fees associated with an exercise date. The fees
  |                          | are conditional on the exercise occurring. The fees
  |                          | can be specified as actual currency amounts or as
  |                          | percentages of the notional amount being exercised.
  | `expirationTime`         | `BusinessCenterTime`
  |                          | The latest time for exercise on expirationDate.
  | `id`                     | `Optional` `Text`
  | `latestExerciseTime`     | `Optional` `BusinessCenterTime`
  |                          | For a Bermuda or American style option, the latest
  |                          | time on an exercise business day (excluding the
  |                          | expiration date) within the exercise period that
  |                          | notice can be given by the buyer to the seller or
  |                          | seller&#39;s agent. Notice of exercise given after
  |                          | this time will be deemed to have been given on the
  |                          | next exercise business day.
  | `multipleExercise`       | `Optional` `MultipleExercise`
  |                          | As defined in the 2000 ISDA Definitions, Section
  |                          | 12.4. Multiple Exercise, the buyer of the option has
  |                          | the right to exercise all or less than all the
  |                          | unexercised notional amount of the underlying swap on
  |                          | one or more days in the exercise period, but on any
  |                          | such day may not exercise less than the minimum
  |                          | notional amount or more that the maximum notional
  |                          | amount, and if an integral multiple amount is
  |                          | specified, the notional amount exercised must be
  |                          | equal to, or be an integral multiple of, the integral
  |                          | multiple amount.
  | `relevantUnderlyingDate` | `Optional` `AdjustableOrRelativeDates`
  |                          | The date on the underlying set by the exercise of an
  |                          | option. What this date is depends on the option (e.g.
  |                          | in a swaption it is the swap effective date, in an
  |                          | extendible/cancelable provision it is the swap
  |                          | termination date).

### `data` `Bond`

  A class to specify a bond as having a product
  identifier. As a difference versus the FpML standard,
  the CDM structure of this class only includes the
  productIdentifier class, which consists of an
  identifier, productTaxonomy, and source of the
  identifier. The reason for this approach is to avoid
  the potential for conflicting information between the
  information associated with the contractual product
  and the reference information maintained by the
  relevant service provider.
* `Bond`

  | Field               | Type/Description |
  | :------------------ | :----------------
  | `productIdentifier` | `ProductIdentifier`

### `data` `BondOptionStrike`

  A class to specify the strike of a bond or
  convertible bond option.
* `BondOptionStrike`

  | Field                | Type/Description |
  | :------------------- | :----------------
  | `price`              | `Optional` `OptionStrike`
  | `referenceSwapCurve` | `Optional` `ReferenceSwapCurve`
  |                      | The strike of an option when expressed by reference
  |                      | to a swap curve. (Typically the case for a
  |                      | convertible bond option.)

### `data` `BondReference`

  Reference to a bond underlier to represent an asset
  swap or Condition Precedent Bond.
* `BondReference`

  | Field                    | Type/Description |
  | :----------------------- | :----------------
  | `bond`                   | `ProductIdentifier`
  |                          | Reference to a bond underlier.
  | `conditionPrecedentBond` | `Bool`
  |                          | To indicate whether the Condition Precedent Bond is
  |                          | applicable. The swap contract is only valid if the
  |                          | bond is issued and if there is any dispute over the
  |                          | terms of fixed stream then the bond terms would be
  |                          | used.
  | `discrepancyClause`      | `Optional` `Bool`
  |                          | To indicate whether the Discrepancy Clause is
  |                          | applicable.

### `data` `BrokerConfirmation`

  Identifies the market sector in which the trade has
  been arranged.
* `BrokerConfirmation`

  | Field                    | Type/Description |
  | :----------------------- | :----------------
  | `brokerConfirmationType` | `FieldWithMeta` `BrokerConfirmationTypeEnum`
  |                          | The type of broker confirmation executed between the
  |                          | parties.

### `data` `BusinessCenterTime`

  A class for defining a time with respect to a
  business day calendar location. For example, 11:00:00
  GBLO.
* `BusinessCenterTime`

  | Field            | Type/Description |
  | :--------------- | :----------------
  | `businessCenter` | `FieldWithMeta` `BusinessCenterEnum`
  |                  | A code identifying a business day calendar location.
  |                  | A business day calendar location is drawn from the
  |                  | list identified by the business day calendar location
  |                  | enumeration.
  | `hourMinuteTime` | `Text`
  |                  | A time specified in hh:mm:ss format where the second
  |                  | component must be &#39;00&#39;, e.g. 11am would be
  |                  | represented as 11:00:00.

### `data` `BusinessCenters`

  A class for specifying the business day calendar
  location used in determining whether a day is a
  business day or not, either by specifying this
  business center by reference to an enumerated list
  that is maintained by the FpML standard, or by
  reference to such specification when it exists
  elsewhere as part of the instance document. This
  class corresponds to the FpML
  BusinessCentersOrReference.model.
* `BusinessCenters`

  | Field                      | Type/Description |
  | :------------------------- | :----------------
  | `businessCenter`           | `[` `FieldWithMeta` `BusinessCenterEnum` `]`
  |                            | A code identifying one or several business day
  |                            | calendar location(s). The set of business day
  |                            | calendar locations are specified by the business day
  |                            | calendar location enumeration which is maintained by
  |                            | the FpML standard.
  | `businessCentersReference` | `Optional` `(` `ReferenceWithMeta` `BusinessCenters` `)`
  |                            | A reference to a financial business center location
  |                            | specified elsewhere in the instance document.
  | `id`                       | `Optional` `Text`

### `data` `BusinessDateRange`

  A class defining a range of contiguous business days
  by defining an unadjusted first date, an unadjusted
  last date and a business day convention and business
  centers for adjusting the first and last dates if
  they would otherwise fall on a non business day in
  the specified business centers. The days between the
  first and last date must also be good business days
  in the specified centers to be counted in the range.
* `BusinessDateRange`

  | Field                   | Type/Description |
  | :---------------------- | :----------------
  | `businessCenters`       | `Optional` `BusinessCenters`
  |                         | The business center(s), specified either explicitly
  |                         | or by reference to those specified somewhere else in
  |                         | the instance document.
  | `businessDayConvention` | `BusinessDayConventionEnum`
  |                         | The convention for adjusting a date if it would
  |                         | otherwise fall on a day that is not a business day,
  |                         | as specified by an ISDA convention (e.g. Following,
  |                         | Precedent).
  | `unadjustedFirstDate`   | `Date`
  |                         | The first date of a date range.
  | `unadjustedLastDate`    | `Date`
  |                         | The last date of a date range.

### `data` `BusinessDayAdjustments`

  A class defining the business day convention and
  financial business centers used for adjusting any
  relevant date if it would otherwise fall on a day
  that is not a business day in the specified business
  center.
* `BusinessDayAdjustments`

  | Field                   | Type/Description |
  | :---------------------- | :----------------
  | `businessCenters`       | `Optional` `BusinessCenters`
  |                         | The business center(s), specified either explicitly
  |                         | or by reference to those specified somewhere else in
  |                         | the instance document.
  | `businessDayConvention` | `BusinessDayConventionEnum`
  |                         | The convention for adjusting a date if it would
  |                         | otherwise fall on a day that is not a business day.
  | `id`                    | `Optional` `Text`

### `data` `BuyerSeller`

  This class corresponds to the FpML BuyerSeller.model
  construct.
* `BuyerSeller`

  | Field                    | Type/Description |
  | :----------------------- | :----------------
  | `buyerAccountReference`  | `Optional` `(` `ReferenceWithMeta` `Account` `)`
  |                          | A reference to the account that buys this instrument.
  | `buyerPartyReference`    | `ReferenceWithMeta` `Party`
  |                          | A reference to the party that buys this instrument,
  |                          | i.e. pays for this instrument and receives the rights
  |                          | defined by it. ISDA 2002 Equity Definitions section
  |                          | 1.18: `Buyer` means the party specified as such in
  |                          | the related Confirmation. | ISDA 2006 Definitions
  |                          | article 12.1 (b)(i) relating to a Swaption:
  |                          | &#39;Buyer&#39; means the party that will, on each
  |                          | Premium Payment Date, pay to Seller the Premium |
  |                          | ISDA 2006 Definitions article 12.1 (b)(ii) relating
  |                          | to Swap Transactions with applicable Early
  |                          | Termination: the party specified as such in the
  |                          | related Confirmation, or the Exercising Party if
  |                          | neither party is specified | ISDA 2006 Definitions
  |                          | article 12.1 (b)(iii) relating to any other Option
  |                          | Transaction: the party specified as such in the
  |                          | related Confirmation. | ISDA 2014 Credit Definition
  |                          | article 1.4: `Buyer` means the Fixed Rate Payer.
  | `sellerAccountReference` | `Optional` `(` `ReferenceWithMeta` `Account` `)`
  |                          | A reference to the account that sells this
  |                          | instrument.
  | `sellerPartyReference`   | `ReferenceWithMeta` `Party`
  |                          | A reference to the party that sells
  |                          | (&#39;writes&#39;) this instrument, i.e. that grants
  |                          | the rights defined by this instrument and in return
  |                          | receives a payment for it. ISDA 2002 Equity
  |                          | Definitions section 1.19: `Seller` means the party
  |                          | specified as such in the related Confirmation. | ISDA
  |                          | 2006 Definitions article 12.1 (a)(i) relating to a
  |                          | Swaption: &#39;Seller&#39; means the party the party
  |                          | specified as such or as writer in the related
  |                          | Confirmation | ISDA 2006 Definitions article 12.1
  |                          | (a)(ii) relating to Swap Transactions with applicable
  |                          | Early Termination: the party specified as such or as
  |                          | writer in the related Confirmation or, if neither
  |                          | party is specified as such, the Non-exercising Party
  |                          | | ISDA 2006 Definitions article 12.1 (a)(iii)
  |                          | relating to any other Option Transaction: the party
  |                          | specified as such in the related Confirmation. | ISDA
  |                          | 2014 Credit Definition article 1.4: `Seller` means
  |                          | the Floating Rate Payer.

### `data` `CalculationAgent`

  A class defining the ISDA calculation agent
  responsible for performing duties as defined in the
  applicable product definitions.
* `CalculationAgent`

  | Field                            | Type/Description |
  | :------------------------------- | :----------------
  | `calculationAgentBusinessCenter` | `Optional` `(` `FieldWithMeta` `BusinessCenterEnum` `)`
  |                                  | The city in which the office through which ISDA
  |                                  | Calculation Agent is acting for purposes of the
  |                                  | transaction is located The short-form confirm for a
  |                                  | trade that is executed under a Sovereign or Asia
  |                                  | Pacific Master Confirmation Agreement ( MCA ), does
  |                                  | not need to specify the Calculation Agent. However,
  |                                  | the confirm does need to specify the Calculation
  |                                  | Agent City. This is due to the fact that the MCA sets
  |                                  | the value for Calculation Agent but does not set the
  |                                  | value for Calculation Agent City.
  | `calculationAgentParty`          | `Optional` `CalculationAgentPartyEnum`
  |                                  | The ISDA calculation agent responsible for performing
  |                                  | duties as defined in the applicable product
  |                                  | definitions. For example, the Calculation Agent may
  |                                  | be defined as being the Non-exercising Party.
  | `calculationAgentPartyReference` | `[` `ReferenceWithMeta` `Party` `]`
  |                                  | In FpML, a pointer style reference to a party
  |                                  | identifier defined elsewhere in the document. The
  |                                  | party referenced is the ISDA Calculation Agent for
  |                                  | the trade. If more than one party is referenced then
  |                                  | the parties are assumed to be co-calculation agents,
  |                                  | i.e. they have joint responsibility.

### `data` `CalculationAgentModel`

  This class corresponds to the FpML
  CalculationAgent.model.
* `CalculationAgentModel`

  | Field                            | Type/Description |
  | :------------------------------- | :----------------
  | `calculationAgent`               | `Optional` `CalculationAgent`
  |                                  | The ISDA calculation agent responsible for performing
  |                                  | duties as defined in the applicable product
  |                                  | definitions.
  | `calculationAgentBusinessCenter` | `Optional` `BusinessCenterEnum`
  |                                  | The city in which the office through which ISDA
  |                                  | Calculation Agent is acting for purposes of the
  |                                  | transaction is located. The short-form confirm for a
  |                                  | trade that is executed under a Sovereign or
  |                                  | Asia-Pacific Master Confirmation Agreement (MCA),
  |                                  | does not need to specify the Calculation Agent.
  |                                  | However, the confirm does need to specify the
  |                                  | Calculation Agent city. This is due to the fact that
  |                                  | the MCA sets the value for Calculation Agent but does
  |                                  | not set the value for Calculation Agent city.

### `data` `CalculationAmount`

* `CalculationAmount`

  | Field      | Type/Description |
  | :--------- | :----------------
  | `amount`   | `Decimal`
  |            | The monetary quantity in currency units.
  | `currency` | `FieldWithMeta` `Text`
  |            | The currency in which the associated amount is
  |            | denominated. The list of valid currencies is not
  |            | presently positioned as an enumeration as part of the
  |            | CDM because that scope is limited to the values
  |            | specified by ISDA and FpML. As a result, implementers
  |            | have to make reference to the relevant standard, such
  |            | as the ISO 4217 standard for currency codes.
  | `id`       | `Optional` `Text`
  | `step`     | `[` `Step` `]`
  |            | A schedule of step date and value pairs. On each step
  |            | date the associated step value becomes effective. A
  |            | list of steps may be ordered in the document by
  |            | ascending step date. FpML specifies that an FpML
  |            | document containing an unordered list of steps is
  |            | still regarded as a conformant document.

### `data` `CalculationDateLocation`

  A class to specify the Calculation Date Location
  election for the respective parties to the legal
  agreement. ISDA 2016 Credit Support Annex for Initial
  Margin, paragraph 13, General Principles, (d)(i).
* `CalculationDateLocation`

  | Field            | Type/Description |
  | :--------------- | :----------------
  | `partyElections` | `[` `CalculationDateLocationElection` `]`
  |                  | The parties&#39; calculation date location elections.

### `data` `CalculationDateLocationElection`

  A class to specify each of the party elections with
  respect to the Calculation Date Location.
* `CalculationDateLocationElection`

  | Field            | Type/Description |
  | :--------------- | :----------------
  | `businessCenter` | `Optional` `(` `FieldWithMeta` `BusinessCenterEnum` `)`
  |                  | The Calculation Date Location when specified as a
  |                  | business center which corresponds to the FpML list of
  |                  | business centers or can be mapped to it.
  | `customLocation` | `Optional` `Text`
  |                  | The Calculation Date Location when specified a
  |                  | location which doesn&#39;t correspond to the FpML
  |                  | list of business centers or cannot be mapped to it.
  | `party`          | `ReferenceWithMeta` `Party`
  |                  | The party which the Calculation Date Location
  |                  | election pertains to.

### `data` `CalculationPeriod`

  A class defining the parameters used in the
  calculation of a fixed or floating rate calculation
  period amount. This class forms part of cashflows
  representation of a swap stream.
* `CalculationPeriod`

  | Field                           | Type/Description |
  | :------------------------------ | :----------------
  | `adjustedEndDate`               | `Optional` `Date`
  |                                 | The calculation period end date, adjusted according
  |                                 | to any relevant business day convention.
  | `adjustedStartDate`             | `Optional` `Date`
  |                                 | The calculation period start date, adjusted according
  |                                 | to any relevant business day convention.
  | `calculationPeriodNumberOfDays` | `Optional` `Int`
  |                                 | The number of days from the adjusted effective /
  |                                 | start date to the adjusted termination / end date
  |                                 | calculated in accordance with the applicable day
  |                                 | count fraction.
  | `dayCountYearFraction`          | `Optional` `Decimal`
  |                                 | The year fraction value of the calculation period,
  |                                 | result of applying the ISDA rules for day count
  |                                 | fraction defined in the ISDA Annex.
  | `fixedRate`                     | `Optional` `Decimal`
  |                                 | The calculation period fixed rate. A per annum rate,
  |                                 | expressed as a decimal. A fixed rate of 5% would be
  |                                 | represented as 0.05.
  | `floatingRateDefinition`        | `Optional` `FloatingRateDefinition`
  |                                 | The floating rate reset information for the
  |                                 | calculation period.
  | `forecastAmount`                | `Optional` `Money`
  |                                 | The amount representing the forecast of the accrued
  |                                 | value of the calculation period. An intermediate
  |                                 | value used to generate the forecastPaymentAmount in
  |                                 | the PaymentCalculationPeriod.
  | `forecastRate`                  | `Optional` `Decimal`
  |                                 | A value representing the forecast rate used to
  |                                 | calculate the forecast future value of the accrual
  |                                 | period. This is a calculated rate determined based on
  |                                 | averaging the rates in the rateObservation elements,
  |                                 | and incorporates all of the rate treatment and
  |                                 | averaging rules. A value of 1% should be represented
  |                                 | as 0.01.
  | `fxLinkedNotionalAmount`        | `Optional` `FxLinkedNotionalAmount`
  |                                 | The amount that a cashflow will accrue interest on.
  |                                 | This is the calculated amount of the FX linked - i.e.
  |                                 | the other currency notional amount multiplied by the
  |                                 | appropriate FX spot rate.
  | `id`                            | `Optional` `Text`
  | `notionalAmount`                | `Optional` `Decimal`
  |                                 | The amount that a cashflow will accrue interest on.
  | `unadjustedEndDate`             | `Optional` `Date`
  |                                 | The calculation end date, unadjusted.
  | `unadjustedStartDate`           | `Optional` `Date`
  |                                 | The calculation start date, unadjusted.

### `data` `CalculationPeriodBase`

  The calculation period adjusted start and end dates,
  which are the baseline arguments needed to compute an
  interest accrual calculation.
* `CalculationPeriodBase`

  | Field               | Type/Description |
  | :------------------ | :----------------
  | `adjustedEndDate`   | `Optional` `Date`
  |                     | The calculation period end date, adjusted according
  |                     | to any relevant business day convention.
  | `adjustedStartDate` | `Optional` `Date`
  |                     | The calculation period start date, adjusted according
  |                     | to any relevant business day convention.
  | `id`                | `Optional` `Text`

### `data` `CalculationPeriodDates`

  A class for defining the parameters used to generate
  the calculation period dates schedule, including the
  specification of any initial or final stub
  calculation periods. A calculation period schedule
  consists of an optional initial stub calculation
  period, one or more regular calculation periods and
  an optional final stub calculation period. In the
  absence of any initial or final stub calculation
  periods, the regular part of the calculation period
  schedule is assumed to be between the effective date
  and the termination date. No implicit stubs are
  allowed, i.e. stubs must be explicitly specified
  using an appropriate combination of
  firstPeriodStartDate, firstRegularPeriodStartDate and
  lastRegularPeriodEndDate.
* `CalculationPeriodDates`

  | Field                               | Type/Description |
  | :---------------------------------- | :----------------
  | `calculationPeriodDatesAdjustments` | `Optional` `BusinessDayAdjustments`
  |                                     | The specification of the business day convention and
  |                                     | financial business centers used for adjusting any
  |                                     | calculation period date if it would otherwise fall on
  |                                     | a day that is not a business day in the specified
  |                                     | business center.
  | `calculationPeriodFrequency`        | `Optional` `CalculationPeriodFrequency`
  |                                     | The frequency at which calculation period end dates
  |                                     | occur with the regular part of the calculation period
  |                                     | schedule and their roll date convention.
  | `effectiveDate`                     | `Optional` `AdjustableOrRelativeDate`
  |                                     | The first day of the terms of the trade. This day may
  |                                     | be subject to adjustment in accordance with a
  |                                     | business day convention.
  | `firstCompoundingPeriodEndDate`     | `Optional` `Date`
  |                                     | The end date of the initial compounding period when
  |                                     | compounding is applicable. It must only be specified
  |                                     | when the compoundingMethod element is present and not
  |                                     | equal to a value of None. This date may be subject to
  |                                     | adjustment in accordance with any adjustments
  |                                     | specified in calculationPeriodDatesAdjustments.
  | `firstPeriodStartDate`              | `Optional` `AdjustableDate`
  |                                     | The start date of the calculation period. FpML
  |                                     | specifies that for interest rate swaps this date must
  |                                     | only be specified if it is not equal to the effective
  |                                     | date. It is always specified in the case of equity
  |                                     | swaps and credit default swaps with periodic
  |                                     | payments. This date may be subject to adjustment in
  |                                     | accordance with a business day convention.
  | `firstRegularPeriodStartDate`       | `Optional` `Date`
  |                                     | The start date of the regular part of the calculation
  |                                     | period schedule. It must only be specified if there
  |                                     | is an initial stub calculation period. This day may
  |                                     | be subject to adjustment in accordance with any
  |                                     | adjustments specified in
  |                                     | calculationPeriodDatesAdjustments.
  | `id`                                | `Optional` `Text`
  | `lastRegularPeriodEndDate`          | `Optional` `Date`
  |                                     | The end date of the regular part of the calculation
  |                                     | period schedule. It must only be specified if there
  |                                     | is a final stub calculation period. This day may be
  |                                     | subject to adjustment in accordance with any
  |                                     | adjustments specified in
  |                                     | calculationPeriodDatesAdjustments.
  | `stubPeriodType`                    | `Optional` `StubPeriodTypeEnum`
  |                                     | Method to allocate any irregular period remaining
  |                                     | after regular periods have been allocated between the
  |                                     | effective and termination date.
  | `terminationDate`                   | `Optional` `AdjustableOrRelativeDate`
  |                                     | The last day of the terms of the trade. This date may
  |                                     | be subject to adjustments in accordance with the
  |                                     | business day convention. It can also be specified in
  |                                     | relation to another scheduled date (e.g. the last
  |                                     | payment date).

### `data` `CalculationPeriodFrequency`

  A class to specify the frequency at which calculation
  period end dates occur within the regular part of the
  calculation period schedule and their roll date
  convention.
* `CalculationPeriodFrequency`

  | Field              | Type/Description |
  | :----------------- | :----------------
  | `id`               | `Optional` `Text`
  | `period`           | `PeriodExtendedEnum`
  |                    | A time period, e.g. a day, week, month, year or term
  |                    | of the stream.
  | `periodMultiplier` | `Int`
  |                    | A time period multiplier, e.g. 1, 2, or 3. If the
  |                    | period value is T (Term) then period multiplier must
  |                    | contain the value 1.
  | `rollConvention`   | `RollConventionEnum`
  |                    | The roll convention specifies the period term as part
  |                    | of a periodic schedule, i.e. the calculation period
  |                    | end date within the regular part of the calculation
  |                    | period. The value could be a rule, e.g. IMM
  |                    | Settlement Dates, which is the 3rd Wednesday of the
  |                    | month, or it could be a specific day of the month,
  |                    | such as the first day of the applicable month. It is
  |                    | used in conjunction with a frequency and the regular
  |                    | period start date of a calculation period.

### `data` `CalendarSpread`

  A type for defining a calendar spread feature.
* `CalendarSpread`

  | Field               | Type/Description |
  | :------------------ | :----------------
  | `expirationDateTwo` | `AdjustableOrRelativeDate`

### `data` `CancelableProvision`

  A class defining the right of a party to cancel a
  swap transaction on the specified exercise dates. The
  provision is for &#39;walk-away&#39; cancellation
  (i.e. the fair value of the swap is not paid). A fee
  payable on exercise can be specified. As a difference
  from the FpML construct, the canonical model extends
  the BuyerSeller class.
* `CancelableProvision`

  | Field                                  | Type/Description |
  | :------------------------------------- | :----------------
  | `americanExercise`                     | `Optional` `AmericanExercise`
  |                                        | American exercise. FpML implementations consists in
  |                                        | an exercise substitution group.
  | `bermudaExercise`                      | `Optional` `BermudaExercise`
  |                                        | Bermuda exercise. FpML implementations consists in an
  |                                        | exercise substitution group.
  | `buyerAccountReference`                | `Optional` `(` `ReferenceWithMeta` `Account` `)`
  |                                        | A reference to the account that buys this instrument.
  | `buyerPartyReference`                  | `ReferenceWithMeta` `Party`
  |                                        | A reference to the party that buys this instrument,
  |                                        | i.e. pays for this instrument and receives the rights
  |                                        | defined by it. ISDA 2002 Equity Definitions section
  |                                        | 1.18: `Buyer` means the party specified as such in
  |                                        | the related Confirmation. | ISDA 2006 Definitions
  |                                        | article 12.1 (b)(i) relating to a Swaption:
  |                                        | &#39;Buyer&#39; means the party that will, on each
  |                                        | Premium Payment Date, pay to Seller the Premium |
  |                                        | ISDA 2006 Definitions article 12.1 (b)(ii) relating
  |                                        | to Swap Transactions with applicable Early
  |                                        | Termination: the party specified as such in the
  |                                        | related Confirmation, or the Exercising Party if
  |                                        | neither party is specified | ISDA 2006 Definitions
  |                                        | article 12.1 (b)(iii) relating to any other Option
  |                                        | Transaction: the party specified as such in the
  |                                        | related Confirmation. | ISDA 2014 Credit Definition
  |                                        | article 1.4: `Buyer` means the Fixed Rate Payer.
  | `cancelableProvisionAdjustedDates`     | `Optional` `CancelableProvisionAdjustedDates`
  |                                        | The adjusted dates associated with a cancelable
  |                                        | provision. These dates have been adjusted for any
  |                                        | applicable business day convention.
  | `europeanExercise`                     | `Optional` `EuropeanExercise`
  |                                        | European exercise. FpML implementations consists in
  |                                        | an exercise substitution group.
  | `exerciseNotice`                       | `Optional` `ExerciseNotice`
  |                                        | Definition of the party to whom notice of exercise
  |                                        | should be given.
  | `finalCalculationPeriodDateAdjustment` | `[` `FinalCalculationPeriodDateAdjustment` `]`
  |                                        | Business date convention adjustment to final payment
  |                                        | period per leg (swapStream) upon exercise event. The
  |                                        | adjustments can be made in-line with leg level
  |                                        | BDC&#39;s or they can be specified separately.
  | `followUpConfirmation`                 | `Bool`
  |                                        | A flag to indicate whether follow-up confirmation of
  |                                        | exercise (written or electronic) is required
  |                                        | following telephonic notice by the buyer to the
  |                                        | seller or seller&#39;s agent.
  | `initialFee`                           | `Optional` `SimplePayment`
  |                                        | An initial fee for the cancelable option.
  | `sellerAccountReference`               | `Optional` `(` `ReferenceWithMeta` `Account` `)`
  |                                        | A reference to the account that sells this
  |                                        | instrument.
  | `sellerPartyReference`                 | `ReferenceWithMeta` `Party`
  |                                        | A reference to the party that sells
  |                                        | (&#39;writes&#39;) this instrument, i.e. that grants
  |                                        | the rights defined by this instrument and in return
  |                                        | receives a payment for it. ISDA 2002 Equity
  |                                        | Definitions section 1.19: `Seller` means the party
  |                                        | specified as such in the related Confirmation. | ISDA
  |                                        | 2006 Definitions article 12.1 (a)(i) relating to a
  |                                        | Swaption: &#39;Seller&#39; means the party the party
  |                                        | specified as such or as writer in the related
  |                                        | Confirmation | ISDA 2006 Definitions article 12.1
  |                                        | (a)(ii) relating to Swap Transactions with applicable
  |                                        | Early Termination: the party specified as such or as
  |                                        | writer in the related Confirmation or, if neither
  |                                        | party is specified as such, the Non-exercising Party
  |                                        | | ISDA 2006 Definitions article 12.1 (a)(iii)
  |                                        | relating to any other Option Transaction: the party
  |                                        | specified as such in the related Confirmation. | ISDA
  |                                        | 2014 Credit Definition article 1.4: `Seller` means
  |                                        | the Floating Rate Payer.

### `data` `CancelableProvisionAdjustedDates`

  A class to define the adjusted dates for a cancelable
  provision on a swap transaction.
* `CancelableProvisionAdjustedDates`

  | Field               | Type/Description |
  | :------------------ | :----------------
  | `cancellationEvent` | `[` `CancellationEvent` `]`
  |                     | The adjusted dates for an individual cancellation
  |                     | date.

### `data` `CancellationEvent`

  The adjusted dates for a specific cancellation date,
  including the adjusted exercise date and adjusted
  termination date.
* `CancellationEvent`

  | Field                          | Type/Description |
  | :----------------------------- | :----------------
  | `adjustedEarlyTerminationDate` | `Date`
  |                                | The early termination date that is applicable if an
  |                                | early termination provision is exercised. This date
  |                                | should already be adjusted for any applicable
  |                                | business day convention.
  | `adjustedExerciseDate`         | `Date`
  |                                | The date on which option exercise takes place. This
  |                                | date should already be adjusted for any applicable
  |                                | business day convention.
  | `id`                           | `Optional` `Text`

### `data` `CashPriceMethod`

  A type defining the parameters necessary for each of
  the ISDA cash price methods for cash settlement.
* `CashPriceMethod`

  | Field                          | Type/Description |
  | :----------------------------- | :----------------
  | `cashSettlementCurrency`       | `FieldWithMeta` `Text`
  |                                | The currency in which the cash settlement amount will
  |                                | be calculated and settled. The list of valid
  |                                | currencies is not presently positioned as an
  |                                | enumeration as part of the CDM because that scope is
  |                                | limited to the values specified by ISDA and FpML. As
  |                                | a result, implementers have to make reference to the
  |                                | relevant standard, such as the ISO 4217 standard for
  |                                | currency codes.
  | `cashSettlementReferenceBanks` | `Optional` `CashSettlementReferenceBanks`
  |                                | A container for a set of reference institutions.
  |                                | These reference institutions may be called upon to
  |                                | provide rate quotations as part of the method to
  |                                | determine the applicable cash settlement amount. If
  |                                | institutions are not specified, it is assumed that
  |                                | reference institutions will be agreed between the
  |                                | parties on the exercise date, or in the case of swap
  |                                | transaction to which mandatory early termination is
  |                                | applicable, the cash settlement valuation date.
  | `quotationRateType`            | `QuotationRateTypeEnum`
  |                                | Which rate quote is to be observed, either Bid, Mid,
  |                                | Offer or Exercising Party Pays. The meaning of
  |                                | Exercising Party Pays is defined in the 2000 ISDA
  |                                | Definitions, Section 17.2. Certain Definitions
  |                                | Relating to Cash Settlement, paragraph (j).

### `data` `CashSettlementPaymentDate`

  A class defining the cash settlement payment date(s)
  as either a set of explicit dates, together with
  applicable adjustments, or as a date relative to some
  other (anchor) date, or as any date in a range of
  contiguous business days.
* `CashSettlementPaymentDate`

  | Field               | Type/Description |
  | :------------------ | :----------------
  | `adjustableDates`   | `Optional` `AdjustableDates`
  |                     | A series of dates that shall be subject to adjustment
  |                     | if they would otherwise fall on a day that is not a
  |                     | business day in the specified business centers,
  |                     | together with the convention for adjusting the date.
  | `businessDateRange` | `Optional` `BusinessDateRange`
  |                     | A range of contiguous business days.
  | `id`                | `Optional` `Text`
  | `relativeDate`      | `Optional` `RelativeDateOffset`
  |                     | A date specified as some offset to another date (the
  |                     | anchor date).

### `data` `CashSettlementReferenceBanks`

  A class defining the list of reference institutions
  polled for relevant rates or prices when determining
  the cash settlement amount for a product where cash
  settlement is applicable.
* `CashSettlementReferenceBanks`

  | Field           | Type/Description |
  | :-------------- | :----------------
  | `referenceBank` | `[` `ReferenceBank` `]`
  |                 | An institution (party) identified by means of a
  |                 | coding scheme and an optional name.

### `data` `CashSettlementTerms`

  In FpML, PhysicalSettlementTerms and
  CashSettlementTerms extend SettlementTerms. In the
  CDM, this extension paradigm has not been used
  because SettlementTerms class has been used for
  purposes related to securities transactions, while it
  is not used as such in the FpML standard (i.e. only
  as an abstract construct.
* `CashSettlementTerms`

  | Field                        | Type/Description |
  | :--------------------------- | :----------------
  | `accruedInterest`            | `Optional` `Bool`
  |                              | Indicates whether accrued interest is included (true)
  |                              | or not (false). For cash settlement this specifies
  |                              | whether quotations should be obtained inclusive or
  |                              | not of accrued interest. For physical settlement this
  |                              | specifies whether the buyer should deliver the
  |                              | obligation with an outstanding principal balance that
  |                              | includes or excludes accrued interest. ISDA 2003
  |                              | Term: Include/Exclude Accrued Interest.
  | `cashSettlementAmount`       | `Optional` `Money`
  |                              | The amount paid by the seller to the buyer for cash
  |                              | settlement on the cash settlement date. If not
  |                              | otherwise specified, would typically be calculated as
  |                              | 100 (or the Reference Price) minus the price of the
  |                              | Reference Obligation (all expressed as a percentage)
  |                              | times Floating Rate Payer Calculation Amount. ISDA
  |                              | 2003 Term: Cash Settlement Amount.
  | `cashSettlementBusinessDays` | `Optional` `Int`
  |                              | The number of business days used in the determination
  |                              | of the cash settlement payment date. If a cash
  |                              | settlement amount is specified, the cash settlement
  |                              | payment date will be this number of business days
  |                              | following the calculation of the final price. If a
  |                              | cash settlement amount is not specified, the cash
  |                              | settlement payment date will be this number of
  |                              | business days after all conditions to settlement are
  |                              | satisfied. ISDA 2003 Term: Cash Settlement Date.
  | `dealer`                     | `Optional` `Text`
  |                              | A dealer from whom quotations are obtained by the
  |                              | calculation agent on the reference obligation for
  |                              | purposes of cash settlement. ISDA 2003 Term: Dealer.
  | `fixedSettlement`            | `Optional` `Bool`
  |                              | Used for Recovery Lock, to indicate whether fixed
  |                              | Settlement is Applicable or Not Applicable. If Buyer
  |                              | fails to deliver an effective Notice of Physical
  |                              | Settlement on or before the Buyer NOPS Cut-off Date,
  |                              | and if Seller fails to deliver an effective Seller
  |                              | NOPS on or before the Seller NOPS Cut-off Date, then
  |                              | either: (a) if Fixed Settlement is specified in the
  |                              | related Confirmation as not applicable, then the
  |                              | Seller NOPS Cut-off Date shall be the Termination
  |                              | Date; or (b) if Fixed Settlement is specified in the
  |                              | related Confirmation as applicable, then: (i) if the
  |                              | Fixed Settlement Amount is a positive number, Seller
  |                              | shall, subject to Section 3.1 (except for the
  |                              | requirement of satisfaction of the Notice of Physical
  |                              | Settlement Condition to Settlement), pay the Fixed
  |                              | Settlement Amount to Buyer on the Fixed Settlement
  |                              | Payment Date; and (ii) if the Fixed Settlement Amount
  |                              | is a negative number, Buyer shall, subject to Section
  |                              | 3.1 (except for the requirement of satisfaction of
  |                              | the Notice of Physical Settlement Condition to
  |                              | Settlement), pay the absolute value of the Fixed
  |                              | Settlement Amount to Seller on the Fixed Settlement
  |                              | Payment Date.
  | `id`                         | `Optional` `Text`
  | `minimumQuotationAmout`      | `Optional` `Money`
  |                              | In the determination of a cash settlement amount, if
  |                              | weighted average quotations are to be obtained, the
  |                              | minimum quotation amount specifies a minimum intended
  |                              | threshold amount of outstanding principal balance of
  |                              | the reference obligation for which the quote should
  |                              | be obtained. If not specified, the ISDA definitions
  |                              | provide for a fallback amount of the lower of either
  |                              | USD 1,000,000 (or its equivalent in the relevant
  |                              | obligation currency) or the quotation amount. ISDA
  |                              | 2003 Term: Minimum Quotation Amount.
  | `quotationAmount`            | `Optional` `Money`
  |                              | In the determination of a cash settlement amount, if
  |                              | weighted average quotations are to be obtained, the
  |                              | quotation amount specifies an upper limit to the
  |                              | outstanding principal balance of the reference
  |                              | obligation for which the quote should be obtained. If
  |                              | not specified, the ISDA definitions provide for a
  |                              | fallback amount equal to the floating rate payer
  |                              | calculation amount. ISDA 2003 Term: Quotation Amount.
  | `quotationMethod`            | `Optional` `QuotationRateTypeEnum`
  |                              | The type of price quotations to be requested from
  |                              | dealers when determining the market value of the
  |                              | reference obligation for purposes of cash settlement.
  |                              | For example, Bid, Offer or Mid-market. ISDA 2003
  |                              | Term: Quotation Method.
  | `recoveryFactor`             | `Optional` `Decimal`
  |                              | Used for fixed recovery, specifies the recovery
  |                              | level, determined at contract inception, to be
  |                              | applied on a default. Used to calculate the amount
  |                              | paid by the seller to the buyer for cash settlement
  |                              | on the cash settlement date. Amount calculation is (1
  |                              | minus the Recovery Factor) multiplied by the Floating
  |                              | Rate Payer Calculation Amount. The currency will be
  |                              | derived from the Floating Rate Payer Calculation
  |                              | Amount.
  | `settlementCurrency`         | `Optional` `(` `FieldWithMeta` `Text` `)`
  |                              | The settlement currency is to be specified when the
  |                              | Settlement Amount cannot be known in advance. The
  |                              | list of valid currencies is not presently positioned
  |                              | as an enumeration as part of the CDM because that
  |                              | scope is limited to the values specified by ISDA and
  |                              | FpML. As a result, implementers have to make
  |                              | reference to the relevant standard, such as the ISO
  |                              | 4217 standard for currency codes.
  | `valuationDate`              | `Optional` `ValuationDate`
  |                              | The number of business days after conditions to
  |                              | settlement have been satisfied when the calculation
  |                              | agent obtains a price quotation on the Reference
  |                              | Obligation for purposes of cash settlement. There may
  |                              | be one or more valuation dates. This is typically
  |                              | specified if the cash settlement amount is not a
  |                              | fixed amount. ISDA 2003 Term: Valuation Date.
  | `valuationMethod`            | `Optional` `ValuationMethodEnum`
  |                              | The ISDA defined methodology for determining the
  |                              | final price of the reference obligation for purposes
  |                              | of cash settlement. (ISDA 2003 Term: Valuation
  |                              | Method). For example, Market, Highest etc.
  | `valuationTime`              | `Optional` `BusinessCenterTime`
  |                              | The time of day in the specified business center when
  |                              | the calculation agent seeks quotations for an amount
  |                              | of the reference obligation for purposes of cash
  |                              | settlement. ISDA 2003 Term: Valuation Time.

### `data` `CashTransferBreakdown`

* `CashTransferBreakdown`

  | Field                 | Type/Description |
  | :-------------------- | :----------------
  | `amount`              | `Money`
  |                       | The currency amount of the payment.
  | `cashflowType`        | `Optional` `CashflowTypeEnum`
  |                       | The qualification of the type of cashflow, when not
  |                       | inferred from a derived through lineage e.g.
  |                       | brokerage fee, premium, upfront fee etc.
  | `identifier`          | `Optional` `(` `FieldWithMeta` `Text` `)`
  |                       | The identifier that can be associated with each of
  |                       | the transfer components
  | `lineage`             | `[` `Lineage` `]`
  |                       | The lineage into the transfer components that might
  |                       | be associated with each of the transfer components.
  | `payerReceiver`       | `PayerReceiver`
  |                       | The payer and receiver party information.
  | `transferCalculation` | `Optional` `TransferCalculation`
  |                       | The calculation details underlying the transfer
  |                       | amount, when applicable.

### `data` `CashTransferComponent`

* `CashTransferComponent`

  | Field                 | Type/Description |
  | :-------------------- | :----------------
  | `amount`              | `Money`
  |                       | The currency amount.
  | `breakdown`           | `[` `CashTransferBreakdown` `]`
  |                       | The cash transfer breakdown, when the transfer
  |                       | corresponds to a net amount across several components
  |                       | which breakdown is deemed relevant (e.g. the net cash
  |                       | transfer related to several contracts, or to the net
  |                       | proceeds across several payout components).
  | `cashflowType`        | `Optional` `CashflowTypeEnum`
  |                       | The qualification of the type of cashflow, when not
  |                       | inferred from a derived through lineage e.g.
  |                       | brokerage fee, premium, upfront fee etc.
  | `identifier`          | `Optional` `(` `FieldWithMeta` `Text` `)`
  |                       | The identifier that can be associated with each of
  |                       | the transfer components
  | `payerReceiver`       | `PayerReceiver`
  |                       | The payer and receiver party information.
  | `transferCalculation` | `Optional` `TransferCalculation`
  |                       | The calculation details underlying the transfer
  |                       | amount, when applicable.

### `data` `Cashflow`

  A class to specify a cashflow, i.e. the outcome of
  either of computation (e.g. interest accrual) or an
  assessment of some sort (e.g. a fee). The cashflow
  can then be turned into a cash transfer, artefact to
  be used as the input to a payment system or the
  outcome of it. The associated rosettaKey denotes the
  ability to associate a hash value to the Cashflow
  instantiations for the purpose of model
  cross-referencing, in support of functionality such
  as the event effect and the lineage.
* `Cashflow`

  | Field                 | Type/Description |
  | :-------------------- | :----------------
  | `cashflowAmount`      | `Money`
  |                       | The currency amount of the payment.
  | `cashflowCalculation` | `Optional` `Text`
  |                       | This is a conceptual placeholder for providing the
  |                       | breakdown into the cashflow calculation components,
  |                       | leveraging the fact that the CDM provides calculation
  |                       | components, starting with the FixedAmount and the
  |                       | FloatingAmount. Further evaluation of expected usage
  |                       | needs to take place to confirm and prioritize such
  |                       | implementation.
  | `cashflowDate`        | `Optional` `AdjustableOrAdjustedOrRelativeDate`
  | `cashflowType`        | `Optional` `CashflowTypeEnum`
  |                       | The qualification of the type of cashflow, e.g.
  |                       | brokerage fee, premium, upfront fee etc. Particularly
  |                       | relevant when it cannot be inferred directly through
  |                       | lineage.
  | `discountFactor`      | `Optional` `Decimal`
  |                       | The value representing the discount factor used to
  |                       | calculate the present value of the cashflow.
  | `id`                  | `Optional` `Text`
  | `payerReceiver`       | `PayerReceiver`
  | `paymentDiscounting`  | `Optional` `PaymentDiscounting`
  |                       | FpML specifies the FpML PaymentDiscounting.model
  |                       | group for representing the discounting elements that
  |                       | can be associated with a payment.
  | `premiumExpression`   | `Optional` `PremiumExpression`
  |                       | FpML specifies the Premium.model group for
  |                       | representing the option premium when expressed in a
  |                       | way other than an amount.
  | `presentValueAmount`  | `Optional` `Money`
  |                       | The amount representing the present value of the
  |                       | forecast payment.
  | `rosettaKey`          | `Text`

### `data` `CashflowRepresentation`

  A class defining the cashflow representation of a
  swap trade.
* `CashflowRepresentation`

  | Field                      | Type/Description |
  | :------------------------- | :----------------
  | `cashflowsMatchParameters` | `Bool`
  |                            | A true/false flag to indicate whether the cashflows
  |                            | match the parametric definition of the stream, i.e.
  |                            | whether the cashflows could be regenerated from the
  |                            | parameters without loss of information.
  | `paymentCalculationPeriod` | `[` `PaymentCalculationPeriod` `]`
  |                            | The adjusted payment date and associated calculation
  |                            | period parameters required to calculate the actual or
  |                            | projected payment amount. A list of payment
  |                            | calculation period elements may be ordered in the
  |                            | document by ascending adjusted payment date. An FpML
  |                            | document containing an unordered list of payment
  |                            | calculation periods is still regarded as a conformant
  |                            | document.
  | `principalExchange`        | `[` `PrincipalExchange` `]`
  |                            | The initial, intermediate and final principal
  |                            | exchange amounts. Typically required on cross
  |                            | currency interest rate swaps where actual exchanges
  |                            | of principal occur. A list of principal exchange
  |                            | elements may be ordered in the document by ascending
  |                            | adjusted principal exchange date. An FpML document
  |                            | containing an unordered principal exchange list is
  |                            | still regarded as a conformant document.

### `data` `ClosedState`

  A class to qualify the closed state of an execution
  or a contract through the combination or a state
  (e.g. terminated, novated) and a set of dates:
  activity date, effective date and, when relevant,
  last payment date.
* `ClosedState`

  | Field             | Type/Description |
  | :---------------- | :----------------
  | `activityDate`    | `Date`
  |                   | The activity date on which the closing state took
  |                   | place, i.e. either the event date of the closing
  |                   | event (e.g. option exercise, contract early
  |                   | termination) or the contractual termination date.
  | `effectiveDate`   | `Optional` `Date`
  |                   | The date on which the closing event contractually
  |                   | takes effect, when different from the activity date.
  |                   | When an explicit event effective date attribute is
  |                   | associated with the closing event, it will be that
  |                   | date. In the case of a cancellation event, it will be
  |                   | the date on which the cancelled event took place.
  | `lastPaymentDate` | `Optional` `Date`
  |                   | The date associated with the last payment in relation
  |                   | to the artefact (e.g. contract) to which this closed
  |                   | state applies. As an example, in the case of an early
  |                   | termination event, it would be the settlement date of
  |                   | the associated fee, if applicable.
  | `state`           | `ClosedStateEnum`
  |                   | The qualification of what gave way to the contract or
  |                   | execution closure, e.g. allocation, termination, ...

### `data` `Collateral`

  A type for defining the obligations of the
  counterparty subject to credit support requirements.
* `Collateral`

  | Field               | Type/Description |
  | :------------------ | :----------------
  | `independentAmount` | `IndependentAmount`
  |                     | Independent Amount is an amount that usually less
  |                     | creditworthy counterparties are asked to provide. It
  |                     | can either be a fixed amount or a percentage of the
  |                     | Transaction&#39;s value. The Independent Amount can
  |                     | be: (i) transferred before any trading between the
  |                     | parties occurs (as a deposit at a third party&#39;s
  |                     | account or with the counterparty) or (ii) callable
  |                     | after trading has occurred (typically because a
  |                     | downgrade has occurred). In situation (i), the
  |                     | Independent Amount is not included in the calculation
  |                     | of Exposure, but in situation (ii), it is included in
  |                     | the calculation of Exposure. Thus, for situation
  |                     | (ii), the Independent Amount may be transferred along
  |                     | with any collateral call. Independent Amount is a
  |                     | defined term in the ISDA Credit Support Annex.
  |                     | (&#39;with respect to a party, the amount specified
  |                     | as such for that party in Paragraph 13; if no amount
  |                     | is specified, zero&#39;).

### `data` `CollateralRounding`

  A class to specify the rounding methodology
  applicable to the Delivery Amount and the Return
  Amount in terms of nearest integral multiple of Base
  Currency units. ISDA 2016 Credit Support Annex for
  Initial Margin, paragraph 13, General Principles,
  (c)(vi)(C): Rounding.
* `CollateralRounding`

  | Field            | Type/Description |
  | :--------------- | :----------------
  | `deliveryAmount` | `Decimal`
  |                  | The rounding methodology applicable to the Delivery
  |                  | Amount in terms of nearest integral multiple of Base
  |                  | Currency units.
  | `returnAmount`   | `Decimal`
  |                  | The rounding methodology applicable to the Return
  |                  | Amount in terms of nearest integral multiple of Base
  |                  | Currency units.

### `data` `Commodity`

  A class to specify a commodity asset.
* `Commodity`

  (no fields)

### `data` `CommoditySet`

* `CommoditySet`

  | Field       | Type/Description |
  | :---------- | :----------------
  | `commodity` | `Commodity`
  | `quantity`  | `Decimal`
  | `timeUnit`  | `Optional` `TimeUnitEnum`
  | `unit`      | `UnitEnum`
  |             | The unit of measure, applicable to physical assets.

### `data` `CommodityTransferBreakdown`

* `CommodityTransferBreakdown`

  | Field                  | Type/Description |
  | :--------------------- | :----------------
  | `commodity`            | `Commodity`
  | `identifier`           | `Optional` `(` `FieldWithMeta` `Text` `)`
  |                        | The identifier that can be associated with each of
  |                        | the transfer components
  | `lineage`              | `[` `Lineage` `]`
  |                        | The lineage into the transfer components that might
  |                        | be associated with each of the transfer components.
  | `quantity`             | `Decimal`
  | `timeUnit`             | `Optional` `TimeUnitEnum`
  | `transferCalculation`  | `Optional` `TransferCalculation`
  |                        | The calculation details underlying the transfer
  |                        | amount, when applicable.
  | `transferorTransferee` | `TransferorTransferee`
  |                        | The transferee and transferor party information.
  | `unit`                 | `UnitEnum`
  |                        | The unit of measure, applicable to physical assets.

### `data` `CommodityTransferComponent`

* `CommodityTransferComponent`

  | Field                  | Type/Description |
  | :--------------------- | :----------------
  | `assetTransferType`    | `Optional` `AssetTransferTypeEnum`
  |                        | The type of transfer, e.g. Free of Payment.
  | `breakdown`            | `[` `CommodityTransferBreakdown` `]`
  |                        | The security transfer breakdown, when the transfer
  |                        | corresponds to a net transfer across several
  |                        | components which breakdown is deemed relevant (e.g.
  |                        | the net security transfer related to several
  |                        | contracts).
  | `commodity`            | `Commodity`
  | `identifier`           | `Optional` `(` `FieldWithMeta` `Text` `)`
  |                        | The identifier that can be associated with each of
  |                        | the transfer components
  | `quantity`             | `Decimal`
  | `timeUnit`             | `Optional` `TimeUnitEnum`
  | `transferCalculation`  | `Optional` `TransferCalculation`
  |                        | The calculation details underlying the transfer
  |                        | amount, when applicable.
  | `transferorTransferee` | `TransferorTransferee`
  |                        | The transferee and transferor party information.
  | `unit`                 | `UnitEnum`
  |                        | The unit of measure, applicable to physical assets.

### `data` `Composite`

  Specifies the conditions to be applied for converting
  into a reference currency when the actual currency
  rate is not determined upfront.
* `Composite`

  | Field                 | Type/Description |
  | :-------------------- | :----------------
  | `determinationMethod` | `Optional` `DeterminationMethodEnum`
  |                       | Specifies the method according to which an amount or
  |                       | a date is determined.
  | `fxSpotRateSource`    | `Optional` `FxSpotRateSource`
  |                       | Specifies the methodology (reference source and,
  |                       | optionally, fixing time) to be used for determining a
  |                       | currency conversion rate.
  | `relativeDate`        | `Optional` `RelativeDateOffset`
  |                       | A date specified as some offset to another date (the
  |                       | anchor date).

### `data` `ComputedAmount`

  A class to specify the outcome of a computed amount,
  for testing purposes.
* `ComputedAmount`

  | Field          | Type/Description |
  | :------------- | :----------------
  | `amount`       | `Decimal`
  | `callFunction` | `Text`
  | `currency`     | `Optional` `(` `FieldWithMeta` `Text` `)`
  |                | The currency in which the computed amount is
  |                | denominated. The list of valid currencies is not
  |                | presently positioned as an enumeration as part of the
  |                | CDM because that scope is limited to the values
  |                | specified by ISDA and FpML. As a result, implementers
  |                | have to make reference to the relevant standard, such
  |                | as the ISO 4217 standard for currency codes.

### `data` `ConstituentWeight`

  A class describing the weight of each of the
  underlier constituent within the basket, either in
  absolute or relative terms.
* `ConstituentWeight`

  | Field              | Type/Description |
  | :----------------- | :----------------
  | `basketPercentage` | `Optional` `Decimal`
  |                    | The relative weight of each respective basket
  |                    | constituent, expressed in percentage. A basket
  |                    | percentage of 5% would be represented as 0.05.
  | `openUnits`        | `Optional` `Decimal`
  |                    | The number of units (index or securities) that
  |                    | constitute the underlier of the swap. In the case of
  |                    | a basket swap, this element is used to reference both
  |                    | the number of basket units, and the number of each
  |                    | asset components of the basket when these are
  |                    | expressed in absolute terms.

### `data` `Contract`

  A class to specify a financial contract object, which
  can be invoked either within the context of an event,
  or independently from it. It corresponds to the FpML
  Trade in the Confirmation view (while the CDM
  Execution class corresponds to the FpML trade in the
  Pre-Trade view). The associated rosettaKey denotes
  the ability to associate a hash value to the Contract
  instantiations for the purpose of model
  cross-referencing, in support of functionality such
  as the event effect and the lineage.
* `Contract`

  | Field                      | Type/Description |
  | :------------------------- | :----------------
  | `account`                  | `[` `Account` `]`
  |                            | Optional account information.
  | `calculationAgent`         | `Optional` `CalculationAgent`
  |                            | The ISDA calculation agent responsible for performing
  |                            | duties as defined in the applicable product
  |                            | definitions.
  | `clearedDate`              | `Optional` `Date`
  |                            | If the trade was cleared (novated) through a central
  |                            | counterparty clearing service, this represents the
  |                            | date the trade was cleared (transferred to the
  |                            | central counterparty).
  | `closedState`              | `Optional` `ClosedState`
  |                            | The qualification of what led to the contract closure
  |                            | alongside with the dates on which this closure took
  |                            | effect.
  | `collateral`               | `Optional` `Collateral`
  |                            | Defines the collateral obligations of a party.
  | `contractIdentifier`       | `[` `Identifier` `]`
  |                            | The identifier(s) that uniquely identify a contract,
  |                            | and which can be qualified by referencing or defining
  |                            | the issuer(s) of such identifier(s). There can be
  |                            | several contract identifier, an example of such being
  |                            | a contract is reportable to both the CFTC and ESMA
  |                            | and then has an associated USI (Unique Swap
  |                            | Identifier) UTI (Unique Trade Identifier).
  | `contractualProduct`       | `ContractualProduct`
  |                            | The contractual product information that is
  |                            | associated with the contract, which combines the
  |                            | economic terms, the product identification and the
  |                            | product taxonomy. The corresponding FpML construct is
  |                            | the product abstract element and the associated
  |                            | substitution group.
  | `documentation`            | `Optional` `Documentation`
  |                            | Defines the definitions that govern the document and
  |                            | should include the year and type of definitions
  |                            | referenced, along with any relevant documentation
  |                            | (such as master agreement) and the date it was
  |                            | signed.
  | `governingLaw`             | `Optional` `(` `FieldWithMeta` `GoverningLawEnum` `)`
  |                            | Identification of the law governing the contract.
  | `id`                       | `Optional` `Text`
  | `party`                    | `[` `Party` `]`
  |                            | The parties to the contract. The cardinality is
  |                            | optional to address the case where the contract
  |                            | object is part of an event record, in which case the
  |                            | party is specified as part of that object. In that
  |                            | respect, the CDM approach is distinct from FpML,
  |                            | where party information is specified as part of a
  |                            | wrapper alongside the trade object.
  | `partyContractInformation` | `[` `PartyContractInformation` `]`
  |                            | Additional contract information that may be provided
  |                            | by each involved party.
  | `partyRole`                | `[` `PartyRole` `]`
  |                            | The role(s) that party(ies) may have in relation to
  |                            | the contract, further to the principal parties (i.e
  |                            | payer/receive or buyer/seller) to it.
  | `rosettaKey`               | `Text`
  | `tradeDate`                | `TradeDate`
  |                            | The date on which the contract has been executed.

### `data` `ContractState`

  A class to specify a contract instantiation with
  respect to the before and/or after state of lifecycle
  events.
* `ContractState`

  | Field      | Type/Description |
  | :--------- | :----------------
  | `contract` | `Contract`

### `data` `ContractualMatrix`

* `ContractualMatrix`

  | Field             | Type/Description |
  | :---------------- | :----------------
  | `matrixTerm`      | `Optional` `(` `FieldWithMeta` `MatrixTermEnum` `)`
  |                   | Defines any applicable key into the relevant matrix.
  |                   | For example, the Transaction Type would be the single
  |                   | term required for the Credit Derivatives Physical
  |                   | Settlement Matrix. This element should be omitted in
  |                   | the case of the 2000 ISDA Definitions Settlement
  |                   | Matrix for Early Termination and Swaptions.
  | `matrixType`      | `FieldWithMeta` `MatrixTypeEnum`
  |                   | Identifies the form of applicable matrix.
  | `publicationDate` | `Optional` `Date`
  |                   | Specifies the publication date of the applicable
  |                   | version of the matrix. When this element is omitted,
  |                   | the ISDA supplemental language for incorporation of
  |                   | the relevant matrix will generally define rules for
  |                   | which version of the matrix is applicable.

### `data` `ContractualProduct`

  A class to specify the contractual products&#39;
  economic terms, alongside their product
  identification and product taxonomy. The contractual
  product class is meant to be used across the
  pre-execution, execution and (as part of the
  Contract) post-execution lifecycle contexts.
* `ContractualProduct`

  | Field                   | Type/Description |
  | :---------------------- | :----------------
  | `economicTerms`         | `EconomicTerms`
  |                         | The economic terms associated with a contractual
  |                         | product, i.e. the set of features that are
  |                         | price-forming.
  | `productIdentification` | `Optional` `ProductIdentification`
  |                         | The product identification value(s) that might be
  |                         | associated with a contractual product. The CDM
  |                         | provides the ability to associate several product
  |                         | identification methods with a product.
  | `productTaxonomy`       | `[` `ProductTaxonomy` `]`
  |                         | The product taxonomy value(s) associated with a
  |                         | contractual product.

### `data` `ContractualQuantity`

  A class to specify the quantity or notional amount
  that is associated with a contractual product and
  that is the base for the payout calculation. The
  quantity attribute applies to products relating to
  securities or tangible assets (such as equities or
  commodities), while the notional amount applies to
  products pertaining to interest rate, FX or credit
  products.
* `ContractualQuantity`

  | Field                 | Type/Description |
  | :-------------------- | :----------------
  | `futureValueNotional` | `Optional` `FutureValueAmount`
  |                       | The future value notional is specific to BRL CDI
  |                       | swaps, and is specified alongside the notional
  |                       | amount. The value is calculated as follows: Future
  |                       | Value Notional = Notional Amount * (1 + Fixed Rate) ^
  |                       | (Fixed Rate Day Count Fraction). The currency should
  |                       | always match that expressed in the notional schedule.
  |                       | The value date should match the adjusted termination
  |                       | date.
  | `fxLinkedNotional`    | `Optional` `FxLinkedNotionalSchedule`
  |                       | The contractual quantity when specified as a notional
  |                       | amount which value is a function of FX parameters.
  | `notionalAdjustments` | `Optional` `NotionalAdjustmentEnum`
  |                       | This attribute specifies the conditions that govern
  |                       | the adjustment to the number of units of the return
  |                       | swap, e.g. execution, portfolio rebalancing. It is
  |                       | typically used in the context of equity swaps.
  | `notionalAmount`      | `Optional` `(` `ReferenceWithMeta` `Money` `)`
  |                       | The contractual quantity when specified as an amount
  |                       | and a currency units without associated schedule or
  |                       | FX terms. When applied to Credit default Swaps, this
  |                       | is the notional amount of protection coverage. ISDA
  |                       | 2003 Term: Floating Rate Payer Calculation Amount.
  | `notionalReset`       | `Optional` `Bool`
  |                       | TThe purpose of this indicator is to specify whether
  |                       | the notional reset is applicable (true) or not
  |                       | applicable (false). It is typically used in the
  |                       | context of equity swaps. 2018 ISDA CDM Equity
  |                       | Confirmation for Security Equity Swap: Equity
  |                       | Notional Reset.
  | `notionalSchedule`    | `Optional` `NotionalSchedule`
  |                       | The contractual quantity when specified as a notional
  |                       | amount with an associated schedule, as used in the
  |                       | case of an amortizing swap where the notional amount
  |                       | decreases over time.
  | `quantity`            | `Optional` `Quantity`
  |                       | The contractual quantity when specified as an
  |                       | amount/number of securities or tangible assets. The
  |                       | quantity attribute is typical used in the equity and
  |                       | commodity asset classes.

### `data` `ContractualTermsSupplement`

  A contractual supplement (such as those published by
  ISDA) and its publication date that will apply to the
  trade.
* `ContractualTermsSupplement`

  | Field             | Type/Description |
  | :---------------- | :----------------
  | `publicationDate` | `Optional` `Date`
  |                   | Specifies the publication date of the applicable
  |                   | version of the contractual supplement.
  | `_type`           | `FieldWithMeta` `ContractualSupplementEnum`
  |                   | Identifies the form of applicable contractual
  |                   | supplement.

### `data` `ConvertibleBond`

  A class to specify a convertible bond as having a
  product identifier. As a difference versus the FpML
  standard, the CDM structure of this class only
  includes the productIdentifier class, which consists
  of an identifier, productTaxonomy, and source of the
  identifier. The reason for this approach is to avoid
  the potential for conflicting information between the
  information associated with the contractual product
  and the reference information maintained by the
  relevant service provider.
* `ConvertibleBond`

  | Field               | Type/Description |
  | :------------------ | :----------------
  | `productIdentifier` | `ProductIdentifier`

### `data` `CreditDefaultPayout`

  The credit default payout specification provides the
  details necessary for determining when a credit
  payout will be triggered as well as the parameters
  for calculating the payout and the settlement terms.
  The associated rosettaKey denotes the ability to
  associate a hash value to the CreditDefaultPayout
  instantiations for the purpose of model
  cross-referencing, in support of functionality such
  as the event effect and the lineage.
* `CreditDefaultPayout`

  | Field                     | Type/Description |
  | :------------------------ | :----------------
  | `cashSettlementTerms`     | `[` `CashSettlementTerms` `]`
  |                           | Specifies the terms applicable to the cash settlement
  |                           | of a credit event.
  | `generalTerms`            | `GeneralTerms`
  |                           | The specification of the non-monetary terms for the
  |                           | Credit Derivative Transaction, including the buyer
  |                           | and seller and selected items from the ISDA 2014
  |                           | Credit Definition article II, such as the reference
  |                           | obligation and related terms.
  | `id`                      | `Optional` `Text`
  | `physicalSettlementTerms` | `[` `PhysicalSettlementTerms` `]`
  |                           | Specifies the terms applicable to the physical
  |                           | settlement of a credit event.
  | `protectionTerms`         | `[` `ProtectionTerms` `]`
  |                           | Specifies the terms for calculating a payout to
  |                           | protect the buyer of the swap in the case of a
  |                           | qualified credit event.  These terms include the
  |                           | notional amount, the applicable credit events, the
  |                           | reference obligation, and in the case of a CDS on
  |                           | mortgage-backed securities, the floatingAmountEvents.
  | `rosettaKey`              | `Text`
  | `transactedPrice`         | `Optional` `TransactedPrice`
  |                           | The qualification of the price at which the contract
  |                           | has been transacted, in terms of market fixed rate,
  |                           | initial points, market price and/or quotation style.
  |                           | In FpML, those attributes are positioned as part of
  |                           | the fee leg.

### `data` `CreditEventNotice`

* `CreditEventNotice`

  | Field                          | Type/Description |
  | :----------------------------- | :----------------
  | `businessCenter`               | `Optional` `BusinessCenterEnum`
  |                                | Inclusion of this business center element implies
  |                                | that Greenwich Mean Time in Section 3.3 of the 2003
  |                                | ISDA Credit Derivatives Definitions is replaced by
  |                                | the local time of the city indicated by the
  |                                | businessCenter element value.
  | `notifyingParty`               | `NotifyingParty`
  |                                | The notifying party is the party that notifies the
  |                                | other party when a credit event has occurred by means
  |                                | of a credit event notice. If more than one party is
  |                                | referenced as being the notifying party then either
  |                                | party may notify the other of a credit event
  |                                | occurring. ISDA 2003 Term: Notifying Party.
  | `publiclyAvailableInformation` | `Optional` `PubliclyAvailableInformation`
  |                                | A specified condition to settlement. Publicly
  |                                | available information means information that
  |                                | reasonably confirms any of the facts relevant to
  |                                | determining that a credit event or potential
  |                                | repudiation/moratorium, as applicable, has occurred.
  |                                | The ISDA defined list (2003) is the market standard
  |                                | and is considered comprehensive, and a minimum of two
  |                                | differing public sources must have published the
  |                                | relevant information, to declare a Credit Event. ISDA
  |                                | 2003 Term: Notice of Publicly Available Information
  |                                | Applicable.

### `data` `CreditEvents`

  A class to specify the applicable Credit Events that
  would trigger a settlement, as specified in the
  related Confirmation and defined in the ISDA 2014
  Credit Definition article IV section 4.1.
* `CreditEvents`

  | Field                        | Type/Description |
  | :--------------------------- | :----------------
  | `bankruptcy`                 | `Optional` `Bool`
  |                              | A credit event. The reference entity has been
  |                              | dissolved or has become insolvent. It also covers
  |                              | events that may be a precursor to insolvency such as
  |                              | instigation of bankruptcy or insolvency proceedings.
  |                              | Sovereign trades are not subject to Bankruptcy as
  |                              | &#39;technically&#39; a Sovereign cannot become
  |                              | bankrupt. ISDA 2003 Term: Bankruptcy.
  | `creditEventNotice`          | `Optional` `CreditEventNotice`
  |                              | A specified condition to settlement. An irrevocable
  |                              | written or verbal notice that describes a credit
  |                              | event that has occurred. The notice is sent from the
  |                              | notifying party (either the buyer or the seller) to
  |                              | the counterparty. It provides information relevant to
  |                              | determining that a credit event has occurred. This is
  |                              | typically accompanied by Publicly Available
  |                              | Information. ISDA 2003 Term: Credit Event Notice.
  | `defaultRequirement`         | `Optional` `Money`
  |                              | In relation to certain credit events, serves as a
  |                              | threshold for Obligation Acceleration, Obligation
  |                              | Default, Repudiation/Moratorium and Restructuring.
  |                              | Market standard is USD 10,000,000 (JPY 1,000,000,000
  |                              | for all Japanese Yen trades). This is applied on an
  |                              | aggregate or total basis across all Obligations of
  |                              | the Reference Entity. Used to prevent
  |                              | technical/operational errors from triggering credit
  |                              | events. ISDA 2003 Term: Default Requirement.
  | `distressedRatingsDowngrade` | `Optional` `Bool`
  |                              | A credit event. Results from the fact that the rating
  |                              | of the reference obligation is down-graded to a
  |                              | distressed rating level. From a usage standpoint,
  |                              | this credit event is typically not applicable in case
  |                              | of RMBS trades.
  | `failureToPay`               | `Optional` `FailureToPay`
  |                              | A credit event. This credit event triggers, after the
  |                              | expiration of any applicable grace period, if the
  |                              | reference entity fails to make due payments in an
  |                              | aggregate amount of not less than the payment
  |                              | requirement on one or more obligations (e.g. a missed
  |                              | coupon payment). ISDA 2003 Term: Failure to Pay.
  | `failureToPayInterest`       | `Optional` `Bool`
  |                              | A credit event. Corresponds to the failure by the
  |                              | Reference Entity to pay an expected interest amount
  |                              | or the payment of an actual interest amount that is
  |                              | less than the expected interest amount. ISDA 2003
  |                              | Term: Failure to Pay Interest.
  | `failureToPayPrincipal`      | `Optional` `Bool`
  |                              | A credit event. Corresponds to the failure by the
  |                              | Reference Entity to pay an expected principal amount
  |                              | or the payment of an actual principal amount that is
  |                              | less than the expected principal amount. ISDA 2003
  |                              | Term: Failure to Pay Principal.
  | `governmentalIntervention`   | `Optional` `Bool`
  |                              | A credit event. A governmental intervention is an
  |                              | event resulting from an action by a governmental
  |                              | authority that materially impacts the reference
  |                              | entity&#39;s obligations, such as an interest rate
  |                              | reduction, principal reduction, deferral of interest
  |                              | or principal, change in priority ranking, or change
  |                              | in currency or composition of payment. ISDA 2014
  |                              | Term: Governmental Intervention.
  | `id`                         | `Optional` `Text`
  | `impliedWritedown`           | `Optional` `Bool`
  |                              | A credit event. Results from the fact that losses
  |                              | occur to the underlying instruments that do not
  |                              | result in reductions of the outstanding principal of
  |                              | the reference obligation.
  | `maturityExtension`          | `Optional` `Bool`
  |                              | A credit event. Results from the fact that the
  |                              | underlier fails to make principal payments as
  |                              | expected.
  | `obligationAcceleration`     | `Optional` `Bool`
  |                              | A credit event. One or more of the obligations have
  |                              | been declared due and payable before they would
  |                              | otherwise have been due and payable as a result of,
  |                              | or on the basis of, the occurrence of a default,
  |                              | event of default or other similar condition or event
  |                              | other than failure to pay (preferred by the market
  |                              | over Obligation Default, because more definitive and
  |                              | encompasses the definition of Obligation Default -
  |                              | this is more favorable to the Seller). Subject to the
  |                              | default requirement amount. ISDA 2003 Term:
  |                              | Obligation Acceleration.
  | `obligationDefault`          | `Optional` `Bool`
  |                              | A credit event. One or more of the obligations have
  |                              | become capable of being declared due and payable
  |                              | before they would otherwise have been due and payable
  |                              | as a result of, or on the basis of, the occurrence of
  |                              | a default, event of default or other similar
  |                              | condition or event other than failure to pay. ISDA
  |                              | 2003 Term: Obligation Default.
  | `repudiationMoratorium`      | `Optional` `Bool`
  |                              | A credit event. The reference entity, or a
  |                              | governmental authority, either refuses to recognise
  |                              | or challenges the validity of one or more obligations
  |                              | of the reference entity, or imposes a moratorium
  |                              | thereby postponing payments on one or more of the
  |                              | obligations of the reference entity. Subject to the
  |                              | default requirement amount. ISDA 2003 Term:
  |                              | Repudiation/Moratorium.
  | `restructuring`              | `Optional` `Restructuring`
  |                              | A credit event. A restructuring is an event that
  |                              | materially impacts the reference entity&#39;s
  |                              | obligations, such as an interest rate reduction,
  |                              | principal reduction, deferral of interest or
  |                              | principal, change in priority ranking, or change in
  |                              | currency or composition of payment. ISDA 2003 Term:
  |                              | Restructuring.
  | `writedown`                  | `Optional` `Bool`
  |                              | A credit event. Results from the fact that the
  |                              | underlier writes down its outstanding principal
  |                              | amount.

### `data` `CreditLimit`

  A class to specify the credit limit, to be used in
  the context of the clearing workflow.
* `CreditLimit`

  | Field                | Type/Description |
  | :------------------- | :----------------
  | `applicableProduct`  | `Optional` `ProductIdentification`
  |                      | Further to the FpML standard, the CDM
  |                      | ProductIdentification provides the ability to
  |                      | associate a CDM qualified product.
  | `currency`           | `Optional` `(` `FieldWithMeta` `Text` `)`
  |                      | The currency in which the credit limit is
  |                      | denominated. The list of valid currencies is not
  |                      | presently positioned as an enumeration as part of the
  |                      | CDM because that scope is limited to the values
  |                      | specified by ISDA and FpML. As a result, implementers
  |                      | have to make reference to the relevant standard, such
  |                      | as the ISO 4217 standard for currency codes.
  | `expirationDateTime` | `Optional` `BusinessCenterTime`
  |                      | The CDM naming include the time suffix because the
  |                      | FpML element is actually of type dateTime. Also, the
  |                      | attribute is of type BusinessCenterTime because of
  |                      | the design decision to only have time that are
  |                      | specified by reference to a timezone, with that class
  |                      | being deemed the proper implementation.
  | `limitApplicable`    | `[` `LimitApplicable` `]`
  | `limitId`            | `Optional` `(` `FieldWithMeta` `Text` `)`
  | `tenor`              | `Optional` `Period`
  |                      | The maximum allowed tenor for a trade under this
  |                      | limit. When this structure is used as part of a
  |                      | suspendCredit message, this tenor imposes a temporary
  |                      | tenor limit on allowed trade types.

### `data` `CreditLimitInformation`

  A class to represent the credit limit utilisation
  information.
* `CreditLimitInformation`

  | Field             | Type/Description |
  | :---------------- | :----------------
  | `limitApplicable` | `[` `LimitApplicableExtended` `]`

### `data` `CreditLimitUtilisation`

  Credit limit utilisation breakdown by executed trades
  and pending orders.
* `CreditLimitUtilisation`

  | Field      | Type/Description |
  | :--------- | :----------------
  | `executed` | `Optional` `CreditLimitUtilisationPosition`
  |            | Credit limit utilisation attributable to executed
  |            | trades.
  | `pending`  | `Optional` `CreditLimitUtilisationPosition`
  |            | Credit limit utilisation attributable to pending
  |            | unexecuted orders.

### `data` `CreditLimitUtilisationPosition`

* `CreditLimitUtilisationPosition`

  | Field           | Type/Description |
  | :-------------- | :----------------
  | `global`        | `Optional` `Decimal`
  |                 | Global credit limit utilisation amount, agnostic of
  |                 | long/short position direction.
  | `longPosition`  | `Optional` `Decimal`
  |                 | Credit limit utilisation attributable to long
  |                 | positions.
  | `shortPosition` | `Optional` `Decimal`
  |                 | Credit limit utilisation attributable to short
  |                 | positions.

### `data` `CreditNotation`

  A class to specify the credit notation as the
  combination of agency, notation, scale and debt type
  qualifications.
* `CreditNotation`

  | Field      | Type/Description |
  | :--------- | :----------------
  | `agency`   | `FieldWithMeta` `CreditRatingAgencyEnum`
  |            | The credit agency to which the other variables
  |            | (notation, scale, debt type) refer to.
  | `debt`     | `Optional` `CreditRatingDebt`
  |            | The credit rating debt type (e.g. long term, high
  |            | yield, deposits, ...) associated with the credit
  |            | rating notation and scale.
  | `notation` | `FieldWithMeta` `Text`
  |            | The credit rating notation. As it varies among credit
  |            | rating agencies, FpML doesn&#39;t specify a default
  |            | scheme.
  | `scale`    | `Optional` `(` `FieldWithMeta` `Text` `)`
  |            | The credit rating scale, with a typical distinction
  |            | between short term, long term. FpML doesn&#39;t
  |            | specify a default scheme, which is hence not
  |            | specified as an enumeration as part of the CDM.

### `data` `CreditNotations`

  The credit rating notation higher level construct,
  which provides the ability to specify multiple rating
  notations.
* `CreditNotations`

  | Field             | Type/Description |
  | :---------------- | :----------------
  | `creditNotation`  | `CreditNotation`
  |                   | This attribute is specified when only one credit
  |                   | notation is determined.
  | `creditNotations` | `[` `MultipleCreditNotations` `]`
  |                   | This attribute provides the ability to specify
  |                   | several credit notations, alongside an &#39;any&#39;
  |                   | or &#39;all&#39; or all condition.

### `data` `CreditRatingDebt`

  The credit rating debt type(s) associated with the
  credit rating notation and scale. When several debt
  types are specified, they must be qualified through
  an &#39;any&#39; or &#39;all&#39;.
* `CreditRatingDebt`

  | Field       | Type/Description |
  | :---------- | :----------------
  | `debtType`  | `Optional` `(` `FieldWithMeta` `Text` `)`
  |             | This attribute is to be specified when only one debt
  |             | type is specified. FpML doesn&#39;t specify values in
  |             | relation to the associated scheme, which is hence not
  |             | specified as an enumeration as part of the CDM.
  | `debtTypes` | `Optional` `MultipleDebtTypes`
  |             | This attribute provides the ability to specify
  |             | several debt types, alongside an &#39;any&#39; or
  |             | &#39;all&#39; or all condition. As an example, Baa1
  |             | rating is required for any long term debt and
  |             | deposit.

### `data` `CreditSupportAgreement`

  The agreement executed between the parties and
  intended to govern collateral arrangement for all OTC
  derivatives transactions between those parties.
* `CreditSupportAgreement`

  | Field             | Type/Description |
  | :---------------- | :----------------
  | `date`            | `Date`
  |                   | The date of the agreement executed between the
  |                   | parties and intended to govern collateral
  |                   | arrangements for all OTC derivatives transactions
  |                   | between those parties.
  | `identifierValue` | `Optional` `Text`
  |                   | An identifier used to uniquely identify the CSA. FpML
  |                   | specifies the type as creditSupportAgreementIdScheme,
  |                   | but without proposing any value.  As far as e
  |                   | understand, no scheme has yet been developed at this
  |                   | point.
  | `_type`           | `FieldWithMeta` `CreditSupportAgreementTypeEnum`
  |                   | The type of ISDA Credit Support Agreement.

### `data` `CrossCurrencyMethod`

  A class to represent the cash settlement method
  defined in the 2006 ISDA Definitions, Section 18.3.
  Cash Settlement Methods, paragraph (g) (published in
  Supplement number 28).
* `CrossCurrencyMethod`

  | Field                          | Type/Description |
  | :----------------------------- | :----------------
  | `cashSettlementCurrency`       | `[` `FieldWithMeta` `Text` `]`
  |                                | The currency, or currencies, in which the cash
  |                                | settlement amount(s) will be calculated and settled.
  |                                | While the order in which the currencies are stated is
  |                                | unimportant, the cash settlement currency or
  |                                | currencies must correspond to one or both of the
  |                                | constituent currencies of the swap transaction. The
  |                                | list of valid currencies is not presently positioned
  |                                | as an enumeration as part of the CDM because that
  |                                | scope is limited to the values specified by ISDA and
  |                                | FpML. As a result, implementers have to make
  |                                | reference to the relevant standard, such as the ISO
  |                                | 4217 standard for currency codes.
  | `cashSettlementReferenceBanks` | `[` `CashSettlementReferenceBanks` `]`
  |                                | A container for a set of institutions that may be
  |                                | called upon to provide rate quotations as part of the
  |                                | method to determine the applicable cash settlement
  |                                | amount. If institutions are not specified, it is
  |                                | assumed that reference institutions will be agreed
  |                                | between the parties on the exercise date, or in the
  |                                | case of swap transaction to which mandatory early
  |                                | termination is applicable, the cash settlement
  |                                | valuation date.
  | `quotationRateType`            | `QuotationRateTypeEnum`
  |                                | Which rate quote is to be observed, either Bid, Mid,
  |                                | Offer or Exercising Party Pays. The meaning of
  |                                | Exercising Party Pays is defined in the 2000 ISDA
  |                                | Definitions, Section 17.2. Certain Definitions
  |                                | Relating to Cash Settlement, paragraph (j).

### `data` `CrossCurrencyTerms`

* `CrossCurrencyTerms`

  | Field                 | Type/Description |
  | :-------------------- | :----------------
  | `principalExchanges`  | `Optional` `PrincipalExchanges`
  | `settlementProvision` | `Optional` `SettlementProvision`

### `data` `CrossRate`

  A type that is used for including the currency
  exchange rates used to cross between the traded
  currencies for non-base currency FX contracts.
* `CrossRate`

  | Field           | Type/Description |
  | :-------------- | :----------------
  | `currency1`     | `FieldWithMeta` `Text`
  |                 | The first currency specified when a pair of
  |                 | currencies is to be evaluated.
  | `currency2`     | `FieldWithMeta` `Text`
  |                 | The second currency specified when a pair of
  |                 | currencies is to be evaluated.
  | `forwardPoints` | `Optional` `Decimal`
  |                 | An optional element used for deals consummated in the
  |                 | FX Forwards market. Forward points represent the
  |                 | interest rate differential between the two currencies
  |                 | traded and are quoted as a premium or a discount.
  |                 | Forward points are added to, or subtracted from, the
  |                 | spot rate to create the rate of the forward trade.
  | `quoteBasis`    | `QuoteBasisEnum`
  |                 | The method by which the exchange rate is quoted.
  | `rate`          | `Decimal`
  |                 | The exchange rate used to cross between the traded
  |                 | currencies.
  | `spotRate`      | `Optional` `Decimal`
  |                 | An optional element used for FX forwards and certain
  |                 | types of FX OTC options. For deals consummated in the
  |                 | FX Forwards Market, this represents the current
  |                 | market rate for a particular currency pair.

### `data` `CsaInitialMargin2016`

  An abstract class to specify the provisions for the
  2016 ISDA Credit Support Annex for Initial Margin
  that are common among the corresponding governing
  laws.
* `CsaInitialMargin2016`

  | Field                       | Type/Description |
  | :-------------------------- | :----------------
  | `additionalObligations`     | `Optional` `Text`
  |                             | The additional obligations as specified in the ISDA
  |                             | 2016 Credit Support Annex for Initial Margin,
  |                             | paragraph 13, General Principles, (b)(ii).
  | `baseCurrency`              | `FieldWithMeta` `Text`
  |                             | The base currency as specified by the ISDA 2016 CSA
  |                             | for Initial Margin, Paragraph 13 (a). The list of
  |                             | valid currencies is not presently positioned as an
  |                             | enumeration as part of the CDM because that scope is
  |                             | limited to the values specified by ISDA and FpML. As
  |                             | a result, implementers have to make reference to the
  |                             | relevant standard, such as the ISO 4217 standard for
  |                             | currency codes.
  | `calculationDateLocation`   | `CalculationDateLocation`
  |                             | The specified location where the credit exposure will
  |                             | be calculated by the respective parties.
  | `conditionPrecedent`        | `Optional` `Text`
  |                             | When specified, this attribute overwrites the default
  |                             | Condition Precedent provision as specified in ISDA
  |                             | 2016 Credit Support Annex for Initial Margin,
  |                             | paragraph 4, (a).
  | `method`                    | `Method`
  |                             | The specification of the ISDA SIMM Method as
  |                             | specified by ISDA CSA for Initial Margin, Paragraph
  |                             | 13, General Principles (ee).
  | `minimumTransferAmount`     | `MinimumTransferAmount`
  |                             | The amount above which collateral has to be
  |                             | posted/returned.
  | `notificationTime`          | `NotificationTime`
  |                             | The time by which a demand for the Transfer of
  |                             | Eligible Credit Support (IM) or Posted Credit Support
  |                             | (IM) needs to be made in order for the transfer to
  |                             | take place in accordance with the Transfer Timing
  |                             | provisions. ISDA 2016 Credit Support Annex for
  |                             | Initial Margin, paragraph 13, General Principles,
  |                             | (d)(iii).
  | `oneWayProvisions`          | `OneWayProvisions`
  |                             | The determination of whether the One Way Provisions
  |                             | are applicable (true) or not applicable (false) as
  |                             | specified by ISDA 2016 CSA for Initial Margin,
  |                             | Paragraph 13 (aa).
  | `otherEligibleSupport`      | `Optional` `Text`
  |                             | The items that qualify as Other Eligible Support in
  |                             | accordance with the ISDA 2016 Credit Support Annex
  |                             | for Initial Margin, paragraph 13, General Principles,
  |                             | (c)(iv). ISDA 2016 Credit Support Annex for Initial
  |                             | Margin, paragraph 13, General Principles, (vi)(C):
  |                             | Rounding.
  | `pledgorPostingObligations` | `PledgorPostingObligations`
  |                             | The pledgor&#39;s posting obligations as specified in
  |                             | the ISDA 2016 Credit Support Annex for Initial
  |                             | Margin, paragraph 13, General Principles, (ii).
  | `regime`                    | `Regime`
  |                             | The Regime Table provision as specified by the ISDA
  |                             | 2016 CSA for Initial Margin, Paragraph 13 General
  |                             | Principles, which determines the regulatory regime(s)
  |                             | applicable to each of the parties to the CSA in their
  |                             | capacity as Secured Party, with one set of values per
  |                             | counterparty. As specified in the CSA, the
  |                             | applicability of a regime shall not be construed as a
  |                             | representation, admission or acknowledgement that
  |                             | either party is actually regulated under such regime.
  | `rounding`                  | `CollateralRounding`
  |                             | The rounding methodology applicable to the Delivery
  |                             | Amount and the Return Amount in terms of nearest
  |                             | integral multiple of Base Currency units. ISDA 2016
  |                             | Credit Support Annex for Initial Margin, paragraph
  |                             | 13, General Principles, (c)(vi)(C): Rounding
  | `sensitivityToCommodity`    | `SensitivityMethodology`
  |                             | The methodology the compute sensitivities to
  |                             | commodity indices for the purpose of the ISDA 2016
  |                             | and 2018 CSA for Initial Margin. ISDA 2016 Credit
  |                             | Support Annex for Initial Margin, paragraph 13,
  |                             | General Principles (gg)(2)(B).
  | `sensitivityToEquity`       | `SensitivityMethodology`
  |                             | The methodology the compute sensitivities to equity
  |                             | indices, funds and ETFs for the purpose of the ISDA
  |                             | 2016 and 2018 CSA for Initial Margin. ISDA 2016
  |                             | Credit Support Annex for Initial Margin, paragraph
  |                             | 13, General Principles (gg)(2)(A).
  | `threshold`                 | `Threshold`
  |                             | The unsecured credit exposure that the parties are
  |                             | prepared to accept before asking for collateral.
  | `transferTiming`            | `Optional` `Text`
  |                             | The time by which the transfer of collateral must
  |                             | take place when different from the Regular Settlement
  |                             | Day as a result of parties&#39; election. ISDA 2016
  |                             | Credit Support Annex for Initial Margin, paragraph
  |                             | 13, General Principles, (c)(vii): Transfer Timing.

### `data` `CsaInitialMargin2016NewYorkLaw`

  A class to specify the provisions that are specific
  to the New York Law version of the ISDA 2016 Credit
  Support Annex for Initial Margin.
* `CsaInitialMargin2016NewYorkLaw`

  | Field                       | Type/Description |
  | :-------------------------- | :----------------
  | `additionalObligations`     | `Optional` `Text`
  |                             | The additional obligations as specified in the ISDA
  |                             | 2016 Credit Support Annex for Initial Margin,
  |                             | paragraph 13, General Principles, (b)(ii).
  | `baseCurrency`              | `FieldWithMeta` `Text`
  |                             | The base currency as specified by the ISDA 2016 CSA
  |                             | for Initial Margin, Paragraph 13 (a). The list of
  |                             | valid currencies is not presently positioned as an
  |                             | enumeration as part of the CDM because that scope is
  |                             | limited to the values specified by ISDA and FpML. As
  |                             | a result, implementers have to make reference to the
  |                             | relevant standard, such as the ISO 4217 standard for
  |                             | currency codes.
  | `calculationDateLocation`   | `CalculationDateLocation`
  |                             | The specified location where the credit exposure will
  |                             | be calculated by the respective parties.
  | `conditionPrecedent`        | `Optional` `Text`
  |                             | When specified, this attribute overwrites the default
  |                             | Condition Precedent provision as specified in ISDA
  |                             | 2016 Credit Support Annex for Initial Margin,
  |                             | paragraph 4, (a).
  | `method`                    | `Method`
  |                             | The specification of the ISDA SIMM Method as
  |                             | specified by ISDA CSA for Initial Margin, Paragraph
  |                             | 13, General Principles (ee).
  | `minimumTransferAmount`     | `MinimumTransferAmount`
  |                             | The amount above which collateral has to be
  |                             | posted/returned.
  | `notificationTime`          | `NotificationTime`
  |                             | The time by which a demand for the Transfer of
  |                             | Eligible Credit Support (IM) or Posted Credit Support
  |                             | (IM) needs to be made in order for the transfer to
  |                             | take place in accordance with the Transfer Timing
  |                             | provisions. ISDA 2016 Credit Support Annex for
  |                             | Initial Margin, paragraph 13, General Principles,
  |                             | (d)(iii).
  | `oneWayProvisions`          | `OneWayProvisions`
  |                             | The determination of whether the One Way Provisions
  |                             | are applicable (true) or not applicable (false) as
  |                             | specified by ISDA 2016 CSA for Initial Margin,
  |                             | Paragraph 13 (aa).
  | `otherEligibleSupport`      | `Optional` `Text`
  |                             | The items that qualify as Other Eligible Support in
  |                             | accordance with the ISDA 2016 Credit Support Annex
  |                             | for Initial Margin, paragraph 13, General Principles,
  |                             | (c)(iv). ISDA 2016 Credit Support Annex for Initial
  |                             | Margin, paragraph 13, General Principles, (vi)(C):
  |                             | Rounding.
  | `pledgorPostingObligations` | `PledgorPostingObligations`
  |                             | The pledgor&#39;s posting obligations as specified in
  |                             | the ISDA 2016 Credit Support Annex for Initial
  |                             | Margin, paragraph 13, General Principles, (ii).
  | `regime`                    | `Regime`
  |                             | The Regime Table provision as specified by the ISDA
  |                             | 2016 CSA for Initial Margin, Paragraph 13 General
  |                             | Principles, which determines the regulatory regime(s)
  |                             | applicable to each of the parties to the CSA in their
  |                             | capacity as Secured Party, with one set of values per
  |                             | counterparty. As specified in the CSA, the
  |                             | applicability of a regime shall not be construed as a
  |                             | representation, admission or acknowledgement that
  |                             | either party is actually regulated under such regime.
  | `rounding`                  | `CollateralRounding`
  |                             | The rounding methodology applicable to the Delivery
  |                             | Amount and the Return Amount in terms of nearest
  |                             | integral multiple of Base Currency units. ISDA 2016
  |                             | Credit Support Annex for Initial Margin, paragraph
  |                             | 13, General Principles, (c)(vi)(C): Rounding
  | `sensitivityToCommodity`    | `SensitivityMethodology`
  |                             | The methodology the compute sensitivities to
  |                             | commodity indices for the purpose of the ISDA 2016
  |                             | and 2018 CSA for Initial Margin. ISDA 2016 Credit
  |                             | Support Annex for Initial Margin, paragraph 13,
  |                             | General Principles (gg)(2)(B).
  | `sensitivityToEquity`       | `SensitivityMethodology`
  |                             | The methodology the compute sensitivities to equity
  |                             | indices, funds and ETFs for the purpose of the ISDA
  |                             | 2016 and 2018 CSA for Initial Margin. ISDA 2016
  |                             | Credit Support Annex for Initial Margin, paragraph
  |                             | 13, General Principles (gg)(2)(A).
  | `threshold`                 | `Threshold`
  |                             | The unsecured credit exposure that the parties are
  |                             | prepared to accept before asking for collateral.
  | `transferTiming`            | `Optional` `Text`
  |                             | The time by which the transfer of collateral must
  |                             | take place when different from the Regular Settlement
  |                             | Day as a result of parties&#39; election. ISDA 2016
  |                             | Credit Support Annex for Initial Margin, paragraph
  |                             | 13, General Principles, (c)(vii): Transfer Timing.

### `data` `CurrencyValueDates`

  Currency settlement dates for each currency of a
  Foreign Exchange product.
* `CurrencyValueDates`

  | Field                | Type/Description |
  | :------------------- | :----------------
  | `currency1ValueDate` | `Date`
  |                      | The date on which the currency1 amount will be
  |                      | settled. To be used in a split value date scenario.
  | `currency2ValueDate` | `Date`
  |                      | The date on which the currency2 amount will be
  |                      | settled. To be used in a split value date scenario.

### `data` `Curve`

* `Curve`

  | Field               | Type/Description |
  | :------------------ | :----------------
  | `commodityCurve`    | `Optional` `(` `FieldWithMeta` `CommodityReferencePriceEnum` `)`
  | `interestRateCurve` | `Optional` `InterestRateCurve`

### `data` `CustomisedWorkflow`

  In its initial iteration, this class is meant to
  support the DTCC TIW workflow information.
* `CustomisedWorkflow`

  | Field       | Type/Description |
  | :---------- | :----------------
  | `itemName`  | `Text`
  |             | In this initial iteration, this corresponds to the
  |             | DTCC TIW element name.
  | `itemValue` | `Text`
  |             | In this initial iteration, this corresponds to the
  |             | DTCC value.

### `data` `DateList`

  List of dates.
* `DateList`

  | Field  | Type/Description |
  | :----- | :----------------
  | `date` | `[` `Date` `]`

### `data` `DateRange`

  A class defining a contiguous series of calendar
  dates. The date range is defined as all the dates
  between and including the first and the last date.
  The first date must fall before the last date.
* `DateRange`

  | Field                 | Type/Description |
  | :-------------------- | :----------------
  | `unadjustedFirstDate` | `Date`
  |                       | The first date of a date range.
  | `unadjustedLastDate`  | `Date`
  |                       | The last date of a date range.

### `data` `DateRelativeToCalculationPeriodDates`

  A class to provide the ability to point to multiple
  payment nodes in the document through the unbounded
  paymentDatesReference.
* `DateRelativeToCalculationPeriodDates`

  | Field                             | Type/Description |
  | :-------------------------------- | :----------------
  | `calculationPeriodDatesReference` | `[` `ReferenceWithMeta` `CalculationPeriodDates` `]`
  |                                   | A set of href pointers to calculation period dates
  |                                   | defined somewhere else in the document.

### `data` `DateRelativeToPaymentDates`

  A class to provide the ability to point to multiple
  payment nodes in the document through the unbounded
  paymentDatesReference.
* `DateRelativeToPaymentDates`

  | Field                   | Type/Description |
  | :---------------------- | :----------------
  | `paymentDatesReference` | `[` `ReferenceWithMeta` `PaymentDates` `]`
  |                         | A set of href pointers to payment dates defined
  |                         | somewhere else in the document.

### `data` `DateTimeList`

  List of dateTimes.
* `DateTimeList`

  | Field      | Type/Description |
  | :--------- | :----------------
  | `dateTime` | `[` `ZonedDateTime` `]`
  |            | The CDM specifies that the zoned date time is to be
  |            | expressed in accordance with ISO 8601, either as UTC
  |            | as an offset to UTC.

### `data` `DeliverableObligations`

  A class to specify all the ISDA terms relevant to
  defining the deliverable obligations.
* `DeliverableObligations`

  | Field                            | Type/Description |
  | :------------------------------- | :----------------
  | `acceleratedOrMatured`           | `Optional` `Bool`
  |                                  | A deliverable obligation characteristic. An
  |                                  | obligation at time of default is due to mature and
  |                                  | due to be repaid, or as a result of
  |                                  | downgrade/bankruptcy is due to be repaid as a result
  |                                  | of an acceleration clause. ISDA 2003 Term:
  |                                  | Accelerated or Matured.
  | `accruedInterest`                | `Optional` `Bool`
  |                                  | Indicates whether accrued interest is included (true)
  |                                  | or not (false). For cash settlement this specifies
  |                                  | whether quotations should be obtained inclusive or
  |                                  | not of accrued interest. For physical settlement this
  |                                  | specifies whether the buyer should deliver the
  |                                  | obligation with an outstanding principal balance that
  |                                  | includes or excludes accrued interest. ISDA 2003
  |                                  | Term: Include/Exclude Accrued Interest.
  | `assignableLoan`                 | `Optional` `PCDeliverableObligationCharac`
  |                                  | A deliverable obligation characteristic. A loan that
  |                                  | is freely assignable to a bank or financial
  |                                  | institution without the consent of the Reference
  |                                  | Entity or the guarantor, if any, of the loan (or the
  |                                  | consent of the applicable borrower if a Reference
  |                                  | Entity is guaranteeing the loan) or any agent. ISDA
  |                                  | 2003 Term: Assignable Loan.
  | `category`                       | `Optional` `ObligationCategoryEnum`
  |                                  | Used in both obligations and deliverable obligations
  |                                  | to represent a class or type of securities which
  |                                  | apply. ISDA 2003 Term: Obligation
  |                                  | Category/Deliverable Obligation Category.
  | `consentRequiredLoan`            | `Optional` `PCDeliverableObligationCharac`
  |                                  | A deliverable obligation characteristic. A loan that
  |                                  | is capable of being assigned with the consent of the
  |                                  | Reference Entity or the guarantor, if any, of the
  |                                  | loan or any agent. ISDA 2003 Term: Consent Required
  |                                  | Loan.
  | `directLoanParticipation`        | `Optional` `LoanParticipation`
  |                                  | A deliverable obligation characteristic. A loan with
  |                                  | a participation agreement whereby the buyer is
  |                                  | capable of creating, or procuring the creation of, a
  |                                  | contractual right in favour of the seller that
  |                                  | provides the seller with recourse to the
  |                                  | participation seller for a specified share in any
  |                                  | payments due under the relevant loan which are
  |                                  | received by the participation seller. ISDA 2003 Term:
  |                                  | Direct Loan Participation.
  | `excluded`                       | `Optional` `Text`
  |                                  | A free format string to specify any excluded
  |                                  | obligations or deliverable obligations, as the case
  |                                  | may be, of the reference entity or excluded types of
  |                                  | obligations or deliverable obligations. ISDA 2003
  |                                  | Term: Excluded Obligations/Excluded Deliverable
  |                                  | Obligations.
  | `fullFaithAndCreditObLiability`  | `Optional` `Bool`
  |                                  | An obligation and deliverable obligation
  |                                  | characteristic. Defined in the ISDA published
  |                                  | additional provisions for U.S. Municipal as Reference
  |                                  | Entity. ISDA 2003 Term: Full Faith and Credit
  |                                  | Obligation Liability.
  | `generalFundObligationLiability` | `Optional` `Bool`
  |                                  | An obligation and deliverable obligation
  |                                  | characteristic. Defined in the ISDA published
  |                                  | additional provisions for U.S. Municipal as Reference
  |                                  | Entity. ISDA 2003 Term: General Fund Obligation
  |                                  | Liability.
  | `indirectLoanParticipation`      | `Optional` `LoanParticipation`
  |                                  | ISDA 1999 Term: Indirect Loan Participation. NOTE:
  |                                  | Only applicable as a deliverable obligation under
  |                                  | ISDA Credit 1999.
  | `listed`                         | `Optional` `Bool`
  |                                  | An obligation and deliverable obligation
  |                                  | characteristic. Indicates whether or not the
  |                                  | obligation is quoted, listed or ordinarily purchased
  |                                  | and sold on an exchange. ISDA 2003 Term: Listed.
  | `maximumMaturity`                | `Optional` `Period`
  |                                  | A deliverable obligation characteristic. An
  |                                  | obligation that has a remaining maturity from the
  |                                  | Physical Settlement Date of not greater than the
  |                                  | period specified. ISDA 2003 Term: Maximum Maturity.
  | `notBearer`                      | `Optional` `Bool`
  |                                  | A deliverable obligation characteristic. Any
  |                                  | obligation that is not a bearer instrument. This
  |                                  | applies to Bonds only and is meant to avoid tax,
  |                                  | fraud and security/delivery provisions that can
  |                                  | potentially be associated with Bearer Bonds. ISDA
  |                                  | 2003 Term: Not Bearer.
  | `notContingent`                  | `Optional` `Bool`
  |                                  | A deliverable obligation characteristic. In essence
  |                                  | Not Contingent means the repayment of principal
  |                                  | cannot be dependant on a formula/index, i.e. to
  |                                  | prevent the risk of being delivered an instrument
  |                                  | that may never pay any element of principal, and to
  |                                  | ensure that the obligation is interest bearing (on a
  |                                  | regular schedule). ISDA 2003 Term: Not Contingent.
  | `notDomesticCurrency`            | `Optional` `NotDomesticCurrency`
  |                                  | An obligation and deliverable obligation
  |                                  | characteristic. Any obligation that is payable in any
  |                                  | currency other than the domestic currency. Domestic
  |                                  | currency is either the currency so specified or, if
  |                                  | no currency is specified, the currency of (a) the
  |                                  | reference entity, if the reference entity is a
  |                                  | sovereign, or (b) the jurisdiction in which the
  |                                  | relevant reference entity is organised, if the
  |                                  | reference entity is not a sovereign. ISDA 2003 Term:
  |                                  | Not Domestic Currency.
  | `notDomesticIssuance`            | `Optional` `Bool`
  |                                  | An obligation and deliverable obligation
  |                                  | characteristic. Any obligation other than an
  |                                  | obligation that was intended to be offered for sale
  |                                  | primarily in the domestic market of the relevant
  |                                  | Reference Entity. This specifies that the obligation
  |                                  | must be an internationally recognised bond. ISDA 2003
  |                                  | Term: Not Domestic Issuance.
  | `notDomesticLaw`                 | `Optional` `Bool`
  |                                  | An obligation and deliverable obligation
  |                                  | characteristic. If the reference entity is a
  |                                  | Sovereign, this means any obligation that is not
  |                                  | subject to the laws of the reference entity. If the
  |                                  | reference entity is not a sovereign, this means any
  |                                  | obligation that is not subject to the laws of the
  |                                  | jurisdiction of the reference entity. ISDA 2003 Term:
  |                                  | Not Domestic Law.
  | `notSovereignLender`             | `Optional` `Bool`
  |                                  | An obligation and deliverable obligation
  |                                  | characteristic. Any obligation that is not primarily
  |                                  | (majority) owed to a Sovereign or Supranational
  |                                  | Organisation. ISDA 2003 Term: Not Sovereign Lender.
  | `notSubordinated`                | `Optional` `Bool`
  |                                  | An obligation and deliverable obligation
  |                                  | characteristic. An obligation that ranks at least
  |                                  | equal with the most senior Reference Obligation in
  |                                  | priority of payment or, if no Reference Obligation is
  |                                  | specified in the related Confirmation, the
  |                                  | obligations of the Reference Entity that are senior.
  |                                  | ISDA 2003 Term: Not Subordinated.
  | `othReferenceEntityObligations`  | `Optional` `Text`
  |                                  | This element is used to specify any other obligations
  |                                  | of a reference entity in both obligations and
  |                                  | deliverable obligations. The obligations can be
  |                                  | specified free-form. ISDA 2003 Term: Other
  |                                  | Obligations of a Reference Entity.
  | `revenueObligationLiability`     | `Optional` `Bool`
  |                                  | An obligation and deliverable obligation
  |                                  | characteristic. Defined in the ISDA published
  |                                  | additional provisions for U.S. Municipal as Reference
  |                                  | Entity. ISDA 2003 Term: Revenue Obligation Liability.
  | `specifiedCurrency`              | `Optional` `SpecifiedCurrency`
  |                                  | An obligation and deliverable obligation
  |                                  | characteristic. The currency or currencies in which
  |                                  | an obligation or deliverable obligation must be
  |                                  | payable. ISDA 2003 Term: Specified Currency.
  | `transferable`                   | `Optional` `Bool`
  |                                  | A deliverable obligation characteristic. An
  |                                  | obligation that is transferable to institutional
  |                                  | investors without any contractual, statutory or
  |                                  | regulatory restrictions. ISDA 2003 Term:
  |                                  | Transferable.

### `data` `DeterminationMethod`

  The purpose of this class is to be extended by the
  Price and EquityValuation classes.
* `DeterminationMethod`

  | Field                 | Type/Description |
  | :-------------------- | :----------------
  | `determinationMethod` | `Optional` `DeterminationMethodEnum`
  |                       | Specifies the method according to which an amount or
  |                       | a date is determined.

### `data` `DiscountingMethod`

  A class defining discounting information. The 2000
  ISDA definitions, section 8.4. discounting (related
  to the calculation of a discounted fixed amount or
  floating amount) apply. This type must only be
  included if discounting applies.
* `DiscountingMethod`

  | Field                          | Type/Description |
  | :----------------------------- | :----------------
  | `discountRate`                 | `Optional` `Decimal`
  |                                | A discount rate, expressed as a decimal, to be used
  |                                | in the calculation of a discounted amount. A discount
  |                                | amount of 5% would be represented as 0.05.
  | `discountRateDayCountFraction` | `Optional` `(` `FieldWithMeta` `DayCountFractionEnum` `)`
  |                                | A discount day count fraction to be used in the
  |                                | calculation of a discounted amount.
  | `discountingType`              | `DiscountingTypeEnum`
  |                                | The discounting method that is applicable.

### `data` `DividendCurrency`

  A class to specify the currency in which the
  dividends will be denominated, i.e. either in the
  dividend currency or in a currency specified as part
  of the contract.
* `DividendCurrency`

  | Field                 | Type/Description |
  | :-------------------- | :----------------
  | `currency`            | `Optional` `(` `FieldWithMeta` `Text` `)`
  |                       | The currency in which the dividend is denominated.
  |                       | The list of valid currencies is not presently
  |                       | positioned as an enumeration as part of the CDM
  |                       | because that scope is limited to the values specified
  |                       | by ISDA and FpML. As a result, implementers have to
  |                       | make reference to the relevant standard, such as the
  |                       | ISO 4217 standard for currency codes.
  | `currencyReference`   | `Optional` `(` `BasicReferenceWithMeta` `Text` `)`
  |                       | Reference to a currency specified elsewhere in the
  |                       | document
  | `determinationMethod` | `Optional` `DeterminationMethodEnum`
  |                       | Specifies the method according to which the dividend
  |                       | is determined, e.g. the dividend currency.

### `data` `DividendDateReference`

  A class to specify the dividend date by reference to
  another date, with the ability to apply and offset.
  This class doesn&#39;t exist in FpML and is meant to
  simplify the choice constraint associated with the
  DividendPaymentDate class.
* `DividendDateReference`

  | Field               | Type/Description |
  | :------------------ | :----------------
  | `dateReference`     | `DividendDateReferenceEnum`
  |                     | Specification of the dividend date using an
  |                     | enumeration, with values such as the pay date, the
  |                     | ex-date or the record date.
  | `paymentDateOffset` | `Optional` `Offset`
  |                     | Only to be used when SharePayment has been specified
  |                     | in the dividendDateReference element. The number of
  |                     | Currency Business Days following the day on which the
  |                     | Issuer of the Shares pays the relevant dividend to
  |                     | holders of record of the Shares.

### `data` `DividendPaymentDate`

  A class describing the date on which the dividend
  will be paid/received. This class is also used to
  specify the date on which the FX rate will be
  determined, when applicable.
* `DividendPaymentDate`

  | Field                   | Type/Description |
  | :---------------------- | :----------------
  | `adjustableDate`        | `Optional` `AdjustableDate`
  | `dividendDateReference` | `Optional` `DividendDateReference`

### `data` `DividendPayout`

  A class describing the dividend payout ratio
  associated with an equity underlier. In certain cases
  the actual ratio is not known on trade inception, and
  only general conditions are then specified.
* `DividendPayout`

  | Field                        | Type/Description |
  | :--------------------------- | :----------------
  | `dividendPayoutRatio`        | `Decimal`
  |                              | Specifies the total actual dividend payout ratio
  |                              | associated with the equity underlier. A ratio of 90%
  |                              | should be expressed at 0.90.
  | `dividendPayoutRatioCash`    | `Optional` `Decimal`
  |                              | Specifies the cash actual dividend payout ratio
  |                              | associated with the equity underlier. A ratio of 90%
  |                              | should be expressed at 0.90.
  | `dividendPayoutRatioNonCash` | `Optional` `Decimal`
  |                              | Specifies the non cash actual dividend payout ratio
  |                              | associated with the equity underlier. A ratio of 90%
  |                              | should be expressed at 0.90.

### `data` `DividendReturnTerms`

  A class describing the conditions governing the
  payment of dividends to the receiver of the equity
  return, with the exception of the dividend payout
  ratio, which is defined for each of the underlying
  components.
* `DividendReturnTerms`

  | Field                         | Type/Description |
  | :---------------------------- | :----------------
  | `dividendAmountType`          | `Optional` `DividendAmountTypeEnum`
  |                               | Specifies whether the dividend is paid with respect
  |                               | to the Dividend Period.
  | `dividendCurrency`            | `Optional` `DividendCurrency`
  |                               | Specifies the currency in which the dividend will be
  |                               | denominated, e.g. the dividend currency, or a
  |                               | specified currency. This class is not specified as
  |                               | such in FpML, which makes use of the
  |                               | CurrencyAndDeterminationMethod.model to specify such
  |                               | terms.
  | `dividendEntitlement`         | `Optional` `DividendEntitlementEnum`
  |                               | Defines the date on which the receiver of the equity
  |                               | return is entitled to the dividend.
  | `dividendPaymentDate`         | `Optional` `DividendPaymentDate`
  |                               | Specifies when the dividend will be paid to the
  |                               | receiver of the equity return. Has the meaning as
  |                               | defined in the ISDA 2002 Equity Derivatives
  |                               | Definitions. Is not applicable in the case of a
  |                               | dividend reinvestment election.
  | `dividendPayout`              | `Optional` `DividendPayout`
  |                               | Specifies the dividend payout ratio associated with
  |                               | the underlier. In FpML 5.10 the payout is positioned
  |                               | at the underlier level, although there is an intent
  |                               | to reconsider this approach and position it at the
  |                               | leg level. This is approach adopted by the CDM.
  | `dividendPeriod`              | `Optional` `DividendPeriodEnum`
  |                               | 2002 ISDA Equity Derivatives Definitions: Dividend
  |                               | Period as either the First Period or the Second
  |                               | Period. |
  | `dividendPeriodEffectiveDate` | `Optional` `(` `BasicReferenceWithMeta` `Date` `)`
  |                               | 2002 ISDA Equity Derivatives Definitions: Dividend
  |                               | Period as such other period determined as provided in
  |                               | the related Confirmation. |
  | `dividendPeriodEndDate`       | `Optional` `(` `BasicReferenceWithMeta` `Date` `)`
  |                               | 002 ISDA Equity Derivatives Definitions: Dividend
  |                               | Period as such other period determined as provided in
  |                               | the related Confirmation. |
  | `dividendReinvestment`        | `Optional` `Bool`
  |                               | Boolean element that defines whether the dividend
  |                               | will be reinvested or not.
  | `excessDividendAmount`        | `Optional` `DividendAmountTypeEnum`
  |                               | Determination of Gross Cash Dividend per Share.
  | `extraordinaryDividendsParty` | `Optional` `(` `ReferenceWithMeta` `Party` `)`
  |                               | Reference to the party which determines if dividends
  |                               | are extraordinary in relation to normal levels.

### `data` `Documentation`

  A class for defining the definitions that govern the
  document and should include the year and type of
  definitions referenced, along with any relevant
  documentation (such as master agreement) and the date
  it was signed.
* `Documentation`

  | Field                        | Type/Description |
  | :--------------------------- | :----------------
  | `attachment`                 | `[` `Resource` `]`
  |                              | A human readable document related to this
  |                              | transaction, for example a confirmation.
  | `brokerConfirmation`         | `Optional` `BrokerConfirmation`
  |                              | Specifies the details for a broker confirm.
  | `contractualDefinitions`     | `[` `FieldWithMeta` `ContractualDefinitionsEnum` `]`
  |                              | The definitions such as those published by ISDA that
  |                              | will define the terms of the trade.
  | `contractualMatrix`          | `[` `ContractualMatrix` `]`
  |                              | A reference to a contractual matrix of elected
  |                              | terms/values (such as those published by ISDA) that
  |                              | shall be deemed to apply to the trade. The applicable
  |                              | matrix is identified by reference to a name and
  |                              | optionally a publication date. Depending on the
  |                              | structure of the matrix, an additional term
  |                              | (specified in the matrixTerm element) may be required
  |                              | to further identify a subset of applicable
  |                              | terms/values within the matrix.
  | `contractualTermsSupplement` | `[` `ContractualTermsSupplement` `]`
  |                              | A contractual supplement (such as those published by
  |                              | ISDA) that will apply to the trade.
  | `creditSupportAgreement`     | `Optional` `CreditSupportAgreement`
  |                              | The agreement executed between the parties and
  |                              | intended to govern collateral arrangement for all OTC
  |                              | derivatives transactions between those parties.
  | `masterAgreement`            | `Optional` `MasterAgreement`
  |                              | The agreement executed between the parties and
  |                              | intended to govern all OTC derivatives transactions
  |                              | between those parties.
  | `masterConfirmation`         | `Optional` `MasterConfirmation`
  | `otherAgreement`             | `[` `OtherAgreement` `]`
  |                              | Any other agreement executed between the parties.

### `data` `EarlyTerminationEvent`

  A class to define the adjusted dates associated with
  an early termination provision.
* `EarlyTerminationEvent`

  | Field                                 | Type/Description |
  | :------------------------------------ | :----------------
  | `adjustedCashSettlementPaymentDate`   | `Date`
  |                                       | The date on which the cash settlement amount is paid.
  |                                       | This date should already be adjusted for any
  |                                       | applicable business date convention.
  | `adjustedCashSettlementValuationDate` | `Date`
  |                                       | The date by which the cash settlement amount must be
  |                                       | agreed. This date should already be adjusted for any
  |                                       | applicable business day convention.
  | `adjustedEarlyTerminationDate`        | `Date`
  |                                       | The early termination date that is applicable if an
  |                                       | early termination provision is exercised. This date
  |                                       | should already be adjusted for any applicable
  |                                       | business day convention.
  | `adjustedExerciseDate`                | `Date`
  |                                       | The date on which option exercise takes place. This
  |                                       | date should already be adjusted for any applicable
  |                                       | business day convention.
  | `adjustedExerciseFeePaymentDate`      | `Optional` `Date`
  |                                       | The date on which the exercise fee amount is paid.
  |                                       | This date should already be adjusted for any
  |                                       | applicable business day convention.
  | `id`                                  | `Optional` `Text`

### `data` `EarlyTerminationProvision`

  A class defining an early termination provision for a
  swap. This early termination is at fair value, i.e.
  on termination the fair value of the product must be
  settled between the parties.
* `EarlyTerminationProvision`

  | Field                                | Type/Description |
  | :----------------------------------- | :----------------
  | `id`                                 | `Optional` `Text`
  | `mandatoryEarlyTermination`          | `Optional` `MandatoryEarlyTermination`
  |                                      | A mandatory early termination provision to terminate
  |                                      | the swap at fair value.
  | `mandatoryEarlyTerminationDateTenor` | `Optional` `Period`
  |                                      | Period after trade date of the mandatory early
  |                                      | termination date.
  | `optionalEarlyTermination`           | `Optional` `OptionalEarlyTermination`
  |                                      | An option for either or both parties to terminate the
  |                                      | swap at fair value.
  | `optionalEarlyTerminationParameters` | `Optional` `ExercisePeriod`
  |                                      | Definition of the first early termination date and
  |                                      | the frequency of the termination dates subsequent to
  |                                      | that. American exercise is defined by having a
  |                                      | frequency of one day.

### `data` `EconomicTerms`

  This class represents the full set of price-forming
  features associated with a contractual product: the
  payout component, the quantity, as well as the legal
  optional provisions which have valuation
  implications. A rosettaKeyValue is associated to the
  contractual product economic terms for the purpose of
  supporting hash-based reconciliations thanks to the
  fact that its computation doesn&#39;t include meta
  data, such as identifiers, references, schemes and
  other rosettaKey artefacts. The rosettaKeyValue
  default implementation is available as part of the
  generated code as
  org.isda.cdm.rosettakey.RosettaKeyValueHashFunction.
* `EconomicTerms`

  | Field                       | Type/Description |
  | :-------------------------- | :----------------
  | `cancelableProvision`       | `Optional` `CancelableProvision`
  |                             | A provision that allows the specification of an
  |                             | embedded option within a swap giving the buyer of the
  |                             | option the right to terminate the swap, in whole or
  |                             | in part, on the early termination date.
  | `earlyTerminationProvision` | `Optional` `EarlyTerminationProvision`
  |                             | Parameters specifying provisions relating to the
  |                             | optional and mandatory early termination of a swap
  |                             | transaction.
  | `extendibleProvision`       | `Optional` `ExtendibleProvision`
  |                             | A provision that allows the specification of an
  |                             | embedded option with a swap giving the buyer of the
  |                             | option the right to extend the swap, in whole or in
  |                             | part, to the extended termination date.
  | `extraordinaryEvents`       | `Optional` `ExtraordinaryEvents`
  |                             | 2018 ISDA CDM Equity Confirmation for Security Equity
  |                             | Swap: Extraordinary Events.
  | `payout`                    | `Payout`
  |                             | The payout specifies the future cashflow computation
  |                             | methodology which characterizes a financial product.
  | `quantity`                  | `[` `ContractualQuantity` `]`
  |                             | The specification of the notional amount that is the
  |                             | base for the payout calculation, through the
  |                             | ContractualQuantity class which provides a generic
  |                             | approach that is applicable across all asset classes.
  |                             | The quantity attribute applies to products relating
  |                             | to securities or tangible assets (such as equities or
  |                             | commodities), while the notional amount applies to
  |                             | products pertaining to interest rate, FX or credit
  |                             | products.
  | `rosettaKeyValue`           | `Text`

### `data` `EligibleCollateral`

  The collateral eligibility as a function of the types
  of asset, the maturity and rating terms.
* `EligibleCollateral`

  | Field                 | Type/Description |
  | :-------------------- | :----------------
  | `eligibleAsset`       | `CollateralAssetDefinitionsEnum`
  |                       | The eligible asset is specified by reference to the
  |                       | ISDA 2003 Collateral Assets definitions.
  | `higherMaturity`      | `Optional` `Period`
  |                       | The (optional) higher maturity band of the eligible
  |                       | collateral assets.
  | `lowerMaturity`       | `Optional` `Period`
  |                       | The (optional) lower maturity band of the eligible
  |                       | collateral assets.
  | `minimumRating`       | `Optional` `CreditNotations`
  |                       | The (optional) minimal rating terms that can be
  |                       | specified as part of the eligible collateral.
  | `valuationPercentage` | `Optional` `Decimal`
  |                       | Specifies the haircut associated to the collateral
  |                       | asset, expressed as a percentage. A value of 90%
  |                       | means that 90% of the value of the applicable asset
  |                       | is considered as collateral. Absence of this element
  |                       | implies that the valuation percentage is 100%.

### `data` `Equity`

  A class to specify an equity as having a product
  identifier. As a difference versus the FpML standard,
  the CDM structure of this class only includes the
  productIdentifier class, which consists of an
  identifier, productTaxonomy, and source of the
  identifier. The reason for this approach is to avoid
  the potential for conflicting information between the
  information associated with the contractual product
  and the reference information maintained by the
  relevant service provider.
* `Equity`

  | Field               | Type/Description |
  | :------------------ | :----------------
  | `productIdentifier` | `ProductIdentifier`

### `data` `EquityCorporateEvents`

  A class for defining the merger events and their
  treatment.
* `EquityCorporateEvents`

  | Field              | Type/Description |
  | :----------------- | :----------------
  | `shareForCombined` | `ShareExtraordinaryEventEnum`
  |                    | 2018 ISDA CDM Equity Confirmation for Security Equity
  |                    | Swap: Merger Event (S-F-C) shall occur if a Merger
  |                    | Event occurs and the consideration for the relevant
  |                    | Security consists solely of Combined Consideration. |
  |                    | The consideration paid for the original shares
  |                    | following the Merger Event consists of both
  |                    | cash/securities and new shares.
  | `shareForOther`    | `ShareExtraordinaryEventEnum`
  |                    | 2018 ISDA CDM Equity Confirmation for Security Equity
  |                    | Swap: Merger Event (S-F-O) shall occur if a Merger
  |                    | Event occurs and the consideration for the relevant
  |                    | Security consists solely of Other Consideration. |
  |                    | The consideration paid for the original shares
  |                    | following the Merger Event consists wholly of
  |                    | cash/securities other than new shares.
  | `shareForShare`    | `ShareExtraordinaryEventEnum`
  |                    | 2018 ISDA CDM Equity Confirmation for Security Equity
  |                    | Swap: Merger Event (S-F-S) shall occur if a Merger
  |                    | Event occurs and the consideration for the relevant
  |                    | Security consists solely of Combined Consideration. |
  |                    | The consideration paid for the original shares
  |                    | following the Merger Event consists wholly of new
  |                    | shares.

### `data` `EquityPayout`

  The equity payout specification terms. The associated
  rosettaKey denotes the ability to associate a hash
  value to the EquityPayout instantiations for the
  purpose of model cross-referencing, in support of
  functionality such as the event effect and the
  lineage.
* `EquityPayout`

  | Field                    | Type/Description |
  | :----------------------- | :----------------
  | `calculationPeriodDates` | `CalculationPeriodDates`
  |                          | The calculation period dates schedule.
  | `dividendReturnTerms`    | `Optional` `DividendReturnTerms`
  |                          | 2018 ISDA CDM Equity Confirmation for Security Equity
  |                          | Swap: Dividend Obligations
  | `id`                     | `Optional` `Text`
  | `payerReceiver`          | `Optional` `PayerReceiver`
  | `paymentDates`           | `PaymentDates`
  |                          | The payment date schedule, as defined by the
  |                          | parameters that are needed to specify it, either in a
  |                          | parametric way or by reference to another schedule of
  |                          | dates (e.g. the valuation dates).
  | `priceReturnTerms`       | `Optional` `PriceReturnTerms`
  |                          | 2018 ISDA CDM Equity Confirmation for Security Equity
  |                          | Swap: Pricing
  | `returnType`             | `ReturnTypeEnum`
  |                          | Specifies the type of return associated with the
  |                          | equity payout.
  | `rosettaKey`             | `Text`
  | `settlementTerms`        | `SettlementTerms`
  |                          | 2018 ISDA CDM Equity Confirmation for Security Equity
  |                          | Swap: Settlement |
  | `underlier`              | `Underlier`
  |                          | 2018 ISDA CDM Equity Confirmation for Security Equity
  |                          | Swap: Security

### `data` `EquityValuation`

  A class for defining how and when an equity option or
  equity swap is to be valued.
* `EquityValuation`

  | Field                 | Type/Description |
  | :-------------------- | :----------------
  | `determinationMethod` | `DeterminationMethodEnum`
  |                       | Specifies the method according to which an amount or
  |                       | a date is determined.
  | `valuationDate`       | `Optional` `AdjustableOrRelativeDate`
  |                       | 2018 ISDA CDM Equity Confirmation for Security Equity
  |                       | Swap: Pricing Date
  | `valuationDates`      | `Optional` `AdjustableOrRelativeDates`
  |                       | 2018 ISDA CDM Equity Confirmation for Security Equity
  |                       | Swap: Pricing Date
  | `valuationTime`       | `Optional` `BusinessCenterTime`
  |                       | The specific time of day at which the calculation
  |                       | agent values the underlying. The SpecificTime is the
  |                       | only case when the valuationTime (time + business
  |                       | center location – e.g. 10:00:00 USNY) should be
  |                       | provided. You should be able to provide just the
  |                       | valuationTime without valuationTimeType, which infer
  |                       | that this is a specific time.
  | `valuationTimeType`   | `Optional` `TimeTypeEnum`
  |                       | The time of day at which the calculation agent values
  |                       | the underlying, for example the official closing time
  |                       | of the exchange.

### `data` `EuropeanExercise`

  A class defining the exercise period for a European
  style option together with any rules governing the
  notional amount of the underlying which can be
  exercised on any given exercise date and any
  associated exercise fees.
* `EuropeanExercise`

  | Field                    | Type/Description |
  | :----------------------- | :----------------
  | `earliestExerciseTime`   | `BusinessCenterTime`
  |                          | The earliest time at which notice of exercise can be
  |                          | given by the buyer to the seller (or seller&#39;s
  |                          | agent) on the expiration date.
  | `exerciseFee`            | `Optional` `ExerciseFee`
  |                          | A fee to be paid on exercise. This could be
  |                          | represented as an amount or a rate and notional
  |                          | reference on which to apply the rate.
  | `expirationDate`         | `AdjustableOrRelativeDate`
  |                          | The last day within an exercise period for an
  |                          | American style option. For a European style option it
  |                          | is the only day within the exercise period.
  | `expirationTime`         | `BusinessCenterTime`
  |                          | The latest time for exercise on expirationDate.
  | `id`                     | `Optional` `Text`
  | `partialExercise`        | `Optional` `PartialExercise`
  |                          | As defined in the 2000 ISDA Definitions, Section
  |                          | 12.3. Partial Exercise, the buyer of the option has
  |                          | the right to exercise all or less than all the
  |                          | notional amount of the underlying swap on the
  |                          | expiration date, but may not exercise less than the
  |                          | minimum notional amount, and if an integral multiple
  |                          | amount is specified, the notional amount exercised
  |                          | must be equal to, or be an integral multiple of, the
  |                          | integral multiple amount.
  | `relevantUnderlyingDate` | `Optional` `AdjustableOrRelativeDates`
  |                          | The date on the underlying set by the exercise of an
  |                          | option. What this date is depends on the option (e.g.
  |                          | in a swaption it is the swap effective date, in an
  |                          | extendible/cancelable provision it is the swap
  |                          | termination date).

### `data` `Event`

  A class to specify the lifecycle event. The
  associated rosettaKey denotes the ability to
  associate a hash value to the Event instantiation for
  the purpose of model cross-referencing, in support of
  functionality such as the event effect and the
  lineage.
* `Event`

  | Field                | Type/Description |
  | :------------------- | :----------------
  | `account`            | `[` `Account` `]`
  |                      | Optional account information that could be associated
  |                      | to the event.
  | `action`             | `ActionEnum`
  |                      | Specifies whether the event is a new, a correction or
  |                      | a cancellation.
  | `effectiveDate`      | `Optional` `Date`
  |                      | The date on which the event contractually takes
  |                      | effect, when different from the event date.
  | `eventDate`          | `Date`
  |                      | The date on which the event is taking place. This is
  |                      | the equivalent of the trade date in the case of an
  |                      | execution or a contract.
  | `eventEffect`        | `Optional` `EventEffect`
  |                      | The set of effects associated with the lifecycle
  |                      | event, i.e. generated cashflows, contracts (from,
  |                      | say, novation events), listed products (from, say, a
  |                      | bond option exercise event)  values and more. Those
  |                      | are represented through a set of rosettaKey
  |                      | references. This attribute is optional in order to
  |                      | provide implementers with the ability not to make use
  |                      | of this feature.
  | `eventIdentifier`    | `[` `Identifier` `]`
  |                      | The identifier(s) that uniquely identify a lifecycle
  |                      | event. The unbounded cardinality is meant to provide
  |                      | the ability to associate identifiers that are issued
  |                      | by distinct parties. As an example, each of the
  |                      | parties to the event may choose to associate their
  |                      | own identifiers to the event.
  | `eventQualifier`     | `Optional` `Text`
  |                      | The CDM event qualifier, which corresponds to the
  |                      | outcome of the isEvent qualification logic which
  |                      | qualifies the lifecycle event as a function of its
  |                      | features (e.g. PartialTermination,
  |                      | ClearingSubmission, Novation, ...).
  | `eventWorkflow`      | `Optional` `EventWorkflow`
  |                      | The event workflow information, i.e. the workflow
  |                      | status, the associated comment and the
  |                      | partyCustomisedWorkflow which purpose is to provide
  |                      | the ability to associate custom workflow information
  |                      | to the CDM.
  | `functionCall`       | `Optional` `Text`
  |                      | This is placeholder concept for a function call into
  |                      | a calculation that will return an outcome. This
  |                      | concept needs to be further firmed out.
  | `id`                 | `Optional` `Text`
  | `intent`             | `Optional` `IntentEnum`
  |                      | The intent attribute is meant to be specified when
  |                      | the event qualification cannot be programmatically
  |                      | inferred from the event features. As a result it is
  |                      | only associated with those primitives that can give
  |                      | way to such ambiguity, the quantityChange being one
  |                      | of those. An example of such is a reduction in the
  |                      | trade notional, which could be interpreted as either
  |                      | a trade correction (unless a maximum period of time
  |                      | post-event is specified as part of the
  |                      | qualification), a partial termination or a portfolio
  |                      | rebalancing in the case of an equity swap. On the
  |                      | other hand, an event such as the exercise is not
  |                      | expected to have an associated intent as there should
  |                      | not be ambiguity.
  | `lineage`            | `Optional` `Lineage`
  |                      | The lineage attribute provides a linkage among
  |                      | lifecycle events through the rosettaKey hash value.
  |                      | One example is when a given lifecycle event is being
  |                      | corrected or cancelled. In such case, each subsequent
  |                      | event will have lineage into the prior version of
  |                      | that event. The second broad use case is when an
  |                      | event has a dependency upon either another event
  |                      | (e.g. the regular payment associated with a fix/float
  |                      | swap will have a lineage into the reset event, which
  |                      | will in turn have a lineage into the observation
  |                      | event for the floating rate and the contract) or a
  |                      | contract (e.g. the exercise of an option has a
  |                      | lineage into that option).
  | `messageInformation` | `Optional` `MessageInformation`
  | `party`              | `[` `Party` `]`
  |                      | The specification of the event parties. This
  |                      | attribute is optional, as not applicable to certain
  |                      | events (e.g. most of the observations).
  | `primitive`          | `PrimitiveEvent`
  |                      | The elemental component(s) that specify the lifecycle
  |                      | events. Each of the primitive/elemental components
  |                      | listed as part of the PrimitiveEvent class has
  |                      | distinctive features that allow to specify the
  |                      | lifecycle event, either by itself or in combination
  |                      | with some other of such components.
  | `rosettaKey`         | `Text`
  | `timestamp`          | `[` `EventTimestamp` `]`
  |                      | The set of timestamp(s) associated with the event as
  |                      | a collection of [dateTime, qualifier].

### `data` `EventEffect`

  The set of operational and positional effects
  associated with a lifecycle event, alongside the
  reference to the contract reference(s) that is
  subject to the event (and is positioned in the before
  state of the event primitive).
* `EventEffect`

  | Field               | Type/Description |
  | :------------------ | :----------------
  | `contract`          | `[` `Text` `]`
  |                     | A pointer to the contract effect(s), an example of
  |                     | such being the outcome of a new trade, swaption
  |                     | exercise or novation event.
  | `effectedContract`  | `[` `Text` `]`
  |                     | A pointer to the contract(s) to which the event
  |                     | effect(s) apply, i.e. in the before event state.
  | `effectedExecution` | `[` `Text` `]`
  |                     | A pointer to the execution(s) to which the event
  |                     | effect(s) apply, i.e. in the before event state.
  | `execution`         | `[` `Text` `]`
  |                     | A pointer to the execution effect(s), an example of
  |                     | such being a clearing submission event when taking
  |                     | place on the back of an execution.
  | `productIdentifier` | `[` `Text` `]`
  |                     | A pointer to the product identifier effect(s), an
  |                     | example of such being the outcome of the physical
  |                     | exercise of a bond option.
  | `transfer`          | `[` `Text` `]`
  |                     | A pointer to the transfer effect(s), either a cash,
  |                     | security or other asset.

### `data` `EventTestBundle`

  A class which combines several events for testing
  purposes.
* `EventTestBundle`

  | Field            | Type/Description |
  | :--------------- | :----------------
  | `computedAmount` | `[` `ComputedAmount` `]`
  | `event`          | `[` `Event` `]`

### `data` `EventTimestamp`

  A class to represent the various set of timestamps
  that can be associated with lifecycle events, as a
  collection of [dateTime, qualifier]
* `EventTimestamp`

  | Field           | Type/Description |
  | :-------------- | :----------------
  | `dateTime`      | `ZonedDateTime`
  |                 | The CDM specifies that the zoned date time is to be
  |                 | expressed in accordance with ISO 8601, either as UTC
  |                 | as an offset to UTC.
  | `qualification` | `EventTimeStampQualificationEnum`

### `data` `EventWorkflow`

  A class to specify workflow information, which is
  conceptually applicable to all lifecycle events.
* `EventWorkflow`

  | Field                     | Type/Description |
  | :------------------------ | :----------------
  | `comment`                 | `Optional` `Text`
  |                           | A comment field to be associated with the workflow,
  |                           | e.g. to specify why a transaction event was rejected
  |                           | by a party.
  | `partyCustomisedWorkflow` | `[` `PartyCustomisedWorkflow` `]`
  |                           | Workflow data that is specific to certain market
  |                           | participants and is expressed as part of the CDM in a
  |                           | very generic manner, which can be party-specific. The
  |                           | initial use cases have been derived from the CME
  |                           | clearing and the DTCC TIW submissions.
  | `workflowStatus`          | `Optional` `WorkflowStatusEnum`
  |                           | The workflow status indicator, e.g. Accepted,
  |                           | Rejected, ...

### `data` `ExchangeRate`

  A type that is used for describing the exchange rate
  for a particular transaction.
* `ExchangeRate`

  | Field                | Type/Description |
  | :------------------- | :----------------
  | `crossRate`          | `[` `CrossRate` `]`
  |                      | An optional element that allow for definition of the
  |                      | currency exchange rates used to cross between the
  |                      | traded currencies for non-base currency FX contracts.
  | `forwardPoints`      | `Optional` `Decimal`
  |                      | An optional element used for deals consummated in the
  |                      | FX Forwards market. Forward points represent the
  |                      | interest rate differential between the two currencies
  |                      | traded and are quoted as a premium or a discount.
  |                      | Forward points are added to, or subtracted from, the
  |                      | spot rate to create the rate of the forward trade.
  | `pointValue`         | `Optional` `Decimal`
  |                      | An optional element that documents the size of point
  |                      | (pip) in which a rate was quoted (or in this case,
  |                      | forwardPoints are calculated). Point (pip) size
  |                      | varies by currency pair: major currencies are all
  |                      | traded in points of 0.0001, with the exception of JPY
  |                      | which has a point size of 0.01. The FpML PointValue
  |                      | type is constrained such that the factor can only be
  |                      | values of 10^n, where n &lt;= 0, this constraint is
  |                      | not enforced here and is left to the implementor.
  | `quotedCurrencyPair` | `QuotedCurrencyPair`
  |                      | Defines the two currencies for an FX trade and the
  |                      | quotation relationship between the two currencies.
  | `rate`               | `Decimal`
  |                      | The rate of exchange between the two currencies of
  |                      | the leg of a deal. Must be specified with a quote
  |                      | basis.
  | `spotRate`           | `Optional` `Decimal`
  |                      | An element used for FX forwards and certain types of
  |                      | FX OTC options. For deals consummated in the FX
  |                      | Forwards Market, this represents the current market
  |                      | rate for a particular currency pair. For barrier and
  |                      | digital/binary options, it can be useful to include
  |                      | the spot rate at the time the option was executed to
  |                      | make it easier to know whether the option needs to
  |                      | move &#39;up&#39; or &#39;down&#39; to be triggered.

### `data` `ExchangeTradedFund`

  A class to specify an ETF as having a product
  identifier. As a difference versus the FpML standard,
  the CDM structure of this class only includes the
  productIdentifier class, which consists of an
  identifier, productTaxonomy, and source of the
  identifier. The reason for this approach is to avoid
  the potential for conflicting information between the
  information associated with the contractual product
  and the reference information maintained by the
  relevant service provider.
* `ExchangeTradedFund`

  | Field               | Type/Description |
  | :------------------ | :----------------
  | `productIdentifier` | `ProductIdentifier`

### `data` `Execution`

  A class to specify an execution, which consists
  essentially in the economic terms which are agreed
  between the parties, alongside with the qualification
  of the type of execution. The associated rosettaKey
  denotes the ability to associate a hash value to the
  respective Execution instantiations for the purpose
  of model cross-referencing, in support of
  functionality such as the event effect and the
  lineage.
* `Execution`

  | Field                | Type/Description |
  | :------------------- | :----------------
  | `closedState`        | `Optional` `ClosedState`
  |                      | The qualification what led to the execution closure
  |                      | alongside with the dates on which this closure takes
  |                      | effect.
  | `contractualProduct` | `ContractualProduct`
  | `executionType`      | `ExecutionTypeEnum`
  |                      | Specifies the type of execution, e.g. via voice,
  |                      | electronically...
  | `executionVenue`     | `Optional` `LegalEntity`
  |                      | The execution venue identification, when applicable.
  | `identifier`         | `[` `Identifier` `]`
  |                      | The identifier(s) associated with the execution.
  | `party`              | `[` `Party` `]`
  |                      | The party reference is optional because positioned as
  |                      | part of the Event class when the execution is
  |                      | specified as part of such context.
  | `partyRole`          | `[` `PartyRole` `]`
  |                      | The role(s) that party(ies) may have in relation to
  |                      | the execution, further to the principal parties (i.e
  |                      | payer/receive or buyer/seller) to it.
  | `rosettaKey`         | `Text`
  | `tradeDate`          | `FieldWithMeta` `Date`
  |                      | The trade/execution date.

### `data` `ExecutionState`

  A class to specify an execution instantiation with
  respect to the before and/or after state of lifecycle
  events.
* `ExecutionState`

  | Field       | Type/Description |
  | :---------- | :----------------
  | `execution` | `Execution`

### `data` `ExerciseEvent`

  A class defining the adjusted dates associated with a
  particular exercise event.
* `ExerciseEvent`

  | Field                                 | Type/Description |
  | :------------------------------------ | :----------------
  | `adjustedCashSettlementPaymentDate`   | `Optional` `Date`
  |                                       | The date on which the cash settlement amount is paid.
  |                                       | This date should already be adjusted for any
  |                                       | applicable business day convention.
  | `adjustedCashSettlementValuationDate` | `Optional` `Date`
  |                                       | The date by which the cash settlement amount must be
  |                                       | agreed. This date should already be adjusted for any
  |                                       | applicable business day convention.
  | `adjustedExerciseDate`                | `Date`
  |                                       | The date on which the option exercise takes place.
  |                                       | This date should already be adjusted for any
  |                                       | applicable business day convention.
  | `adjustedExerciseFeePaymentDate`      | `Optional` `Date`
  |                                       | The date on which the exercise fee amount is paid.
  |                                       | This date should already be adjusted for any
  |                                       | applicable business day convention.
  | `adjustedRelevantSwapEffectiveDate`   | `Date`
  |                                       | The effective date of the underlying swap associated
  |                                       | with a given exercise date. This date should already
  |                                       | be adjusted for any applicable business day
  |                                       | convention.
  | `id`                                  | `Optional` `Text`

### `data` `ExerciseFee`

  A class defining the fee payable on exercise of an
  option. This fee may be defined as an amount or a
  percentage of the notional exercised. As a difference
  with FpML, it extends the BuyerSeller class.
* `ExerciseFee`

  | Field                    | Type/Description |
  | :----------------------- | :----------------
  | `buyerAccountReference`  | `Optional` `(` `ReferenceWithMeta` `Account` `)`
  |                          | A reference to the account that buys this instrument.
  | `buyerPartyReference`    | `ReferenceWithMeta` `Party`
  |                          | A reference to the party that buys this instrument,
  |                          | i.e. pays for this instrument and receives the rights
  |                          | defined by it. ISDA 2002 Equity Definitions section
  |                          | 1.18: `Buyer` means the party specified as such in
  |                          | the related Confirmation. | ISDA 2006 Definitions
  |                          | article 12.1 (b)(i) relating to a Swaption:
  |                          | &#39;Buyer&#39; means the party that will, on each
  |                          | Premium Payment Date, pay to Seller the Premium |
  |                          | ISDA 2006 Definitions article 12.1 (b)(ii) relating
  |                          | to Swap Transactions with applicable Early
  |                          | Termination: the party specified as such in the
  |                          | related Confirmation, or the Exercising Party if
  |                          | neither party is specified | ISDA 2006 Definitions
  |                          | article 12.1 (b)(iii) relating to any other Option
  |                          | Transaction: the party specified as such in the
  |                          | related Confirmation. | ISDA 2014 Credit Definition
  |                          | article 1.4: `Buyer` means the Fixed Rate Payer.
  | `feeAmount`              | `Optional` `Decimal`
  |                          | The amount of fee to be paid on exercise. The fee
  |                          | currency is that of the referenced notional.
  | `feePaymentDate`         | `RelativeDateOffset`
  |                          | The date on which exercise fee(s) will be paid. It is
  |                          | specified as a relative date.
  | `feeRate`                | `Optional` `Decimal`
  |                          | A fee represented as a percentage of some referenced
  |                          | notional. A percentage of 5% would be represented as
  |                          | 0.05.
  | `notionalReference`      | `ReferenceWithMeta` `Money`
  |                          | A pointer style reference to the associated notional
  |                          | schedule defined elsewhere in the document.
  | `sellerAccountReference` | `Optional` `(` `ReferenceWithMeta` `Account` `)`
  |                          | A reference to the account that sells this
  |                          | instrument.
  | `sellerPartyReference`   | `ReferenceWithMeta` `Party`
  |                          | A reference to the party that sells
  |                          | (&#39;writes&#39;) this instrument, i.e. that grants
  |                          | the rights defined by this instrument and in return
  |                          | receives a payment for it. ISDA 2002 Equity
  |                          | Definitions section 1.19: `Seller` means the party
  |                          | specified as such in the related Confirmation. | ISDA
  |                          | 2006 Definitions article 12.1 (a)(i) relating to a
  |                          | Swaption: &#39;Seller&#39; means the party the party
  |                          | specified as such or as writer in the related
  |                          | Confirmation | ISDA 2006 Definitions article 12.1
  |                          | (a)(ii) relating to Swap Transactions with applicable
  |                          | Early Termination: the party specified as such or as
  |                          | writer in the related Confirmation or, if neither
  |                          | party is specified as such, the Non-exercising Party
  |                          | | ISDA 2006 Definitions article 12.1 (a)(iii)
  |                          | relating to any other Option Transaction: the party
  |                          | specified as such in the related Confirmation. | ISDA
  |                          | 2014 Credit Definition article 1.4: `Seller` means
  |                          | the Floating Rate Payer.

### `data` `ExerciseFeeSchedule`

  A class to define a fee or schedule of fees to be
  payable on the exercise of an option. This fee may be
  defined as an amount or a percentage of the notional
  exercised. As a difference with FpML, it extends the
  BuyerSeller class.
* `ExerciseFeeSchedule`

  | Field                      | Type/Description |
  | :------------------------- | :----------------
  | `feeAmountSchedule`        | `Optional` `AmountSchedule`
  |                            | The exercise fee amount schedule. The fees are
  |                            | expressed as currency amounts. The currency of the
  |                            | fee is assumed to be that of the notional schedule
  |                            | referenced.
  | `feePaymentDate`           | `RelativeDateOffset`
  |                            | The date on which exercise fee(s) will be paid. It is
  |                            | specified as a relative date.
  | `feeRateSchedule`          | `Optional` `Schedule`
  |                            | The exercise free rate schedule. The fees are
  |                            | expressed as percentage rates of the notional being
  |                            | exercised. The currency of the fee is assumed to be
  |                            | that of the notional schedule referenced.
  | `notionalReference`        | `ReferenceWithMeta` `Money`
  |                            | A pointer style reference to the associated notional
  |                            | schedule defined elsewhere in the document.
  | `payerAccountReference`    | `Optional` `(` `ReferenceWithMeta` `Account` `)`
  |                            | A reference to the account responsible for making the
  |                            | payments defined by this structure.
  | `payerPartyReference`      | `ReferenceWithMeta` `Party`
  |                            | A reference to the party responsible for making the
  |                            | payments defined by this structure.
  | `receiverAccountReference` | `Optional` `(` `ReferenceWithMeta` `Account` `)`
  |                            | A reference to the account that receives the payments
  |                            | corresponding to this structure.
  | `receiverPartyReference`   | `ReferenceWithMeta` `Party`
  |                            | A reference to the party that receives the payments
  |                            | corresponding to this structure.

### `data` `ExerciseNotice`

  A class defining to whom and where notice of
  execution should be given. The partyReference refers
  to one of the principal parties of the trade. If
  present the exerciseNoticePartyReference refers to a
  party, other than the principal party, to whom notice
  should be given.
* `ExerciseNotice`

  | Field                          | Type/Description |
  | :----------------------------- | :----------------
  | `businessCenter`               | `FieldWithMeta` `BusinessCenterEnum`
  |                                | The business center.
  | `exerciseNoticePartyReference` | `Optional` `(` `ReferenceWithMeta` `Party` `)`
  |                                | The party referenced is the party to which notice of
  |                                | exercise should be given by the buyer.
  | `partyReference`               | `ReferenceWithMeta` `Party`
  |                                | The party referenced has allocated the trade
  |                                | identifier.

### `data` `ExerciseOutcome`

  The exercise outcome combines the option contract
  (which states would be &#39;Exercised&#39; in case of
  a full exercise and which would have a reduced
  notional in case of partial exercise) and either a
  physical or partial exercise.
* `ExerciseOutcome`

  | Field              | Type/Description |
  | :----------------- | :----------------
  | `cashExercise`     | `Optional` `Cashflow`
  | `contract`         | `Contract`
  | `physicalExercise` | `Optional` `PhysicalExercise`

### `data` `ExercisePeriod`

  This defines the time interval to the start of the
  exercise period, i.e. the earliest exercise date, and
  the frequency of subsequent exercise dates (if any).
* `ExercisePeriod`

  | Field                       | Type/Description |
  | :-------------------------- | :----------------
  | `earliestExerciseDateTenor` | `Period`
  |                             | The time interval to the first (and possibly only)
  |                             | exercise date in the exercise period.
  | `exerciseFrequency`         | `Optional` `Period`
  |                             | The frequency of subsequent exercise dates in the
  |                             | exercise period following the earliest exercise date.
  |                             | An interval of 1 day should be used to indicate an
  |                             | American style exercise period.
  | `id`                        | `Optional` `Text`

### `data` `ExercisePrimitive`

  This primitive leverages the FpML OptionExercise
  construct, except for the exerciseTiming which is
  deemed as associated to a request for exercise that
  is meant to take place, as opposed to the actual
  exercise event.
* `ExercisePrimitive`

  | Field          | Type/Description |
  | :------------- | :----------------
  | `after`        | `ExerciseOutcome`
  | `before`       | `ContractState`
  | `exerciseDate` | `Optional` `AdjustableOrAdjustedDate`
  | `exerciseTime` | `Optional` `BusinessCenterTime`
  | `fullExercise` | `Bool`

### `data` `ExerciseProcedure`

  A class describing how notice of exercise should be
  given. This can be either manual or automatic.
* `ExerciseProcedure`

  | Field                   | Type/Description |
  | :---------------------- | :----------------
  | `automaticExercise`     | `Optional` `AutomaticExercise`
  |                         | If automatic is specified, then the notional amount
  |                         | of the underlying swap not previously exercised under
  |                         | the swaption will be automatically exercised at the
  |                         | expiration time on the expiration date if at such
  |                         | time the buyer is in-the-money, provided that the
  |                         | difference between the settlement rate and the fixed
  |                         | rate under the relevant underlying swap is not less
  |                         | than the specified threshold rate. The term
  |                         | in-the-money is assumed to have the meaning defining
  |                         | in the 2000 ISDA Definitions, Section 17.4
  |                         | In-the-money.
  | `followUpConfirmation`  | `Bool`
  |                         | A flag to indicate whether follow-up confirmation of
  |                         | exercise (written or electronic) is required
  |                         | following telephonic notice by the buyer to the
  |                         | seller or seller&#39;s agent.
  | `limitedRightToConfirm` | `Optional` `Bool`
  |                         | Has the meaning defined as part of the 1997 ISDA
  |                         | Government Bond Option Definitions, section 4.5
  |                         | Limited Right to Confirm Exercise. If present, (i)
  |                         | the Seller may request the Buyer to confirm its
  |                         | intent if not done on or before the expiration time
  |                         | on the Expiration date (ii) specific rules will apply
  |                         | in relation to the settlement mode.
  | `manualExercise`        | `Optional` `ManualExercise`
  |                         | Specifies that the notice of exercise must be given
  |                         | by the buyer to the seller or seller&#39;s agent.
  | `splitTicket`           | `Optional` `Bool`
  |                         | Typically applicable to the physical settlement of
  |                         | bond and convertible bond options. If present, means
  |                         | that the party required to deliver the bonds will
  |                         | divide those to be delivered as notifying party
  |                         | desires to facilitate delivery obligations.

### `data` `ExtendibleProvision`

  A class defining an option to extend an existing swap
  transaction on the specified exercise dates for a
  term ending on the specified new termination date. As
  a difference from FpML, it extends the BuyerSeller
  class, which represents the BuyerSeller.model.
* `ExtendibleProvision`

  | Field                              | Type/Description |
  | :--------------------------------- | :----------------
  | `americanExercise`                 | `Optional` `AmericanExercise`
  |                                    | American exercise. FpML implementations consists in
  |                                    | an exercise substitution group.
  | `bermudaExercise`                  | `Optional` `BermudaExercise`
  |                                    | Bermuda exercise. FpML implementations consists in an
  |                                    | exercise substitution group.
  | `buyerAccountReference`            | `Optional` `(` `ReferenceWithMeta` `Account` `)`
  |                                    | A reference to the account that buys this instrument.
  | `buyerPartyReference`              | `ReferenceWithMeta` `Party`
  |                                    | A reference to the party that buys this instrument,
  |                                    | i.e. pays for this instrument and receives the rights
  |                                    | defined by it. ISDA 2002 Equity Definitions section
  |                                    | 1.18: `Buyer` means the party specified as such in
  |                                    | the related Confirmation. | ISDA 2006 Definitions
  |                                    | article 12.1 (b)(i) relating to a Swaption:
  |                                    | &#39;Buyer&#39; means the party that will, on each
  |                                    | Premium Payment Date, pay to Seller the Premium |
  |                                    | ISDA 2006 Definitions article 12.1 (b)(ii) relating
  |                                    | to Swap Transactions with applicable Early
  |                                    | Termination: the party specified as such in the
  |                                    | related Confirmation, or the Exercising Party if
  |                                    | neither party is specified | ISDA 2006 Definitions
  |                                    | article 12.1 (b)(iii) relating to any other Option
  |                                    | Transaction: the party specified as such in the
  |                                    | related Confirmation. | ISDA 2014 Credit Definition
  |                                    | article 1.4: `Buyer` means the Fixed Rate Payer.
  | `europeanExercise`                 | `Optional` `EuropeanExercise`
  |                                    | European exercise. FpML implementations consists in
  |                                    | an exercise substitution group.
  | `exerciseNotice`                   | `Optional` `ExerciseNotice`
  |                                    | Definition of the party to whom notice of exercise
  |                                    | should be given.
  | `extendibleProvisionAdjustedDates` | `Optional` `ExtendibleProvisionAdjustedDates`
  |                                    | The adjusted dates associated with an extendible
  |                                    | provision. These dates have been adjusted for any
  |                                    | applicable business day convention.
  | `followUpConfirmation`             | `Bool`
  |                                    | A flag to indicate whether follow-up confirmation of
  |                                    | exercise (written or electronic) is required
  |                                    | following telephonic notice by the buyer to the
  |                                    | seller or seller&#39;s agent.
  | `sellerAccountReference`           | `Optional` `(` `ReferenceWithMeta` `Account` `)`
  |                                    | A reference to the account that sells this
  |                                    | instrument.
  | `sellerPartyReference`             | `ReferenceWithMeta` `Party`
  |                                    | A reference to the party that sells
  |                                    | (&#39;writes&#39;) this instrument, i.e. that grants
  |                                    | the rights defined by this instrument and in return
  |                                    | receives a payment for it. ISDA 2002 Equity
  |                                    | Definitions section 1.19: `Seller` means the party
  |                                    | specified as such in the related Confirmation. | ISDA
  |                                    | 2006 Definitions article 12.1 (a)(i) relating to a
  |                                    | Swaption: &#39;Seller&#39; means the party the party
  |                                    | specified as such or as writer in the related
  |                                    | Confirmation | ISDA 2006 Definitions article 12.1
  |                                    | (a)(ii) relating to Swap Transactions with applicable
  |                                    | Early Termination: the party specified as such or as
  |                                    | writer in the related Confirmation or, if neither
  |                                    | party is specified as such, the Non-exercising Party
  |                                    | | ISDA 2006 Definitions article 12.1 (a)(iii)
  |                                    | relating to any other Option Transaction: the party
  |                                    | specified as such in the related Confirmation. | ISDA
  |                                    | 2014 Credit Definition article 1.4: `Seller` means
  |                                    | the Floating Rate Payer.

### `data` `ExtendibleProvisionAdjustedDates`

  A class defining the adjusted dates associated with a
  provision to extend a swap.
* `ExtendibleProvisionAdjustedDates`

  | Field            | Type/Description |
  | :--------------- | :----------------
  | `extensionEvent` | `[` `ExtensionEvent` `]`
  |                  | The adjusted dates associated with a single
  |                  | extendible exercise date.

### `data` `ExtensionEvent`

  A class to define the adjusted dates associated with
  an individual extension event.
* `ExtensionEvent`

  | Field                             | Type/Description |
  | :-------------------------------- | :----------------
  | `adjustedExerciseDate`            | `Date`
  |                                   | The date on which option exercise takes place. This
  |                                   | date should already be adjusted for any applicable
  |                                   | business day convention.
  | `adjustedExtendedTerminationDate` | `Date`
  |                                   | The termination date if an extendible provision is
  |                                   | exercised. This date should already be adjusted for
  |                                   | any applicable business day convention.
  | `id`                              | `Optional` `Text`

### `data` `ExtraordinaryEvents`

  Where the underlying is shares, defines market events
  affecting the issuer of those shares that may require
  the terms of the transaction to be adjusted.
* `ExtraordinaryEvents`

  | Field                                | Type/Description |
  | :----------------------------------- | :----------------
  | `additionalDisruptionEvents`         | `Optional` `AdditionalDisruptionEvents`
  |                                      | 2002 ISDA Equity Derivatives Definitions: Additional
  |                                      | Disruption Events | 2018 ISDA CDM Equity Confirmation
  |                                      | for Security Equity Swap: Additional Disruption
  |                                      | Events means each Additional Disruption Event
  |                                      | specified in the Confirmation Side Letter. For the
  |                                      | avoidance of doubt, each Additional Disruption Event
  |                                      | shall be an Extraordinary Event.
  | `compositionOfCombinedConsideration` | `Optional` `Bool`
  |                                      | 2002 ISDA Equity Derivatives Definitions: Composition
  |                                      | of Combined Consideration | 2018 ISDA CDM Equity
  |                                      | Confirmation for Security Equity Swap: Combined
  |                                      | Consideration | If present and true, then composition
  |                                      | of combined consideration is applicable.
  | `delisting`                          | `Optional` `NationalizationOrInsolvencyOrDelistingEventEnum`
  |                                      | 2002 ISDA Equity Derivatives Definitions: Delisting |
  |                                      | 2018 ISDA CDM Equity Confirmation for Security Equity
  |                                      | Swap: Delisting means Delisting (Broad Relisting) or
  |                                      | Delisting (Narrow Relisting), as specified in the
  |                                      | Relationship Supplement.
  | `failureToDeliver`                   | `Optional` `Bool`
  |                                      | If true, failure to deliver is applicable.
  | `indexAdjustmentEvents`              | `Optional` `IndexAdjustmentEvents`
  |                                      | 2002 ISDA Equity Derivatives Definitions: Adjustments
  |                                      | to Indices |
  | `mergerEvents`                       | `Optional` `EquityCorporateEvents`
  |                                      | 2018 ISDA CDM Equity Confirmation for Security Equity
  |                                      | Swap: Merger Event shall occur if a Merger occurs and
  |                                      | the Merger Date is on or before the final Equity
  |                                      | Valuation Date | Occurs when the underlying ceases to
  |                                      | exist following a merger between the Issuer and
  |                                      | another company.
  | `nationalizationOrInsolvency`        | `Optional` `NationalizationOrInsolvencyOrDelistingEventEnum`
  |                                      | 2002 ISDA Equity Derivatives Definitions:
  |                                      | Nationalization and Insolvency | 2018 ISDA CDM Equity
  |                                      | Confirmation for Security Equity Swap:
  |                                      | Nationalization shall occur if all the Securities or
  |                                      | all or substantially all the assets of an Issuer are
  |                                      | nationalized, expropriated or are otherwise required
  |                                      | to be transferred to any governmental agency,
  |                                      | authority, entity or instrumentality thereof.
  |                                      | Insolvency Filing means as defined in the
  |                                      | Confirmation Side Letter.
  | `representations`                    | `Optional` `Representations`
  | `tenderOfferEvents`                  | `Optional` `EquityCorporateEvents`
  |                                      | 2002 ISDA Equity Derivatives Definitions: Tender
  |                                      | Offers | 2018 ISDA CDM Equity Confirmation for
  |                                      | Security Equity Swap: Tender Offer Event

### `data` `FailureToPay`

* `FailureToPay`

  | Field                  | Type/Description |
  | :--------------------- | :----------------
  | `applicable`           | `Bool`
  |                        | Indicates whether the failure to pay provision is
  |                        | applicable.
  | `gracePeriodExtension` | `Optional` `GracePeriodExtension`
  |                        | If this element is specified, indicates whether or
  |                        | not a grace period extension is applicable. ISDA 2003
  |                        | Term: Grace Period Extension Applicable.
  | `paymentRequirement`   | `Optional` `Money`
  |                        | Specifies a threshold for the failure to pay credit
  |                        | event. Market standard is USD 1,000,000 (JPY
  |                        | 100,000,000 for Japanese Yen trades) or its
  |                        | equivalent in the relevant obligation currency. This
  |                        | is applied on an aggregate basis across all
  |                        | Obligations of the Reference Entity. Intended to
  |                        | prevent technical/operational errors from triggering
  |                        | credit events. ISDA 2003 Term: Payment Requirement

### `data` `FallbackReferencePrice`

  The method, prioritised by the order it is listed in
  this element, to get a replacement rate for the
  disrupted settlement rate option.
* `FallbackReferencePrice`

  | Field                                 | Type/Description |
  | :------------------------------------ | :----------------
  | `calculationAgentDetermination`       | `Optional` `CalculationAgent`
  |                                       | The calculation agent will decide the rate.
  | `fallBackSettlementRateOption`        | `[` `FieldWithMeta` `SettlementRateOptionEnum` `]`
  |                                       | This settlement rate option will be used in its
  |                                       | place.
  | `fallbackSurveyValuationPostponement` | `Optional` `Bool`
  |                                       | Request rate quotes from the market. This element is
  |                                       | set as type Empty in FpML. When present, the FpML
  |                                       | synonym is mapped to a value True in the CDM.
  | `valuationPostponement`               | `Optional` `ValuationPostponement`
  |                                       | Specifies how long to wait to get a quote from a
  |                                       | settlement rate option upon a price source
  |                                       | disruption.

### `data` `FeaturePayment`

  Payment made following trigger occurrence.
* `FeaturePayment`

  | Field             | Type/Description |
  | :---------------- | :----------------
  | `amount`          | `Optional` `Decimal`
  |                   | The monetary quantity in currency units.
  | `currency`        | `Optional` `(` `FieldWithMeta` `Text` `)`
  |                   | The currency in which an amount is denominated.
  | `id`              | `Optional` `Text`
  | `levelPercentage` | `Optional` `Decimal`
  |                   | The trigger level percentage.
  | `payerReceiver`   | `PayerReceiver`
  |                   | This attribute doesn&#39;t exist as part of the FpML
  |                   | construct, which makes use of the PayerReceiver.model
  |                   | group.
  | `paymentDate`     | `Optional` `AdjustableOrRelativeDate`
  |                   | The feature payment date.
  | `time`            | `Optional` `TimeTypeEnum`
  |                   | The feature payment time.

### `data` `FinalCalculationPeriodDateAdjustment`

  A class to define business date convention adjustment
  to final payment period per leg.
* `FinalCalculationPeriodDateAdjustment`

  | Field                             | Type/Description |
  | :-------------------------------- | :----------------
  | `businessDayConvention`           | `BusinessDayConventionEnum`
  |                                   | Override business date convention. This takes
  |                                   | precedence over leg level information.
  | `relevantUnderlyingDateReference` | `ReferenceWithMeta` `AdjustableOrRelativeDates`
  |                                   | Reference to the unadjusted cancellation effective
  |                                   | dates.
  | `swapStreamReference`             | `ReferenceWithMeta` `InterestRatePayout`
  |                                   | Reference to the leg, where date adjustments may
  |                                   | apply.

### `data` `FloatingAmountEvents`

  A class to specify the ISDA terms relating to the
  floating rate payment events and the implied
  additional fixed payments, applicable to the credit
  derivatives transactions on mortgage-backed
  securities with pay-as-you-go or physical settlement.
* `FloatingAmountEvents`

  | Field                      | Type/Description |
  | :------------------------- | :----------------
  | `additionalFixedPayments`  | `Optional` `AdditionalFixedPayments`
  |                            | Specifies the events that will give rise to the
  |                            | payment additional fixed payments.
  | `failureToPayPrincipal`    | `Optional` `Bool`
  |                            | A floating rate payment event. Corresponds to the
  |                            | failure by the Reference Entity to pay an expected
  |                            | principal amount or the payment of an actual
  |                            | principal amount that is less than the expected
  |                            | principal amount. ISDA 2003 Term: Failure to Pay
  |                            | Principal.
  | `floatingAmountProvisions` | `Optional` `FloatingAmountProvisions`
  |                            | Specifies the floating amount provisions associated
  |                            | with the floatingAmountEvents.
  | `impliedWritedown`         | `Optional` `Bool`
  |                            | A floating rate payment event. Results from the fact
  |                            | that losses occur to the underlying instruments that
  |                            | do not result in reductions of the outstanding
  |                            | principal of the reference obligation.
  | `interestShortfall`        | `Optional` `InterestShortFall`
  |                            | A floating rate payment event. With respect to any
  |                            | Reference Obligation Payment Date, either (a) the
  |                            | non-payment of an Expected Interest Amount or (b) the
  |                            | payment of an Actual Interest Amount that is less
  |                            | than the Expected Interest Amount. ISDA 2003 Term:
  |                            | Interest Shortfall.
  | `writedown`                | `Optional` `Bool`
  |                            | A floating rate payment event. Results from the fact
  |                            | that the underlier writes down its outstanding
  |                            | principal amount. ISDA 2003 Term: Writedown.

### `data` `FloatingAmountProvisions`

* `FloatingAmountProvisions`

  | Field                     | Type/Description |
  | :------------------------ | :----------------
  | `stepUpProvision`         | `Optional` `Bool`
  |                           | As specified by the ISDA Standard Terms Supplement
  |                           | for use with trades on mortgage-backed securities.
  |                           | The presence of the element with value set to
  |                           | &#39;true&#39; signifies that the provision is
  |                           | applicable. If applicable, the applicable step-up
  |                           | terms are specified as part of that ISDA Standard
  |                           | Terms Supplement. From a usage standpoint, this
  |                           | provision is typically applicable in the case of RMBS
  |                           | and not applicable in case of CMBS trades.
  | `wacCapInterestProvision` | `Optional` `Bool`
  |                           | As specified by the ISDA Supplement for use with
  |                           | trades on mortgage-backed securities, &#39;WAC
  |                           | Cap&#39; means a weighted average coupon or weighted
  |                           | average rate cap provision (however defined in the
  |                           | Underlying Instruments) of the Underlying Instruments
  |                           | that limits, increases or decreases the interest rate
  |                           | or interest entitlement, as set out in the Underlying
  |                           | Instruments on the Effective Date without regard to
  |                           | any subsequent amendment The presence of the element
  |                           | with value set to &#39;true&#39; signifies that the
  |                           | provision is applicable. From a usage standpoint,
  |                           | this provision is typically applicable in the case of
  |                           | CMBS and not applicable in case of RMBS trades.

### `data` `FloatingRate`

  A class defining a floating interest rate through the
  specification of the floating rate index, the tenor,
  the multiplier schedule, the spread, the
  qualification of whether a specific rate treatment
  and/or a cap or floor apply.
* `FloatingRate`

  | Field                            | Type/Description |
  | :------------------------------- | :----------------
  | `capRateSchedule`                | `[` `StrikeSchedule` `]`
  |                                  | The cap rate or cap rate schedule, if any, which
  |                                  | applies to the floating rate. The cap rate (strike)
  |                                  | is only required where the floating rate on a swap
  |                                  | stream is capped at a certain level. A cap rate
  |                                  | schedule is expressed as explicit cap rates and dates
  |                                  | and the step dates may be subject to adjustment in
  |                                  | accordance with any adjustments specified in
  |                                  | calculationPeriodDatesAdjustments. The cap rate is
  |                                  | assumed to be exclusive of any spread and is a per
  |                                  | annum rate, expressed as a decimal. A cap rate of 5%
  |                                  | would be represented as 0.05.
  | `floatingRateIndex`              | `FieldWithMeta` `FloatingRateIndexEnum`
  |                                  | The reference index that is used to specify the
  |                                  | floating interest rate. The FpML standard maintains
  |                                  | the list of such indices, which are positioned as
  |                                  | enumeration values as part of the CDM.
  | `floatingRateMultiplierSchedule` | `Optional` `Schedule`
  |                                  | A rate multiplier or multiplier schedule to apply to
  |                                  | the floating rate. A multiplier schedule is expressed
  |                                  | as explicit multipliers and dates. In the case of a
  |                                  | schedule, the step dates may be subject to adjustment
  |                                  | in accordance with any adjustments specified in the
  |                                  | calculationPeriodDatesAdjustments. The multiplier can
  |                                  | be a positive or negative decimal. This element
  |                                  | should only be included if the multiplier is not
  |                                  | equal to 1 (one) for the term of the stream.
  | `floorRateSchedule`              | `[` `StrikeSchedule` `]`
  |                                  | The floor rate or floor rate schedule, if any, which
  |                                  | applies to the floating rate. The floor rate (strike)
  |                                  | is only required where the floating rate on a swap
  |                                  | stream is floored at a certain strike level. A floor
  |                                  | rate schedule is expressed as explicit floor rates
  |                                  | and dates and the step dates may be subject to
  |                                  | adjustment in accordance with any adjustments
  |                                  | specified in calculationPeriodDatesAdjustments. The
  |                                  | floor rate is assumed to be exclusive of any spread
  |                                  | and is a per annum rate, expressed as a decimal. A
  |                                  | floor rate of 5% would be represented as 0.05.
  | `id`                             | `Optional` `Text`
  | `indexTenor`                     | `Optional` `Period`
  |                                  | The ISDA Designated Maturity, i.e. the floating rate
  |                                  | tenor.
  | `rateTreatment`                  | `Optional` `RateTreatmentEnum`
  |                                  | The specification of any rate conversion which needs
  |                                  | to be applied to the observed rate before being used
  |                                  | in any calculations. The two common conversions are
  |                                  | for securities quoted on a bank discount basis which
  |                                  | will need to be converted to either a Money Market
  |                                  | Yield or Bond Equivalent Yield. See the Annex to the
  |                                  | 2000 ISDA Definitions, Section 7.3. Certain General
  |                                  | Definitions Relating to Floating Rate Options,
  |                                  | paragraphs (g) and (h) for definitions of these
  |                                  | terms.
  | `spreadSchedule`                 | `[` `SpreadSchedule` `]`
  |                                  | The ISDA Spread or a Spread schedule expressed as
  |                                  | explicit spreads and dates. In the case of a
  |                                  | schedule, the step dates may be subject to adjustment
  |                                  | in accordance with any adjustments specified in
  |                                  | calculationPeriodDatesAdjustments. The spread is a
  |                                  | per annum rate, expressed as a decimal. For purposes
  |                                  | of determining a calculation period amount, if
  |                                  | positive the spread will be added to the floating
  |                                  | rate and if negative the spread will be subtracted
  |                                  | from the floating rate. A positive 10 basis point
  |                                  | (0.1%) spread would be represented as 0.001.

### `data` `FloatingRateDefinition`

  A class defining parameters associated with a
  floating rate reset. This class forms part of the
  cashflows representation of a stream.
* `FloatingRateDefinition`

  | Field                    | Type/Description |
  | :----------------------- | :----------------
  | `calculatedRate`         | `Optional` `Decimal`
  |                          | The final calculated rate for a calculation period
  |                          | after any required averaging of rates A calculated
  |                          | rate of 5% would be represented as 0.05.
  | `capRate`                | `[` `Strike` `]`
  |                          | The cap rate, if any, which applies to the floating
  |                          | rate for the calculation period. The cap rate
  |                          | (strike) is only required where the floating rate on
  |                          | a swap stream is capped at a certain strike level.
  |                          | The cap rate is assumed to be exclusive of any spread
  |                          | and is a per annum rate, expressed as a decimal. A
  |                          | cap rate of 5% would be represented as 0.05.
  | `floatingRateMultiplier` | `Optional` `Decimal`
  |                          | A rate multiplier to apply to the floating rate. The
  |                          | multiplier can be a positive or negative decimal.
  |                          | This element should only be included if the
  |                          | multiplier is not equal to 1 (one).
  | `floorRate`              | `[` `Strike` `]`
  |                          | The floor rate, if any, which applies to the floating
  |                          | rate for the calculation period. The floor rate
  |                          | (strike) is only required where the floating rate on
  |                          | a swap stream is floored at a certain strike level.
  |                          | The floor rate is assumed to be exclusive of any
  |                          | spread and is a per annum rate, expressed as a
  |                          | decimal. The floor rate of 5% would be represented as
  |                          | 0.05.
  | `rateObservation`        | `[` `RateObservation` `]`
  |                          | The details of a particular rate observation,
  |                          | including the fixing date and observed rate. A list
  |                          | of rate observation elements may be ordered in the
  |                          | document by ascending adjusted fixing date. An FpML
  |                          | document containing an unordered list of rate
  |                          | observations is still regarded as a conformant
  |                          | document.
  | `spread`                 | `Optional` `Decimal`
  |                          | The ISDA Spread, if any, which applies for the
  |                          | calculation period. The spread is a per annum rate,
  |                          | expressed as a decimal. For purposes of determining a
  |                          | calculation period amount, if positive the spread
  |                          | will be added to the floating rate and if negative
  |                          | the spread will be subtracted from the floating rate.
  |                          | A positive 10 basis point (0.1%) spread would be
  |                          | represented as 0.001.

### `data` `FloatingRateSpecification`

  A class to specify the floating interest rate by
  extending the floating rate definition with a set of
  attributes that specify such rate: the initial value
  specified as part of the trade, the rounding
  convention, the averaging method and the negative
  interest rate treatment.
* `FloatingRateSpecification`

  | Field                            | Type/Description |
  | :------------------------------- | :----------------
  | `averagingMethod`                | `Optional` `AveragingMethodEnum`
  |                                  | If averaging is applicable, this component specifies
  |                                  | whether a weighted or unweighted average method of
  |                                  | calculation is to be used. The component must only be
  |                                  | included when averaging applies.
  | `capRateSchedule`                | `[` `StrikeSchedule` `]`
  |                                  | The cap rate or cap rate schedule, if any, which
  |                                  | applies to the floating rate. The cap rate (strike)
  |                                  | is only required where the floating rate on a swap
  |                                  | stream is capped at a certain level. A cap rate
  |                                  | schedule is expressed as explicit cap rates and dates
  |                                  | and the step dates may be subject to adjustment in
  |                                  | accordance with any adjustments specified in
  |                                  | calculationPeriodDatesAdjustments. The cap rate is
  |                                  | assumed to be exclusive of any spread and is a per
  |                                  | annum rate, expressed as a decimal. A cap rate of 5%
  |                                  | would be represented as 0.05.
  | `finalRateRounding`              | `Optional` `Rounding`
  |                                  | The rounding convention to apply to the final rate
  |                                  | used in determination of a calculation period amount.
  | `floatingRateIndex`              | `FieldWithMeta` `FloatingRateIndexEnum`
  |                                  | The reference index that is used to specify the
  |                                  | floating interest rate. The FpML standard maintains
  |                                  | the list of such indices, which are positioned as
  |                                  | enumeration values as part of the CDM.
  | `floatingRateMultiplierSchedule` | `Optional` `Schedule`
  |                                  | A rate multiplier or multiplier schedule to apply to
  |                                  | the floating rate. A multiplier schedule is expressed
  |                                  | as explicit multipliers and dates. In the case of a
  |                                  | schedule, the step dates may be subject to adjustment
  |                                  | in accordance with any adjustments specified in the
  |                                  | calculationPeriodDatesAdjustments. The multiplier can
  |                                  | be a positive or negative decimal. This element
  |                                  | should only be included if the multiplier is not
  |                                  | equal to 1 (one) for the term of the stream.
  | `floorRateSchedule`              | `[` `StrikeSchedule` `]`
  |                                  | The floor rate or floor rate schedule, if any, which
  |                                  | applies to the floating rate. The floor rate (strike)
  |                                  | is only required where the floating rate on a swap
  |                                  | stream is floored at a certain strike level. A floor
  |                                  | rate schedule is expressed as explicit floor rates
  |                                  | and dates and the step dates may be subject to
  |                                  | adjustment in accordance with any adjustments
  |                                  | specified in calculationPeriodDatesAdjustments. The
  |                                  | floor rate is assumed to be exclusive of any spread
  |                                  | and is a per annum rate, expressed as a decimal. A
  |                                  | floor rate of 5% would be represented as 0.05.
  | `id`                             | `Optional` `Text`
  | `indexTenor`                     | `Optional` `Period`
  |                                  | The ISDA Designated Maturity, i.e. the floating rate
  |                                  | tenor.
  | `initialRate`                    | `Optional` `Decimal`
  |                                  | The initial floating rate reset agreed between the
  |                                  | principal parties involved in the trade. This is
  |                                  | assumed to be the first required reset rate for the
  |                                  | first regular calculation period. It should only be
  |                                  | included when the rate is not equal to the rate
  |                                  | published on the source implied by the floating rate
  |                                  | index. An initial rate of 5% would be represented as
  |                                  | 0.05.
  | `negativeInterestRateTreatment`  | `Optional` `NegativeInterestRateTreatmentEnum`
  |                                  | The specification of any provisions for calculating
  |                                  | payment obligations when a floating rate is negative
  |                                  | (either due to a quoted negative floating rate or by
  |                                  | operation of a spread that is subtracted from the
  |                                  | floating rate).
  | `rateTreatment`                  | `Optional` `RateTreatmentEnum`
  |                                  | The specification of any rate conversion which needs
  |                                  | to be applied to the observed rate before being used
  |                                  | in any calculations. The two common conversions are
  |                                  | for securities quoted on a bank discount basis which
  |                                  | will need to be converted to either a Money Market
  |                                  | Yield or Bond Equivalent Yield. See the Annex to the
  |                                  | 2000 ISDA Definitions, Section 7.3. Certain General
  |                                  | Definitions Relating to Floating Rate Options,
  |                                  | paragraphs (g) and (h) for definitions of these
  |                                  | terms.
  | `spreadSchedule`                 | `[` `SpreadSchedule` `]`
  |                                  | The ISDA Spread or a Spread schedule expressed as
  |                                  | explicit spreads and dates. In the case of a
  |                                  | schedule, the step dates may be subject to adjustment
  |                                  | in accordance with any adjustments specified in
  |                                  | calculationPeriodDatesAdjustments. The spread is a
  |                                  | per annum rate, expressed as a decimal. For purposes
  |                                  | of determining a calculation period amount, if
  |                                  | positive the spread will be added to the floating
  |                                  | rate and if negative the spread will be subtracted
  |                                  | from the floating rate. A positive 10 basis point
  |                                  | (0.1%) spread would be represented as 0.001.

### `data` `ForeignExchange`

  From FpML: A type defining either a spot or forward
  FX transactions.
* `ForeignExchange`

  | Field                      | Type/Description |
  | :------------------------- | :----------------
  | `currencyValueDates`       | `Optional` `CurrencyValueDates`
  |                            | The dates on which each currency amount will be
  |                            | settled
  | `exchangeRate`             | `ExchangeRate`
  |                            | The rate of exchange between the two currencies.
  | `exchangedCurrency1`       | `Cashflow`
  |                            | This is the first of the two currency flows that
  |                            | define a single leg of a standard foreign exchange
  |                            | transaction.
  | `exchangedCurrency2`       | `Cashflow`
  |                            | This is the second of the two currency flows that
  |                            | define a single leg of a standard foreign exchange
  |                            | transaction.
  | `nonDeliverableSettlement` | `Optional` `FxCashSettlement`
  |                            | Used to describe a particular type of FX forward
  |                            | transaction that is settled in a single currency (for
  |                            | example, a non-deliverable forward).
  | `tenorPeriod`              | `Optional` `Period`
  |                            | A tenor expressed as a period type and multiplier
  |                            | (e.g. 1D, 1Y, etc.)

### `data` `ForwardPayout`

  Whether the payout is classified as spot or forward
  is done using product qualification, see isProduct
  ForeignExchange_Forward
* `ForwardPayout`

  | Field            | Type/Description |
  | :--------------- | :----------------
  | `product`        | `Product`
  |                  | The product underlying the forward contract
  | `settlementDate` | `Optional` `Date`
  |                  | For FX Forward, the settlement date (or value date)
  |                  | for each currency leg can be set individually.

### `data` `Frequency`

  A class for defining a date frequency, e.g. one day,
  three months, through the combination of an integer
  value and a standardized period value that is
  specified as part of an enumeration.
* `Frequency`

  | Field              | Type/Description |
  | :----------------- | :----------------
  | `id`               | `Optional` `Text`
  | `period`           | `PeriodExtendedEnum`
  |                    | A time period, e.g. a day, week, month, year or term
  |                    | of the stream.
  | `periodMultiplier` | `Int`
  |                    | A time period multiplier, e.g. 1, 2, or 3. If the
  |                    | period value is T (Term) then period multiplier must
  |                    | contain the value 1.

### `data` `FutureValueAmount`

  A class defining a currency amount as at a future
  value date.
* `FutureValueAmount`

  | Field                           | Type/Description |
  | :------------------------------ | :----------------
  | `amount`                        | `Decimal`
  |                                 | The monetary quantity in currency units.
  | `calculationPeriodNumberOfDays` | `Int`
  |                                 | The number of days from the adjusted calculation
  |                                 | period start date to the adjusted value date,
  |                                 | calculated in accordance with the applicable day
  |                                 | count fraction.
  | `currency`                      | `FieldWithMeta` `Text`
  |                                 | The currency in which the associated amount is
  |                                 | denominated. The list of valid currencies is not
  |                                 | presently positioned as an enumeration as part of the
  |                                 | CDM because that scope is limited to the values
  |                                 | specified by ISDA and FpML. As a result, implementers
  |                                 | have to make reference to the relevant standard, such
  |                                 | as the ISO 4217 standard for currency codes.
  | `id`                            | `Optional` `Text`
  | `valueDate`                     | `Date`
  |                                 | Adjusted value date of the future value amount.

### `data` `FxCashSettlement`

  A type that is used for describing cash settlement of
  an option / non deliverable forward. It includes the
  currency to settle into together with the fixings
  required to calculate the currency amount.
* `FxCashSettlement`

  | Field                | Type/Description |
  | :------------------- | :----------------
  | `fixing`             | `[` `FxFixing` `]`
  |                      | Specifies the source for and timing of a fixing of an
  |                      | exchange rate. This is used in the agreement of
  |                      | non-deliverable forward trades as well as various
  |                      | types of FX OTC options that require observations
  |                      | against a particular rate. This element is optional,
  |                      | permitting it to be omitted where fixing details are
  |                      | unavailable at the point of message creation. It has
  |                      | multiple occurrence to support the case where fixing
  |                      | details must be specified for more than one currency
  |                      | pair e.g. on an option settled into a third currency
  |                      | (that is not one of the option currencies).
  | `notionalAmount`     | `Optional` `Money`
  |                      | The amount of money that the settlement will be
  |                      | derived from.
  | `rateSourceFixing`   | `[` `FxRateSourceFixing` `]`
  |                      | Specifies the source for and timing of a fixing of an
  |                      | exchange rate. This is used in the agreement of
  |                      | non-deliverable forward trades as well as various
  |                      | types of FX OTC options that require observations
  |                      | against a particular rate. This element is optional,
  |                      | permitting it to be omitted where fixing details are
  |                      | unavailable at the point of message creation. It has
  |                      | multiple occurrence to support the case where fixing
  |                      | details must be specified for more than one currency
  |                      | pair e.g. on an option settled into a third currency
  |                      | (that is not one of the option currencies).
  | `referenceCurrency`  | `Optional` `(` `FieldWithMeta` `Text` `)`
  | `settlementCurrency` | `FieldWithMeta` `Text`
  |                      | The currency in which cash settlement occurs for
  |                      | non-deliverable forwards and cash-settled options
  |                      | (non-deliverable or otherwise).

### `data` `FxFeature`

  A type for defining FX Features.
* `FxFeature`

  | Field               | Type/Description |
  | :------------------ | :----------------
  | `composite`         | `Optional` `Composite`
  |                     | If &#39;Composite&#39; is specified as the Settlement
  |                     | Type in the relevant Transaction Supplement, an
  |                     | amount in the Settlement Currency, determined by the
  |                     | Calculation Agent as being equal to the number of
  |                     | Options exercised or deemed exercised, multiplied by:
  |                     | (Settlement Price – Strike Price) / (Strike Price –
  |                     | Settlement Price) x Multiplier provided that if the
  |                     | above is equal to a negative amount the Option Cash
  |                     | Settlement Amount shall be deemed to be zero.
  | `crossCurrency`     | `Optional` `Composite`
  |                     | If &#39;Cross-Currency&#39; is specified as the
  |                     | Settlement Type in the relevant Transaction
  |                     | Supplement, an amount in the Settlement Currency,
  |                     | determined by the Calculation Agent as being equal to
  |                     | the number of Options exercised or deemed exercised,
  |                     | multiplied by: (Settlement Price – Strike Price) /
  |                     | (Strike Price – Settlement Price) x Multiplier x one
  |                     | unit of the Reference Currency converted into an
  |                     | amount in the Settlement Currency using the rate of
  |                     | exchange of the Settlement Currency as quoted on the
  |                     | Reference Price Source on the Valuation Date,
  |                     | provided that if the above is equal to a negative
  |                     | amount the Option Cash Settlement Amount shall be
  |                     | deemed to be zero.
  | `quanto`            | `Optional` `Quanto`
  |                     | If &#39;Quanto&#39; is specified as the Settlement
  |                     | Type in the relevant Transaction Supplement, an
  |                     | amount, as determined by the Calculation Agent in
  |                     | accordance with the Section 8.2 of the Equity
  |                     | Definitions.
  | `referenceCurrency` | `FieldWithMeta` `Text`
  |                     | Specifies the reference currency of the trade.

### `data` `FxFixing`

  A type that specifies the source for and timing of a
  fixing of an exchange rate. This is used in the
  agreement of non-deliverable forward trades as well
  as various types of FX OTC options that require
  observations against a particular rate.
* `FxFixing`

  | Field                | Type/Description |
  | :------------------- | :----------------
  | `fixingDate`         | `Optional` `Date`
  |                      | Describes the specific date when a non-deliverable
  |                      | forward or cash-settled option will &#39;fix&#39;
  |                      | against a particular rate, which will be used to
  |                      | compute the ultimate cash settlement. This element
  |                      | should be omitted where a single, discrete fixing
  |                      | date cannot be identified e.g. on an american option,
  |                      | where fixing may occur at any date on a continuous
  |                      | range.
  | `fxSpotRateSource`   | `Optional` `FxSpotRateSource`
  |                      | Specifies the methodology (reference source and,
  |                      | optionally, fixing time) to be used for determining a
  |                      | currency conversion rate.
  | `quotedCurrencyPair` | `QuotedCurrencyPair`
  |                      | Defines the two currencies for an FX trade and the
  |                      | quotation relationship between the two currencies.

### `data` `FxFixingDate`

  A class that is extending the Offset structure for
  providing the ability to specify an FX fixing date as
  an offset to dates specified somewhere else in the
  document.
* `FxFixingDate`

  | Field                                  | Type/Description |
  | :------------------------------------- | :----------------
  | `businessCenters`                      | `Optional` `BusinessCenters`
  | `businessCentersReference`             | `Optional` `(` `ReferenceWithMeta` `BusinessCenters` `)`
  |                                        | A reference to a set of financial business centers
  |                                        | defined elsewhere in the document. This set of
  |                                        | business centers is used to determine whether a
  |                                        | particular day is a business day or not.
  | `businessDayConvention`                | `BusinessDayConventionEnum`
  |                                        | The convention for adjusting a date if it would
  |                                        | otherwise fall on a day that is not a business day,
  |                                        | as specified by an ISDA convention (e.g. Following,
  |                                        | Precedent).
  | `dateRelativeToCalculationPeriodDates` | `Optional` `DateRelativeToCalculationPeriodDates`
  |                                        | The calculation period references on which
  |                                        | settlements in non-deliverable currency are due and
  |                                        | will then have to be converted according to the terms
  |                                        | specified through the other parts of the
  |                                        | nonDeliverableSettlement structure. Implemented for
  |                                        | Brazilian-CDI swaps where it will refer to the
  |                                        | termination date of the appropriate leg.
  | `dateRelativeToPaymentDates`           | `Optional` `DateRelativeToPaymentDates`
  |                                        | The payment date references on which settlements in
  |                                        | non-deliverable currency are due and will then have
  |                                        | to be converted according to the terms specified
  |                                        | through the other parts of the
  |                                        | nonDeliverableSettlement structure.
  | `dayType`                              | `Optional` `DayTypeEnum`
  |                                        | In the case of an offset specified as a number of
  |                                        | days, this element defines whether consideration is
  |                                        | given as to whether a day is a good business day or
  |                                        | not. If a day type of business days is specified then
  |                                        | non-business days are ignored when calculating the
  |                                        | offset. The financial business centers to use for
  |                                        | determination of business days are implied by the
  |                                        | context in which this element is used. This element
  |                                        | must only be included when the offset is specified as
  |                                        | a number of days. If the offset is zero days then the
  |                                        | dayType element should not be included.
  | `id`                                   | `Optional` `Text`
  | `period`                               | `PeriodEnum`
  |                                        | A time period, e.g. a day, week, month or year of the
  |                                        | stream. If the periodMultiplier value is 0 (zero)
  |                                        | then period must contain the value D (day).
  | `periodMultiplier`                     | `Int`
  |                                        | A time period multiplier, e.g. 1, 2 or 3 etc. A
  |                                        | negative value can be used when specifying an offset
  |                                        | relative to another date, e.g. -2 days.

### `data` `FxInformationSource`

  Information source specific to Foreign Exchange
  products.
* `FxInformationSource`

  | Field               | Type/Description |
  | :------------------ | :----------------
  | `fixingTime`        | `Optional` `BusinessCenterTime`
  |                     | The time that the fixing will be taken along with a
  |                     | business center to define the time zone.
  | `sourcePage`        | `Optional` `(` `FieldWithMeta` `Text` `)`
  |                     | A specific page for the source for obtaining a market
  |                     | data point. In FpML, this is specified as a scheme,
  |                     | rateSourcePageScheme, for which no coding Scheme or
  |                     | URI is specified.
  | `sourcePageHeading` | `Optional` `Text`
  |                     | The heading for the source on a given source page.
  | `sourceProvider`    | `FieldWithMeta` `InformationProviderEnum`
  |                     | An information source for obtaining a market data
  |                     | point. For example Bloomberg, Reuters, Telerate, etc.

### `data` `FxLinkedNotionalAmount`

  A class to describe the cashflow representation for
  FX linked notionals.
* `FxLinkedNotionalAmount`

  | Field                      | Type/Description |
  | :------------------------- | :----------------
  | `adjustedFxSpotFixingDate` | `Optional` `Date`
  |                            | The date on which the FX spot rate is observed. This
  |                            | date should already be adjusted for any applicable
  |                            | business day convention.
  | `notionalAmount`           | `Optional` `Decimal`
  |                            | The calculation period notional amount.
  | `observedFxSpotRate`       | `Optional` `Decimal`
  |                            | The actual observed FX spot rate.
  | `resetDate`                | `Optional` `Date`
  |                            | The reset date.

### `data` `FxLinkedNotionalSchedule`

  A class to describe a notional schedule where each
  notional that applies to a calculation period is
  calculated with reference to a notional amount or
  notional amount schedule in a different currency by
  means of a spot currency exchange rate which is
  normally observed at the beginning of each period.
* `FxLinkedNotionalSchedule`

  | Field                                        | Type/Description |
  | :------------------------------------------- | :----------------
  | `constantNotionalScheduleReference`          | `ReferenceWithMeta` `NotionalSchedule`
  |                                              | A pointer style reference to the associated constant
  |                                              | notional schedule defined elsewhere in the document
  |                                              | which contains the currency amounts which will be
  |                                              | converted into the varying notional currency amounts
  |                                              | using the spot currency exchange rate.
  | `fxSpotRateSource`                           | `FxSpotRateSource`
  |                                              | The information source and time at which the spot
  |                                              | currency exchange rate will be observed.
  | `initialValue`                               | `Optional` `Decimal`
  |                                              | The initial currency amount for the varying notional.
  |                                              | This may be omitted for a forward starting swap if
  |                                              | the FX-linked notional value is not known at deal
  |                                              | inception.
  | `varyingNotionalCurrency`                    | `FieldWithMeta` `Text`
  |                                              | The currency of the varying notional amount, i.e. the
  |                                              | notional amount being determined periodically based
  |                                              | on observation of a spot currency exchange rate. The
  |                                              | list of valid currencies is not presently positioned
  |                                              | as an enumeration as part of the CDM because that
  |                                              | scope is limited to the values specified by ISDA and
  |                                              | FpML. As a result, implementers have to make
  |                                              | reference to the relevant standard, such as the ISO
  |                                              | 4217 standard for currency codes.
  | `varyingNotionalFixingDates`                 | `RelativeDateOffset`
  |                                              | The dates on which spot currency exchange rates are
  |                                              | observed for purposes of determining the varying
  |                                              | notional currency amount that will apply to a
  |                                              | calculation period.
  | `varyingNotionalInterimExchangePaymentDates` | `RelativeDateOffset`
  |                                              | The dates on which interim exchanges of notional are
  |                                              | paid. Interim exchanges will arise as a result of
  |                                              | changes in the spot currency exchange amount or
  |                                              | changes in the constant notional schedule (e.g.
  |                                              | amortisation).

### `data` `FxRate`

  A class describing the rate of a currency conversion:
  pair of currency, quotation mode and exchange rate.
* `FxRate`

  | Field                | Type/Description |
  | :------------------- | :----------------
  | `quotedCurrencyPair` | `QuotedCurrencyPair`
  |                      | Defines the two currencies for an FX trade and the
  |                      | quotation relationship between the two currencies.
  | `rate`               | `Optional` `Decimal`
  |                      | The rate of exchange between the two currencies of
  |                      | the leg of a deal. Must be specified with a quote
  |                      | basis.

### `data` `FxRateSourceFixing`

  Describes a rate source to be fixed and the date the
  fixing occurs
* `FxRateSourceFixing`

  | Field                  | Type/Description |
  | :--------------------- | :----------------
  | `fixingDate`           | `AdjustableDate`
  |                        | The date on which the fixing is scheduled to occur.
  | `settlementRateSource` | `FxSettlementRateSource`

### `data` `FxSettlementRateSource`

  The source of the Foreign Exchange settlement rate.
* `FxSettlementRateSource`

  | Field                       | Type/Description |
  | :-------------------------- | :----------------
  | `nonstandardSettlementRate` | `Optional` `FxInformationSource`
  |                             | Indicates that a non-standard rate source will be
  |                             | used for the fixing.
  | `settlementRateOption`      | `Optional` `(` `FieldWithMeta` `Text` `)`
  |                             | Indicates that an officially defined rate settlement
  |                             | rate option will be the used for the fixing.

### `data` `FxSpotRateSource`

  A class defining the rate source and fixing time for
  an FX rate.
* `FxSpotRateSource`

  | Field                 | Type/Description |
  | :-------------------- | :----------------
  | `fixingTime`          | `Optional` `BusinessCenterTime`
  |                       | The time at which the spot currency exchange rate
  |                       | will be observed. It is specified as a time in a
  |                       | business day calendar location, e.g. 11:00am London
  |                       | time.
  | `primaryRateSource`   | `InformationSource`
  |                       | The primary source for where the rate observation
  |                       | will occur. Will typically be either a page or a
  |                       | reference bank published rate.
  | `secondaryRateSource` | `Optional` `InformationSource`
  |                       | An alternative, or secondary, source for where the
  |                       | rate observation will occur. Will typically be either
  |                       | a page or a reference bank published rate.

### `data` `GeneralTerms`

  A class specifying a set of non-monetary terms for
  the Credit Derivative Transaction, including the
  buyer and seller and selected items from the ISDA
  2014 Credit Definition article II, such as the
  reference obligation and related terms. The CDM
  GeneralTerms class corresponds to the FpML
  GeneralTerms complex type, except that the
  effectiveDate and scheduledTerminationDate have been
  positioned as part of the InterestRatePayout class in
  the CDM instead of in GeneralTerms.
* `GeneralTerms`

  | Field                        | Type/Description |
  | :--------------------------- | :----------------
  | `additionalTerm`             | `[` `FieldWithMeta` `Text` `]`
  |                              | This attribute is used for representing information
  |                              | contained in the Additional Terms field of the 2003
  |                              | Master Credit Derivatives confirm.
  | `basketReferenceInformation` | `Optional` `BasketReferenceInformation`
  |                              | This attribute contains all the terms relevant to
  |                              | defining the Credit Default Swap Basket.
  | `buyerSeller`                | `BuyerSeller`
  |                              | The credit default payout buyer/seller parties.
  | `dateAdjustments`            | `Optional` `BusinessDayAdjustments`
  |                              | ISDA Credit 2003 Definitions: Business Day and
  |                              | Business Day Convention.
  | `indexReferenceInformation`  | `Optional` `IndexReferenceInformation`
  |                              | This attribute contains all the terms relevant to
  |                              | defining the Credit DefaultSwap Index.
  | `modifiedEquityDelivery`     | `Optional` `Bool`
  |                              | Value of this attribute set to &#39;true&#39;
  |                              | indicates that modified equity delivery is
  |                              | applicable.
  | `referenceInformation`       | `Optional` `ReferenceInformation`
  |                              | This attribute contains all the terms relevant to
  |                              | defining the reference entity and reference
  |                              | obligation(s).
  | `substitution`               | `Optional` `Bool`
  |                              | Value of this attribute set to &#39;true&#39;
  |                              | indicates that substitution is applicable.

### `data` `GracePeriodExtension`

* `GracePeriodExtension`

  | Field         | Type/Description |
  | :------------ | :----------------
  | `applicable`  | `Bool`
  |               | Indicates whether the grace period extension
  |               | provision is applicable.
  | `gracePeriod` | `Optional` `Offset`
  |               | The number of calendar or business days after any due
  |               | date that the reference entity has to fulfil its
  |               | obligations before a failure to pay credit event is
  |               | deemed to have occurred. ISDA 2003 Term: Grace
  |               | Period.

### `data` `IdentifiedProduct`

  An abstract class to specify a product which terms
  are abstracted through reference data.
* `IdentifiedProduct`

  | Field               | Type/Description |
  | :------------------ | :----------------
  | `productIdentifier` | `ProductIdentifier`

### `data` `Identifier`

  A class to specify a generic identifier, applicable
  to CDM artefacts such as executions, contracts,
  lifecycle events and legal documents. An issuer can
  be associated with the actual identifier value as a
  way to properly qualify it.
* `Identifier`

  | Field                | Type/Description |
  | :------------------- | :----------------
  | `assignedIdentifier` | `[` `AssignedIdentifier` `]`
  |                      | The identifier value. This level of indirection
  |                      | between the issuer and the identifier and its version
  |                      | provides the ability to associate multiple
  |                      | identifiers to one issuer, consistently with the FpML
  |                      | PartyTradeIdentifier.
  | `id`                 | `Optional` `Text`
  | `issuer`             | `Optional` `(` `FieldWithMeta` `Text` `)`
  |                      | The identifier issuer, when specified explicitly
  |                      | alongside the identifier value (instead of being
  |                      | specified by reference to a party).
  | `issuerReference`    | `Optional` `(` `ReferenceWithMeta` `Party` `)`
  |                      | The identifier issuer, when specified by reference to
  |                      | a party specified as part of the transaction.

### `data` `Inception`

  The primitive event for the inception of a new
  contract between parties. It is expected that this
  primitive will be adjusted or deprecated once the CDM
  scope is extended to the pre-execution space.
* `Inception`

  | Field    | Type/Description |
  | :------- | :----------------
  | `after`  | `PostInceptionState`
  |          | The after state corresponds to the new contract
  |          | between the parties.
  | `before` | `[` `ContractState` `]`
  |          | The (0..0) cardinality reflects the fact that there
  |          | is no contract in the before state of an inception
  |          | primitive. As noted in the definition associated with
  |          | the class, this is expected to change once the CDM
  |          | scope is extended to the pre-execution space.

### `data` `IndependentAmount`

  A class specifying the Independent Amount as the
  combination of a payer/receiver, a payment amount, a
  payment date and an associated payment calculation
  rule.
* `IndependentAmount`

  | Field                      | Type/Description |
  | :------------------------- | :----------------
  | `payerAccountReference`    | `Optional` `(` `ReferenceWithMeta` `Account` `)`
  |                            | A reference to the account responsible for making the
  |                            | payments defined by this structure.
  | `payerPartyReference`      | `ReferenceWithMeta` `Party`
  |                            | A reference to the party responsible for making the
  |                            | payments defined by this structure.
  | `paymentDetail`            | `[` `PaymentDetail` `]`
  |                            | An attribute that specifies a payment as the
  |                            | combination of a payment amount, a payment date and
  |                            | an associated payment calculation rule.
  | `receiverAccountReference` | `Optional` `(` `ReferenceWithMeta` `Account` `)`
  |                            | A reference to the account that receives the payments
  |                            | corresponding to this structure.
  | `receiverPartyReference`   | `ReferenceWithMeta` `Party`
  |                            | A reference to the party that receives the payments
  |                            | corresponding to this structure.

### `data` `IndependentAmountEligibleCollateral`

  A class to specify the eligible collateral for
  initial margin purposes. Those features go beyond
  what is required for meeting the terms specified by
  the ISDA 2016 CSA for Initial Margin.
* `IndependentAmountEligibleCollateral`

  | Field                          | Type/Description |
  | :----------------------------- | :----------------
  | `eligibleCollateral`           | `[` `EligibleCollateral` `]`
  |                                | The eligible collateral assets.
  | `fxHaircut`                    | `Optional` `Decimal`
  |                                | The ISDA 2018 CSA specifies the FX haircut with
  |                                | respect to each party&#39;s posting obligation to be
  |                                | equal to 8% if the eligible collateral is denominated
  |                                | in a currency that is distinct from the Termination
  |                                | Currency specified with respect to the Secured Party,
  |                                | and 0% if the same.
  | `independentAmountEligibility` | `Optional` `(` `FieldWithMeta` `IndependentAmountEligibilityEnum` `)`
  |                                | The terms when no collateral assets are specified.
  | `party`                        | `ReferenceWithMeta` `Party`
  |                                | The party which the eligible collateral election
  |                                | applies to.
  | `terminationCurrency`          | `[` `TerminationCurrency` `]`
  |                                | The Termination Currency as specified by each of the
  |                                | parties to the agreement as determined by the ISDA
  |                                | 2018 CSA for Initial Margin, Paragraph 13 Eligible
  |                                | Credit Support (IM) Schedule.

### `data` `Index`

  A class to specify an index as having a product
  identifier. As a difference versus the FpML standard,
  the CDM structure of this class only includes the
  productIdentifier class, which consists of an
  identifier, productTaxonomy, and source of the
  identifier. The reason for this approach is to avoid
  the potential for conflicting information between the
  information associated with the contractual product
  and the reference information maintained by the
  relevant service provider.
* `Index`

  | Field               | Type/Description |
  | :------------------ | :----------------
  | `productIdentifier` | `ProductIdentifier`

### `data` `IndexAdjustmentEvents`

  Defines the specification of the consequences of
  Index Events as defined by the 2002 ISDA Equity
  Derivatives Definitions.
* `IndexAdjustmentEvents`

  | Field               | Type/Description |
  | :------------------ | :----------------
  | `indexCancellation` | `IndexEventConsequenceEnum`
  |                     | Consequence of index cancellation.
  | `indexDisruption`   | `IndexEventConsequenceEnum`
  |                     | Consequence of index disruption.
  | `indexModification` | `IndexEventConsequenceEnum`
  |                     | Consequence of index modification.

### `data` `IndexReferenceInformation`

  A class defining a Credit Default Swap Index.
* `IndexReferenceInformation`

  | Field                     | Type/Description |
  | :------------------------ | :----------------
  | `excludedReferenceEntity` | `[` `LegalEntity` `]`
  |                           | Excluded reference entity.
  | `id`                      | `Optional` `Text`
  | `indexAnnexDate`          | `Optional` `Date`
  |                           | A CDS index series annex date.
  | `indexAnnexSource`        | `Optional` `(` `FieldWithMeta` `IndexAnnexSourceEnum` `)`
  |                           | A CDS index series annex source.
  | `indexAnnexVersion`       | `Optional` `Int`
  |                           | A CDS index series version identifier, e.g. 1, 2, 3
  |                           | etc.
  | `indexId`                 | `[` `FieldWithMeta` `Text` `]`
  |                           | A CDS index identifier (e.g. RED pair code).
  | `indexName`               | `Optional` `(` `FieldWithMeta` `Text` `)`
  |                           | The name of the index expressed as a free format
  |                           | string with an associated scheme.
  | `indexSeries`             | `Optional` `Int`
  |                           | A CDS index series identifier, e.g. 1, 2, 3 etc.
  | `settledEntityMatrix`     | `Optional` `SettledEntityMatrix`
  |                           | Used to specify the Relevant Settled Entity Matrix
  |                           | when there are settled entities at the time of the
  |                           | trade.
  | `tranche`                 | `Optional` `Tranche`
  |                           | This element contains CDS tranche terms.

### `data` `InflationRateSpecification`

  A class to specify the inflation rate.
* `InflationRateSpecification`

  | Field                            | Type/Description |
  | :------------------------------- | :----------------
  | `averagingMethod`                | `Optional` `AveragingMethodEnum`
  |                                  | If averaging is applicable, this component specifies
  |                                  | whether a weighted or unweighted average method of
  |                                  | calculation is to be used. The component must only be
  |                                  | included when averaging applies.
  | `capRateSchedule`                | `[` `StrikeSchedule` `]`
  |                                  | The cap rate or cap rate schedule, if any, which
  |                                  | applies to the floating rate. The cap rate (strike)
  |                                  | is only required where the floating rate on a swap
  |                                  | stream is capped at a certain level. A cap rate
  |                                  | schedule is expressed as explicit cap rates and dates
  |                                  | and the step dates may be subject to adjustment in
  |                                  | accordance with any adjustments specified in
  |                                  | calculationPeriodDatesAdjustments. The cap rate is
  |                                  | assumed to be exclusive of any spread and is a per
  |                                  | annum rate, expressed as a decimal. A cap rate of 5%
  |                                  | would be represented as 0.05.
  | `fallbackBondApplicable`         | `Bool`
  |                                  | The applicability of a fallback bond as defined in
  |                                  | the 2006 ISDA Inflation Derivatives Definitions,
  |                                  | sections 1.3 and 1.8.
  | `finalRateRounding`              | `Optional` `Rounding`
  |                                  | The rounding convention to apply to the final rate
  |                                  | used in determination of a calculation period amount.
  | `floatingRateIndex`              | `FieldWithMeta` `FloatingRateIndexEnum`
  |                                  | The reference index that is used to specify the
  |                                  | floating interest rate. The FpML standard maintains
  |                                  | the list of such indices, which are positioned as
  |                                  | enumeration values as part of the CDM.
  | `floatingRateMultiplierSchedule` | `Optional` `Schedule`
  |                                  | A rate multiplier or multiplier schedule to apply to
  |                                  | the floating rate. A multiplier schedule is expressed
  |                                  | as explicit multipliers and dates. In the case of a
  |                                  | schedule, the step dates may be subject to adjustment
  |                                  | in accordance with any adjustments specified in the
  |                                  | calculationPeriodDatesAdjustments. The multiplier can
  |                                  | be a positive or negative decimal. This element
  |                                  | should only be included if the multiplier is not
  |                                  | equal to 1 (one) for the term of the stream.
  | `floorRateSchedule`              | `[` `StrikeSchedule` `]`
  |                                  | The floor rate or floor rate schedule, if any, which
  |                                  | applies to the floating rate. The floor rate (strike)
  |                                  | is only required where the floating rate on a swap
  |                                  | stream is floored at a certain strike level. A floor
  |                                  | rate schedule is expressed as explicit floor rates
  |                                  | and dates and the step dates may be subject to
  |                                  | adjustment in accordance with any adjustments
  |                                  | specified in calculationPeriodDatesAdjustments. The
  |                                  | floor rate is assumed to be exclusive of any spread
  |                                  | and is a per annum rate, expressed as a decimal. A
  |                                  | floor rate of 5% would be represented as 0.05.
  | `id`                             | `Optional` `Text`
  | `indexSource`                    | `FieldWithMeta` `Text`
  |                                  | The reference source such as Reuters or Bloomberg.
  |                                  | FpML specifies indexSource to be of type
  |                                  | rateSourcePageScheme, but without specifying actual
  |                                  | values.
  | `indexTenor`                     | `Optional` `Period`
  |                                  | The ISDA Designated Maturity, i.e. the floating rate
  |                                  | tenor.
  | `inflationLag`                   | `Offset`
  |                                  | An off-setting period from the payment date which
  |                                  | determines the reference period for which the
  |                                  | inflation index is observed.
  | `initialIndexLevel`              | `Optional` `Decimal`
  |                                  | Initial known index level for the first calculation
  |                                  | period.
  | `initialRate`                    | `Optional` `Decimal`
  |                                  | The initial floating rate reset agreed between the
  |                                  | principal parties involved in the trade. This is
  |                                  | assumed to be the first required reset rate for the
  |                                  | first regular calculation period. It should only be
  |                                  | included when the rate is not equal to the rate
  |                                  | published on the source implied by the floating rate
  |                                  | index. An initial rate of 5% would be represented as
  |                                  | 0.05.
  | `interpolationMethod`            | `FieldWithMeta` `InterpolationMethodEnum`
  |                                  | The method used when calculating the Inflation Index
  |                                  | Level from multiple points. The most common is
  |                                  | Linear.
  | `mainPublication`                | `FieldWithMeta` `Text`
  |                                  | The current main publication source such as relevant
  |                                  | web site or a government body. FpML specifies
  |                                  | mainPublication to be of type mainPublicationSource,
  |                                  | but without specifying actual values.
  | `negativeInterestRateTreatment`  | `Optional` `NegativeInterestRateTreatmentEnum`
  |                                  | The specification of any provisions for calculating
  |                                  | payment obligations when a floating rate is negative
  |                                  | (either due to a quoted negative floating rate or by
  |                                  | operation of a spread that is subtracted from the
  |                                  | floating rate).
  | `rateTreatment`                  | `Optional` `RateTreatmentEnum`
  |                                  | The specification of any rate conversion which needs
  |                                  | to be applied to the observed rate before being used
  |                                  | in any calculations. The two common conversions are
  |                                  | for securities quoted on a bank discount basis which
  |                                  | will need to be converted to either a Money Market
  |                                  | Yield or Bond Equivalent Yield. See the Annex to the
  |                                  | 2000 ISDA Definitions, Section 7.3. Certain General
  |                                  | Definitions Relating to Floating Rate Options,
  |                                  | paragraphs (g) and (h) for definitions of these
  |                                  | terms.
  | `spreadSchedule`                 | `[` `SpreadSchedule` `]`
  |                                  | The ISDA Spread or a Spread schedule expressed as
  |                                  | explicit spreads and dates. In the case of a
  |                                  | schedule, the step dates may be subject to adjustment
  |                                  | in accordance with any adjustments specified in
  |                                  | calculationPeriodDatesAdjustments. The spread is a
  |                                  | per annum rate, expressed as a decimal. For purposes
  |                                  | of determining a calculation period amount, if
  |                                  | positive the spread will be added to the floating
  |                                  | rate and if negative the spread will be subtracted
  |                                  | from the floating rate. A positive 10 basis point
  |                                  | (0.1%) spread would be represented as 0.001.

### `data` `InformationSource`

  A class defining the source for a piece of
  information (e.g. a rate fix or an FX fixing). The
  attribute names have been adjusted from FpML to
  address the fact that the information is not limited
  to rates.
* `InformationSource`

  | Field               | Type/Description |
  | :------------------ | :----------------
  | `sourcePage`        | `Optional` `(` `FieldWithMeta` `Text` `)`
  |                     | A specific page for the source for obtaining a market
  |                     | data point. In FpML, this is specified as a scheme,
  |                     | rateSourcePageScheme, for which no coding Scheme or
  |                     | URI is specified.
  | `sourcePageHeading` | `Optional` `Text`
  |                     | The heading for the source on a given source page.
  | `sourceProvider`    | `FieldWithMeta` `InformationProviderEnum`
  |                     | An information source for obtaining a market data
  |                     | point. For example Bloomberg, Reuters, Telerate, etc.

### `data` `InitialFixingDate`

  A CDM class which purpose is to specify the initial
  fixing date either alongside the FpML interest rate
  specification as an offset of another date, or
  alongside the credit derivative specification as an
  unadjusted date.
* `InitialFixingDate`

  | Field                | Type/Description |
  | :------------------- | :----------------
  | `initialFixingDate`  | `Optional` `Date`
  | `relativeDateOffset` | `Optional` `RelativeDateOffset`

### `data` `InterestRateCurve`

* `InterestRateCurve`

  | Field               | Type/Description |
  | :------------------ | :----------------
  | `floatingRateIndex` | `FieldWithMeta` `FloatingRateIndexEnum`
  | `tenor`             | `Period`

### `data` `InterestRatePayout`

  A class to specify all of the terms necessary to
  define and calculate a cash flow based on a fixed, a
  floating or an inflation index rate. The interest
  rate payout can be applied to interest rate swaps and
  FRA (which both have two associated interest rate
  payouts), credit default swaps (to represent the fee
  leg when subject to periodic payments) and equity
  swaps (to represent the funding leg). The associated
  rosettaKey denotes the ability to associate a hash
  value to the InterestRatePayout instantiations for
  the purpose of model cross-referencing, in support of
  functionality such as the event effect and the
  lineage.
* `InterestRatePayout`

  | Field                    | Type/Description |
  | :----------------------- | :----------------
  | `bondReference`          | `Optional` `BondReference`
  |                          | Reference to a bond underlier to represent an asset
  |                          | swap or Condition Precedent Bond.
  | `calculationPeriodDates` | `CalculationPeriodDates`
  |                          | The parameters used to generate the calculation
  |                          | period dates schedule, including the specification of
  |                          | any initial or final stub calculation periods.
  | `cashflowRepresentation` | `Optional` `CashflowRepresentation`
  |                          | The cashflow representation of the swap stream.
  | `compoundingMethod`      | `Optional` `CompoundingMethodEnum`
  |                          | If one or more calculation period contributes to a
  |                          | single payment amount this element specifies whether
  |                          | compounding is applicable and, if so, what
  |                          | compounding method is to be used. This element must
  |                          | only be included when more than one calculation
  |                          | period contributes to a single payment amount.
  | `crossCurrencyTerms`     | `Optional` `CrossCurrencyTerms`
  |                          | The specification of the principle exchange and
  |                          | settlement provision terms.
  | `dayCountFraction`       | `Optional` `(` `FieldWithMeta` `DayCountFractionEnum` `)`
  |                          | The day count fraction. The cardinality has been
  |                          | relaxed when compared with the FpML interest rate
  |                          | swap for the purpose of accommodating standardized
  |                          | credit default swaps which DCF is not explicitly
  |                          | stated as part of the economic terms. The data rule
  |                          | InterestRatePayout_dayCountFraction requires that the
  |                          | DCF be stated for interest rate products.
  | `discountingMethod`      | `Optional` `DiscountingMethod`
  |                          | The parameters specifying any discounting conventions
  |                          | that may apply. This element must only be included if
  |                          | discounting applies.
  | `fixedAmount`            | `Optional` `Text`
  |                          | Fixed Amount Calculation
  | `floatingAmount`         | `Optional` `Text`
  |                          | Floating Amount Calculation
  | `id`                     | `Optional` `Text`
  | `payerReceiver`          | `Optional` `PayerReceiver`
  |                          | The payer/seller paradigm applies to swap products,
  |                          | whether interest rate swaps or the fee leg of credit
  |                          | default swaps.
  | `paymentDate`            | `Optional` `AdjustableDate`
  |                          | The payment date, where only one date is specified,
  |                          | as for the FRA product.
  | `paymentDates`           | `Optional` `PaymentDates`
  |                          | The payment date schedule, as defined by the
  |                          | parameters that are needed to specify it, either in a
  |                          | parametric way or by reference to another schedule of
  |                          | dates (e.g. the reset dates).
  | `paymentDelay`           | `Optional` `Bool`
  |                          | Applicable to CDS on MBS to specify whether payment
  |                          | delays are applicable to the fixed Amount. RMBS
  |                          | typically have a payment delay of 5 days between the
  |                          | coupon date of the reference obligation and the
  |                          | payment date of the synthetic swap. CMBS do not, on
  |                          | the other hand, with both payment dates being on the
  |                          | 25th of each month.
  | `quantity`               | `Optional` `ContractualQuantity`
  |                          | The specification of the notional amount that is
  |                          | associated with a contractual product and that is the
  |                          | base for the payout calculation, through the
  |                          | ContractualQuantity class which provides a generic
  |                          | approach that is applicable across all asset classes.
  |                          | The quantity attribute applies to products relating
  |                          | to securities or tangible assets (such as equities or
  |                          | commodities), while the notional amount applies to
  |                          | products pertaining to interest rate, FX or credit
  |                          | products.
  | `rateSpecification`      | `RateSpecification`
  |                          | The specification of the rate value(s) applicable to
  |                          | the contract using either a floating rate
  |                          | calculation, a single fixed rate, a fixed rate
  |                          | schedule, or an inflation rate calculation.
  | `resetDates`             | `Optional` `ResetDates`
  |                          | The reset dates schedule, i.e. the dates on which the
  |                          | new observed index value is applied for each period
  |                          | and the interest rate hence begins to accrue.
  | `rosettaKey`             | `Text`
  | `stubPeriod`             | `Optional` `StubPeriod`
  |                          | The stub calculation period amount parameters. This
  |                          | element must only be included if there is an initial
  |                          | or final stub calculation period. Even then, it must
  |                          | only be included if either the stub references a
  |                          | different floating rate tenor to the regular
  |                          | calculation periods, or if the stub is calculated as
  |                          | a linear interpolation of two different floating rate
  |                          | tenors, or if a specific stub rate or stub amount has
  |                          | been negotiated.

### `data` `InterestShortFall`

  A class to specify the interest shortfall floating
  rate payment event.
* `InterestShortFall`

  | Field                  | Type/Description |
  | :--------------------- | :----------------
  | `compounding`          | `Bool`
  | `interestShortfallCap` | `InterestShortfallCapEnum`
  |                        | Specifies the nature of the interest Shortfall cap
  |                        | (i.e. Fixed Cap or Variable Cap) in the case where it
  |                        | is applicable. ISDA 2003 Term: Interest Shortfall
  |                        | Cap.
  | `rateSource`           | `Optional` `(` `FieldWithMeta` `FloatingRateIndexEnum` `)`
  |                        | The rate source in the case of a variable cap.

### `data` `IssuerTradeId`

  A class for a two-parts identifier, such as a USI.
* `IssuerTradeId`

  | Field        | Type/Description |
  | :----------- | :----------------
  | `identifier` | `Optional` `(` `FieldWithMeta` `Text` `)`
  |              | The identifier value. The CDM uses a neutral
  |              | identifier attribute name rather than the FpML trade
  |              | qualifier because of the focus that includes the
  |              | pre-execution lifecycle, at which point a trade
  |              | doesn&#39;t exist yet.
  | `issuer`     | `FieldWithMeta` `Text`
  |              | The party that assigns the trade identifier.

### `data` `Knock`

  Knock In means option to exercise comes into
  existence. Knock Out means option to exercise goes
  out of existence.
* `Knock`

  | Field      | Type/Description |
  | :--------- | :----------------
  | `knockIn`  | `Optional` `TriggerEvent`
  |            | The knock in.
  | `knockOut` | `Optional` `TriggerEvent`
  |            | The knock out.

### `data` `LastRegularPaymentDate`

  A class which purpose is to provide the ability into
  the seemingly incompatible representations of the
  interest rate and equity last payment date.
* `LastRegularPaymentDate`

  | Field                    | Type/Description |
  | :----------------------- | :----------------
  | `finalPaymentDate`       | `Optional` `AdjustableOrRelativeDate`
  |                          | The last payment when specified as an adjustable or
  |                          | relative date, as in the FpML total return construct.
  | `lastRegularPaymentDate` | `Optional` `Date`
  |                          | The last regular payment date when specified as a
  |                          | date, as in the FpML interest rate construct. FpML
  |                          | specifies that this date may be subject to adjustment
  |                          | in accordance with any business day convention
  |                          | specified in the paymentDatesAdjustments attribute.

### `data` `LegalDocument`

  A class to specify the elections and variables that
  characterize a legal document.
* `LegalDocument`

  | Field                            | Type/Description |
  | :------------------------------- | :----------------
  | `agreementDate`                  | `Date`
  |                                  | The date on which the legal document has been agreed
  |                                  | between the parties.
  | `contractualparty`               | `[` `ReferenceWithMeta` `Party` `]`
  |                                  | The contractual parties to the legal document, which
  |                                  | reference information is positioned as part of the
  |                                  | partInformation attribute.
  | `csaInitialMargin2016NewYorkLaw` | `Optional` `CsaInitialMargin2016NewYorkLaw`
  |                                  | The elections and variables specified in Paragraph 13
  |                                  | of the ISDA 2016 Credit Support Annex for Initial
  |                                  | Margin, New York Law.
  | `documentType`                   | `LegalDocumentType`
  |                                  | The type of legal document, identified via a set of
  |                                  | distinct attributes: name, publisher, governing law
  |                                  | and version, e.g. ISDA 2013 Standard Credit Support
  |                                  | Annex English Law.
  | `effectiveDate`                  | `Optional` `Date`
  |                                  | The date on which the agreement is effective, if
  |                                  | different from the agreement date. It is expected
  |                                  | that it will most often correspond to the agreement
  |                                  | date, although there could be situations where the
  |                                  | parties will explicitly agree on a distinct effective
  |                                  | date.
  | `identifier`                     | `[` `Identifier` `]`
  |                                  | The legal document identifier. Several identifiers
  |                                  | can be specified.
  | `lineage`                        | `Optional` `Lineage`
  |                                  | The lineage into prior versions of this legal
  |                                  | document or into other legal documents that might be
  |                                  | referenced by it.
  | `otherParty`                     | `[` `PartyRole` `]`
  |                                  | The role(s) that other party(ies) may have in
  |                                  | relation to the legal agreement, further to the
  |                                  | contractual parties.
  | `partyInformation`               | `[` `Party` `]`
  |                                  | The set of parties associated with the legal
  |                                  | documents, which consists of both the contractual
  |                                  | parties as the parties that might be involved in
  |                                  | relation to some other roles (e.g. custody agent).
  | `rosettaKey`                     | `Text`

### `data` `LegalDocumentAmendment`

  A legal document amendment, which can be specified by
  either referencing a legal document that is described
  elsewhere in the document, or by specifying the
  identity of that amended document.
* `LegalDocumentAmendment`

  | Field                | Type/Description |
  | :------------------- | :----------------
  | `agreementDate`      | `Date`
  |                      | The date on which the legal document has been agreed
  |                      | between the parties.
  | `documentIdentifier` | `[` `Identifier` `]`
  |                      | The legal document identifier. Several identifiers
  |                      | can be specified.

### `data` `LegalDocumentBase`

  A class describing the legal document. The purpose of
  this abstract class is to provide the ability to
  associate a &#39;one of&#39; feature to the
  LegalDocument class as a way to enforce a systematic
  choice between its attributes.
* `LegalDocumentBase`

  | Field              | Type/Description |
  | :----------------- | :----------------
  | `agreementDate`    | `Date`
  |                    | The date on which the legal document has been agreed
  |                    | between the parties.
  | `contractualparty` | `[` `ReferenceWithMeta` `Party` `]`
  |                    | The contractual parties to the legal document, which
  |                    | reference information is positioned as part of the
  |                    | partInformation attribute.
  | `documentType`     | `LegalDocumentType`
  |                    | The type of legal document, identified via a set of
  |                    | distinct attributes: name, publisher, governing law
  |                    | and version, e.g. ISDA 2013 Standard Credit Support
  |                    | Annex English Law.
  | `effectiveDate`    | `Optional` `Date`
  |                    | The date on which the agreement is effective, if
  |                    | different from the agreement date. It is expected
  |                    | that it will most often correspond to the agreement
  |                    | date, although there could be situations where the
  |                    | parties will explicitly agree on a distinct effective
  |                    | date.
  | `identifier`       | `[` `Identifier` `]`
  |                    | The legal document identifier. Several identifiers
  |                    | can be specified.
  | `lineage`          | `Optional` `Lineage`
  |                    | The lineage into prior versions of this legal
  |                    | document or into other legal documents that might be
  |                    | referenced by it.
  | `otherParty`       | `[` `PartyRole` `]`
  |                    | The role(s) that other party(ies) may have in
  |                    | relation to the legal agreement, further to the
  |                    | contractual parties.
  | `partyInformation` | `[` `Party` `]`
  |                    | The set of parties associated with the legal
  |                    | documents, which consists of both the contractual
  |                    | parties as the parties that might be involved in
  |                    | relation to some other roles (e.g. custody agent).

### `data` `LegalDocumentType`

  A class to specify the type of legal document, which
  is extended by each legal document instance, such as
  the ISDA 2016 CSA for Initial Margin.
* `LegalDocumentType`

  | Field          | Type/Description |
  | :------------- | :----------------
  | `governingLaw` | `Optional` `LegalDocumentStyleEnum`
  |                | The legal document reference style, e.g. English Law,
  |                | New York Law or Japanese Law.
  | `name`         | `LegalDocumentNameEnum`
  |                | The legal document name.
  | `publisher`    | `LegalDocumentPublisherEnum`
  |                | The legal document publisher.
  | `vintage`      | `Optional` `Text`
  |                | In the case where successive definitions of the legal
  |                | document have been developed, the vintage
  |                | identification. This is typically (but not
  |                | necessarily) done by referencing the year, e.g. 2013
  |                | in the case of the ISDA 2013 Standard Credit Support
  |                | Annex.

### `data` `LegalEntity`

  A class to specify a legal entity.
* `LegalEntity`

  | Field      | Type/Description |
  | :--------- | :----------------
  | `entityId` | `[` `FieldWithMeta` `Text` `]`
  |            | A legal entity identifier (e.g. RED entity code).
  | `id`       | `Optional` `Text`
  | `name`     | `FieldWithMeta` `Text`
  |            | The legal entity name.

### `data` `LimitApplicable`

* `LimitApplicable`

  | Field             | Type/Description |
  | :---------------- | :----------------
  | `amountRemaining` | `Optional` `Decimal`
  |                   | The limit remaining for the limit level and limit
  |                   | type. This does not take into account any pending
  |                   | trades. While the attribute is of type integer in
  |                   | FpML and the CME schema, it has been specified to be
  |                   | of type number in the CDM to take into consideration
  |                   | java size limits as well as for consistency purposes
  |                   | with the way most monetary amounts are expressed.
  | `amountUtilized`  | `Optional` `Decimal`
  |                   | The limit utilised by all the cleared trades for the
  |                   | limit level and limit type. While the attribute is of
  |                   | type integer in FpML and the CME schema, it has been
  |                   | specified to be of type number in the CDM to take
  |                   | into consideration java size limits as well as for
  |                   | consistency purposes with the way most monetary
  |                   | amounts are expressed.
  | `clipSize`        | `Optional` `Int`
  |                   | This element is required in FpML, optional in CDM for
  |                   | the purpose of accommodating the CME data
  |                   | representation while making reference to the FpML
  |                   | one.
  | `currency`        | `Optional` `(` `FieldWithMeta` `Text` `)`
  |                   | The currency in which the applicable limit is
  |                   | denominated. The list of valid currencies is not
  |                   | presently positioned as an enumeration as part of the
  |                   | CDM because that scope is limited to the values
  |                   | specified by ISDA and FpML. As a result, implementers
  |                   | have to make reference to the relevant standard, such
  |                   | as the ISO 4217 standard for currency codes.
  | `limitType`       | `Optional` `(` `FieldWithMeta` `CreditLimitTypeEnum` `)`
  |                   | Standard code to indicate which type of credit line
  |                   | is being referred to - i.e. IM, DV01, PV01, CS01,
  |                   | Notional, Clip Size, Notional, maximumOrderQuantity.
  | `utilization`     | `Optional` `CreditLimitUtilisation`
  | `velocity`        | `Optional` `Velocity`

### `data` `LimitApplicableExtended`

  A class to represent the CDM attributes that are not
  part of the FpML standard. Once broader usage is
  confirmed, it is expected that those two classes can
  be collapsed.
* `LimitApplicableExtended`

  | Field                   | Type/Description |
  | :---------------------- | :----------------
  | `amountRemaining`       | `Optional` `Decimal`
  |                         | The limit remaining for the limit level and limit
  |                         | type. This does not take into account any pending
  |                         | trades. While the attribute is of type integer in
  |                         | FpML and the CME schema, it has been specified to be
  |                         | of type number in the CDM to take into consideration
  |                         | java size limits as well as for consistency purposes
  |                         | with the way most monetary amounts are expressed.
  | `amountUtilized`        | `Optional` `Decimal`
  |                         | The limit utilised by all the cleared trades for the
  |                         | limit level and limit type. While the attribute is of
  |                         | type integer in FpML and the CME schema, it has been
  |                         | specified to be of type number in the CDM to take
  |                         | into consideration java size limits as well as for
  |                         | consistency purposes with the way most monetary
  |                         | amounts are expressed.
  | `clipSize`              | `Optional` `Int`
  |                         | This element is required in FpML, optional in CDM for
  |                         | the purpose of accommodating the CME data
  |                         | representation while making reference to the FpML
  |                         | one.
  | `currency`              | `Optional` `(` `FieldWithMeta` `Text` `)`
  |                         | The currency in which the applicable limit is
  |                         | denominated. The list of valid currencies is not
  |                         | presently positioned as an enumeration as part of the
  |                         | CDM because that scope is limited to the values
  |                         | specified by ISDA and FpML. As a result, implementers
  |                         | have to make reference to the relevant standard, such
  |                         | as the ISO 4217 standard for currency codes.
  | `limitAmount`           | `Optional` `Decimal`
  |                         | The total limit available for the limit level and
  |                         | limit type. While the attribute is of type integer in
  |                         | the CME schema, it has been specified to be of type
  |                         | number in the CDM to take into consideration java
  |                         | size limits as well as for consistency purposes with
  |                         | the way most monetary amounts are expressed.
  | `limitImpactDueToTrade` | `Optional` `Decimal`
  |                         | The limit utilized by this specific trade. While the
  |                         | attribute is of type integer in the CME schema, it
  |                         | has been specified to be of type number in the CDM to
  |                         | take into consideration java size limits as well as
  |                         | for consistency purposes with the way most monetary
  |                         | amounts are expressed.
  | `limitLevel`            | `Optional` `(` `FieldWithMeta` `LimitLevelEnum` `)`
  |                         | The level at which the limit is set: customer
  |                         | business, proprietary business or account level. This
  |                         | attribute is specified as a string as part of the CME
  |                         | clearing confirmation specification.
  | `limitType`             | `Optional` `(` `FieldWithMeta` `CreditLimitTypeEnum` `)`
  |                         | Standard code to indicate which type of credit line
  |                         | is being referred to - i.e. IM, DV01, PV01, CS01,
  |                         | Notional, Clip Size, Notional, maximumOrderQuantity.
  | `utilization`           | `Optional` `CreditLimitUtilisation`
  | `velocity`              | `Optional` `Velocity`

### `data` `Lineage`

  A class to provide lineage information across
  lifecycle events through a pointer or set of pointers
  into the event(s), contract(s) and, possibly, payout
  components that the event is dependent on or relates
  to. As an example, if an inception event is
  corrected, the correction event will have a lineage
  into the initial event, which takes the form of a
  rosettaKey into that initial inception event. Two
  referencing mechanisms are provided as part of the
  CDM: either the rosettaKey, which corresponds to the
  hash value of the CDM class which is referred to, or
  a reference qualifier which is meant to provide
  support for the ingestion of xml documents with
  id/href mechanisms. The CDM recommends the use of the
  rosettaKey and provides a default implementation
  which is accessible in the generated code through
  org.isda.cdm.rosettakey.RosettaKeyValueHashFunction.
  If implementers want to use an alternative hashing
  mechanism, the API in which they need to plug it is
  com.rosetta.model.lib.HashFunction.
* `Lineage`

  | Field                          | Type/Description |
  | :----------------------------- | :----------------
  | `cashflowReference`            | `[` `ReferenceWithMeta` `Cashflow` `]`
  |                                | The reference to the instantiation of a Cashflow
  |                                | payout component object. An expected typical usage is
  |                                | to provide lineage for the payment of, say, the
  |                                | option premium or the swap initial fee. The
  |                                | definition associated to the Lineage class provides
  |                                | more details with respect to those referencing
  |                                | approaches, their expected usage and available
  |                                | implementation.
  | `contractReference`            | `[` `ReferenceWithMeta` `Contract` `]`
  |                                | The reference to the instantiation of a Contract
  |                                | object. The definition associated to the Lineage
  |                                | class provides more details with respect to those
  |                                | referencing approaches, their expected usage and
  |                                | available implementation.
  | `creditDefaultPayoutReference` | `[` `ReferenceWithMeta` `CreditDefaultPayout` `]`
  |                                | The reference to the instantiation of a
  |                                | CreditdefaultPayout component object. The definition
  |                                | associated to the Lineage class provides more details
  |                                | with respect to those referencing approaches, their
  |                                | expected usage and available implementation.
  | `equityPayoutReference`        | `[` `ReferenceWithMeta` `EquityPayout` `]`
  |                                | The reference to the instantiation of a EquityPayout
  |                                | object. An expected typical usage is to provide
  |                                | lineage for the payment of, say, an equity dividend.
  |                                | The definition associated to the Lineage class
  |                                | provides more details with respect to those
  |                                | referencing approaches, their expected usage and
  |                                | available implementation.
  | `eventReference`               | `[` `ReferenceWithMeta` `Event` `]`
  |                                | The reference to the instantiation of an Event
  |                                | object, either through a rosettaKey or an xml-derived
  |                                | id/href mechanism. The definition associated to the
  |                                | Lineage class provides more details with respect to
  |                                | those referencing approaches, their expected usage
  |                                | and available implementation.
  | `interestRatePayoutReference`  | `[` `ReferenceWithMeta` `InterestRatePayout` `]`
  |                                | The reference to the instantiation of a
  |                                | InterestRatePayout component object. An expected
  |                                | typical usage is to provide lineage for the payment
  |                                | of, say, an interest rate swap reset, with the
  |                                | ability to relate the gross cashflow amounts to the
  |                                | respective payout components. The definition
  |                                | associated to the Lineage class provides more details
  |                                | with respect to those referencing approaches, their
  |                                | expected usage and available implementation.
  | `legalDocument`                | `[` `ReferenceWithMeta` `LegalDocument` `]`
  |                                | The reference to the instantiation of a Legal
  |                                | Document object. The definition associated to the
  |                                | Lineage class provides more details with respect to
  |                                | those referencing approaches, their expected usage
  |                                | and available implementation.
  | `optionPayoutReference`        | `[` `ReferenceWithMeta` `OptionPayout` `]`
  |                                | The reference to the instantiation of a OptionPayout
  |                                | component object. The definition associated to the
  |                                | Lineage class provides more details with respect to
  |                                | those referencing approaches, their expected usage
  |                                | and available implementation.

### `data` `Loan`

* `Loan`

  | Field                 | Type/Description |
  | :-------------------- | :----------------
  | `borrower`            | `[` `LegalEntity` `]`
  |                       | Specifies the borrower. There can be more than one
  |                       | borrower. It is meant to be used in the event that
  |                       | there is no Bloomberg Id or the Secured List
  |                       | isn&#39;t applicable.
  | `creditAgreementDate` | `Optional` `Date`
  |                       | The credit agreement date is the closing date (the
  |                       | date where the agreement has been signed) for the
  |                       | loans in the credit agreement. Funding of the
  |                       | facilities occurs on (or sometimes a little after)
  |                       | the Credit Agreement date. This underlier attribute
  |                       | is used to help identify which of the company&#39;s
  |                       | outstanding loans are being referenced by knowing to
  |                       | which credit agreement it belongs. ISDA Standards
  |                       | Terms Supplement term: Date of Original Credit
  |                       | Agreement.
  | `facilityType`        | `Optional` `(` `FieldWithMeta` `Text` `)`
  |                       | The type of loan facility (letter of credit,
  |                       | revolving, ...).
  | `lien`                | `Optional` `(` `FieldWithMeta` `Text` `)`
  |                       | Specifies the seniority level of the lien.
  | `productIdentifier`   | `ProductIdentifier`
  | `tranche`             | `Optional` `(` `FieldWithMeta` `Text` `)`
  |                       | The loan tranche that is subject to the derivative
  |                       | transaction. It will typically be referenced as the
  |                       | Bloomberg tranche number. ISDA Standards Terms
  |                       | Supplement term: Bloomberg Tranche Number.

### `data` `LoanParticipation`

  A class to specify loan with a participation
  agreement whereby the buyer is capable of creating,
  or procuring the creation of, a contractual right in
  favour of the seller that provides the seller with
  recourse to the participation seller for a specified
  share in any payments due under the relevant loan
  which are received by the participation seller. ISDA
  2003 Term: Direct Loan Participation.
* `LoanParticipation`

  | Field                           | Type/Description |
  | :------------------------------ | :----------------
  | `applicable`                    | `Bool`
  |                                 | Indicates whether the provision is applicable.
  | `partialCashSettlement`         | `Optional` `Bool`
  |                                 | Specifies whether either &#39;Partial Cash Settlement
  |                                 | of Assignable Loans&#39;, &#39;Partial Cash
  |                                 | Settlement of Consent Required Loans&#39; or
  |                                 | &#39;Partial Cash Settlement of Participations&#39;
  |                                 | is applicable. If this element is specified and
  |                                 | Assignable Loan is a Deliverable Obligation
  |                                 | Characteristic, any Assignable Loan that is
  |                                 | deliverable, but where a non-receipt of Consent by
  |                                 | the Physical Settlement Date has occurred, the Loan
  |                                 | can be cash settled rather than physically delivered.
  |                                 | If this element is specified and Consent Required
  |                                 | Loan is a Deliverable Obligation Characteristic, any
  |                                 | Consent Required Loan that is deliverable, but where
  |                                 | a non-receipt of Consent by the Physical Settlement
  |                                 | Date has occurred, the Loan can be cash settled
  |                                 | rather than physically delivered. If this element is
  |                                 | specified and Direct Loan Participation is a
  |                                 | Deliverable Obligation Characteristic, any
  |                                 | Participation that is deliverable, but where this
  |                                 | participation has not been effected (has not come
  |                                 | into effect) by the Physical Settlement Date, the
  |                                 | participation can be cash settled rather than
  |                                 | physically delivered.
  | `qualifyingParticipationSeller` | `Optional` `Text`
  |                                 | If Direct Loan Participation is specified as a
  |                                 | deliverable obligation characteristic, this specifies
  |                                 | any requirements for the Qualifying Participation
  |                                 | Seller. The requirements may be listed free-form.
  |                                 | ISDA 2003 Term: Qualifying Participation Seller.

### `data` `MakeWholeAmount`

  A class to specify the amount to be paid by the buyer
  of the option if the option is exercised prior to the
  Early Call Date (typically applicable to the
  convertible bond options).
* `MakeWholeAmount`

  | Field                 | Type/Description |
  | :-------------------- | :----------------
  | `earlyCallDate`       | `FieldWithMeta` `Date`
  |                       | Date prior to which the option buyer will have to pay
  |                       | a Make Whole Amount to the option seller if he/she
  |                       | exercises the option.
  | `floatingRateIndex`   | `FloatingRateIndexEnum`
  | `indexTenor`          | `Optional` `Period`
  |                       | The ISDA Designated Maturity, i.e. the tenor of the
  |                       | floating rate.
  | `interpolationMethod` | `Optional` `InterpolationMethodEnum`
  |                       | The type of interpolation method that the calculation
  |                       | agent reserves the right to use.
  | `side`                | `Optional` `QuotationSideEnum`
  |                       | The side (bid/mid/ask) of the measure.
  | `spread`              | `Decimal`
  |                       | Spread in basis points over the floating rate index.

### `data` `MandatoryEarlyTermination`

  A class to define an early termination provision for
  which exercise is mandatory.
* `MandatoryEarlyTermination`

  | Field                                    | Type/Description |
  | :--------------------------------------- | :----------------
  | `calculationAgent`                       | `CalculationAgent`
  |                                          | The ISDA Calculation Agent responsible for performing
  |                                          | duties associated with an optional early termination.
  | `cashSettlement`                         | `OptionCashSettlement`
  |                                          | If specified, this means that cash settlement is
  |                                          | applicable to the transaction and defines the
  |                                          | parameters associated with the cash settlement
  |                                          | procedure. If not specified, then physical settlement
  |                                          | is applicable.
  | `id`                                     | `Optional` `Text`
  | `mandatoryEarlyTerminationAdjustedDates` | `Optional` `MandatoryEarlyTerminationAdjustedDates`
  |                                          | The adjusted dates associated with a mandatory early
  |                                          | termination provision. These dates have been adjusted
  |                                          | for any applicable business day convention.
  | `mandatoryEarlyTerminationDate`          | `AdjustableDate`
  |                                          | The early termination date associated with a
  |                                          | mandatory early termination of a swap.

### `data` `MandatoryEarlyTerminationAdjustedDates`

  A class defining the adjusted dates associated with a
  mandatory early termination provision.
* `MandatoryEarlyTerminationAdjustedDates`

  | Field                                 | Type/Description |
  | :------------------------------------ | :----------------
  | `adjustedCashSettlementPaymentDate`   | `Date`
  |                                       | The date on which the cash settlement amount is paid.
  |                                       | This date should already be adjusted for any
  |                                       | applicable business date convention.
  | `adjustedCashSettlementValuationDate` | `Date`
  |                                       | The date by which the cash settlement amount must be
  |                                       | agreed. This date should already be adjusted for any
  |                                       | applicable business day convention.
  | `adjustedEarlyTerminationDate`        | `Date`
  |                                       | The early termination date that is applicable if an
  |                                       | early termination provision is exercised. This date
  |                                       | should already be adjusted for any applicable
  |                                       | business day convention.

### `data` `ManualExercise`

  A class defining manual exercise, i.e. that the
  option buyer counterparty must give notice to the
  option seller of exercise.
* `ManualExercise`

  | Field              | Type/Description |
  | :----------------- | :----------------
  | `exerciseNotice`   | `Optional` `ExerciseNotice`
  |                    | Definition of the party to whom notice of exercise
  |                    | should be given.
  | `fallbackExercise` | `Optional` `Bool`
  |                    | If fallback exercise is specified then the notional
  |                    | amount of the underlying swap, not previously
  |                    | exercised under the swaption, will be automatically
  |                    | exercised at the expiration time on the expiration
  |                    | date if at such time the buyer is in-the-money,
  |                    | provided that the difference between the settlement
  |                    | rate and the fixed rate under the relevant underlying
  |                    | swap is not less than one tenth of a percentage point
  |                    | (0.10% or 0.001). The term in-the-money is assumed to
  |                    | have the meaning defined in the 2000 ISDA
  |                    | Definitions, Section 17.4. In-the-money.

### `data` `MasterAgreement`

  A class for defining the agreement executed between
  the parties and intended to govern all OTC
  derivatives transactions between those parties.
* `MasterAgreement`

  | Field                    | Type/Description |
  | :----------------------- | :----------------
  | `masterAgreementDate`    | `Optional` `Date`
  |                          | The date on which the master agreement was signed.
  | `masterAgreementId`      | `Optional` `(` `FieldWithMeta` `Text` `)`
  |                          | An identifier that has been created to identify the
  |                          | master agreement.
  | `masterAgreementType`    | `FieldWithMeta` `MasterAgreementTypeEnum`
  |                          | The agreement executed between the parties and
  |                          | intended to govern product-specific derivatives
  |                          | transactions between those parties.
  | `masterAgreementVersion` | `Optional` `(` `FieldWithMeta` `Text` `)`
  |                          | The version of the master agreement.

### `data` `MasterConfirmation`

  A class for defining the master confirmation
  agreement executed between the parties.
* `MasterConfirmation`

  | Field                         | Type/Description |
  | :---------------------------- | :----------------
  | `masterConfirmationAnnexDate` | `Optional` `Date`
  |                               | The date that an annex to the master confirmation was
  |                               | executed between the parties.
  | `masterConfirmationAnnexType` | `Optional` `(` `FieldWithMeta` `MasterConfirmationAnnexTypeEnum` `)`
  |                               | The type of master confirmation annex executed
  |                               | between the parties.
  | `masterConfirmationDate`      | `Date`
  |                               | The date of the confirmation executed between the
  |                               | parties and intended to govern all relevant
  |                               | transactions between those parties.
  | `masterConfirmationType`      | `FieldWithMeta` `MasterConfirmationTypeEnum`
  |                               | The type of master confirmation executed between the
  |                               | parties.

### `data` `MessageInformation`

  This class corresponds to the components of the FpML
  MessageHeader.model.
* `MessageInformation`

  | Field       | Type/Description |
  | :---------- | :----------------
  | `copyTo`    | `[` `FieldWithMeta` `Text` `]`
  |             | A unique identifier (within the specified coding
  |             | scheme) giving the details of some party to whom a
  |             | copy of this message will be sent for reference.
  | `messageId` | `FieldWithMeta` `Text`
  |             | A unique identifier assigned to the message.
  | `sentBy`    | `Optional` `(` `FieldWithMeta` `Text` `)`
  |             | The identifier for the originator of a message
  |             | instance.
  | `sentTo`    | `[` `FieldWithMeta` `Text` `]`
  |             | The identifier(s) for the recipient(s) of a message
  |             | instance.

### `data` `Method`

  A class to specify the ISDA SIMM Method as the
  combination of the  as specified by ISDA 2016 and
  2018 CSA for Initial Margin. ISDA 2016 Credit Support
  Annex for Initial Margin, paragraph 13, General
  Principles (ee).
* `Method`

  | Field                 | Type/Description |
  | :-------------------- | :----------------
  | `calculationCurrency` | `[` `SimmCalculationCurrency` `]`
  |                       | The SIMM Calculation Currency, as specified for each
  |                       | of the parties to the CSA Initial Margin.
  | `version`             | `SimmVersion`
  |                       | The qualification of the ISDA SIMM version that is
  |                       | specified for all Covered Transactions as specified
  |                       | by ISDA 2018 CSA for Initial Margin, Paragraph 13,
  |                       | General Principles (ee)(1).

### `data` `MinimumTransferAmount`

  A class to specify the amount above which collateral
  has to be posted/returned.
* `MinimumTransferAmount`

  | Field            | Type/Description |
  | :--------------- | :----------------
  | `partyElections` | `[` `PartyElectiveAmount` `]`
  |                  | The parties&#39; minimum transfer amount elections.

### `data` `Money`

  A class defining a currency amount.
* `Money`

  | Field      | Type/Description |
  | :--------- | :----------------
  | `amount`   | `Decimal`
  |            | The monetary quantity in currency units.
  | `currency` | `FieldWithMeta` `Text`
  |            | The currency in which the associated amount is
  |            | denominated. The list of valid currencies is not
  |            | presently positioned as an enumeration as part of the
  |            | CDM because that scope is limited to the values
  |            | specified by ISDA and FpML. As a result, implementers
  |            | have to make reference to the relevant standard, such
  |            | as the ISO 4217 standard for currency codes.
  | `id`       | `Optional` `Text`

### `data` `MortgageBackedSecurity`

* `MortgageBackedSecurity`

  | Field             | Type/Description |
  | :---------------- | :----------------
  | `id`              | `Optional` `Text`
  | `identifier`      | `[` `FieldWithMeta` `Text` `]`
  |                   | A unique identifier of an asset provided by a public
  |                   | source that is specified in the source attribute.
  | `pool`            | `Optional` `AssetPool`
  |                   | The mortgage pool that is underneath the mortgage
  |                   | obligation.
  | `productTaxonomy` | `[` `ProductTaxonomy` `]`
  |                   | The product taxonomy value(s) associated with a
  |                   | product.
  | `rosettaKey`      | `Text`
  | `sector`          | `Optional` `(` `FieldWithMeta` `MortgageSectorEnum` `)`
  |                   | The sector classification of the mortgage obligation.
  | `source`          | `Optional` `ProductIdSourceEnum`
  |                   | The identifier source.
  | `tranche`         | `Optional` `Text`
  |                   | The mortgage obligation tranche that is subject to
  |                   | the derivative transaction.

### `data` `MultipleCreditNotations`

  A class to specify the specify multiple credit
  notations alongside a conditional &#39;any&#39; or
  &#39;all&#39; qualifier.
* `MultipleCreditNotations`

  | Field            | Type/Description |
  | :--------------- | :----------------
  | `condition`      | `QuantifierEnum`
  |                  | An enumerated element, to qualify whether All or Any
  |                  | credit notation applies.
  | `creditNotation` | `[` `FieldWithMeta` `Text` `]`
  |                  | At least two credit notations much be specified.

### `data` `MultipleDebtTypes`

  A class to specify the ability to specify multiple
  credit debt types alongside a conditional
  &#39;any&#39; or &#39;all&#39; qualifier.
* `MultipleDebtTypes`

  | Field       | Type/Description |
  | :---------- | :----------------
  | `condition` | `QuantifierEnum`
  |             | An enumerated attribute, to qualify whether All or
  |             | Any debt type applies.
  | `debtType`  | `[` `FieldWithMeta` `Text` `]`
  |             | The type of debt, e.g. long term debt, deposit, ...
  |             | FpML doesn&#39;t specific a scheme value, hence no
  |             | enumeration is specified as part of the CDM. At least
  |             | two debt types much be specified.

### `data` `MultipleExercise`

  A class defining multiple exercises. As defined in
  the 2000 ISDA Definitions, Section 12.4. Multiple
  Exercise, the buyer of the option has the right to
  exercise all or less than all the unexercised
  notional amount of the underlying swap on one or more
  days in the exercise period, but on any such day may
  not exercise less than the minimum notional amount or
  more than the maximum notional amount, and if an
  integral multiple amount is specified, the notional
  exercised must be equal to or, be an integral
  multiple of, the integral multiple amount. In FpML,
  MultipleExercise is built upon the
  PartialExercise.model.
* `MultipleExercise`

  | Field                    | Type/Description |
  | :----------------------- | :----------------
  | `integralMultipleAmount` | `Optional` `Decimal`
  |                          | A notional amount which restricts the amount of
  |                          | notional that can be exercised when partial exercise
  |                          | or multiple exercise is applicable. The integral
  |                          | multiple amount defines a lower limit of notional
  |                          | that can be exercised and also defines a unit
  |                          | multiple of notional that can be exercised, i.e. only
  |                          | integer multiples of this amount can be exercised.
  | `maximumNotionalAmount`  | `Optional` `Decimal`
  |                          | The maximum notional amount that can be exercised on
  |                          | a given exercise date.
  | `maximumNumberOfOptions` | `Optional` `Decimal`
  |                          | The maximum number of options that can be exercised
  |                          | on a given exercise date. If the number is not
  |                          | specified, it means that the maximum number of
  |                          | options corresponds to the remaining unexercised
  |                          | options.
  | `minimumNotionalAmount`  | `Optional` `Decimal`
  |                          | The minimum notional amount that can be exercised on
  |                          | a given exercise date. See multipleExercise.
  | `minimumNumberOfOptions` | `Optional` `Int`
  |                          | The minimum number of options that can be exercised
  |                          | on a given exercise date.
  | `notionaReference`       | `ReferenceWithMeta` `Money`
  |                          | A pointer style reference to the associated notional
  |                          | schedule defined elsewhere in the document. This
  |                          | element has been made optional as part of its
  |                          | integration in the OptionBaseExtended, because not
  |                          | required for the options on securities.

### `data` `MultipleValuationDates`

* `MultipleValuationDates`

  | Field                    | Type/Description |
  | :----------------------- | :----------------
  | `businessDays`           | `Optional` `Int`
  |                          | A number of business days. Its precise meaning is
  |                          | dependant on the context in which this element is
  |                          | used. ISDA 2003 Term: Business Day.
  | `businessDaysThereafter` | `Optional` `Int`
  |                          | The number of business days between successive
  |                          | valuation dates when multiple valuation dates are
  |                          | applicable for cash settlement. ISDA 2003 Term:
  |                          | Business Days thereafter.
  | `numberValuationDates`   | `Optional` `Int`
  |                          | Where multiple valuation dates are specified as being
  |                          | applicable for cash settlement, this element
  |                          | specifies (a) the number of applicable valuation
  |                          | dates, and (b) the number of business days after
  |                          | satisfaction of all conditions to settlement when the
  |                          | first such valuation date occurs, and (c) the number
  |                          | of business days thereafter of each successive
  |                          | valuation date. ISDA 2003 Term: Multiple Valuation
  |                          | Dates.

### `data` `MutualFund`

  A class to specify a mutual fund as having a product
  identifier. As a difference versus the FpML standard,
  the CDM structure of this class only includes the
  productIdentifier class, which consists of an
  identifier, productTaxonomy, and source of the
  identifier. The reason for this approach is to avoid
  the potential for conflicting information between the
  information associated with the contractual product
  and the reference information maintained by the
  relevant service provider.
* `MutualFund`

  | Field               | Type/Description |
  | :------------------ | :----------------
  | `productIdentifier` | `ProductIdentifier`

### `data` `NaturalPerson`

  A class to represent the attributes that are specific
  to a natural person.
* `NaturalPerson`

  | Field         | Type/Description |
  | :------------ | :----------------
  | `dateOfBirth` | `Optional` `Date`
  |               | The natural person&#39;s date of birth.
  | `firstName`   | `Text`
  |               | The natural person&#39;s first name. It is optional
  |               | in FpML.
  | `honorific`   | `Optional` `Text`
  |               | An honorific title, such as Mr., Ms., Dr. etc.
  | `id`          | `Optional` `Text`
  | `initial`     | `[` `Text` `]`
  | `middleName`  | `[` `Text` `]`
  | `suffix`      | `Optional` `Text`
  |               | Name suffix, such as Jr., III, etc.
  | `surname`     | `Text`
  |               | The natural person&#39;s surname.

### `data` `NaturalPersonRole`

  A class to specify the role(s) that natural person(s)
  may have in relation to the contract.
* `NaturalPersonRole`

  | Field             | Type/Description |
  | :---------------- | :----------------
  | `personReference` | `ReferenceWithMeta` `NaturalPerson`
  |                   | A reference to the natural person to whom the role
  |                   | refers to.
  | `role`            | `Optional` `(` `FieldWithMeta` `NaturalPersonRoleEnum` `)`
  |                   | FpML specifies a person role that is distinct from
  |                   | the party role.

### `data` `NonDeliverableSettlement`

  A class defining the parameters used when the
  reference currency of the payout is non-deliverable.
* `NonDeliverableSettlement`

  | Field                   | Type/Description |
  | :---------------------- | :----------------
  | `fxFixingDate`          | `Optional` `FxFixingDate`
  |                         | The date, when expressed as a relative date, on which
  |                         | the currency rate will be determined for the purpose
  |                         | of specifying the amount in deliverable currency.
  | `fxFixingSchedule`      | `Optional` `AdjustableDates`
  |                         | The date, when expressed as a schedule of date(s), on
  |                         | which the currency rate will be determined for the
  |                         | purpose of specifying the amount in deliverable
  |                         | currency.
  | `priceSourceDisruption` | `Optional` `PriceSourceDisruption`
  |                         | An attribute defining the parameters to get a new
  |                         | quote when a settlement rate option is disrupted.
  | `referenceCurrency`     | `FieldWithMeta` `Text`
  |                         | The currency in which the swap stream is denominated,
  |                         | which is distinct from the currency in which the
  |                         | cashflows will be settled. The list of valid
  |                         | currencies is not presently positioned as an
  |                         | enumeration as part of the CDM because that scope is
  |                         | limited to the values specified by ISDA and FpML. As
  |                         | a result, implementers have to make reference to the
  |                         | relevant standard, such as the ISO 4217 standard for
  |                         | currency codes.
  | `settlementRateOption`  | `FieldWithMeta` `SettlementRateOptionEnum`
  |                         | The rate source for the conversion to the settlement
  |                         | currency. This source is specified through a scheme
  |                         | that reflects the terms of the Annex A to the 1998 FX
  |                         | and Currency Option Definitions.

### `data` `NonNegativeAmountSchedule`

  A class defining a currency amount or a currency
  amount schedule.
* `NonNegativeAmountSchedule`

  | Field          | Type/Description |
  | :------------- | :----------------
  | `currency`     | `FieldWithMeta` `Text`
  |                | The currency in which the notional amount schedule is
  |                | denominated. The currency is specified outside of the
  |                | actual schedule in order to be applied uniformly to
  |                | it. The list of valid currencies is not presently
  |                | positioned as an enumeration as part of the CDM
  |                | because that scope is limited to the values specified
  |                | by ISDA and FpML. As a result, implementers have to
  |                | make reference to the relevant standard, such as the
  |                | ISO 4217 standard for currency codes.
  | `id`           | `Optional` `Text`
  | `initialValue` | `Decimal`
  |                | The non-negative initial rate or amount, as the case
  |                | may be. An initial rate of 5% would be represented as
  |                | 0.05.
  | `step`         | `[` `NonNegativeStep` `]`
  |                | The schedule of step date and non-negative value
  |                | pairs. On each step date the associated step value
  |                | becomes effective. A list of steps may be ordered in
  |                | the document by ascending step date. An FpML document
  |                | containing an unordered list of steps is still
  |                | regarded as a conformant document.

### `data` `NonNegativeSchedule`

  A class defining a schedule of non-negative rates or
  amounts in terms of an initial value and then a
  series of step date and value pairs. On each step
  date the rate or amount changes to the new step
  value. The series of step date and value pairs are
  optional. If not specified, this implies that the
  initial value remains unchanged over time.
* `NonNegativeSchedule`

  | Field          | Type/Description |
  | :------------- | :----------------
  | `id`           | `Optional` `Text`
  | `initialValue` | `Decimal`
  |                | The non-negative initial rate or amount, as the case
  |                | may be. An initial rate of 5% would be represented as
  |                | 0.05.
  | `step`         | `[` `NonNegativeStep` `]`
  |                | The schedule of step date and non-negative value
  |                | pairs. On each step date the associated step value
  |                | becomes effective. A list of steps may be ordered in
  |                | the document by ascending step date. An FpML document
  |                | containing an unordered list of steps is still
  |                | regarded as a conformant document.

### `data` `NonNegativeStep`

  A class defining a step date and non-negative step
  value pair. This step definitions are used to define
  varying rate or amount schedules, e.g. a notional
  amortisation or a step-up coupon schedule.
* `NonNegativeStep`

  | Field       | Type/Description |
  | :---------- | :----------------
  | `id`        | `Optional` `Text`
  | `stepDate`  | `Date`
  |             | The date on which the associated stepValue becomes
  |             | effective. This day may be subject to adjustment in
  |             | accordance with a business day convention.
  | `stepValue` | `Decimal`
  |             | The non-negative rate or amount which becomes
  |             | effective on the associated stepDate. A rate of 5%
  |             | would be represented as 0.05.

### `data` `NotDomesticCurrency`

  A class to specify the ISDA 2003 Term: Not Domestic
  Currency.
* `NotDomesticCurrency`

  | Field        | Type/Description |
  | :----------- | :----------------
  | `applicable` | `Bool`
  |              | Indicates whether the Not Domestic Currency provision
  |              | is applicable.
  | `currency`   | `Optional` `(` `FieldWithMeta` `Text` `)`
  |              | An explicit specification of the domestic currency.
  |              | The list of valid currencies is not presently
  |              | positioned as an enumeration as part of the CDM
  |              | because that scope is limited to the values specified
  |              | by ISDA and FpML. As a result, implementers have to
  |              | make reference to the relevant standard, such as the
  |              | ISO 4217 standard for currency codes.

### `data` `NotificationTime`

  A class to specify the time by which a demand for the
  Transfer of Eligible Credit Support (IM) or Posted
  Credit Support (IM) needs to be made in order for the
  transfer to take place in accordance with the
  Transfer Timing provisions. ISDA 2016 Credit Support
  Annex for Initial Margin, paragraph 13, General
  Principles, (d)(iii).
* `NotificationTime`

  | Field            | Type/Description |
  | :--------------- | :----------------
  | `partyElections` | `[` `PartyNotificationTime` `]`
  |                  | The parties&#39; Notification Time elections.

### `data` `NotifyingParty`

* `NotifyingParty`

  | Field                  | Type/Description |
  | :--------------------- | :----------------
  | `buyerPartyReference`  | `ReferenceWithMeta` `Party`
  | `sellerPartyReference` | `Optional` `(` `ReferenceWithMeta` `Party` `)`

### `data` `NotionalSchedule`

  A class specifying the notional amount or notional
  amount schedule associated with a contractual
  product. The notional schedule will be captured
  explicitly, specifying the dates that the notional
  changes and the outstanding notional amount that
  applies from that date. A parametric representation
  of the rules defining the notional step schedule can
  optionally be included.
* `NotionalSchedule`

  | Field                    | Type/Description |
  | :----------------------- | :----------------
  | `id`                     | `Optional` `Text`
  | `notionalStepParameters` | `Optional` `NotionalStepRule`
  |                          | A parametric representation of the notional step
  |                          | schedule, to be used when the notional schedule is
  |                          | not just specified as a set of dates and notional
  |                          | amount. Those parameters include the step frequency,
  |                          | the first and last notional step dates, the step
  |                          | rate, ...
  | `notionalStepSchedule`   | `NonNegativeAmountSchedule`
  |                          | The notional amount when expressed as a varying
  |                          | notional alongside a date schedule. The step dates
  |                          | may be subject to adjustments in accordance with any
  |                          | adjustments specified in
  |                          | calculationPeriodDatesAdjustments.

### `data` `NotionalStepRule`

  A class defining a parametric representation for the
  notional step schedule, i.e. parameters used to
  generate the notional amount on each step date. This
  parametric representation is intended to cover the
  more common amortizing/accreting variations of swaps.
* `NotionalStepRule`

  | Field                             | Type/Description |
  | :-------------------------------- | :----------------
  | `calculationPeriodDatesReference` | `ReferenceWithMeta` `CalculationPeriodDates`
  |                                   | A pointer style reference to the associated
  |                                   | calculation period dates component defined elsewhere
  |                                   | in the document.
  | `firstNotionalStepDate`           | `Date`
  |                                   | Effective date of the first change in notional (i.e.
  |                                   | a calculation period start date).
  | `lastNotionalStepDate`            | `Date`
  |                                   | Effective date of the last change in notional (i.e. a
  |                                   | calculation period start date).
  | `notionalStepAmount`              | `Optional` `Decimal`
  |                                   | The explicit amount that the notional changes on each
  |                                   | step date. This can be a positive or negative amount.
  | `notionalStepRate`                | `Optional` `Decimal`
  |                                   | The percentage amount by which the notional changes
  |                                   | on each step date. The percentage is either a
  |                                   | percentage applied to the initial notional amount or
  |                                   | the previous outstanding notional, depending of the
  |                                   | value of the attribute stepRelativeTo. The percentage
  |                                   | can be either positive or negative. A percentage of
  |                                   | 5% would be represented as 0.05.
  | `stepFrequency`                   | `Frequency`
  |                                   | The frequency at which the notional step changes
  |                                   | occur. This frequency must be an integer multiple of
  |                                   | the stream calculation period frequency.
  | `stepRelativeTo`                  | `Optional` `StepRelativeToEnum`
  |                                   | Specifies whether the notionalStepRate should be
  |                                   | applied to the initial notional or the previous
  |                                   | notional in order to calculate the notional step
  |                                   | change amount.

### `data` `Obligations`

  A class to specify the underlying obligations of the
  reference entity on which protection is purchased or
  sold through the Credit Default Swap.
* `Obligations`

  | Field                            | Type/Description |
  | :------------------------------- | :----------------
  | `cashSettlementOnly`             | `Optional` `Bool`
  |                                  | An obligation and deliverable obligation
  |                                  | characteristic. Defined in the ISDA published
  |                                  | Standard Terms Supplement for use with CDS
  |                                  | Transactions on Leveraged Loans. ISDA 2003 Term: Cash
  |                                  | Settlement Only.
  | `category`                       | `ObligationCategoryEnum`
  |                                  | Used in both obligations and deliverable obligations
  |                                  | to represent a class or type of securities which
  |                                  | apply. ISDA 2003 Term: Obligation
  |                                  | Category/Deliverable Obligation Category.
  | `continuity`                     | `Optional` `Bool`
  |                                  | An obligation and deliverable obligation
  |                                  | characteristic. Defined in the ISDA published
  |                                  | Standard Terms Supplement for use with CDS
  |                                  | Transactions on Leveraged Loans. ISDA 2003 Term:
  |                                  | Continuity.
  | `deliveryOfCommitments`          | `Optional` `Bool`
  |                                  | An obligation and deliverable obligation
  |                                  | characteristic. Defined in the ISDA published
  |                                  | Standard Terms Supplement for use with CDS
  |                                  | Transactions on Leveraged Loans. ISDA 2003 Term:
  |                                  | Delivery of Commitments.
  | `designatedPriority`             | `Optional` `(` `FieldWithMeta` `Text` `)`
  |                                  | Applies to Loan CDS, to indicate what lien level is
  |                                  | appropriate for a deliverable obligation. Applies to
  |                                  | European Loan CDS, to indicate the Ranking of the
  |                                  | obligation. Example: a 2nd lien Loan CDS would imply
  |                                  | that the deliverable obligations are 1st or 2nd lien
  |                                  | loans.
  | `excluded`                       | `Optional` `Text`
  |                                  | A free format string to specify any excluded
  |                                  | obligations or deliverable obligations, as the case
  |                                  | may be, of the reference entity or excluded types of
  |                                  | obligations or deliverable obligations. ISDA 2003
  |                                  | Term: Excluded Obligations/Excluded Deliverable
  |                                  | Obligations.
  | `fullFaithAndCreditObLiability`  | `Optional` `Bool`
  |                                  | An obligation and deliverable obligation
  |                                  | characteristic. Defined in the ISDA published
  |                                  | additional provisions for U.S. Municipal as Reference
  |                                  | Entity. ISDA 2003 Term: Full Faith and Credit
  |                                  | Obligation Liability.
  | `generalFundObligationLiability` | `Optional` `Bool`
  |                                  | An obligation and deliverable obligation
  |                                  | characteristic. Defined in the ISDA published
  |                                  | additional provisions for U.S. Municipal as Reference
  |                                  | Entity. ISDA 2003 Term: General Fund Obligation
  |                                  | Liability.
  | `listed`                         | `Optional` `Bool`
  |                                  | An obligation and deliverable obligation
  |                                  | characteristic. Indicates whether or not the
  |                                  | obligation is quoted, listed or ordinarily purchased
  |                                  | and sold on an exchange. ISDA 2003 Term: Listed.
  | `notContingent`                  | `Optional` `Bool`
  |                                  | OTE: Only allowed as an obligation characteristic
  |                                  | under ISDA Credit 1999. In essence Not Contingent
  |                                  | means the repayment of principal cannot be dependent
  |                                  | on a formula/index, i.e. to prevent the risk of being
  |                                  | delivered an instrument that may never pay any
  |                                  | element of principal, and to ensure that the
  |                                  | obligation is interest bearing (on a regular
  |                                  | schedule). ISDA 2003 Term: Not Contingent.
  | `notDomesticCurrency`            | `Optional` `NotDomesticCurrency`
  |                                  | An obligation and deliverable obligation
  |                                  | characteristic. Any obligation that is payable in any
  |                                  | currency other than the domestic currency. Domestic
  |                                  | currency is either the currency so specified or, if
  |                                  | no currency is specified, the currency of (a) the
  |                                  | reference entity, if the reference entity is a
  |                                  | sovereign, or (b) the jurisdiction in which the
  |                                  | relevant reference entity is organised, if the
  |                                  | reference entity is not a sovereign. ISDA 2003 Term:
  |                                  | Not Domestic Currency.
  | `notDomesticIssuance`            | `Optional` `Bool`
  |                                  | An obligation and deliverable obligation
  |                                  | characteristic. Any obligation other than an
  |                                  | obligation that was intended to be offered for sale
  |                                  | primarily in the domestic market of the relevant
  |                                  | Reference Entity. This specifies that the obligation
  |                                  | must be an internationally recognised bond. ISDA 2003
  |                                  | Term: Not Domestic Issuance.
  | `notDomesticLaw`                 | `Optional` `Bool`
  |                                  | An obligation and deliverable obligation
  |                                  | characteristic. If the reference entity is a
  |                                  | Sovereign, this means any obligation that is not
  |                                  | subject to the laws of the reference entity. If the
  |                                  | reference entity is not a sovereign, this means any
  |                                  | obligation that is not subject to the laws of the
  |                                  | jurisdiction of the reference entity. ISDA 2003 Term:
  |                                  | Not Domestic Law.
  | `notSovereignLender`             | `Optional` `Bool`
  |                                  | An obligation and deliverable obligation
  |                                  | characteristic. Any obligation that is not primarily
  |                                  | (majority) owed to a Sovereign or Supranational
  |                                  | Organisation. ISDA 2003 Term: Not Sovereign Lender.
  | `notSubordinated`                | `Optional` `Bool`
  |                                  | An obligation and deliverable obligation
  |                                  | characteristic. An obligation that ranks at least
  |                                  | equal with the most senior Reference Obligation in
  |                                  | priority of payment or, if no Reference Obligation is
  |                                  | specified in the related Confirmation, the
  |                                  | obligations of the Reference Entity that are senior.
  |                                  | ISDA 2003 Term: Not Subordinated.
  | `othReferenceEntityObligations`  | `Optional` `Text`
  |                                  | This element is used to specify any other obligations
  |                                  | of a reference entity in both obligations and
  |                                  | deliverable obligations. The obligations can be
  |                                  | specified free-form. ISDA 2003 Term: Other
  |                                  | Obligations of a Reference Entity.
  | `revenueObligationLiability`     | `Optional` `Bool`
  |                                  | An obligation and deliverable obligation
  |                                  | characteristic. Defined in the ISDA published
  |                                  | additional provisions for U.S. Municipal as Reference
  |                                  | Entity. ISDA 2003 Term: Revenue Obligation Liability.
  | `specifiedCurrency`              | `Optional` `SpecifiedCurrency`
  |                                  | An obligation and deliverable obligation
  |                                  | characteristic. The currency or currencies in which
  |                                  | an obligation or deliverable obligation must be
  |                                  | payable. ISDA 2003 Term: Specified Currency.

### `data` `ObservationPrimitive`

  A class to specify the primitive object to specify
  market observation events, which is applicable across
  all asset classes.
* `ObservationPrimitive`

  | Field         | Type/Description |
  | :------------ | :----------------
  | `date`        | `Date`
  |               | The observation date.
  | `observation` | `Decimal`
  |               | The observed value.
  | `side`        | `Optional` `QuotationSideEnum`
  |               | The side (bid/mid/ask) of the observation, when
  |               | applicable.
  | `source`      | `ObservationSource`
  |               | The observation source, such as an interest rate
  |               | curve or an information provider.
  | `time`        | `Optional` `TimeZone`
  |               | The observation time.

### `data` `ObservationSource`

  The observation source can be composed of an curve
  and/or and information source.
* `ObservationSource`

  | Field               | Type/Description |
  | :------------------ | :----------------
  | `curve`             | `Optional` `Curve`
  | `informationSource` | `Optional` `InformationSource`

### `data` `Offset`

  A class defining an offset used in calculating a new
  date relative to a reference date, e.g. calendar
  days, business days, commodity Business days, etc.
* `Offset`

  | Field              | Type/Description |
  | :----------------- | :----------------
  | `dayType`          | `Optional` `DayTypeEnum`
  |                    | In the case of an offset specified as a number of
  |                    | days, this element defines whether consideration is
  |                    | given as to whether a day is a good business day or
  |                    | not. If a day type of business days is specified then
  |                    | non-business days are ignored when calculating the
  |                    | offset. The financial business centers to use for
  |                    | determination of business days are implied by the
  |                    | context in which this element is used. This element
  |                    | must only be included when the offset is specified as
  |                    | a number of days. If the offset is zero days then the
  |                    | dayType element should not be included.
  | `id`               | `Optional` `Text`
  | `period`           | `PeriodEnum`
  |                    | A time period, e.g. a day, week, month or year of the
  |                    | stream. If the periodMultiplier value is 0 (zero)
  |                    | then period must contain the value D (day).
  | `periodMultiplier` | `Int`
  |                    | A time period multiplier, e.g. 1, 2 or 3 etc. A
  |                    | negative value can be used when specifying an offset
  |                    | relative to another date, e.g. -2 days.

### `data` `OneWayProvisions`

  A class to specify the Posting Party for the purposes
  of One Way Provisions in relation to the ISDA CSA for
  Initial Margin. ISDA 2016 Credit Support Annex for
  Initial Margin, paragraph 13, General Principles
  (aa): One Way Provisions.
* `OneWayProvisions`

  | Field          | Type/Description |
  | :------------- | :----------------
  | `isApplicable` | `Bool`
  |                | The determination of whether the One Way Provisions
  |                | are applicable (true) or not applicable (false).
  | `postingParty` | `Optional` `(` `ReferenceWithMeta` `Party` `)`
  |                | The Posting Party for the purposes of One Way
  |                | Provisions. This party is specified in the case where
  |                | the One Way Provision is deemed applicable.

### `data` `OptionCashSettlement`

  A class to define the cash settlement terms for a
  product where cash settlement is applicable.
* `OptionCashSettlement`

  | Field                           | Type/Description |
  | :------------------------------ | :----------------
  | `cashPriceAlternateMethod`      | `Optional` `CashPriceMethod`
  |                                 | An ISDA defined cash settlement method used for the
  |                                 | determination of the applicable cash settlement
  |                                 | amount. The method is defined in the 2006 ISDA
  |                                 | Definitions, Section 18.3. Cash Settlement Methods,
  |                                 | paragraph (b).
  | `cashPriceMethod`               | `Optional` `CashPriceMethod`
  |                                 | An ISDA defined cash settlement method used for the
  |                                 | determination of the applicable cash settlement
  |                                 | amount. The method is defined in the 2006 ISDA
  |                                 | Definitions, Section 18.3. Cash Settlement Methods,
  |                                 | paragraph (a).
  | `cashSettlementPaymentDate`     | `Optional` `CashSettlementPaymentDate`
  |                                 | The date on which the cash settlement amount will be
  |                                 | paid, subject to adjustment in accordance with any
  |                                 | applicable business day convention. This component
  |                                 | would not be present for a mandatory early
  |                                 | termination provision where the cash settlement
  |                                 | payment date is the mandatory early termination date.
  | `cashSettlementValuationDate`   | `Optional` `RelativeDateOffset`
  |                                 | The date on which the cash settlement amount will be
  |                                 | determined according to the cash settlement method if
  |                                 | the parties have not otherwise been able to agree the
  |                                 | cash settlement amount.
  | `cashSettlementValuationTime`   | `Optional` `BusinessCenterTime`
  |                                 | The time of the cash settlement valuation date when
  |                                 | the cash settlement amount will be determined
  |                                 | according to the cash settlement method if the
  |                                 | parties have not otherwise been able to agree the
  |                                 | cash settlement amount.
  | `collateralizedCashPriceMethod` | `Optional` `YieldCurveMethod`
  |                                 | An ISDA defined cash settlement method used for the
  |                                 | determination of the applicable cash settlement
  |                                 | amount. The method is defined in the 2006 ISDA
  |                                 | Definitions, Section 18.3. Cash Settlement Methods,
  |                                 | paragraph (g) (published in Supplement number 28).
  | `crossCurrencyMethod`           | `Optional` `CrossCurrencyMethod`
  |                                 | An ISDA defined cash settlement method used for the
  |                                 | determination of the applicable cash settlement
  |                                 | amount. The method is defined in the 2006 ISDA
  |                                 | Definitions, Section 18.3. Cash Settlement Methods,
  |                                 | paragraph (f) (published in Supplement number 23).
  | `id`                            | `Optional` `Text`
  | `parYieldCurveAdjustedMethod`   | `Optional` `YieldCurveMethod`
  |                                 | An ISDA defined cash settlement method used for the
  |                                 | determination of the applicable cash settlement
  |                                 | amount. The method is defined in the 2006 ISDA
  |                                 | Definitions, Section 18.3. Cash Settlement Methods,
  |                                 | paragraph (c).
  | `parYieldCurveUnadjustedMethod` | `Optional` `YieldCurveMethod`
  |                                 | An ISDA defined cash settlement method used for the
  |                                 | determination of the applicable cash settlement
  |                                 | amount. The method is defined in the 2006 ISDA
  |                                 | Definitions, Section 18.3. Cash Settlement Methods,
  |                                 | paragraph (e).
  | `zeroCouponYieldAdjustedMethod` | `Optional` `YieldCurveMethod`
  |                                 | An ISDA defined cash settlement method used for the
  |                                 | determination of the applicable cash settlement
  |                                 | amount. The method is defined in the 2006 ISDA
  |                                 | Definitions, Section 18.3. Cash Settlement Methods,
  |                                 | paragraph (d).

### `data` `OptionDenomination`

  Class which corresponds to the FpML
  OptionDenomination.model group.
* `OptionDenomination`

  | Field                 | Type/Description |
  | :-------------------- | :----------------
  | `entitlementCurrency` | `Optional` `(` `FieldWithMeta` `Text` `)`
  |                       | The currency in which the option is denominated. The
  |                       | list of valid currencies is not presently positioned
  |                       | as an enumeration as part of the CDM because that
  |                       | scope is limited to the values specified by ISDA and
  |                       | FpML. As a result, implementers have to make
  |                       | reference to the relevant standard, such as the ISO
  |                       | 4217 standard for currency codes.
  | `numberOfOptions`     | `Optional` `Decimal`
  |                       | The number of options comprised in the option
  |                       | transaction.
  | `optionEntitlement`   | `Decimal`
  |                       | The number of units of underlier per option comprised
  |                       | in the option transaction.

### `data` `OptionExercise`

  A class to represent the applicable terms to qualify
  an option exercise: the option style (e.g. American
  style option), the exercise procedure (e.g. manual
  exercise) and the settlement terms (e.g. physical vs.
  cash).
* `OptionExercise`

  | Field               | Type/Description |
  | :------------------ | :----------------
  | `exerciseProcedure` | `Optional` `ExerciseProcedure`
  |                     | The set of parameters defining the procedure
  |                     | associated with the exercise, e.g. manual exercise.
  | `optionStyle`       | `OptionStyle`
  |                     | The option exercise can be of American style, Bermuda
  |                     | style or European style. The FpML implementation
  |                     | makes use of a substitution group.
  | `settlement`        | `Optional` `OptionSettlement`
  |                     | The option settlement terms, such as cash vs.
  |                     | physical, the settlement date, the settlement
  |                     | currency and/or amount. FpML represents this
  |                     | information as part of the OptionSettlement.model.
  | `strike`            | `Optional` `OptionStrike`
  |                     | Specifies the strike of the option on credit default
  |                     | swap.

### `data` `OptionFeature`

  A class for defining option features.
* `OptionFeature`

  | Field             | Type/Description |
  | :---------------- | :----------------
  | `asian`           | `Optional` `Asian`
  |                   | An option where and average price is taken on
  |                   | valuation.
  | `barrier`         | `Optional` `Barrier`
  |                   | An option with a barrier feature.
  | `fxFeature`       | `Optional` `FxFeature`
  |                   | A quanto or composite FX feature.
  | `knock`           | `Optional` `Knock`
  |                   | A knock feature.
  | `passThrough`     | `Optional` `PassThrough`
  |                   | Pass-through payments from the underlier, such as
  |                   | dividends.
  | `strategyFeature` | `Optional` `StrategyFeature`
  |                   | A simple strategy feature.

### `data` `OptionPayout`

  The option payout specification terms. The associated
  rosettaKey denotes the ability to associate a hash
  value to the respective OptionPayout instantiation
  for the purpose of model cross-referencing, in
  support of functionality such as the event effect and
  the lineage.
* `OptionPayout`

  | Field           | Type/Description |
  | :-------------- | :----------------
  | `buyerSeller`   | `BuyerSeller`
  | `denomination`  | `Optional` `OptionDenomination`
  |                 | The denomination qualifies the number of units of
  |                 | underlier per option and the number of options
  |                 | comprised in the option transaction. FpML represents
  |                 | this information as part of the
  |                 | OptionDenomination.model.
  | `exerciseTerms` | `OptionExercise`
  |                 | The terms for exercising the option, which include
  |                 | the option style (e.g. American style option), the
  |                 | exercise procedure (e.g. manual exercise) and the
  |                 | settlement terms (e.g. physical vs. cash).
  | `feature`       | `Optional` `OptionFeature`
  |                 | The option feature, such as quanto, Asian, barrier,
  |                 | knock.
  | `id`            | `Optional` `Text`
  | `optionType`    | `Optional` `OptionTypeEnum`
  |                 | The type of option transaction. From a usage
  |                 | standpoint, put/call is the default option type,
  |                 | while payer/receiver indicator is used for options on
  |                 | index credit default swaps, consistently with the
  |                 | industry practice. Straddle is used for the case of
  |                 | straddle strategy, that combine a call and a put with
  |                 | the same strike.
  | `quantity`      | `Optional` `ContractualQuantity`
  |                 | The option notional amount. The CDM uses the generic
  |                 | term quantity rather than notional amount. The number
  |                 | of options is specified as part of the denomination
  |                 | attribute.
  | `rosettaKey`    | `Text`
  | `underlier`     | `Product`
  |                 | The option underlier. The implementation is
  |                 | restricted to contractual underliers as part of the
  |                 | initial CDM phase.

### `data` `OptionPhysicalSettlement`

* `OptionPhysicalSettlement`

  | Field                                             | Type/Description |
  | :------------------------------------------------ | :----------------
  | `clearedPhysicalSettlement`                       | `Bool`
  |                                                   | Specifies whether the swap resulting from physical
  |                                                   | settlement of the swaption transaction will clear
  |                                                   | through a clearing house. The meaning of Cleared
  |                                                   | Physical Settlement is defined in the 2006 ISDA
  |                                                   | Definitions, Section 15.2 (published in Supplement
  |                                                   | number 28).
  | `predeterminedClearingOrganizationPartyReference` | `Optional` `(` `ReferenceWithMeta` `Party` `)`
  |                                                   | A reference to the clearing organisation (CCP, DCO)
  |                                                   | to which the trade should be cleared.

### `data` `OptionSettlement`

  The option settlement terms.
* `OptionSettlement`

  | Field                     | Type/Description |
  | :------------------------ | :----------------
  | `cashSettlementTerms`     | `Optional` `OptionCashSettlement`
  |                           | Specifies the parameters associated with the cash
  |                           | settlement procedure.
  | `id`                      | `Optional` `Text`
  | `physicalSettlementTerms` | `Optional` `OptionPhysicalSettlement`
  |                           | Specifies the physical settlement terms which apply
  |                           | to the transaction.
  | `settlementAmount`        | `Optional` `Money`
  |                           | The Settlement Amount, when known in advance.
  | `settlementCurrency`      | `Optional` `(` `FieldWithMeta` `Text` `)`
  |                           | The settlement currency is to be specified when the
  |                           | Settlement Amount cannot be known in advance. The
  |                           | list of valid currencies is not presently positioned
  |                           | as an enumeration as part of the CDM because that
  |                           | scope is limited to the values specified by ISDA and
  |                           | FpML. As a result, implementers have to make
  |                           | reference to the relevant standard, such as the ISO
  |                           | 4217 standard for currency codes.
  | `settlementDate`          | `Optional` `AdjustableOrRelativeDate`
  | `settlementType`          | `Optional` `SettlementTypeEnum`
  |                           | Whether the settlement will be cash, physical, by
  |                           | election, ...

### `data` `OptionStrike`

  A class to specify the option strike.
* `OptionStrike`

  | Field                | Type/Description |
  | :------------------- | :----------------
  | `currency`           | `Optional` `(` `FieldWithMeta` `Text` `)`
  |                      | The currency in which the option strike is
  |                      | denominated. The list of valid currencies is not
  |                      | presently positioned as an enumeration as part of the
  |                      | CDM because that scope is limited to the values
  |                      | specified by ISDA and FpML. As a result, implementers
  |                      | have to make reference to the relevant standard, such
  |                      | as the ISO 4217 standard for currency codes.
  | `percentage`         | `Optional` `Decimal`
  |                      | The price or level expressed as a percentage of the
  |                      | forward starting spot price.
  | `price`              | `Optional` `Decimal`
  |                      | The strike of a credit default swap option or credit
  |                      | swaption when expressed as in reference to the price
  |                      | of the underlying obligation(s) or index.
  | `referenceSwapCurve` | `Optional` `ReferenceSwapCurve`
  |                      | The strike of an option when expressed by reference
  |                      | to a swap curve. (Typically the case for a
  |                      | convertible bond option.)
  | `spread`             | `Optional` `Decimal`
  |                      | The strike of a credit default swap option or credit
  |                      | swaption when expressed as a spread per annum.
  | `strikeReference`    | `Optional` `(` `ReferenceWithMeta` `Schedule` `)`
  |                      | The strike of an option on a credit default swap when
  |                      | expressed in reference to the spread of the
  |                      | underlying swap (typical practice in the case of
  |                      | credit single name swaps).

### `data` `OptionStyle`

  The qualification of the option style: American,
  Bermuda or European. FpML implements those features
  as part of a substitution group.
* `OptionStyle`

  | Field              | Type/Description |
  | :----------------- | :----------------
  | `americanExercise` | `Optional` `AmericanExercise`
  | `bermudaExercise`  | `Optional` `BermudaExercise`
  | `europeanExercise` | `Optional` `EuropeanExercise`

### `data` `OptionalEarlyTermination`

  A class defining an early termination provision where
  either or both parties have the right to exercise.
* `OptionalEarlyTermination`

  | Field                                   | Type/Description |
  | :-------------------------------------- | :----------------
  | `americanExercise`                      | `Optional` `AmericanExercise`
  |                                         | American exercise. FpML implementations consists in
  |                                         | an exercise substitution group.
  | `bermudaExercise`                       | `Optional` `BermudaExercise`
  |                                         | Bermuda exercise. FpML implementations consists in an
  |                                         | exercise substitution group.
  | `calculationAgent`                      | `CalculationAgent`
  |                                         | The ISDA Calculation Agent responsible for performing
  |                                         | duties associated with an optional early termination.
  | `cashSettlement`                        | `OptionCashSettlement`
  |                                         | If specified, this means that cash settlement is
  |                                         | applicable to the transaction and defines the
  |                                         | parameters associated with the cash settlement
  |                                         | procedure. If not specified, then physical settlement
  |                                         | is applicable.
  | `europeanExercise`                      | `Optional` `EuropeanExercise`
  |                                         | European exercise. FpML implementations consists in
  |                                         | an exercise substitution group.
  | `exerciseNotice`                        | `[` `ExerciseNotice` `]`
  |                                         | Definition of the party to whom notice of exercise
  |                                         | should be given.
  | `followUpConfirmation`                  | `Optional` `Bool`
  |                                         | A flag to indicate whether follow-up confirmation of
  |                                         | exercise (written or electronic) is required
  |                                         | following telephonic notice by the buyer to the
  |                                         | seller or seller&#39;s agent.
  | `optionalEarlyTerminationAdjustedDates` | `Optional` `OptionalEarlyTerminationAdjustedDates`
  |                                         | An early termination provision to terminate the trade
  |                                         | at fair value where one or both parties have the
  |                                         | right to decide on termination.
  | `singlePartyOption`                     | `Optional` `BuyerSeller`
  |                                         | If optional early termination is not available to
  |                                         | both parties then this component specifies the buyer
  |                                         | and seller of the option. In FpML, this attribute is
  |                                         | of type SinglePsrtyOption, which actually consists of
  |                                         | the BuyerSeller.model.

### `data` `OptionalEarlyTerminationAdjustedDates`

  A class defining the adjusted dates associated with
  an optional early termination provision.
* `OptionalEarlyTerminationAdjustedDates`

  | Field                   | Type/Description |
  | :---------------------- | :----------------
  | `earlyTerminationEvent` | `[` `EarlyTerminationEvent` `]`
  |                         | The adjusted dates associated with an individual
  |                         | early termination date.

### `data` `OtherAgreement`

  A class for defining the an agreement executed
  between parties.
* `OtherAgreement`

  | Field        | Type/Description |
  | :----------- | :----------------
  | `date`       | `Optional` `Date`
  |              | The date on which the agreement was signed.
  | `identifier` | `Optional` `(` `FieldWithMeta` `Text` `)`
  |              | An identifier that has been created to identify the
  |              | agreement.
  | `_type`      | `FieldWithMeta` `Text`
  |              | The agreement executed between the parties and
  |              | intended to govern product-specific derivatives
  |              | transactions between those parties.
  | `version`    | `Optional` `(` `FieldWithMeta` `Text` `)`
  |              | The version of the agreement.

### `data` `PCDeliverableObligationCharac`

  A class to specify the Partial Cash Deliverable
  Obligation Characteristic.
* `PCDeliverableObligationCharac`

  | Field                   | Type/Description |
  | :---------------------- | :----------------
  | `applicable`            | `Bool`
  |                         | Indicates whether the provision is applicable.
  | `partialCashSettlement` | `Optional` `Bool`
  |                         | Specifies whether either &#39;Partial Cash Settlement
  |                         | of Assignable Loans&#39;, &#39;Partial Cash
  |                         | Settlement of Consent Required Loans&#39; or
  |                         | &#39;Partial Cash Settlement of Participations&#39;
  |                         | is applicable. If this element is specified and
  |                         | Assignable Loan is a Deliverable Obligation
  |                         | Characteristic, any Assignable Loan that is
  |                         | deliverable, but where a non-receipt of Consent by
  |                         | the Physical Settlement Date has occurred, the Loan
  |                         | can be cash settled rather than physically delivered.
  |                         | If this element is specified and Consent Required
  |                         | Loan is a Deliverable Obligation Characteristic, any
  |                         | Consent Required Loan that is deliverable, but where
  |                         | a non-receipt of Consent by the Physical Settlement
  |                         | Date has occurred, the Loan can be cash settled
  |                         | rather than physically delivered. If this element is
  |                         | specified and Direct Loan Participation is a
  |                         | Deliverable Obligation Characteristic, any
  |                         | Participation that is deliverable, but where this
  |                         | participation has not been effected (has not come
  |                         | into effect) by the Physical Settlement Date, the
  |                         | participation can be cash settled rather than
  |                         | physically delivered.

### `data` `PackageInformation`

  A class defining additional information that may be
  recorded alongside a transaction package.
* `PackageInformation`

  | Field              | Type/Description |
  | :----------------- | :----------------
  | `category`         | `[` `CategoryEnum` `]`
  | `intentToAllocate` | `Optional` `Bool`
  |                    | specifies whether the transaction package is
  |                    | anticipated to be allocated.
  | `relatedParty`     | `[` `RelatedParty` `]`
  |                    | This may be used to identify one or more parties that
  |                    | perform a role as part of the transaction.

### `data` `PartialExercise`

  A class defining partial exercise. As defined in the
  2000 ISDA Definitions, Section 12.3 Partial Exercise,
  the buyer of the option may exercise all or less than
  all the notional amount of the underlying swap but
  may not be less than the minimum notional amount (if
  specified) and must be an integral multiple of the
  integral multiple amount if specified.
* `PartialExercise`

  | Field                    | Type/Description |
  | :----------------------- | :----------------
  | `integralMultipleAmount` | `Optional` `Decimal`
  |                          | A notional amount which restricts the amount of
  |                          | notional that can be exercised when partial exercise
  |                          | or multiple exercise is applicable. The integral
  |                          | multiple amount defines a lower limit of notional
  |                          | that can be exercised and also defines a unit
  |                          | multiple of notional that can be exercised, i.e. only
  |                          | integer multiples of this amount can be exercised.
  | `minimumNotionalAmount`  | `Optional` `Decimal`
  |                          | The minimum notional amount that can be exercised on
  |                          | a given exercise date. See multipleExercise.
  | `minimumNumberOfOptions` | `Optional` `Int`
  |                          | The minimum number of options that can be exercised
  |                          | on a given exercise date.
  | `notionaReference`       | `ReferenceWithMeta` `Money`
  |                          | A pointer style reference to the associated notional
  |                          | schedule defined elsewhere in the document. This
  |                          | element has been made optional as part of its
  |                          | integration in the OptionBaseExtended, because not
  |                          | required for the options on securities.

### `data` `Party`

  A class to specify a party, without a qualification
  as to whether this party is a legal entity or a
  natural person, although the model provides the
  ability to associate a person (or set of persons) to
  a party, which use case would imply that such party
  would be a legal entity (even if not formally
  specified as such).
* `Party`

  | Field           | Type/Description |
  | :-------------- | :----------------
  | `account`       | `Optional` `Account`
  |                 | The account that might be associated with the party.
  |                 | At most one account can be specified, as it is
  |                 | expected that this information is used in the context
  |                 | of a contract or legal document where only one
  |                 | account per party can be associated with such object.
  | `id`            | `Optional` `Text`
  | `name`          | `Optional` `(` `FieldWithMeta` `Text` `)`
  |                 | The party name.
  | `naturalPerson` | `[` `NaturalPerson` `]`
  |                 | The person(s) who might be associated with the party
  |                 | as part of the execution, contract or legal document.
  | `partyId`       | `[` `FieldWithMeta` `Text` `]`
  |                 | The identifier associated with a party, e.g. the 20
  |                 | digits LEI code.

### `data` `PartyContractInformation`

  A class defining party-specific additional
  information that may be recorded with respect to a
  contract.
* `PartyContractInformation`

  | Field               | Type/Description |
  | :------------------ | :----------------
  | `accountReference`  | `Optional` `(` `ReferenceWithMeta` `Account` `)`
  |                     | Reference to an account.
  | `category`          | `Optional` `(` `FieldWithMeta` `CategoryEnum` `)`
  |                     | The qualification of the trade by the counterparty,
  |                     | e.g. customer or principal. This information is
  |                     | relevant for a number of marketplace processes, such
  |                     | as regulatory reporting or clearing.
  | `naturalPersonRole` | `[` `NaturalPersonRole` `]`
  |                     | The role(s) that natural person(s) may have in
  |                     | relation to the contract.
  | `partyReference`    | `ReferenceWithMeta` `Party`
  |                     | The reference to the party that owns this party
  |                     | contract information or, in the case of shared trades
  |                     | information, the reference that originated such
  |                     | information.
  | `relatedParty`      | `Optional` `RelatedParty`

### `data` `PartyCustomisedWorkflow`

  A class to specify a party-related, non-standardized
  data in a generic form.
* `PartyCustomisedWorkflow`

  | Field                | Type/Description |
  | :------------------- | :----------------
  | `customisedWorkflow` | `[` `CustomisedWorkflow` `]`
  |                      | Non-standardized data in a generic form.
  | `partyName`          | `Optional` `Text`
  |                      | The party name to which the workflow pertains to.
  | `partyReference`     | `Optional` `(` `ReferenceWithMeta` `Party` `)`
  |                      | Reference to the party to which the workflow pertains
  |                      | to.

### `data` `PartyDocumentIdentifier`

  A class defining a legal document identifier issued
  by the indicated party.
* `PartyDocumentIdentifier`

  | Field                | Type/Description |
  | :------------------- | :----------------
  | `documentIdentifier` | `[` `FieldWithMeta` `Identifier` `]`
  |                      | While FpML specifies the document identifier with a
  |                      | value and an associated scheme, the CDM makes use of
  |                      | the Identifier, which has an explicit issuer. The
  |                      | issuer of this identifier is not necessarily the same
  |                      | as the party reference
  | `id`                 | `Optional` `(` `FieldWithMeta` `Text` `)`
  | `partyReference`     | `Text`
  |                      | Reference to the party that issued the document
  |                      | identifier

### `data` `PartyElectiveAmount`

  A class to specify the party elective amounts which
  can be used for the purpose of specifying elections
  such as the ISDA CSA Threshold and Minimum Transfer
  Amount.
* `PartyElectiveAmount`

  | Field            | Type/Description |
  | :--------------- | :----------------
  | `amount`         | `Optional` `Money`
  |                  | The elective amount when expressed as a currency
  |                  | amount. The associated PartyElectiveAmount_amount
  |                  | enforces that the currency amount is actually greater
  |                  | than 0.
  | `customElection` | `Optional` `Text`
  |                  | The elective amount when expressed as a custom
  |                  | election by the party.
  | `noAmount`       | `Optional` `Decimal`
  |                  | The elective amount when specifies as 0 with no
  |                  | associated currency. The associated
  |                  | PartyElectiveAmount_noAmount data rule enforces that
  |                  | the number is actually equal to 0.
  | `party`          | `ReferenceWithMeta` `Party`
  |                  | The party which the elective amount applies to.

### `data` `PartyNotificationTime`

  A class to specify the party notification time
  elections.
* `PartyNotificationTime`

  | Field                | Type/Description |
  | :------------------- | :----------------
  | `customNotification` | `Optional` `Text`
  |                      | The Notification Time as a custom election.
  | `notificationTime`   | `Optional` `BusinessCenterTime`
  |                      | The Notification Time as a time that is qualified by
  |                      | a standard business center.
  | `party`              | `ReferenceWithMeta` `Party`
  |                      | The party which the notification time election
  |                      | applies to.

### `data` `PartyRole`

  A class to specify the role(s) that party(ies) may
  have in relation to the execution, contract or other
  legal agreement.
* `PartyRole`

  | Field                     | Type/Description |
  | :------------------------ | :----------------
  | `ownershipPartyReference` | `Optional` `(` `ReferenceWithMeta` `Party` `)`
  |                           | A reference to the party that has ownership of this
  |                           | party role information. FpML specifies that For
  |                           | shared trade information, this attribute will
  |                           | reference the originator of the data (for example, an
  |                           | execution facility or clearing house).
  | `partyReference`          | `ReferenceWithMeta` `Party`
  |                           | A reference to the party to which the role refers to.
  | `role`                    | `PartyRoleEnum`
  |                           | The party role.

### `data` `PassThrough`

  Type which contains pass through payments.
* `PassThrough`

  | Field             | Type/Description |
  | :---------------- | :----------------
  | `passThroughItem` | `[` `PassThroughItem` `]`
  |                   | One to many pass through payment items.

### `data` `PassThroughItem`

  Class to represent a single pass through payment.
* `PassThroughItem`

  | Field                   | Type/Description |
  | :---------------------- | :----------------
  | `passThroughPercentage` | `Decimal`
  |                         | Percentage of payments from the underlier which are
  |                         | passed through.
  | `payerReceiver`         | `PayerReceiver`
  |                         | This attribute doesn&#39;t exists in the FpML
  |                         | construct, which makes use of the PayerReceiver.model
  |                         | group.

### `data` `PayerReceiver`

  A class to represent the FpML PayerReceiver.model.
* `PayerReceiver`

  | Field                      | Type/Description |
  | :------------------------- | :----------------
  | `payerAccountReference`    | `Optional` `(` `ReferenceWithMeta` `Account` `)`
  |                            | A reference to the account responsible for making the
  |                            | payments defined by this structure.
  | `payerPartyReference`      | `ReferenceWithMeta` `Party`
  |                            | A reference to the party responsible for making the
  |                            | payments defined by this structure.
  | `receiverAccountReference` | `Optional` `(` `ReferenceWithMeta` `Account` `)`
  |                            | A reference to the account that receives the payments
  |                            | corresponding to this structure.
  | `receiverPartyReference`   | `ReferenceWithMeta` `Party`
  |                            | A reference to the party that receives the payments
  |                            | corresponding to this structure.

### `data` `PaymentCalculationPeriod`

  A class defining the adjusted payment date and
  associated calculation period parameters required to
  calculate the actual or projected payment amount.
  This class forms part of the cashflow representation
  of a swap stream.
* `PaymentCalculationPeriod`

  | Field                   | Type/Description |
  | :---------------------- | :----------------
  | `adjustedPaymentDate`   | `Optional` `Date`
  |                         | The adjusted payment date. This date should already
  |                         | be adjusted for any applicable business day
  |                         | convention. This component is not intended for use in
  |                         | trade confirmation but may be specified to allow the
  |                         | fee structure to also serve as a cashflow type
  |                         | component.
  | `calculationPeriod`     | `[` `CalculationPeriod` `]`
  |                         | The parameters used in the calculation of a fixed or
  |                         | floating rate calculation period amount. A list of
  |                         | calculation period elements may be ordered in the
  |                         | document by ascending start date. An FpML document
  |                         | which contains an unordered list of calculation
  |                         | periods is still regarded as a conformant document.
  | `discountFactor`        | `Optional` `Decimal`
  |                         | A decimal value representing the discount factor used
  |                         | to calculate the present value of cash flow.
  | `fixedPaymentAmount`    | `Optional` `Decimal`
  |                         | A known fixed payment amount.
  | `forecastPaymentAmount` | `Optional` `Money`
  |                         | A monetary amount representing the forecast of the
  |                         | future value of the payment.
  | `id`                    | `Optional` `Text`
  | `presentValueAmount`    | `Optional` `Money`
  |                         | A monetary amount representing the present value of
  |                         | the forecast payment.
  | `unadjustedPaymentDate` | `Optional` `Date`
  |                         | The unadjusted payment date.

### `data` `PaymentDates`

  A class to specify the parameters to generate the
  payment date schedule, either through a parametric
  representation or by reference to other dates
  specified in the instance document (e.g. the reset
  dates or valuation dates). The CDM representation
  combines the FpML payment dates representation for
  interest rate and total return swap products by
  providing the ability to specify the payment dates as
  a function of some other dates specified in the
  instance document.
* `PaymentDates`

  | Field                     | Type/Description |
  | :------------------------ | :----------------
  | `dateRelativeTo`          | `Optional` `(` `BasicReferenceWithMeta` `Date` `)`
  |                           | The anchor date when the payment dates are specified
  |                           | by reference to a set of dates specified somewhere
  |                           | else in the instance document/transaction, e.g. the
  |                           | valuation dates as typically the case for equity
  |                           | swaps.  When this attribute is specified, the
  |                           | paymentDaysOffset and the paymentDatesAdjustments
  |                           | also need to specified.
  | `firstPaymentDate`        | `Optional` `Date`
  |                           | The first unadjusted payment date. This day may be
  |                           | subject to adjustment in accordance with any business
  |                           | day convention specified in paymentDatesAdjustments.
  |                           | This element must only be included if there is an
  |                           | initial stub. This date will normally correspond to
  |                           | an unadjusted calculation period start or end date.
  |                           | This is true even if early or delayed payment is
  |                           | specified to be applicable since the actual first
  |                           | payment date will be the specified number of days
  |                           | before or after the applicable adjusted calculation
  |                           | period start or end date with the resulting payment
  |                           | date then being adjusted in accordance with any
  |                           | business day convention specified in
  |                           | paymentDatesAdjustments.
  | `id`                      | `Optional` `Text`
  | `lastPaymentDate`         | `Optional` `LastRegularPaymentDate`
  |                           | The last payment date. In the case of interest rate
  |                           | swaps, FpML specifies that this date must only be
  |                           | included if there is a final stub, with all
  |                           | calculation periods after this date contributing to
  |                           | the final payment.
  | `payRelativeTo`           | `Optional` `PayRelativeToEnum`
  |                           | Specifies whether the payments occur relative to each
  |                           | adjusted calculation period start date or end date,
  |                           | each reset date, valuation date or the last pricing
  |                           | date. Calculation period start date means relative to
  |                           | the start of the first calculation period
  |                           | contributing to a given payment. Similarly,
  |                           | calculation period end date means the end of the last
  |                           | calculation period contributing to a given payment.
  |                           | The valuation date is applicable for Brazilian-CDI
  |                           | and equity swaps.
  | `paymentDatesAdjustments` | `Optional` `BusinessDayAdjustments`
  |                           | The definition of the business day convention and
  |                           | financial business centers used for adjusting the
  |                           | payment date if it would otherwise fall on a day that
  |                           | is not a business day in the specified business
  |                           | center.
  | `paymentDaysOffset`       | `Optional` `Offset`
  |                           | If early payment or delayed payment is required,
  |                           | specifies the number of days offset that the payment
  |                           | occurs relative to what would otherwise be the
  |                           | unadjusted payment date. The offset can be specified
  |                           | in terms of either calendar or business days. Even in
  |                           | the case of a calendar days offset, the resulting
  |                           | payment date, adjusted for the specified calendar
  |                           | days offset, will still be adjusted in accordance
  |                           | with the specified payment dates adjustments. This
  |                           | element should only be included if early or delayed
  |                           | payment is applicable, i.e. if the periodMultiplier
  |                           | element value is not equal to zero. An early payment
  |                           | would be indicated by a negative periodMultiplier
  |                           | element value and a delayed payment (or payment lag)
  |                           | would be indicated by a positive periodMultiplier
  |                           | element value.
  | `paymentFrequency`        | `Optional` `Frequency`
  |                           | The frequency at which regular payment dates occur.
  |                           | If the payment frequency is equal to the frequency
  |                           | defined in the calculation period dates component
  |                           | then one calculation period contributes to each
  |                           | payment amount. If the payment frequency is less
  |                           | frequent than the frequency defined in the
  |                           | calculation period dates component then more than one
  |                           | calculation period will contribute to the payment
  |                           | amount. A payment frequency more frequent than the
  |                           | calculation period frequency or one that is not a
  |                           | multiple of the calculation period frequency is
  |                           | invalid. If the payment frequency is of value T
  |                           | (term), the period is defined by the effectiveDate
  |                           | and the terminationDate.

### `data` `PaymentDetail`

* `PaymentDetail`

  | Field           | Type/Description |
  | :-------------- | :----------------
  | `id`            | `Optional` `Text`
  | `paymentAmount` | `Optional` `Money`
  |                 | A fixed payment amount.
  | `paymentDate`   | `Optional` `AdjustableOrRelativeDate`
  | `paymentRule`   | `PaymentRule`
  |                 | The calculation rule.

### `data` `PaymentDiscounting`

  This class corresponds to the FpML
  PaymentDiscounting.model group for representing the
  discounting elements that can be associated with a
  payment.
* `PaymentDiscounting`

  | Field                | Type/Description |
  | :------------------- | :----------------
  | `discountFactor`     | `Optional` `Decimal`
  |                      | The value representing the discount factor used to
  |                      | calculate the present value of the cash flow.
  | `presentValueAmount` | `Optional` `Money`
  |                      | The amount representing the present value of the
  |                      | forecast payment.

### `data` `PaymentRule`

  A class defining the payment calculation rule. As of
  FpML 5.10, percentage rule is the only calculation
  rule that has been specified as part of the standard.
* `PaymentRule`

  | Field            | Type/Description |
  | :--------------- | :----------------
  | `percentageRule` | `Optional` `PercentageRule`
  |                  | This attribute is not present as part of the FpML
  |                  | construct, as the payment rule is specialised by
  |                  | means of runtime type extension through the xsi:type.

### `data` `Payout`

  A class to represent the set of future cashflow
  methodologies in the form of specific payout
  class(es) that can be associated for the purpose of
  specifying a financial product. For example, two
  interest rate payouts can be combined to specify an
  interest rate swap, or one interest rate payout can
  be combined with a credit default payout to specify a
  credit default swap.
* `Payout`

  | Field                 | Type/Description |
  | :-------------------- | :----------------
  | `cashflow`            | `[` `Cashflow` `]`
  |                       | A cashflow between the parties to the trade. For
  |                       | interest rate and equity products, this corresponds
  |                       | to the FpML additionalPayment element. For credit
  |                       | default swaps, this corresponds to the FpML
  |                       | initialPayment element and the singlePayment element
  |                       | of the fee leg. For option products, it represents
  |                       | the FpML premium element.
  | `creditDefaultPayout` | `Optional` `CreditDefaultPayout`
  |                       | The credit default payout, which provides the details
  |                       | necessary for determining when a credit payout will
  |                       | be triggered as well as the parameters for
  |                       | calculating the payout and the settlement terms.
  | `equityPayout`        | `[` `EquityPayout` `]`
  |                       | The equity payout, which encompasses the equity price
  |                       | returns, dividend returns, volatility and variance
  |                       | return provisions.
  | `forwardPayout`       | `[` `ForwardPayout` `]`
  | `interestRatePayout`  | `[` `InterestRatePayout` `]`
  |                       | All of the terms necessary to define and calculate a
  |                       | cash flow based on a fixed, a floating or an
  |                       | inflation index rate. The interest rate payout can be
  |                       | applied to interest rate swaps and FRA (which both
  |                       | have two associated interest rate payouts), credit
  |                       | default swaps (to represent the fee leg when subject
  |                       | to periodic payments) and equity swaps (to represent
  |                       | the funding leg).
  | `optionPayout`        | `[` `OptionPayout` `]`
  |                       | The option payout.

### `data` `PercentageRule`

  A class defining a content model for a calculation
  rule defined as percentage of the notional amount.
* `PercentageRule`

  | Field                     | Type/Description |
  | :------------------------ | :----------------
  | `notionalAmountReference` | `ReferenceWithMeta` `Money`
  |                           | A reference to the notional amount.
  | `paymentPercent`          | `Decimal`
  |                           | A percentage of the notional amount.

### `data` `Period`

  A class to define recurring periods or time offsets.
* `Period`

  | Field              | Type/Description |
  | :----------------- | :----------------
  | `id`               | `Optional` `Text`
  | `period`           | `PeriodEnum`
  |                    | A time period, e.g. a day, week, month or year of the
  |                    | stream. If the periodMultiplier value is 0 (zero)
  |                    | then period must contain the value D (day).
  | `periodMultiplier` | `Int`
  |                    | A time period multiplier, e.g. 1, 2 or 3 etc. A
  |                    | negative value can be used when specifying an offset
  |                    | relative to another date, e.g. -2 days.

### `data` `PhysicalExercise`

  The physical exercise results into a financial
  product which is represented through the Product
  class, with an associated quantity and cashflow (e.g.
  a physical exercise of a bond option will result into
  a bond with a cash proceed which will be a function
  of the option strike price).
* `PhysicalExercise`

  | Field      | Type/Description |
  | :--------- | :----------------
  | `cashflow` | `Optional` `Cashflow`
  |            | The cashflow component of the physical exercise.
  | `product`  | `Product`
  | `quantity` | `Optional` `Quantity`
  |            | The quantity associated the asset that is physically
  |            | settled. This quantity should only be associated with
  |            | non-contractual products, as it is then expressed as
  |            | part of the contractual terms.

### `data` `PhysicalSettlementPeriod`

* `PhysicalSettlementPeriod`

  | Field                      | Type/Description |
  | :------------------------- | :----------------
  | `businessDays`             | `Optional` `Int`
  |                            | A number of business days. Its precise meaning is
  |                            | dependant on the context in which this element is
  |                            | used. ISDA 2003 Term: Business Day.
  | `businessDaysNotSpecified` | `Optional` `Bool`
  |                            | An explicit indication that a number of business days
  |                            | are not specified and therefore ISDA fallback
  |                            | provisions should apply.
  | `maximumBusinessDays`      | `Optional` `Int`
  |                            | A maximum number of business days. Its precise
  |                            | meaning is dependant on the context in which this
  |                            | element is used. Intended to be used to limit a
  |                            | particular ISDA fallback provision.

### `data` `PhysicalSettlementTerms`

  In FpML, PhysicalSettlementTerms and
  CashSettlementTerms extend SettlementTerms.  In the
  CDM, this extension paradigm has not been used
  because SettlementTerms class has been used for
  purposes related to securities transactions, while it
  is not used as such in the FpML standard (i.e. only
  as an abstract construct.
* `PhysicalSettlementTerms`

  | Field                           | Type/Description |
  | :------------------------------ | :----------------
  | `deliverableObligations`        | `Optional` `DeliverableObligations`
  |                                 | This element contains all the ISDA terms relevant to
  |                                 | defining the deliverable obligations.
  | `escrow`                        | `Optional` `Bool`
  |                                 | If this element is specified and set to
  |                                 | &#39;true&#39;, indicates that physical settlement
  |                                 | must take place through the use of an escrow agent.
  |                                 | (For Canadian counterparties this is always &#39;Not
  |                                 | Applicable&#39;. ISDA 2003 Term: Escrow.
  | `id`                            | `Optional` `Text`
  | `physicalSettlementPeriod`      | `Optional` `PhysicalSettlementPeriod`
  |                                 | The number of business days used in the determination
  |                                 | of the physical settlement date. The physical
  |                                 | settlement date is this number of business days after
  |                                 | all applicable conditions to settlement are
  |                                 | satisfied. If a number of business days is not
  |                                 | specified fallback provisions apply for determining
  |                                 | the number of business days. If Section 8.5/8.6 of
  |                                 | the 1999/2003 ISDA Definitions are to apply the
  |                                 | businessDaysNotSpecified element should be included.
  |                                 | If a specified number of business days are to apply
  |                                 | these should be specified in the businessDays
  |                                 | element. If Section 8.5/8.6 of the 1999/2003 ISDA
  |                                 | Definitions are to apply but capped at a maximum
  |                                 | number of business days then the maximum number
  |                                 | should be specified in the maximumBusinessDays
  |                                 | element. ISDA 2003 Term: Physical Settlement Period.
  | `settlementCurrency`            | `Optional` `(` `FieldWithMeta` `Text` `)`
  |                                 | The settlement currency is to be specified when the
  |                                 | Settlement Amount cannot be known in advance. The
  |                                 | list of valid currencies is not presently positioned
  |                                 | as an enumeration as part of the CDM because that
  |                                 | scope is limited to the values specified by ISDA and
  |                                 | FpML. As a result, implementers have to make
  |                                 | reference to the relevant standard, such as the ISO
  |                                 | 4217 standard for currency codes.
  | `sixtyBusinessDaySettlementCap` | `Optional` `Bool`
  |                                 | If this element is specified and set to
  |                                 | &#39;true&#39;, for a transaction documented under
  |                                 | the 2003 ISDA Credit Derivatives Definitions, has the
  |                                 | effect of incorporating the language set forth below
  |                                 | into the confirmation. The section references are to
  |                                 | the 2003 ISDA Credit Derivatives Definitions.
  |                                 | Notwithstanding Section 1.7 or any provisions of
  |                                 | Sections 9.9 or 9.10 to the contrary, but without
  |                                 | prejudice to Section 9.3 and (where applicable)
  |                                 | Sections 9.4, 9.5 and 9.6, if the Termination Date
  |                                 | has not occurred on or prior to the date that is 60
  |                                 | Business Days following the Physical Settlement Date,
  |                                 | such 60th Business Day shall be deemed to be the
  |                                 | Termination Date with respect to this Transaction
  |                                 | except in relation to any portion of the Transaction
  |                                 | (an &#39;Affected Portion&#39;) in respect of which:
  |                                 | (1) a valid notice of Buy-in Price has been delivered
  |                                 | that is effective fewer than three Business Days
  |                                 | prior to such 60th Business Day, in which case the
  |                                 | Termination Date for that Affected Portion shall be
  |                                 | the third Business Day following the date on which
  |                                 | such notice is effective; or (2) Buyer has purchased
  |                                 | but not Delivered Deliverable Obligations validly
  |                                 | specified by Seller pursuant to Section 9.10(b), in
  |                                 | which case the Termination Date for that Affected
  |                                 | Portion shall be the tenth Business Day following the
  |                                 | date on which Seller validly specified such
  |                                 | Deliverable Obligations to Buyer.

### `data` `PledgorPostingObligations`

  A class to specify the pledgor(s) collateral posting
  obligations as specified under the terms of the ISDA
  2016 Credit Support Annex for Initial Margin,
  paragraph 13, General Principles, (ii).
* `PledgorPostingObligations`

  | Field                | Type/Description |
  | :------------------- | :----------------
  | `additionalLanguage` | `Optional` `Text`
  |                      | The additional language that might be specified by
  |                      | the parties to the legal agreement.
  | `asPermitted`        | `Bool`
  |                      | If set to True, the Control Agreement is a Credit
  |                      | Support Document with respect to the pledgor
  |                      | party(ies). ISDA 2016 Credit Support Annex for
  |                      | Initial Margin, paragraph 6, (e).
  | `eligibleCollateral` | `[` `EligibleCollateral` `]`
  |                      | The eligible collateral as specified in relation to
  |                      | the pledgor(s) obligation.
  | `pledgor`            | `[` `ReferenceWithMeta` `Party` `]`
  |                      | The pledgor party(ies) to which the posting
  |                      | obligations apply to, which can be either one of the
  |                      | parties to the legal agreement, or both of those.

### `data` `PostInceptionState`

* `PostInceptionState`

  | Field                    | Type/Description |
  | :----------------------- | :----------------
  | `contract`               | `Contract`
  | `creditLimitInformation` | `Optional` `CreditLimitInformation`
  |                          | Credit limit utilization information.
  | `tradeWarehouseWorkflow` | `Optional` `TradeWarehouseWorkflow`
  |                          | Information related to trade warehouse workflow.

### `data` `PremiumExpression`

  This class corresponds to the FpML Premium.model
  group for representing the option premium when
  expressed in a way other than an amount.
* `PremiumExpression`

  | Field                  | Type/Description |
  | :--------------------- | :----------------
  | `percentageOfNotional` | `Optional` `Decimal`
  |                        | The amount of premium to be paid expressed as a
  |                        | percentage of the notional value of the transaction.
  |                        | A percentage of 5% would be expressed as 0.05.
  | `premiumType`          | `Optional` `PremiumTypeEnum`
  |                        | Forward start premium type
  | `pricePerOption`       | `Optional` `Money`
  |                        | The amount of premium to be paid expressed as a
  |                        | function of the number of options.

### `data` `Price`

  A class describing the strike price.
* `Price`

  | Field             | Type/Description |
  | :---------------- | :----------------
  | `accruedInterest` | `Optional` `Decimal`
  |                   | Specifies the accrued interest that are part of the
  |                   | dirty price in the case of a fixed income security or
  |                   | a convertible bond. Expressed in percentage of the
  |                   | notional.
  | `grossPrice`      | `Optional` `ActualPrice`
  |                   | Specifies the price of the underlier, before
  |                   | commissions.
  | `netPrice`        | `ActualPrice`
  |                   | Specifies the price of the underlier, net of
  |                   | commissions.

### `data` `PriceReturnTerms`

* `PriceReturnTerms`

  | Field                   | Type/Description |
  | :---------------------- | :----------------
  | `initialPrice`          | `Price`
  |                         | Specifies the initial reference price of the
  |                         | underlier. This price can be expressed either as an
  |                         | actual amount/currency, as a determination method, or
  |                         | by reference to another value specified in the swap
  |                         | document.
  | `valuationPriceFinal`   | `EquityValuation`
  |                         | 2018 ISDA CDM Equity Confirmation for Security Equity
  |                         | Swap: Final Price | Specifies the final valuation
  |                         | price of the underlier. This price can be expressed
  |                         | either as an actual amount/currency, as a
  |                         | determination method, or by reference to another
  |                         | value specified in the swap document.
  | `valuationPriceInterim` | `Optional` `EquityValuation`
  |                         | Specifies the interim valuation price(s) of the
  |                         | underlier. This price can be expressed either as an
  |                         | actual amount/currency, as a determination method, or
  |                         | by reference to another value specified in the swap
  |                         | document.

### `data` `PriceSourceDisruption`

  A class defining the parameters used to get a price
  quote to replace the settlement rate option that is
  disrupted.
* `PriceSourceDisruption`

  | Field                    | Type/Description |
  | :----------------------- | :----------------
  | `fallbackReferencePrice` | `FallbackReferencePrice`
  |                          | The method, prioritised by the order it is listed in
  |                          | this element, to get a replacement rate for the
  |                          | disrupted settlement rate option.

### `data` `PrimitiveEvent`

  A class to specify the set of elemental/primitives
  components that are used to specify lifecycle events.
  Lifecycle events make use of one or several of those
  elemental components specified as part of this class.
* `PrimitiveEvent`

  | Field            | Type/Description |
  | :--------------- | :----------------
  | `allocation`     | `[` `AllocationPrimitive` `]`
  | `exercise`       | `Optional` `ExercisePrimitive`
  | `inception`      | `[` `Inception` `]`
  | `observation`    | `[` `ObservationPrimitive` `]`
  | `quantityChange` | `[` `QuantityChangePrimitive` `]`
  | `reset`          | `[` `ResetPrimitive` `]`
  | `termsChange`    | `Optional` `TermsChangePrimitive`
  | `transfer`       | `[` `TransferPrimitive` `]`

### `data` `PrincipalExchange`

  A class for defining a principal exchange amount and
  adjusted exchange date. This class forms part of the
  cashflow representation of a swap stream.
* `PrincipalExchange`

  | Field                                 | Type/Description |
  | :------------------------------------ | :----------------
  | `adjustedPrincipalExchangeDate`       | `Optional` `Date`
  |                                       | The adjusted principal exchange date. This date
  |                                       | should already be adjusted for any applicable
  |                                       | business day convention.
  | `discountFactor`                      | `Optional` `Decimal`
  |                                       | The value representing the discount factor used to
  |                                       | calculate the present value of the principal exchange
  |                                       | amount.
  | `id`                                  | `Optional` `Text`
  | `presentValuePrincipalExchangeAmount` | `Optional` `Money`
  |                                       | The amount representing the present value of the
  |                                       | principal exchange.
  | `principalExchangeAmount`             | `Optional` `Decimal`
  |                                       | The principal exchange amount. This amount should be
  |                                       | positive if the stream payer is paying the exchange
  |                                       | amount and signed negative if they are receiving it.
  | `unadjustedPrincipalExchangeDate`     | `Optional` `Date`
  |                                       | The non adjusted principal exchange date.

### `data` `PrincipalExchanges`

  A class defining which principal exchanges occur for
  the stream.
* `PrincipalExchanges`

  | Field                  | Type/Description |
  | :--------------------- | :----------------
  | `finalExchange`        | `Bool`
  |                        | A true/false flag to indicate whether there is a
  |                        | final exchange of principal on the termination date.
  | `id`                   | `Optional` `Text`
  | `initialExchange`      | `Bool`
  |                        | A true/false flag to indicate whether there is an
  |                        | initial exchange of principal on the effective date.
  | `intermediateExchange` | `Bool`
  |                        | A true/false flag to indicate whether there are
  |                        | intermediate or interim exchanges of principal during
  |                        | the term of the swap.

### `data` `Product`

  A class to represent a financial product. With
  respect to contractual products, this class provides
  the ability to specify either a post-execution
  &#39;view&#39; of contract (the Contract class) or
  the pre-execution contractual product (the
  ContractualProduct class). This class is used as part
  of the option exercise representation, which makes
  use of the contract attribute for supporting the
  swaption use case, with the exercise into a swap.
* `Product`

  | Field                    | Type/Description |
  | :----------------------- | :----------------
  | `bond`                   | `Optional` `Bond`
  | `contract`               | `Optional` `Contract`
  | `contractualProduct`     | `Optional` `ContractualProduct`
  | `convertibleBond`        | `Optional` `ConvertibleBond`
  | `equity`                 | `Optional` `Equity`
  | `exchangeTradedFund`     | `Optional` `ExchangeTradedFund`
  | `foreignExchange`        | `Optional` `ForeignExchange`
  | `index`                  | `Optional` `Index`
  | `loan`                   | `Optional` `Loan`
  | `mortgageBackedSecurity` | `Optional` `MortgageBackedSecurity`
  | `mutualFund`             | `Optional` `MutualFund`
  | `warrant`                | `Optional` `Warrant`

### `data` `ProductIdentification`

  A class to combine the CDM product qualifier with
  other product qualifiers, such as the FpML ones.
  While the CDM product qualifier is derived by the CDM
  from the product payout features, the other product
  identification elements are assigned by some external
  sources and correspond to values specified by other
  data representation protocols.
* `ProductIdentification`

  | Field                 | Type/Description |
  | :-------------------- | :----------------
  | `primaryAssetClass`   | `Optional` `(` `FieldWithMeta` `AssetClassEnum` `)`
  |                       | A classification of the most important risk class of
  |                       | the trade. FpML defines a simple asset class
  |                       | categorisation using a coding scheme.
  | `productId`           | `[` `FieldWithMeta` `Text` `]`
  |                       | A product reference identifier. The product Id is an
  |                       | identifier that describes the key economic
  |                       | characteristics of the trade type, with the exception
  |                       | of concepts such as size (notional, quantity, number
  |                       | of units) and price (fixed rate, strike, etc.) that
  |                       | are negotiated for each transaction. It can be used
  |                       | to hold identifiers such as the &#39;UPI&#39;
  |                       | (universal product identifier) required by certain
  |                       | regulatory reporting rules. It can also be used to
  |                       | hold identifiers of benchmark products or product
  |                       | temnplates used by certain trading systems or
  |                       | facilities. FpML does not define the domain values
  |                       | associated with this element. Note that the domain
  |                       | values for this element are not strictly an
  |                       | enumerated list.
  | `productQualifier`    | `Optional` `Text`
  |                       | The CDM product qualifier, which corresponds to the
  |                       | outcome of the isProduct qualification logic. This
  |                       | value is derived by the CDM from the product payout
  |                       | features.
  | `productType`         | `[` `FieldWithMeta` `Text` `]`
  |                       | A classification of the type of product. FpML defines
  |                       | a simple product categorisation using a coding
  |                       | scheme.
  | `secondaryAssetClass` | `[` `FieldWithMeta` `AssetClassEnum` `]`
  |                       | A classification of additional risk classes of the
  |                       | trade, if any. FpML defines a simple asset class
  |                       | categorisation using a coding scheme.

### `data` `ProductIdentifier`

  The product identifier, composed of an identifier, a
  source and a product taxonomy. The source is optional
  because it can be specified through the scheme that
  is associated with the identifier. As FpML
  doesn&#39;t specify a scheme as part of the standard,
  that scheme cannot be mapped to the CDM
  ProductIdSourceEnum. The associated rosettaKey
  denotes the ability to associate a hash value to the
  ProductIdentifier instantiations for the purpose of
  model cross-referencing, in support of functionality
  such as the event effect and the lineage.
* `ProductIdentifier`

  | Field             | Type/Description |
  | :---------------- | :----------------
  | `id`              | `Optional` `Text`
  | `identifier`      | `[` `FieldWithMeta` `Text` `]`
  |                   | A unique identifier of an asset provided by a public
  |                   | source that is specified in the source attribute.
  | `productTaxonomy` | `[` `ProductTaxonomy` `]`
  |                   | The product taxonomy value(s) associated with a
  |                   | product.
  | `rosettaKey`      | `Text`
  | `source`          | `Optional` `ProductIdSourceEnum`
  |                   | The identifier source.

### `data` `ProductTaxonomy`

  The product taxonomy, which is composed of a taxonomy
  value and a taxonomy source.
* `ProductTaxonomy`

  | Field            | Type/Description |
  | :--------------- | :----------------
  | `taxonomySource` | `TaxonomySourceEnum`
  |                  | The taxonomy source.
  | `taxonomyValue`  | `Text`
  |                  | The taxonomy value.

### `data` `ProtectionTerms`

  A class to specify the terms for calculating a payout
  to protect the buyer of the swap in the case of a
  qualified credit event. These terms include the
  notional amount, the applicable credit events, the
  reference obligation, and in the case of a CDS on
  mortgage-backed securities, the floatingAmountEvents.
* `ProtectionTerms`

  | Field                  | Type/Description |
  | :--------------------- | :----------------
  | `creditEvents`         | `Optional` `CreditEvents`
  |                        | Specifies the applicable Credit Events that would
  |                        | trigger a settlement, as specified in the related
  |                        | Confirmation and defined in the ISDA 2014 Credit
  |                        | Definition article IV section 4.1.
  | `floatingAmountEvents` | `Optional` `FloatingAmountEvents`
  |                        | This element contains the ISDA terms relating to the
  |                        | floating rate payment events and the implied
  |                        | additional fixed payments, applicable to the credit
  |                        | derivatives transactions on mortgage-backed
  |                        | securities with pay-as-you-go or physical settlement.
  | `id`                   | `Optional` `Text`
  | `notionalAmount`       | `Money`
  |                        | The notional amount of protection coverage. ISDA 2003
  |                        | Term: Floating Rate Payer Calculation Amount.
  | `obligations`          | `Optional` `Obligations`
  |                        | The underlying obligations of the reference entity on
  |                        | which you are buying or selling protection. The
  |                        | credit events Failure to Pay, Obligation
  |                        | Acceleration, Obligation Default, Restructuring,
  |                        | Repudiation/Moratorium are defined with respect to
  |                        | these obligations.

### `data` `PubliclyAvailableInformation`

* `PubliclyAvailableInformation`

  | Field                   | Type/Description |
  | :---------------------- | :----------------
  | `publicSource`          | `[` `Text` `]`
  |                         | A public information source, e.g. a particular
  |                         | newspaper or electronic news service, that may
  |                         | publish relevant information used in the
  |                         | determination of whether or not a credit event has
  |                         | occurred. ISDA 2003 Term: Public Source.
  | `specifiedNumber`       | `Optional` `Int`
  |                         | The minimum number of the specified public
  |                         | information sources that must publish information
  |                         | that reasonably confirms that a credit event has
  |                         | occurred. The market convention is two. ISDA 2003
  |                         | Term: Specified Number.
  | `standardPublicSources` | `Optional` `Bool`
  |                         | If this element is specified and set to
  |                         | &#39;true&#39;, indicates that ISDA defined Standard
  |                         | Public Sources are applicable.

### `data` `Quantity`

  A class to specify an amount/number of securities or
  tangible assets such as a commodity product. The
  units qualifier is not used if the Quantity class is
  applied to securities.
* `Quantity`

  | Field    | Type/Description |
  | :------- | :----------------
  | `amount` | `Decimal`
  |          | The amount to quantify
  | `unit`   | `Optional` `UnitEnum`
  |          | The unit of measure, applicable to physical assets,
  |          | e.g. MWh or MMBTU.

### `data` `QuantityChangePrimitive`

  The primitive event to represent a change in quantity
  or notional.
* `QuantityChangePrimitive`

  | Field    | Type/Description |
  | :------- | :----------------
  | `after`  | `Trade`
  |          | The state of the trade (either an execution or a
  |          | contract, as a follow-up from the event.
  | `before` | `Trade`
  |          | The state of the trade (either an execution or a
  |          | contract, before the event.

### `data` `Quanto`

  Determines the currency rate that the seller of the
  equity amounts will apply at each valuation date for
  converting the respective amounts into a currency
  that is different from the currency denomination of
  the underlier.
* `Quanto`

  | Field              | Type/Description |
  | :----------------- | :----------------
  | `fxRate`           | `[` `FxRate` `]`
  |                    | Specifies a currency conversion rate.
  | `fxSpotRateSource` | `Optional` `FxSpotRateSource`
  |                    | Specifies the methodology (reference source and,
  |                    | optionally, fixing time) to be used for determining a
  |                    | currency conversion rate.

### `data` `QuotedCurrencyPair`

  A class that describes the composition of a rate that
  has been quoted or is to be quoted. This includes the
  two currencies and the quotation relationship between
  the two currencies and is used as a building block
  throughout the FX specification.
* `QuotedCurrencyPair`

  | Field        | Type/Description |
  | :----------- | :----------------
  | `currency1`  | `FieldWithMeta` `Text`
  |              | The first currency specified when a pair of
  |              | currencies is to be evaluated.
  | `currency2`  | `FieldWithMeta` `Text`
  |              | The second currency specified when a pair of
  |              | currencies is to be evaluated.
  | `quoteBasis` | `QuoteBasisEnum`
  |              | The method by which the exchange rate is quoted.

### `data` `RateObservation`

  A class defining parameters associated with an
  individual observation or fixing. This class forms
  part of the cashflow representation of a stream.
* `RateObservation`

  | Field                 | Type/Description |
  | :-------------------- | :----------------
  | `adjustedFixingDate`  | `Optional` `Date`
  |                       | The adjusted fixing date, i.e. the actual date the
  |                       | rate is observed. The date should already be adjusted
  |                       | for any applicable business day convention.
  | `forecastRate`        | `Optional` `Decimal`
  |                       | The value representing the forecast rate used to
  |                       | calculate the forecast future value of the accrual
  |                       | period.A value of 1% should be represented as 0.01.
  | `id`                  | `Optional` `Text`
  | `observationWeight`   | `Optional` `Int`
  |                       | The number of days weighting to be associated with
  |                       | the rate observation, i.e. the number of days such
  |                       | rate is in effect. This is applicable in the case of
  |                       | a weighted average method of calculation where more
  |                       | than one reset date is established for a single
  |                       | calculation period.
  | `observedRate`        | `Optional` `Decimal`
  |                       | The actual observed rate before any required rate
  |                       | treatment is applied, e.g. before converting a rate
  |                       | quoted on a discount basis to an equivalent yield. An
  |                       | observed rate of 5% would be represented as 0.05.
  | `rateReference`       | `Optional` `(` `ReferenceWithMeta` `RateObservation` `)`
  |                       | A pointer style reference to a floating rate
  |                       | component defined as part of a stub calculation
  |                       | period amount component. It is only required when it
  |                       | is necessary to distinguish two rate observations for
  |                       | the same fixing date which could occur when linear
  |                       | interpolation of two different rates occurs for a
  |                       | stub calculation period.
  | `resetDate`           | `Optional` `Date`
  |                       | The reset date.
  | `treatedForecastRate` | `Optional` `Decimal`
  |                       | The value representing the forecast rate after
  |                       | applying rate treatment rules. A value of 1% should
  |                       | be represented as 0.01.
  | `treatedRate`         | `Optional` `Decimal`
  |                       | The observed rate after any required rate treatment
  |                       | is applied. A treated rate of 5% would be represented
  |                       | as 0.05.

### `data` `RateSpecification`

  A class to specify the fixed interest rate, floating
  interest rate or inflation rate.
* `RateSpecification`

  | Field           | Type/Description |
  | :-------------- | :----------------
  | `fixedRate`     | `Optional` `Schedule`
  |                 | The fixed rate or fixed rate schedule expressed as
  |                 | explicit fixed rates and dates. In the case of a
  |                 | schedule, the step dates may be subject to adjustment
  |                 | in accordance with any adjustments specified in
  |                 | calculationPeriodDatesAdjustments.
  | `floatingRate`  | `Optional` `FloatingRateSpecification`
  |                 | The floating interest rate specification, which
  |                 | includes the definition of the floating rate index.
  |                 | the tenor, the initial value, and, when applicable,
  |                 | the spread, the rounding convention, the averaging
  |                 | method and the negative interest rate treatment.
  | `inflationRate` | `Optional` `InflationRateSpecification`
  |                 | An inflation rate calculation definition.

### `data` `ReferenceBank`

  A class to describe an institution (party) identified
  by means of a coding scheme and an optional name.
* `ReferenceBank`

  | Field               | Type/Description |
  | :------------------ | :----------------
  | `referenceBankId`   | `FieldWithMeta` `Text`
  |                     | An institution (party) identifier, e.g. a bank
  |                     | identifier code (BIC). FpML specifies a
  |                     | referenceBankIdScheme.
  | `referenceBankName` | `Optional` `Text`
  |                     | The name of the institution (party). A free format
  |                     | string. FpML does not define usage rules for the
  |                     | element.

### `data` `ReferenceInformation`

  A class specifying the Credit Default Swap Reference
  Information.
* `ReferenceInformation`

  | Field                        | Type/Description |
  | :--------------------------- | :----------------
  | `allGuarantees`              | `Optional` `Bool`
  |                              | Indicates whether an obligation of the Reference
  |                              | Entity, guaranteed by the Reference Entity on behalf
  |                              | of a non-Affiliate, is to be considered an Obligation
  |                              | for the purpose of the transaction. It will be
  |                              | considered an obligation if allGuarantees is
  |                              | applicable (true) and not if allGuarantees is
  |                              | inapplicable (false). ISDA 2003 Term: All Guarantees.
  | `noReferenceObligation`      | `Optional` `Bool`
  |                              | Used to indicate that there is no Reference
  |                              | Obligation associated with this Credit Default Swap
  |                              | and that there will never be one.
  | `referenceEntity`            | `LegalEntity`
  |                              | The corporate or sovereign entity which is subject to
  |                              | the swap transaction and any successor that assumes
  |                              | all or substantially all of its contractual and other
  |                              | obligations. Reference Entities cannot be senior or
  |                              | subordinated. It is the obligations of the Reference
  |                              | Entities that can be senior or subordinated. ISDA
  |                              | 2014 Credit definitions article II section 2.1:
  |                              | `Reference Entity` means the entity specified as such
  |                              | in the related Confirmation.
  | `referenceObligation`        | `[` `ReferenceObligation` `]`
  |                              | The Reference Obligation is a financial instrument
  |                              | that is either issued or guaranteed by the reference
  |                              | entity. It serves to clarify the precise reference
  |                              | entity protection is being offered upon, and its
  |                              | legal position with regard to other related firms
  |                              | (parents/subsidiaries). Furthermore the Reference
  |                              | Obligation is ALWAYS deliverable and establishes the
  |                              | Pari Passu ranking (as the deliverable bonds must
  |                              | rank equal to the reference obligation). ISDA 2003
  |                              | Term: Reference Obligation.
  | `referencePolicy`            | `Optional` `Bool`
  |                              | Applicable to the transactions on mortgage-backed
  |                              | security, which can make use of a reference policy.
  |                              | Presence of the element with value set to
  |                              | &#39;true&#39; indicates that the reference policy is
  |                              | applicable; absence implies that it is not.
  | `referencePrice`             | `Optional` `Decimal`
  |                              | Used to determine (a) for physically settled trades,
  |                              | the Physical Settlement Amount, which equals the
  |                              | Floating Rate Payer Calculation Amount times the
  |                              | Reference Price and (b) for cash settled trades, the
  |                              | Cash Settlement Amount, which equals the greater of
  |                              | (i) the difference between the Reference Price and
  |                              | the Final Price and (ii) zero. ISDA 2003 Term:
  |                              | Reference Price.
  | `securedList`                | `Optional` `Bool`
  |                              | With respect to any day, the list of Syndicated
  |                              | Secured Obligations of the Designated Priority of the
  |                              | Reference Entity published by Markit Group Limited or
  |                              | any successor thereto appointed by the Specified
  |                              | Dealers (the &#39;Secured List Publisher&#39;) on or
  |                              | most recently before such day, which list is
  |                              | currently available at [http://www.markit.com]. ISDA
  |                              | 2003 Term: Relevant Secured List.
  | `unknownReferenceObligation` | `Optional` `Bool`
  |                              | Used to indicate that the Reference obligation
  |                              | associated with the Credit Default Swap is currently
  |                              | not known. This is not valid for Legal Confirmation
  |                              | purposes, but is valid for earlier stages in the
  |                              | trade life cycle (e.g. Broker Confirmation).

### `data` `ReferenceObligation`

  A class to specify the reference obligation that is
  associated with a credit derivative instrument.
* `ReferenceObligation`

  | Field                         | Type/Description |
  | :---------------------------- | :----------------
  | `bond`                        | `Optional` `Bond`
  |                               | Identifies the underlying asset when it is a series
  |                               | or a class of bonds. As a difference with FpML, the
  |                               | CDM specifies the bond only with this product
  |                               | identifier attribute. The reason for this approach is
  |                               | to avoid the potential for conflicting information
  |                               | between the information associated with the
  |                               | contractual product and the reference information
  |                               | maintained by the relevant service provider.
  | `convertibleBond`             | `Optional` `ConvertibleBond`
  |                               | Identifies the underlying asset when it is a
  |                               | convertible bond. As a difference with FpML, the CDM
  |                               | specifies the convertible bond only with this product
  |                               | identifier attribute. The reason for this approach is
  |                               | to avoid the potential for conflicting information
  |                               | between the information associated with the
  |                               | contractual product and the reference information
  |                               | maintained by the relevant service provider.
  | `guarantor`                   | `Optional` `LegalEntity`
  |                               | The party that guarantees by way of a contractual
  |                               | arrangement to pay the debts of an obligor if the
  |                               | obligor is unable to make the required payments
  |                               | itself. ISDA 2003 Term: Guarantor.
  | `guarantorReference`          | `Optional` `Text`
  |                               | A pointer style reference to a reference entity
  |                               | defined elsewhere in the document. Used when the
  |                               | reference entity is the guarantor.
  | `loan`                        | `Optional` `Loan`
  |                               | Identifies the underlying asset when it is a loan.
  | `mortgageBackedSecurity`      | `Optional` `MortgageBackedSecurity`
  |                               | Identifies the underlying asset when it is a mortgage
  |                               | backed security.
  | `primaryObligor`              | `Optional` `LegalEntity`
  |                               | The entity primarily responsible for repaying debt to
  |                               | a creditor as a result of borrowing or issuing bonds.
  |                               | ISDA 2003 Term: Primary Obligor.
  | `primaryObligorReference`     | `Optional` `(` `ReferenceWithMeta` `LegalEntity` `)`
  |                               | A pointer style reference to a reference entity
  |                               | defined elsewhere in the document. Used when the
  |                               | reference entity is the primary obligor.
  | `standardReferenceObligation` | `Optional` `Bool`
  |                               | Indicates if the reference obligation is a Standard
  |                               | Reference Obligation. ISDA 2014 Term: Standard
  |                               | Reference Obligation.

### `data` `ReferencePair`

* `ReferencePair`

  | Field                   | Type/Description |
  | :---------------------- | :----------------
  | `entityType`            | `FieldWithMeta` `EntityTypeEnum`
  |                         | Defines the reference entity types corresponding to a
  |                         | list of types in the ISDA First to Default
  |                         | documentation.
  | `noReferenceObligation` | `Optional` `Bool`
  |                         | Used to indicate that there is no Reference
  |                         | Obligation associated with this Credit Default Swap
  |                         | and that there will never be one.
  | `referenceEntity`       | `LegalEntity`
  |                         | The corporate or sovereign entity on which you are
  |                         | buying or selling protection and any successor that
  |                         | assumes all or substantially all of its contractual
  |                         | and other obligations. It is vital to use the correct
  |                         | legal name of the entity and to be careful not to
  |                         | choose a subsidiary if you really want to trade
  |                         | protection on a parent company. Please note,
  |                         | Reference Entities cannot be senior or subordinated.
  |                         | It is the obligations of the Reference Entities that
  |                         | can be senior or subordinated. ISDA 2003 Term:
  |                         | Reference Entity.
  | `referenceObligation`   | `Optional` `ReferenceObligation`
  |                         | The Reference Obligation is a financial instrument
  |                         | that is either issued or guaranteed by the reference
  |                         | entity. It serves to clarify the precise reference
  |                         | entity protection is being offered upon, and its
  |                         | legal position with regard to other related firms
  |                         | (parents/subsidiaries). Furthermore the Reference
  |                         | Obligation is ALWAYS deliverable and establishes the
  |                         | Pari Passu ranking (as the deliverable bonds must
  |                         | rank equal to the reference obligation). ISDA 2003
  |                         | Term: Reference Obligation.

### `data` `ReferencePool`

  This type contains all the reference pool items to
  define the reference entity and reference
  obligation(s) in the basket.
* `ReferencePool`

  | Field               | Type/Description |
  | :------------------ | :----------------
  | `referencePoolItem` | `[` `ReferencePoolItem` `]`
  |                     | This type contains all the constituent weight and
  |                     | reference information.

### `data` `ReferencePoolItem`

  This type contains all the constituent weight and
  reference information.
* `ReferencePoolItem`

  | Field                              | Type/Description |
  | :--------------------------------- | :----------------
  | `cashSettlementTermsReference`     | `Optional` `(` `ReferenceWithMeta` `CashSettlementTerms` `)`
  |                                    | Reference to the cash settlement terms applicable to
  |                                    | this item.
  | `constituentWeight`                | `Optional` `ConstituentWeight`
  |                                    | Describes the weight of each of the constituents
  |                                    | within the basket. If not provided, it is assumed to
  |                                    | be equal weighted.
  | `physicalSettlementTermsReference` | `Optional` `(` `ReferenceWithMeta` `PhysicalSettlementTerms` `)`
  |                                    | Reference to the physical settlement terms applicable
  |                                    | to this item.
  | `protectionTermsReference`         | `Optional` `(` `ReferenceWithMeta` `ProtectionTerms` `)`
  |                                    | Reference to the documentation terms applicable to
  |                                    | this item.
  | `referencePair`                    | `ReferencePair`

### `data` `ReferenceSwapCurve`

  A complex type used to specify the option and
  convertible bond option strike when expressed in
  reference to a swap curve.
* `ReferenceSwapCurve`

  | Field             | Type/Description |
  | :---------------- | :----------------
  | `makeWholeAmount` | `Optional` `MakeWholeAmount`
  |                   | Amount to be paid by the buyer of the option if the
  |                   | option is exercised prior to the Early Call Date.
  |                   | (The market practice in the convertible bond option
  |                   | space being that the buyer should be penalised if
  |                   | he/she exercises the option early on.)
  | `swapUnwindValue` | `SwapCurveValuation`

### `data` `Regime`

  A class to specify the regulatory regimes elections
  by the respective parties a legal agreement. 2016
  ISDA Credit Support Annex for Initial Margin: Regime.
* `Regime`

  | Field               | Type/Description |
  | :------------------ | :----------------
  | `additionalRegimes` | `[` `AdditionalRegime` `]`
  |                     | The additional regulatory regime(s) that might be
  |                     | specified by the parties to a legal agreement. ISDA
  |                     | 2016 Credit Support Annex for Initial Margin
  |                     | paragraph 13, General Principles, (ll): The parties
  |                     | may from time to time agree in writing that other
  |                     | regimes also comprise `Regimes` and that the General
  |                     | Principles be adopted and/or amended to accommodate
  |                     | such additional Regimes.
  | `applicableRegime`  | `[` `ApplicableRegime` `]`
  |                     | The set of regulatory regimes and associated
  |                     | provisions applicable to the respective parties to
  |                     | the legal agreement.
  | `party`             | `ReferenceWithMeta` `Party`
  |                     | The party which the set of regulatory regime
  |                     | elections specified in the applicableRegime attribute
  |                     | applies to.

### `data` `RegimeElection`

  A class to specify the regulatory regimes elections
  by the each of the parties to a legal agreement.
* `RegimeElection`

  | Field            | Type/Description |
  | :--------------- | :----------------
  | `partyElections` | `[` `Regime` `]`
  |                  | The parties&#39; regulatory regime elections.

### `data` `RegimeTerms`

  An abstract class to specify the regulatory regime
  terms which are referred to as part of certain legal
  agreements, such as such as the ISDA 2016 and 2018
  CSA for Initial Margin.
* `RegimeTerms`

  | Field                 | Type/Description |
  | :-------------------- | :----------------
  | `additionalType`      | `AdditionalTypeEnum`
  |                       | The Additional Type of transaction that can require
  |                       | the collection or delivery of initial margin under
  |                       | the specified regulatory regime for the purposes of
  |                       | Covered Transactions, as specified in ISDA 2016
  |                       | Credit Support Annex for Initial Margin, paragraph
  |                       | 13, General Principles, (b)(B).
  | `isApplicable`        | `Bool`
  |                       | A boolean flag to specify whether the regulatory
  |                       | regime is applicable.
  | `retrospectiveEffect` | `Bool`
  |                       | ISDA 2016 CSA for Initial Margin, paragraph 13
  |                       | (b)(i): if `Retrospective Effect` is specified as
  |                       | applicable to a Regime (a `Retrospective Regime`)
  |                       | then all Covered Transactions (IM) under all other
  |                       | Regimes with an earlier Regime Effective Time will,
  |                       | to the extent that they would have been Covered
  |                       | Transactions (IM) under such Retrospective Regime had
  |                       | such Transactions been entered into at or after the
  |                       | Regime Effective Time of the Retrospective Regime, be
  |                       | deemed to be Covered Transactions (IM) for such
  |                       | Retrospective Regime.
  | `simmException`       | `SimmException`
  |                       | The specified exception to the ISDA Standard Initial
  |                       | Margin Model.

### `data` `RelatedParty`

* `RelatedParty`

  | Field              | Type/Description |
  | :----------------- | :----------------
  | `accountReference` | `Optional` `(` `ReferenceWithMeta` `Account` `)`
  |                    | Reference to an account.
  | `partyReference`   | `ReferenceWithMeta` `Party`
  |                    | Reference to a party.
  | `role`             | `PartyRoleEnum`
  |                    | The category of the relationship. The related party
  |                    | performs the role specified in this field for the
  |                    | base party. For example, if the role is ,Guarantor,,
  |                    | the related party acts as a guarantor for the base
  |                    | party.

### `data` `RelativeDateOffset`

  A class defining a date (referred to as the derived
  date) as a relative offset from another date
  (referred to as the anchor date). If the anchor date
  is itself an adjustable date then the offset is
  assumed to be calculated from the adjusted anchor
  date. A number of different scenarios can be
  supported, namely; 1) the derived date may simply be
  a number of calendar periods (days, weeks, months or
  years) preceding or following the anchor date; 2) the
  unadjusted derived date may be a number of calendar
  periods (days, weeks, months or years) preceding or
  following the anchor date with the resulting
  unadjusted derived date subject to adjustment in
  accordance with a specified business day convention,
  i.e. the derived date must fall on a good business
  day; 3) the derived date may be a number of business
  days preceding or following the anchor date. Note
  that the businessDayConvention specifies any required
  adjustment to the unadjusted derived date. A negative
  or positive value in the periodMultiplier indicates
  whether the unadjusted derived precedes or follows
  the anchor date. The businessDayConvention should
  contain a value NONE if the day type element contains
  a value of Business (since specifying a negative or
  positive business days offset would already guarantee
  that the derived date would fall on a good business
  day in the specified business centers).
* `RelativeDateOffset`

  | Field                      | Type/Description |
  | :------------------------- | :----------------
  | `adjustedDate`             | `Optional` `Date`
  |                            | The date once the adjustment has been performed.
  |                            | (Note that this date may change if the business
  |                            | center holidays change).
  | `businessCenters`          | `Optional` `BusinessCenters`
  | `businessCentersReference` | `Optional` `(` `ReferenceWithMeta` `BusinessCenters` `)`
  |                            | A pointer style reference to a set of financial
  |                            | business centers defined elsewhere in the document.
  |                            | This set of business centers is used to determine
  |                            | whether a particular day is a business day or not.
  | `businessDayConvention`    | `BusinessDayConventionEnum`
  |                            | The convention for adjusting a date if it would
  |                            | otherwise fall on a day that is not a business day,
  |                            | as specified by an ISDA convention (e.g. Following,
  |                            | Precedent).
  | `dateRelativeTo`           | `Optional` `(` `BasicReferenceWithMeta` `Date` `)`
  |                            | Specifies the anchor as an href attribute. The href
  |                            | attribute value is a pointer style reference to the
  |                            | element or component elsewhere in the document where
  |                            | the anchor date is defined.
  | `dayType`                  | `Optional` `DayTypeEnum`
  |                            | In the case of an offset specified as a number of
  |                            | days, this element defines whether consideration is
  |                            | given as to whether a day is a good business day or
  |                            | not. If a day type of business days is specified then
  |                            | non-business days are ignored when calculating the
  |                            | offset. The financial business centers to use for
  |                            | determination of business days are implied by the
  |                            | context in which this element is used. This element
  |                            | must only be included when the offset is specified as
  |                            | a number of days. If the offset is zero days then the
  |                            | dayType element should not be included.
  | `id`                       | `Optional` `Text`
  | `period`                   | `PeriodEnum`
  |                            | A time period, e.g. a day, week, month or year of the
  |                            | stream. If the periodMultiplier value is 0 (zero)
  |                            | then period must contain the value D (day).
  | `periodMultiplier`         | `Int`
  |                            | A time period multiplier, e.g. 1, 2 or 3 etc. A
  |                            | negative value can be used when specifying an offset
  |                            | relative to another date, e.g. -2 days.

### `data` `RelativeDates`

  A class describing a set of dates defined as relative
  to another set of dates.
* `RelativeDates`

  | Field                      | Type/Description |
  | :------------------------- | :----------------
  | `adjustedDate`             | `Optional` `Date`
  |                            | The date once the adjustment has been performed.
  |                            | (Note that this date may change if the business
  |                            | center holidays change).
  | `businessCenters`          | `Optional` `BusinessCenters`
  | `businessCentersReference` | `Optional` `(` `ReferenceWithMeta` `BusinessCenters` `)`
  |                            | A pointer style reference to a set of financial
  |                            | business centers defined elsewhere in the document.
  |                            | This set of business centers is used to determine
  |                            | whether a particular day is a business day or not.
  | `businessDayConvention`    | `BusinessDayConventionEnum`
  |                            | The convention for adjusting a date if it would
  |                            | otherwise fall on a day that is not a business day,
  |                            | as specified by an ISDA convention (e.g. Following,
  |                            | Precedent).
  | `dateRelativeTo`           | `Optional` `(` `BasicReferenceWithMeta` `Date` `)`
  |                            | Specifies the anchor as an href attribute. The href
  |                            | attribute value is a pointer style reference to the
  |                            | element or component elsewhere in the document where
  |                            | the anchor date is defined.
  | `dayType`                  | `Optional` `DayTypeEnum`
  |                            | In the case of an offset specified as a number of
  |                            | days, this element defines whether consideration is
  |                            | given as to whether a day is a good business day or
  |                            | not. If a day type of business days is specified then
  |                            | non-business days are ignored when calculating the
  |                            | offset. The financial business centers to use for
  |                            | determination of business days are implied by the
  |                            | context in which this element is used. This element
  |                            | must only be included when the offset is specified as
  |                            | a number of days. If the offset is zero days then the
  |                            | dayType element should not be included.
  | `id`                       | `Optional` `Text`
  | `period`                   | `PeriodEnum`
  |                            | A time period, e.g. a day, week, month or year of the
  |                            | stream. If the periodMultiplier value is 0 (zero)
  |                            | then period must contain the value D (day).
  | `periodMultiplier`         | `Int`
  |                            | A time period multiplier, e.g. 1, 2 or 3 etc. A
  |                            | negative value can be used when specifying an offset
  |                            | relative to another date, e.g. -2 days.
  | `periodSkip`               | `Optional` `Int`
  |                            | The number of periods in the referenced date schedule
  |                            | that are between each date in the relative date
  |                            | schedule. Thus a skip of 2 would mean that dates are
  |                            | relative to every second date in the referenced
  |                            | schedule. If present this should have a value greater
  |                            | than 1.
  | `scheduleBounds`           | `Optional` `DateRange`
  |                            | The first and last dates of a schedule. This can be
  |                            | used to restrict the range of values in a reference
  |                            | series of dates.

### `data` `Representations`

* `Representations`

  | Field                        | Type/Description |
  | :--------------------------- | :----------------
  | `additionalAcknowledgements` | `Optional` `Bool`
  |                              | If true, then additional acknowledgements are
  |                              | applicable.
  | `agreementsRegardingHedging` | `Bool`
  |                              | If true, then agreements regarding hedging are
  |                              | applicable.
  | `indexDisclaimer`            | `Bool`
  |                              | If present and true, then index disclaimer is
  |                              | applicable.
  | `nonReliance`                | `Bool`
  |                              | If true, then non reliance is applicable.

### `data` `ResetDates`

  A class defining the parameters used to generate the
  reset dates schedule and associated fixing dates. The
  reset dates are the dates on which the new index
  value (which is observed on the fixing date) is
  applied for each period and on which the interest
  rate hence begins to accrue.
* `ResetDates`

  | Field                             | Type/Description |
  | :-------------------------------- | :----------------
  | `calculationPeriodDatesReference` | `Optional` `(` `ReferenceWithMeta` `CalculationPeriodDates` `)`
  |                                   | A pointer style reference to the associated
  |                                   | calculation period dates component defined elsewhere
  |                                   | in the document.
  | `finalFixingDate`                 | `Optional` `AdjustableDate`
  |                                   | This attribute is not part of the FpML ResetDate, and
  |                                   | has been added as part of the CDM to support the
  |                                   | credit derivatives final fixing date.
  | `fixingDates`                     | `Optional` `RelativeDateOffset`
  |                                   | The fixing dates are the dates on which the index
  |                                   | values are observed. The fixing dates are specified
  |                                   | by reference to the reset date through business days
  |                                   | offset and an associated set of financial business
  |                                   | centers. Normally these offset calculation rules will
  |                                   | be those specified in the ISDA definition for the
  |                                   | relevant floating rate index (ISDA&#39;s Floating
  |                                   | Rate Option). However, non-standard offset
  |                                   | calculation rules may apply for a trade if mutually
  |                                   | agreed by the principal parties to the transaction.
  | `id`                              | `Optional` `Text`
  | `initialFixingDate`               | `Optional` `InitialFixingDate`
  |                                   | The initial fixing date.
  | `rateCutOffDaysOffset`            | `Optional` `Offset`
  |                                   | Specifies the number of business days before the
  |                                   | period end date when the rate cut-off date is assumed
  |                                   | to apply. The financial business centers associated
  |                                   | with determining the rate cut-off date are those
  |                                   | specified in the reset dates adjustments. The rate
  |                                   | cut-off number of days must be a negative integer (a
  |                                   | value of zero would imply no rate cut off applies in
  |                                   | which case the rateCutOffDaysOffset element should
  |                                   | not be included). The relevant rate for each reset
  |                                   | date in the period from, and including, a rate
  |                                   | cut-off date to, but excluding, the next applicable
  |                                   | period end date (or, in the case of the last
  |                                   | calculation period, the termination date) will
  |                                   | (solely for purposes of calculating the floating
  |                                   | amount payable on the next applicable payment date)
  |                                   | be deemed to be the relevant rate in effect on that
  |                                   | rate cut-off date. For example, if rate cut-off days
  |                                   | for a daily averaging deal is -2 business days, then
  |                                   | the refix rate applied on (period end date - 2 days)
  |                                   | will also be applied as the reset on (period end date
  |                                   | - 1 day), i.e. the actual number of reset dates
  |                                   | remains the same but from the rate cut-off date until
  |                                   | the period end date, the same refix rate is applied.
  |                                   | Note that in the case of several calculation periods
  |                                   | contributing to a single payment, the rate cut-off is
  |                                   | assumed only to apply to the final calculation period
  |                                   | contributing to that payment. The day type associated
  |                                   | with the offset must imply a business days offset.
  | `resetDatesAdjustments`           | `Optional` `BusinessDayAdjustments`
  |                                   | The definition of the business day convention and
  |                                   | financial business centers used for adjusting the
  |                                   | reset date if it would otherwise fall on a day that
  |                                   | is not a business day in the specified business
  |                                   | center.
  | `resetFrequency`                  | `Optional` `ResetFrequency`
  |                                   | The frequency at which the reset dates occur. In the
  |                                   | case of a weekly reset frequency, also specifies the
  |                                   | day of the week that the reset occurs. If the reset
  |                                   | frequency is greater than the calculation period
  |                                   | frequency then this implies that more than one reset
  |                                   | is established for each calculation period and some
  |                                   | form of rate averaging is applicable.
  | `resetRelativeTo`                 | `Optional` `ResetRelativeToEnum`
  |                                   | Specifies whether the reset dates are determined with
  |                                   | respect to each adjusted calculation period start
  |                                   | date or adjusted calculation period end date.  If the
  |                                   | reset frequency is specified as daily this element
  |                                   | must not be included.

### `data` `ResetFrequency`

  A class defining the reset frequency. In the case of
  a weekly reset, also specifies the day of the week
  that the reset occurs. If the reset frequency is
  greater than the calculation period frequency the
  this implies that more or more reset dates is
  established for each calculation period and some form
  of rate averaging is applicable. The specific
  averaging method of calculation is specified in
  FloatingRateCalculation. In case the reset frequency
  is of value T (term), the period is defined by the
  swap/swapStream/calculationPerioDates/effectiveDate
  and the
  swap/swapStream/calculationPerioDates/terminationDate.
* `ResetFrequency`

  | Field                  | Type/Description |
  | :--------------------- | :----------------
  | `id`                   | `Optional` `Text`
  | `period`               | `PeriodExtendedEnum`
  |                        | A time period, e.g. a day, week, month, year or term
  |                        | of the stream.
  | `periodMultiplier`     | `Int`
  |                        | A time period multiplier, e.g. 1, 2, or 3. If the
  |                        | period value is T (Term) then period multiplier must
  |                        | contain the value 1.
  | `weeklyRollConvention` | `Optional` `WeeklyRollConventionEnum`
  |                        | The day of the week on which a weekly reset date
  |                        | occurs. This element must be included if the reset
  |                        | frequency is defined as weekly and not otherwise.

### `data` `ResetPrimitive`

  The primitive event to represent a reset.
* `ResetPrimitive`

  | Field        | Type/Description |
  | :----------- | :----------------
  | `cashflow`   | `Optional` `Cashflow`
  |              | The cashflow resulting from the reset event.
  | `date`       | `Date`
  |              | The reset date
  | `resetValue` | `Decimal`
  |              | The reset value

### `data` `Resource`

  Describes the resource that contains the media
  representation of a business event (i.e used for
  stating the Publicly Available Information). For
  example, can describe a file or a URL that represents
  the event. This type is an extended version of a type
  defined by RIXML (www.rixml.org).  Rosetta restricts
  the FpML implementation by not providing the ability
  to associated a document in hexadecimalBinary or
  base64Binary until such time that actual use cases
  will come up.
* `Resource`

  | Field          | Type/Description |
  | :------------- | :----------------
  | `comments`     | `Optional` `Text`
  |                | Any additional comments that are deemed necessary.
  |                | For example, which software version is required to
  |                | open the document? Or, how does this resource relate
  |                | to the others for this event?
  | `language`     | `Optional` `(` `FieldWithMeta` `Text` `)`
  |                | Indicates the language of the resource, described
  |                | using the ISO 639-2/T Code.
  | `length`       | `Optional` `ResourceLength`
  |                | Indicates the length of the resource. For example, if
  |                | the resource were a PDF file, the length would be in
  |                | pages.
  | `mimeType`     | `Optional` `(` `FieldWithMeta` `Text` `)`
  |                | Indicates the type of media used to store the
  |                | content. mimeType is used to determine the software
  |                | product(s) that can read the content. MIME Types are
  |                | described in RFC 2046.
  | `name`         | `Optional` `Text`
  |                | The name of the resource.  It is specified as a
  |                | NormalizedString in FpML.
  | `resourceId`   | `FieldWithMeta` `Text`
  |                | The unique identifier of the resource within the
  |                | event. FpML specifies this element of type
  |                | resourceIdScheme but with no specified value.
  | `resourceType` | `Optional` `(` `FieldWithMeta` `ResourceTypeEnum` `)`
  |                | A description of the type of the resource, e.g. a
  |                | confirmation.
  | `sizeInBytes`  | `Optional` `Decimal`
  |                | Indicates the size of the resource in bytes. It could
  |                | be used by the end user to estimate the download time
  |                | and storage needs.
  | `string`       | `Optional` `Text`
  |                | Provides extra information as string. In case the
  |                | extra information is in XML format, a CDATA section
  |                | must be placed around the source message to prevent
  |                | its interpretation as XML content.
  | `url`          | `Optional` `Text`
  |                | Indicates where the resource can be found, as a URL
  |                | that references the information on a web server
  |                | accessible to the message recipient.

### `data` `ResourceLength`

  A class to indicate the length of the resource.
* `ResourceLength`

  | Field         | Type/Description |
  | :------------ | :----------------
  | `lengthUnit`  | `LengthUnitEnum`
  |               | The length unit of the resource. For example, pages
  |               | (pdf, text documents) or time (audio, video files).
  | `lengthValue` | `Decimal`
  |               | The length value of the resource.

### `data` `Restructuring`

* `Restructuring`

  | Field                        | Type/Description |
  | :--------------------------- | :----------------
  | `applicable`                 | `Bool`
  |                              | Indicates whether the restructuring provision is
  |                              | applicable.
  | `multipleCreditEventNotices` | `Optional` `Bool`
  |                              | Presence of this element and value set to
  |                              | &#39;true&#39; indicates that Section 3.9 of the 2003
  |                              | Credit Derivatives Definitions shall apply. Absence
  |                              | of this element indicates that Section 3.9 shall not
  |                              | apply. NOTE: Not allowed under ISDA Credit 1999.
  | `multipleHolderObligation`   | `Optional` `Bool`
  |                              | In relation to a restructuring credit event, unless
  |                              | multiple holder obligation is not specified
  |                              | restructurings are limited to multiple holder
  |                              | obligations. A multiple holder obligation means an
  |                              | obligation that is held by more than three holders
  |                              | that are not affiliates of each other and where at
  |                              | least two thirds of the holders must agree to the
  |                              | event that constitutes the restructuring credit
  |                              | event. ISDA 2003 Term: Multiple Holder Obligation.
  | `restructuringType`          | `Optional` `(` `FieldWithMeta` `RestructuringEnum` `)`
  |                              | Specifies the type of restructuring that is
  |                              | applicable.

### `data` `Rounding`

  A class defining a rounding direction and precision
  to be used in the rounding of a rate.
* `Rounding`

  | Field               | Type/Description |
  | :------------------ | :----------------
  | `precision`         | `Optional` `Int`
  |                     | Specifies the rounding precision in terms of a number
  |                     | of decimal places. Note how a percentage rate
  |                     | rounding of 5 decimal places is expressed as a
  |                     | rounding precision of 7 in the FpML document since
  |                     | the percentage is expressed as a decimal, e.g.
  |                     | 9.876543% (or 0.09876543) being rounded to the
  |                     | nearest 5 decimal places is 9.87654% (or 0.0987654).
  | `roundingDirection` | `RoundingDirectionEnum`
  |                     | Specifies the rounding direction.

### `data` `Schedule`

  A class defining a schedule of rates or amounts in
  terms of an initial value and then a series of step
  date and value pairs. On each step date the rate or
  amount changes to the new step value. The series of
  step date and value pairs are optional. If not
  specified, this implies that the initial value
  remains unchanged over time.
* `Schedule`

  | Field          | Type/Description |
  | :------------- | :----------------
  | `id`           | `Optional` `Text`
  | `initialValue` | `Decimal`
  |                | The initial rate or amount, as the case may be. An
  |                | initial rate of 5% would be represented as 0.05.
  | `step`         | `[` `Step` `]`
  |                | The schedule of step date and value pairs. On each
  |                | step date the associated step value becomes effective
  |                | A list of steps may be ordered in the document by
  |                | ascending step date. An FpML document containing an
  |                | unordered list of steps is still regarded as a
  |                | conformant document.

### `data` `Security`

* `Security`

  | Field             | Type/Description |
  | :---------------- | :----------------
  | `bond`            | `Optional` `Bond`
  | `convertibleBond` | `Optional` `ConvertibleBond`
  | `equity`          | `Optional` `Equity`

### `data` `SecurityTransferBreakdown`

* `SecurityTransferBreakdown`

  | Field                  | Type/Description |
  | :--------------------- | :----------------
  | `quantity`             | `Decimal`
  | `security`             | `[` `Security` `]`
  |                        | The securities that are being transfered
  | `transferorTransferee` | `TransferorTransferee`
  |                        | The transferee and transferor party information.

### `data` `SecurityTransferComponent`

* `SecurityTransferComponent`

  | Field                  | Type/Description |
  | :--------------------- | :----------------
  | `assetTransferType`    | `Optional` `AssetTransferTypeEnum`
  | `breakdown`            | `[` `SecurityTransferBreakdown` `]`
  |                        | The security transfer breakdown, when the transfer
  |                        | corresponds to a net transfer across several
  |                        | components which breakdown is deemed relevant (e.g.
  |                        | the net security transfer related to several
  |                        | contracts).
  | `identifier`           | `Optional` `(` `FieldWithMeta` `Text` `)`
  |                        | The identifier that can be associated with each of
  |                        | the transfer components
  | `quantity`             | `Decimal`
  | `security`             | `Security`
  |                        | The security that is being transfered
  | `transferCalculation`  | `Optional` `TransferCalculation`
  |                        | The calculation details underlying the transfer
  |                        | amount, when applicable.
  | `transferorTransferee` | `TransferorTransferee`
  |                        | The transferee and transferor party information.

### `data` `SensitivityMethodology`

* `SensitivityMethodology`

  | Field                  | Type/Description |
  | :--------------------- | :----------------
  | `customMethodology`    | `Optional` `Text`
  | `specifiedMethodology` | `Optional` `SensitivitiesEnum`

### `data` `SettledEntityMatrix`

  A class to specify the Relevant Settled Entity
  Matrix.
* `SettledEntityMatrix`

  | Field             | Type/Description |
  | :---------------- | :----------------
  | `matrixSource`    | `FieldWithMeta` `SettledEntityMatrixSourceEnum`
  |                   | Relevant settled entity matrix source.
  | `publicationDate` | `Optional` `Date`
  |                   | Specifies the publication date of the applicable
  |                   | version of the matrix. When this element is omitted,
  |                   | the Standard Terms Supplement defines rules for which
  |                   | version of the matrix is applicable.

### `data` `SettlementBase`

  A base class to be extended by the SettlementTerms,
  CashSettlementTerms and PhysicalSettlementTerms
  classes.
* `SettlementBase`

  | Field                | Type/Description |
  | :------------------- | :----------------
  | `id`                 | `Optional` `Text`
  | `settlementCurrency` | `Optional` `(` `FieldWithMeta` `Text` `)`
  |                      | The settlement currency is to be specified when the
  |                      | Settlement Amount cannot be known in advance. The
  |                      | list of valid currencies is not presently positioned
  |                      | as an enumeration as part of the CDM because that
  |                      | scope is limited to the values specified by ISDA and
  |                      | FpML. As a result, implementers have to make
  |                      | reference to the relevant standard, such as the ISO
  |                      | 4217 standard for currency codes.

### `data` `SettlementProvision`

  A class defining the specification of settlement
  terms, occurring when the settlement currency is
  different to the notional currency of the trade.
* `SettlementProvision`

  | Field                      | Type/Description |
  | :------------------------- | :----------------
  | `nonDeliverableSettlement` | `Optional` `NonDeliverableSettlement`
  |                            | The specification of the non-deliverable settlement
  |                            | provision.
  | `settlementCurrency`       | `FieldWithMeta` `Text`
  |                            | The currency that the payout are settled in when the
  |                            | currency in which the payout is specified is
  |                            | non-deliverable. The list of valid currencies is not
  |                            | presently positioned as an enumeration as part of the
  |                            | CDM because that scope is limited to the values
  |                            | specified by ISDA and FpML. As a result, implementers
  |                            | have to make reference to the relevant standard, such
  |                            | as the ISO 4217 standard for currency codes.

### `data` `SettlementRateSource`

  A class describing the method for obtaining a
  settlement rate.
* `SettlementRateSource`

  | Field                          | Type/Description |
  | :----------------------------- | :----------------
  | `cashSettlementReferenceBanks` | `Optional` `CashSettlementReferenceBanks`
  |                                | A container for a set of reference institutions that
  |                                | may be called upon to provide rate quotations as part
  |                                | of the method to determine the applicable cash
  |                                | settlement amount. If institutions are not specified,
  |                                | it is assumed that reference institutions will be
  |                                | agreed between the parties on the exercise date, or
  |                                | in the case of swap transaction to which mandatory
  |                                | early termination is applicable, the cash settlement
  |                                | valuation date.
  | `informationSource`            | `Optional` `InformationSource`
  |                                | The information source where a published or displayed
  |                                | market rate will be obtained, e.g. Telerate Page
  |                                | 3750.

### `data` `SettlementTerms`

  A class to specify the settlement terms. This class
  reflects the FpML OptionSettlement.model, although
  with no option reference.
* `SettlementTerms`

  | Field                | Type/Description |
  | :------------------- | :----------------
  | `id`                 | `Optional` `Text`
  | `settlementAmount`   | `Optional` `Money`
  |                      | The Settlement Amount, when known in advance.
  | `settlementCurrency` | `Optional` `(` `FieldWithMeta` `Text` `)`
  |                      | The settlement currency is to be specified when the
  |                      | Settlement Amount cannot be known in advance. The
  |                      | list of valid currencies is not presently positioned
  |                      | as an enumeration as part of the CDM because that
  |                      | scope is limited to the values specified by ISDA and
  |                      | FpML. As a result, implementers have to make
  |                      | reference to the relevant standard, such as the ISO
  |                      | 4217 standard for currency codes.
  | `settlementDate`     | `Optional` `AdjustableOrRelativeDate`
  | `settlementType`     | `Optional` `SettlementTypeEnum`
  |                      | Whether the settlement will be cash, physical, by
  |                      | election, ...

### `data` `SimmCalculationCurrency`

  A class to specify the ISDA SIMM Calculation Currency
  as either the Base Currency or an alternative
  currency, in accordance with the ISDA 2018 CSA for
  Initial Margin, Paragraph 13, General Principles
  (ee)(3).
* `SimmCalculationCurrency`

  | Field            | Type/Description |
  | :--------------- | :----------------
  | `currency`       | `Optional` `(` `FieldWithMeta` `Text` `)`
  |                  | The currency in which the ISDA SIMM Calculation is
  |                  | denominated. The list of valid currencies is not
  |                  | presently positioned as an enumeration as part of the
  |                  | CDM because that scope is limited to the values
  |                  | specified by ISDA and FpML. As a result, implementers
  |                  | have to make reference to the relevant standard, such
  |                  | as the ISO 4217 standard for currency codes.
  | `isBaseCurrency` | `Bool`
  | `party`          | `ReferenceWithMeta` `Party`
  |                  | The party which the SIMM Calculation Currency
  |                  | qualification applies to.

### `data` `SimmException`

  A class to specify the SIMM exception to the
  regulatory regime clause of the ISDA 2016 and 2018
  CSA for Initial Margin as either a normalized value
  specified as part of an enumeration or a customized
  value specified of type string. ISDA 2016 Credit
  Support Annex for Initial Margin paragraph 13,
  Regime: SIMM Exception.
* `SimmException`

  | Field                   | Type/Description |
  | :---------------------- | :----------------
  | `asSpecified`           | `Optional` `Text`
  |                         | The Standard Initial Margin Model exception when
  |                         | specified as a customized approach by the party.
  | `standardisedException` | `Optional` `SimmExceptionEnum`
  |                         | The Standard Initial Margin Model exception when
  |                         | specified by the party according to one of the
  |                         | enumerated values.

### `data` `SimmVersion`

  A class to specify the ISDA SIMM version that applies
  to the ISDA 2018 CSA for Initial Margin. According to
  the ISDA 2018 CSA for Initial Margin, Paragraph 13,
  General Principles (ee) (1) provisions, the SIMM
  version is either not specified, or references a
  version used by one of the parties to the agreement.
* `SimmVersion`

  | Field         | Type/Description |
  | :------------ | :----------------
  | `isSpecified` | `Bool`
  |               | A boolean attribute to determine whether the SIMM
  |               | version is specified for the purpose of the legal
  |               | agreement.
  | `version`     | `Optional` `SpecifiedSimmVersion`
  |               | When the SIMM version is specified, it will reference
  |               | the party that uses such version.

### `data` `SimplePayment`

  A class to specified payments in a simpler fashion
  than the Payment type. This construct should be used
  from the FpML version 4.3 onwards.
* `SimplePayment`

  | Field                      | Type/Description |
  | :------------------------- | :----------------
  | `id`                       | `Optional` `Text`
  | `payerAccountReference`    | `Optional` `(` `ReferenceWithMeta` `Account` `)`
  |                            | A reference to the account responsible for making the
  |                            | payments defined by this structure.
  | `payerPartyReference`      | `ReferenceWithMeta` `Party`
  |                            | A reference to the party responsible for making the
  |                            | payments defined by this structure.
  | `paymentAmount`            | `Money`
  |                            | The payment amount.
  | `paymentDate`              | `AdjustableOrRelativeDate`
  |                            | The payment date. This date is subject to adjustment
  |                            | in accordance with any applicable business day
  |                            | convention.
  | `receiverAccountReference` | `Optional` `(` `ReferenceWithMeta` `Account` `)`
  |                            | A reference to the account that receives the payments
  |                            | corresponding to this structure.
  | `receiverPartyReference`   | `ReferenceWithMeta` `Party`
  |                            | A reference to the party that receives the payments
  |                            | corresponding to this structure.

### `data` `SingleUnderlier`

* `SingleUnderlier`

  | Field               | Type/Description |
  | :------------------ | :----------------
  | `openUnits`         | `Optional` `Decimal`
  |                     | The number of units that constitute the underlier.
  | `underlyingProduct` | `Product`
  |                     | Specifies the underlying product. As a difference
  |                     | with FpML, and for the purpose of also supporting
  |                     | swaption and options on CDS through a generic
  |                     | construct, its scope also includes the contract and
  |                     | contractualProduct.

### `data` `SingleValuationDate`

  A class to specify the number of business days after
  satisfaction of all conditions to settlement.
* `SingleValuationDate`

  | Field          | Type/Description |
  | :------------- | :----------------
  | `businessDays` | `Optional` `Int`
  |                | A number of business days. Its precise meaning is
  |                | dependant on the context in which this element is
  |                | used. ISDA 2003 Term: Business Day.

### `data` `SpecifiedCurrency`

* `SpecifiedCurrency`

  | Field        | Type/Description |
  | :----------- | :----------------
  | `applicable` | `Bool`
  |              | Indicates whether the specified currency provision is
  |              | applicable.
  | `currency`   | `Optional` `(` `FieldWithMeta` `Text` `)`
  |              | The currency in which the the specified currency is
  |              | denominated. The list of valid currencies is not
  |              | presently positioned as an enumeration as part of the
  |              | CDM because that scope is limited to the values
  |              | specified by ISDA and FpML. As a result, implementers
  |              | have to make reference to the relevant standard, such
  |              | as the ISO 4217 standard for currency codes.

### `data` `SpecifiedSimmVersion`

  A class to specify the ISDA SIMM version applicable
  to one of the parties to the CSA agreement that will
  then be the relevant version for that CSA.
* `SpecifiedSimmVersion`

  | Field         | Type/Description |
  | :------------ | :----------------
  | `party`       | `ReferenceWithMeta` `Party`
  |               | The party which the specified SIMM version applies
  |               | to.
  | `simmVersion` | `Text`
  |               | The applicable ISDA SIMM version.

### `data` `SpreadSchedule`

  Adds an optional spread type element to the Schedule
  to identify a long or short spread value.
* `SpreadSchedule`

  | Field          | Type/Description |
  | :------------- | :----------------
  | `id`           | `Optional` `Text`
  | `initialValue` | `Decimal`
  |                | The initial rate or amount, as the case may be. An
  |                | initial rate of 5% would be represented as 0.05.
  | `step`         | `[` `Step` `]`
  |                | The schedule of step date and value pairs. On each
  |                | step date the associated step value becomes effective
  |                | A list of steps may be ordered in the document by
  |                | ascending step date. An FpML document containing an
  |                | unordered list of steps is still regarded as a
  |                | conformant document.
  | `_type`        | `Optional` `(` `FieldWithMeta` `SpreadScheduleTypeEnum` `)`
  |                | An element which purpose is to identify a long or
  |                | short spread value.

### `data` `Step`

  A class defining a step date and step value pair.
  This step definitions are used to define varying rate
  or amount schedules, e.g. a notional amortisation or
  a step-up coupon schedule.
* `Step`

  | Field       | Type/Description |
  | :---------- | :----------------
  | `id`        | `Optional` `Text`
  | `stepDate`  | `Date`
  |             | The date on which the associated step value becomes
  |             | effective.
  | `stepValue` | `Decimal`
  |             | The rate of amount which becomes effective on the
  |             | associated step date. A rate of 5% would be
  |             | represented as 0.05.

### `data` `StrategyFeature`

  A class for defining option strategy features.
* `StrategyFeature`

  | Field            | Type/Description |
  | :--------------- | :----------------
  | `calendarSpread` | `Optional` `CalendarSpread`
  |                  | Definition of the later expiration date in a calendar
  |                  | spread.
  | `strikeSpread`   | `Optional` `StrikeSpread`
  |                  | Definition of the upper strike in a strike spread.

### `data` `Strike`

  A class describing a single cap or floor rate.
* `Strike`

  | Field        | Type/Description |
  | :----------- | :----------------
  | `buyer`      | `Optional` `PayerReceiverEnum`
  |              | The buyer of the option.
  | `id`         | `Optional` `Text`
  | `seller`     | `Optional` `PayerReceiverEnum`
  |              | The party that has sold.
  | `strikeRate` | `Decimal`
  |              | The rate for a cap or floor.

### `data` `StrikeSchedule`

  A class describing a schedule of cap or floor rates.
* `StrikeSchedule`

  | Field          | Type/Description |
  | :------------- | :----------------
  | `buyer`        | `Optional` `PayerReceiverEnum`
  |                | The buyer of the option.
  | `id`           | `Optional` `Text`
  | `initialValue` | `Decimal`
  |                | The initial rate or amount, as the case may be. An
  |                | initial rate of 5% would be represented as 0.05.
  | `seller`       | `Optional` `PayerReceiverEnum`
  |                | The party that has sold.
  | `step`         | `[` `Step` `]`
  |                | The schedule of step date and value pairs. On each
  |                | step date the associated step value becomes effective
  |                | A list of steps may be ordered in the document by
  |                | ascending step date. An FpML document containing an
  |                | unordered list of steps is still regarded as a
  |                | conformant document.

### `data` `StrikeSpread`

  A class for defining a strike spread feature.
* `StrikeSpread`

  | Field                        | Type/Description |
  | :--------------------------- | :----------------
  | `upperStrike`                | `OptionStrike`
  |                              | Upper strike in a strike spread.
  | `upperStrikeNumberOfOptions` | `Decimal`
  |                              | Number of options at the upper strike price in a
  |                              | strike spread.

### `data` `StubCalculationPeriodAmount`

  A class defining how the initial or final stub
  calculation period amounts is calculated. For
  example, the rate to be applied to the initial or
  final stub calculation period may be the linear
  interpolation of two different tenors for the
  floating rate index specified in the calculation
  period amount component, e.g. A two month stub period
  may used the linear interpolation of a one month and
  three month floating rate. The different rate tenors
  would be specified in this component. Note that a
  maximum of two rate tenors can be specified. If a
  stub period uses a single index tenor and this is the
  same as that specified in the calculation period
  amount component then the initial stub or final stub
  component, as the case may be, must not be included.
* `StubCalculationPeriodAmount`

  | Field                             | Type/Description |
  | :-------------------------------- | :----------------
  | `calculationPeriodDatesReference` | `ReferenceWithMeta` `CalculationPeriodDates`
  |                                   | A pointer style reference to the associated
  |                                   | calculation period dates component defined elsewhere
  |                                   | in the document.
  | `finalStub`                       | `Optional` `StubValue`
  |                                   | Specifies how the final stub amount is calculated. A
  |                                   | single floating rate tenor different to that used for
  |                                   | the regular part of the calculation periods schedule
  |                                   | may be specified, or two floating tenors may be
  |                                   | specified. If two floating rate tenors are specified
  |                                   | then Linear Interpolation (in accordance with the
  |                                   | 2000 ISDA Definitions, Section 8.3. Interpolation) is
  |                                   | assumed to apply. Alternatively, an actual known stub
  |                                   | rate or stub amount may be specified.
  | `initialStub`                     | `Optional` `StubValue`
  |                                   | Specifies how the initial stub amount is calculated.
  |                                   | A single floating rate tenor different to that used
  |                                   | for the regular part of the calculation periods
  |                                   | schedule may be specified, or two floating tenors may
  |                                   | be specified. If two floating rate tenors are
  |                                   | specified then Linear Interpolation (in accordance
  |                                   | with the 2000 ISDA Definitions, Section 8.3.
  |                                   | Interpolation) is assumed to apply. Alternatively, an
  |                                   | actual known stub rate or stub amount may be
  |                                   | specified.

### `data` `StubFloatingRate`

  A class defining a floating rate.
* `StubFloatingRate`

  | Field                            | Type/Description |
  | :------------------------------- | :----------------
  | `capRateSchedule`                | `[` `StrikeSchedule` `]`
  |                                  | The cap rate or cap rate schedule, if any, which
  |                                  | applies to the floating rate. The cap rate (strike)
  |                                  | is only required where the floating rate on a swap
  |                                  | stream is capped at a certain level. A cap rate
  |                                  | schedule is expressed as explicit cap rates and dates
  |                                  | and the step dates may be subject to adjustment in
  |                                  | accordance with any adjustments specified in
  |                                  | calculationPeriodDatesAdjustments. The cap rate is
  |                                  | assumed to be exclusive of any spread and is a per
  |                                  | annum rate, expressed as a decimal. A cap rate of 5%
  |                                  | would be represented as 0.05.
  | `floatingRateIndex`              | `FloatingRateIndexEnum`
  |                                  | The floating rate index.
  | `floatingRateMultiplierSchedule` | `Optional` `Schedule`
  |                                  | A rate multiplier or multiplier schedule to apply to
  |                                  | the floating rate. A multiplier schedule is expressed
  |                                  | as explicit multipliers and dates. In the case of a
  |                                  | schedule, the step dates may be subject to adjustment
  |                                  | in accordance with any adjustments specified in the
  |                                  | calculationPeriodDatesAdjustments. The multiplier can
  |                                  | be a positive or negative decimal. This element
  |                                  | should only be included if the multiplier is not
  |                                  | equal to 1 (one) for the term of the stream.
  | `floorRateSchedule`              | `[` `StrikeSchedule` `]`
  |                                  | The floor rate or floor rate schedule, if any, which
  |                                  | applies to the floating rate. The floor rate (strike)
  |                                  | is only required where the floating rate on a swap
  |                                  | stream is floored at a certain strike level. A floor
  |                                  | rate schedule is expressed as explicit floor rates
  |                                  | and dates and the step dates may be subject to
  |                                  | adjustment in accordance with any adjustments
  |                                  | specified in calculationPeriodDatesAdjustments. The
  |                                  | floor rate is assumed to be exclusive of any spread
  |                                  | and is a per annum rate, expressed as a decimal. A
  |                                  | floor rate of 5% would be represented as 0.05.
  | `id`                             | `Optional` `Text`
  | `indexTenor`                     | `Optional` `Period`
  |                                  | The ISDA Designated Maturity, i.e. the tenor of the
  |                                  | floating rate.
  | `rateTreatment`                  | `Optional` `RateTreatmentEnum`
  |                                  | The specification of any rate conversion which needs
  |                                  | to be applied to the observed rate before being used
  |                                  | in any calculations. The two common conversions are
  |                                  | for securities quoted on a bank discount basis which
  |                                  | will need to be converted to either a Money Market
  |                                  | Yield or Bond Equivalent Yield. See the Annex to the
  |                                  | 2000 ISDA Definitions, Section 7.3. Certain General
  |                                  | Definitions Relating to Floating Rate Options,
  |                                  | paragraphs (g) and (h) for definitions of these
  |                                  | terms.
  | `spreadSchedule`                 | `[` `SpreadSchedule` `]`
  |                                  | The ISDA Spread or a Spread schedule expressed as
  |                                  | explicit spreads and dates. In the case of a
  |                                  | schedule, the step dates may be subject to adjustment
  |                                  | in accordance with any adjustments specified in
  |                                  | calculationPeriodDatesAdjustments. The spread is a
  |                                  | per annum rate, expressed as a decimal. For purposes
  |                                  | of determining a calculation period amount, if
  |                                  | positive the spread will be added to the floating
  |                                  | rate and if negative the spread will be subtracted
  |                                  | from the floating rate. A positive 10 basis point
  |                                  | (0.1%) spread would be represented as 0.001.

### `data` `StubPeriod`

  A class defining how the initial or final stub
  calculation period amounts is calculated. For
  example, the rate to be applied to the initial or
  final stub calculation period may be the linear
  interpolation of two different tenors for the
  floating rate index specified in the calculation
  period amount component, e.g. A two month stub period
  may used the linear interpolation of a one month and
  three month floating rate. The different rate tenors
  would be specified in this component. Note that a
  maximum of two rate tenors can be specified. If a
  stub period uses a single index tenor and this is the
  same as that specified in the calculation period
  amount component then the initial stub or final stub
  component, as the case may be, must not be included.
* `StubPeriod`

  | Field                             | Type/Description |
  | :-------------------------------- | :----------------
  | `calculationPeriodDatesReference` | `ReferenceWithMeta` `CalculationPeriodDates`
  |                                   | A pointer style reference to the associated
  |                                   | calculation period dates component defined elsewhere
  |                                   | in the document.
  | `finalStub`                       | `Optional` `StubValue`
  |                                   | Specifies how the final stub amount is calculated. A
  |                                   | single floating rate tenor different to that used for
  |                                   | the regular part of the calculation periods schedule
  |                                   | may be specified, or two floating tenors may be
  |                                   | specified. If two floating rate tenors are specified
  |                                   | then Linear Interpolation (in accordance with the
  |                                   | 2000 ISDA Definitions, Section 8.3. Interpolation) is
  |                                   | assumed to apply. Alternatively, an actual known stub
  |                                   | rate or stub amount may be specified.
  | `initialStub`                     | `Optional` `StubValue`
  |                                   | Specifies how the initial stub amount is calculated.
  |                                   | A single floating rate tenor different to that used
  |                                   | for the regular part of the calculation periods
  |                                   | schedule may be specified, or two floating tenors may
  |                                   | be specified. If two floating rate tenors are
  |                                   | specified then Linear Interpolation (in accordance
  |                                   | with the 2000 ISDA Definitions, Section 8.3.
  |                                   | Interpolation) is assumed to apply. Alternatively, an
  |                                   | actual known stub rate or stub amount may be
  |                                   | specified.

### `data` `StubValue`

  A type defining how a stub calculation period amount
  is calculated. A single floating rate tenor different
  to that used for the regular part of the calculation
  periods schedule may be specified, or two floating
  rate tenors many be specified. If two floating rate
  tenors are specified then Linear Interpolation (in
  accordance with the 2000 ISDA Definitions, Section
  8.3 Interpolation) is assumed to apply.
  Alternatively, an actual known stub rate or stub
  amount may be specified.
* `StubValue`

  | Field          | Type/Description |
  | :------------- | :----------------
  | `floatingRate` | `[` `StubFloatingRate` `]`
  |                | The rates to be applied to the initial or final stub
  |                | may be the linear interpolation of two different
  |                | rates. While the majority of the time, the rate
  |                | indices will be the same as that specified in the
  |                | stream and only the tenor itself will be different,
  |                | it is possible to specift two different rates. For
  |                | example, a 2 month stub period may use the linear
  |                | interpolation of a 1 month and 3 month rate. The
  |                | different rates would be specified in this component.
  |                | Note that a maximum of two rates can be specified. If
  |                | a stub period uses the same floating rate index,
  |                | including tenor, as the regular calculation periods
  |                | then this should not be specified again within this
  |                | component, i.e. the stub calculation period amount
  |                | component may not need to be specified even if there
  |                | is an initial or final stub period. If a stub period
  |                | uses a different floating rate index compared to the
  |                | regular calculation periods then this should be
  |                | specified within this component. If specified here,
  |                | they are likely to have id attributes, allowing them
  |                | to be referenced from within the cashflows component.
  | `stubAmount`   | `Optional` `Money`
  |                | An actual amount to apply for the initial or final
  |                | stub period may have been agreed between the two
  |                | parties. If an actual stub amount has been agreed
  |                | then it would be included in this component.
  | `stubRate`     | `Optional` `Decimal`
  |                | An actual rate to apply for the initial or final stub
  |                | period may have been agreed between the principal
  |                | parties (in a similar way to how an initial rate may
  |                | have been agreed for the first regular period). If an
  |                | actual stub rate has been agreed then it would be
  |                | included in this component. It will be a per annum
  |                | rate, expressed as a decimal. A stub rate of 5% would
  |                | be represented as 0.05.

### `data` `SwapCurveValuation`

  A class to specify a valuation swap curve, which is
  used as part of the strike construct for the bond and
  convertible bond options.
* `SwapCurveValuation`

  | Field               | Type/Description |
  | :------------------ | :----------------
  | `floatingRateIndex` | `FloatingRateIndexEnum`
  | `indexTenor`        | `Optional` `Period`
  |                     | The ISDA Designated Maturity, i.e. the tenor of the
  |                     | floating rate.
  | `side`              | `Optional` `QuotationSideEnum`
  |                     | The side (bid/mid/ask) of the measure.
  | `spread`            | `Decimal`
  |                     | Spread in basis points over the floating rate index.

### `data` `TerminationCurrency`

  A class to specify the Termination Currency
  applicable to each of the parties to the CSA, as
  specified by the ISDA 2018 CSA for Initial Margin,
  Paragraph 13 Eligible Credit Support (IM) Schedule.
* `TerminationCurrency`

  | Field      | Type/Description |
  | :--------- | :----------------
  | `currency` | `FieldWithMeta` `Text`
  |            | The Termination Currency associated with the party
  |            | that referenced as part of this class. The list of
  |            | valid currencies is not presently positioned as an
  |            | enumeration as part of the CDM because that scope is
  |            | limited to the values specified by ISDA and FpML. As
  |            | a result, implementers have to make reference to the
  |            | relevant standard, such as the ISO 4217 standard for
  |            | currency codes.
  | `party`    | `ReferenceWithMeta` `Party`
  |            | The party which the Termination Currency
  |            | determination applies to.

### `data` `TermsChangePrimitive`

  The primitive event to represent change(s) to the
  contractual terms and the clearing submission and
  acceptance process.
* `TermsChangePrimitive`

  | Field    | Type/Description |
  | :------- | :----------------
  | `after`  | `Trade`
  | `before` | `Trade`

### `data` `Threshold`

  A class to specify the unsecured credit exposure that
  each party to the agreement is prepared to accept
  before asking for collateral. This threshold is
  specified either as an amount or as a custom
  election.
* `Threshold`

  | Field            | Type/Description |
  | :--------------- | :----------------
  | `partyElections` | `[` `PartyElectiveAmount` `]`
  |                  | The parties&#39; Threshold elections.

### `data` `TimeZone`

  The time alongside with the timezone location
  information. This class makes use of the FpML
  TimezoneLocation construct.
* `TimeZone`

  | Field      | Type/Description |
  | :--------- | :----------------
  | `location` | `Optional` `(` `FieldWithMeta` `Text` `)`
  |            | FpML specifies the timezoneLocationScheme by
  |            | reference to the Time Zone Database (a.k.a. tz
  |            | database) maintained by IANA, the Internet Assigned
  |            | Numbers Authority.
  | `time`     | `Text`
  |            | The observation time.

### `data` `Trade`

  A class to represent the general trade concept, which
  can either be an execution or a contract. The
  execution consists essentially in the economic terms
  which are agreed between the parties. The contract
  will further qualify those with the legal entities
  (think of the allocation case, which execution state
  can involve the investment adviser rather not the
  actual funds) while not specify the master agreement
  or collateral terms which might be associated with
  the subsequent contract.
* `Trade`

  | Field       | Type/Description |
  | :---------- | :----------------
  | `contract`  | `Optional` `Contract`
  |             | The contract differs from the execution by the fact
  |             | that its legal terms are fully specified. This
  |             | includes the legal entities that are associated to it
  |             | as well as any associated legal agreement, e.g.
  |             | master agreement, credit and collateral terms, ...
  | `execution` | `Optional` `Execution`
  |             | The execution corresponds to economic terms that are
  |             | agreed between parties, but which legal terms are not
  |             | yet specified. The execution attribute applies to the
  |             | post-execution scenario of a product that is subject
  |             | to the clearing mandate and is then routed to the CCP
  |             | as an execution.

### `data` `TradeDate`

  A class to specify the contract&#39;s trade date
  alongside an identifier.
* `TradeDate`

  | Field  | Type/Description |
  | :----- | :----------------
  | `date` | `Date`
  |        | The trade date associated with the contract. In the
  |        | case of a novated trade, this date corresponds to the
  |        | novation date.
  | `id`   | `Optional` `Text`

### `data` `TradeWarehouseWorkflow`

  A class to specify trade warehouse workflow
  information: the identity of the trade warehouse, the
  contract status at the warehouse and party-specific
  workflow information.
* `TradeWarehouseWorkflow`

  | Field                     | Type/Description |
  | :------------------------ | :----------------
  | `partyCustomisedWorkflow` | `[` `PartyCustomisedWorkflow` `]`
  |                           | Non-standardized workflow data related to a party.
  | `warehouseIdentity`       | `WarehouseIdentityEnum`
  | `warehouseStatus`         | `WorkflowStatusEnum`

### `data` `Tranche`

  The class to represent a CDS Tranche.
* `Tranche`

  | Field                        | Type/Description |
  | :--------------------------- | :----------------
  | `attachmentPoint`            | `Decimal`
  |                              | Lower bound percentage of the loss that the Tranche
  |                              | can endure, expressed as a decimal. An attachment
  |                              | point of 5% would be represented as 0.05. The
  |                              | difference between Attachment and Exhaustion points
  |                              | is called the width of the Tranche.
  | `exhaustionPoint`            | `Decimal`
  |                              | Upper bound percentage of the loss that the Tranche
  |                              | can endure, expressed as a decimal. An exhaustion
  |                              | point of 5% would be represented as 0.05. The
  |                              | difference between Attachment and Exhaustion points
  |                              | is call the width of the Tranche.
  | `incurredRecoveryApplicable` | `Optional` `Bool`
  |                              | Outstanding Swap Notional Amount is defined at any
  |                              | time on any day, as the greater of: (a) Zero; If
  |                              | Incurred Recovery Amount Applicable: (b) The Original
  |                              | Swap Notional Amount minus the sum of all Incurred
  |                              | Loss Amounts and all Incurred Recovery Amounts (if
  |                              | any) determined under this Confirmation at or prior
  |                              | to such time.Incurred Recovery Amount not populated:
  |                              | (b) The Original Swap Notional Amount minus the sum
  |                              | of all Incurred Loss Amounts determined under this
  |                              | Confirmation at or prior to such time.

### `data` `TransactedPrice`

  A class to represent the transacted price attributes
  that are positioned as part of the FpML FeeLeg.
* `TransactedPrice`

  | Field             | Type/Description |
  | :---------------- | :----------------
  | `initialPoints`   | `Optional` `Decimal`
  |                   | An optional element that contains the up-front points
  |                   | expressed as a percentage of the notional. An
  |                   | initialPoints value of 5% would be represented as
  |                   | 0.05. The initialPoints element is an alternative to
  |                   | marketFixedRate in quoting the traded level of a
  |                   | trade. When initialPoints is used, the traded level
  |                   | is the sum of fixedRate and initialPoints. The
  |                   | initialPoints is one of the items that are factored
  |                   | into the initialPayment calculation and is payable by
  |                   | the Buyer to the Seller. Note that initialPoints and
  |                   | marketFixedRate may both be present in the same
  |                   | document when both implied values are desired.
  | `marketFixedRate` | `Optional` `Decimal`
  |                   | An optional element that only has meaning in a credit
  |                   | index trade. This element contains the credit spread
  |                   | (&#39;fair value&#39;) at which the trade was
  |                   | executed. Unlike the fixedRate of an index, the
  |                   | marketFixedRate varies over the life of the index
  |                   | depending on market conditions. The marketFixedRate
  |                   | is the price of the index as quoted by trading desks.
  | `marketPrice`     | `Optional` `Decimal`
  |                   | An optional element that only has meaning in a credit
  |                   | index trade. This element contains the price at which
  |                   | the trade was executed and is used instead of
  |                   | marketFixedRate on credit trades on certain indicies
  |                   | which are quoted using a price rather than a spread.
  | `quotationStyle`  | `Optional` `QuotationStyleEnum`
  |                   | An optional element that contains the up-front points
  |                   | expressed as a percentage of the notional. An
  |                   | initialPoints value of 5% would be represented as
  |                   | 0.05. The initialPoints element is an alternative to
  |                   | marketFixedRate in quoting the traded level of a
  |                   | trade. When initialPoints is used, the traded level
  |                   | is the sum of fixedRate and initialPoints. The
  |                   | initialPoints is one of the items that are factored
  |                   | into the initialPayment calculation and is payable by
  |                   | the Buyer to the Seller. Note that initialPoints and
  |                   | marketFixedRate may both be present in the same
  |                   | document when both implied values are desired.

### `data` `TransferBase`

* `TransferBase`

  | Field                 | Type/Description |
  | :-------------------- | :----------------
  | `identifier`          | `Optional` `(` `FieldWithMeta` `Text` `)`
  |                       | The identifier that can be associated with each of
  |                       | the transfer components
  | `transferCalculation` | `Optional` `TransferCalculation`
  |                       | The calculation details underlying the transfer
  |                       | amount, when applicable.

### `data` `TransferBreakdown`

* `TransferBreakdown`

  | Field                 | Type/Description |
  | :-------------------- | :----------------
  | `identifier`          | `Optional` `(` `FieldWithMeta` `Text` `)`
  |                       | The identifier that can be associated with each of
  |                       | the transfer components
  | `lineage`             | `[` `Lineage` `]`
  |                       | The lineage into the transfer components that might
  |                       | be associated with each of the transfer components.
  | `transferCalculation` | `Optional` `TransferCalculation`
  |                       | The calculation details underlying the transfer
  |                       | amount, when applicable.

### `data` `TransferCalculation`

* `TransferCalculation`

  | Field                | Type/Description |
  | :------------------- | :----------------
  | `calculationOutcome` | `Optional` `Text`
  |                      | This is a conceptual placeholder for providing the
  |                      | breakdown into the cashflow calculation components,
  |                      | leveraging the fact that the CDM provides calculation
  |                      | components, starting with the FixedAmount and the
  |                      | FloatingAmount. Further evaluation of expected usage
  |                      | needs to take place to confirm and prioritize such
  |                      | implementation.
  | `lineage`            | `[` `Lineage` `]`
  |                      | The lineage into the components used for the
  |                      | calculation.
  | `period`             | `Optional` `CalculationPeriodBase`
  |                      | The period adjusted start and end dates.

### `data` `TransferPrimitive`

  A class to specify the transfer of assets between
  parties, those assets being either cash, securities
  or physical assets. This class combines components
  that are cross-assets (settlement date, settlement
  type, status, ...) and some other which are
  specialized by asset class (e.g. the payer/receiver
  amount and cashflow type for a cash transfer, the
  transferor/transferee, security indication, quantity,
  and asset transfer type qualification for the case of
  a security). The associated rosettaKey denotes the
  ability to associate a hash value to the respective
  Execution instantiations for the purpose of model
  cross-referencing, in support of functionality such
  as the event effect and the lineage.
* `TransferPrimitive`

  | Field                 | Type/Description |
  | :-------------------- | :----------------
  | `cashTransfer`        | `[` `CashTransferComponent` `]`
  |                       | The cash transfer component of the transfer. In the
  |                       | case where several currencies are involved in the
  |                       | transfer, several components should be used, as the
  |                       | component supports one single currency amount.
  | `commodityTransfer`   | `[` `CommodityTransferComponent` `]`
  | `identifier`          | `Optional` `(` `FieldWithMeta` `Text` `)`
  |                       | The identifier which might be associated with the
  |                       | transfer.
  | `rosettaKey`          | `Text`
  | `securityTransfer`    | `[` `SecurityTransferComponent` `]`
  |                       | The security transfer component of the transfer. In
  |                       | the case where several securities are involved in the
  |                       | transfer, several components should be used, as the
  |                       | component supports one single security.
  | `settlementDate`      | `AdjustableOrAdjustedOrRelativeDate`
  | `settlementReference` | `Optional` `Text`
  |                       | The settlement reference, when applicable.
  | `settlementType`      | `Optional` `TransferSettlementEnum`
  |                       | The qualification as to how the transfer will settle,
  |                       | e.g. a DvP settlement.
  | `status`              | `Optional` `TransferStatusEnum`
  |                       | The transfer status, e.g. Instructed, Settled, ...

### `data` `TransferorTransferee`

  A class mimicking the PayerReceiver, which is itself
  derived from the FpML PayerReceiver.model, to
  represent the transferee and transferor party
  information in relation to the transfer of security
  or commodities.
* `TransferorTransferee`

  | Field                        | Type/Description |
  | :--------------------------- | :----------------
  | `transfereeAccountReference` | `Optional` `(` `ReferenceWithMeta` `Account` `)`
  |                              | A reference to the account that receives the payments
  |                              | corresponding to this structure.
  | `transfereePartyReference`   | `ReferenceWithMeta` `Party`
  |                              | A reference to the party that receives the payments
  |                              | corresponding to this structure.
  | `transferorAccountReference` | `Optional` `(` `ReferenceWithMeta` `Account` `)`
  |                              | A reference to the account responsible for making the
  |                              | payments defined by this structure.
  | `transferorPartyReference`   | `ReferenceWithMeta` `Party`
  |                              | A reference to the party responsible for making the
  |                              | payments defined by this structure.

### `data` `Trigger`

  Trigger point at which feature is effective.
* `Trigger`

  | Field                   | Type/Description |
  | :---------------------- | :----------------
  | `creditEvents`          | `Optional` `CreditEvents`
  | `creditEventsReference` | `Optional` `(` `ReferenceWithMeta` `CreditEvents` `)`
  | `level`                 | `Optional` `Decimal`
  |                         | The trigger level.
  | `levelPercentage`       | `Optional` `Decimal`
  |                         | The trigger level percentage.
  | `triggerTimeType`       | `Optional` `TriggerTimeTypeEnum`
  |                         | The valuation time type of knock condition.
  | `triggerType`           | `Optional` `TriggerTypeEnum`
  |                         | The Triggering condition.

### `data` `TriggerEvent`

  Observation point for trigger.
* `TriggerEvent`

  | Field            | Type/Description |
  | :--------------- | :----------------
  | `featurePayment` | `Optional` `FeaturePayment`
  |                  | The feature payment, i.e. the payment made following
  |                  | trigger occurrence.
  | `schedule`       | `[` `AveragingSchedule` `]`
  |                  | A derivative schedule.
  | `trigger`        | `Trigger`
  |                  | The trigger level
  | `triggerDates`   | `Optional` `DateList`
  |                  | The trigger Dates.

### `data` `Underlier`

  A class describing the whole set of possible
  underliers: single underliers or multiple underliers,
  each of these having either security or index
  components.
* `Underlier`

  | Field             | Type/Description |
  | :---------------- | :----------------
  | `basket`          | `Optional` `Basket`
  | `singleUnderlier` | `Optional` `SingleUnderlier`

### `data` `ValuationDate`

* `ValuationDate`

  | Field                    | Type/Description |
  | :----------------------- | :----------------
  | `multipleValuationDates` | `Optional` `MultipleValuationDates`
  |                          | Where multiple valuation dates are specified as being
  |                          | applicable for cash settlement, this element
  |                          | specifies (a) the number of applicable valuation
  |                          | dates, and (b) the number of business days after
  |                          | satisfaction of all conditions to settlement when the
  |                          | first such valuation date occurs, and (c) the number
  |                          | of business days thereafter of each successive
  |                          | valuation date. ISDA 2003 Term: Multiple Valuation
  |                          | Dates.
  | `singleValuationDate`    | `Optional` `SingleValuationDate`
  |                          | Where single valuation date is specified as being
  |                          | applicable for cash settlement, this element
  |                          | specifies the number of business days after
  |                          | satisfaction of all conditions to settlement when
  |                          | such valuation date occurs. ISDA 2003 Term: Single
  |                          | Valuation Date.

### `data` `ValuationPostponement`

  Specifies how long to wait to get a quote from a
  settlement rate option upon a price source
  disruption.
* `ValuationPostponement`

  | Field                       | Type/Description |
  | :-------------------------- | :----------------
  | `maximumDaysOfPostponement` | `Int`
  |                             | The maximum number of days to wait for a quote from
  |                             | the disrupted settlement rate option before
  |                             | proceeding to the next method.

### `data` `Velocity`

* `Velocity`

  | Field              | Type/Description |
  | :----------------- | :----------------
  | `period`           | `Optional` `PeriodTimeEnum`
  | `periodMultiplier` | `Optional` `Int`

### `data` `Warrant`

  A class to specify a warrant as having a product
  identifier. As a difference versus the FpML standard,
  the CDM structure of this class only includes the
  productIdentifier class, which consists of an
  identifier, productTaxonomy, and source of the
  identifier. The reason for this approach is to avoid
  the potential for conflicting information between the
  information associated with the contractual product
  and the reference information maintained by the
  relevant service provider.
* `Warrant`

  | Field               | Type/Description |
  | :------------------ | :----------------
  | `productIdentifier` | `ProductIdentifier`

### `data` `WeightedAveragingObservation`

  A single weighted averaging observation.
* `WeightedAveragingObservation`

  | Field               | Type/Description |
  | :------------------ | :----------------
  | `dateTime`          | `Optional` `ZonedDateTime`
  |                     | Observation date time, which should be used when
  |                     | literal observation dates are required. The CDM
  |                     | specifies that the zoned date time is to be expressed
  |                     | in accordance with ISO 8601, either as UTC as an
  |                     | offset to UTC.
  | `observationNumber` | `Optional` `Int`
  |                     | Observation number, which should be unique, within a
  |                     | series generated by a date schedule.
  | `weight`            | `Decimal`
  |                     | Observation weight, which is used as a multiplier for
  |                     | the observation value.

### `data` `YieldCurveMethod`

  A class defining the parameters required for each of
  the ISDA defined yield curve methods for cash
  settlement.
* `YieldCurveMethod`

  | Field                  | Type/Description |
  | :--------------------- | :----------------
  | `quotationRateType`    | `QuotationRateTypeEnum`
  |                        | Which rate quote is to be observed, either Bid, Mid,
  |                        | Offer or Exercising Party Pays. The meaning of
  |                        | Exercising Party Pays is defined in the 2000 ISDA
  |                        | Definitions, Section 17.2. Certain Definitions
  |                        | Relating to Cash Settlement, paragraph (j).
  | `settlementRateSource` | `Optional` `SettlementRateSource`
  |                        | The method for obtaining a settlement rate. This may
  |                        | be from some information source (e.g. Reuters) or
  |                        | from a set of reference banks.



# Module ISDA.CDM.Types.Enums
============

This file is auto-generated from the ISDA Common
Domain Model, do not edit.
@version 0.0.0.master

## Data Types

### `data` `AccountTypeEnum`

  The enumeration values to qualify the type of
  account.
* `AccountTypeEnum_AggregateClient`
  Aggregate client account, as defined under ESMA
  MiFIR.
* `AccountTypeEnum_Client`
  The account contains trading activity or positions
  that belong to a client of the firm that opened the
  account.
* `AccountTypeEnum_House`
  The account contains proprietary trading activity or
  positions, belonging to the firm that is the owner of
  the account.

### `data` `ActionEnum`

  The enumeration values to specify the actions
  associated with transactions.
* `ActionEnum_Cancel`
  A cancellation of a prior instance of the transaction
  event. The eventIdentifier has an associated version
  greater than 1.
* `ActionEnum_Correct`
  A correction of a prior instance of the transaction
  event. The eventIdentifier has an associated version
  greater than 1.
* `ActionEnum_New`
  A new instance of a transaction event, which is also
  characterized by the fact that the eventIdentifier
  has an associated version 1.

### `data` `AdditionalTypeEnum`

  The enumerated values to specify the Additional Type
  of transaction that can require the collection or
  delivery of initial margin under a given regulatory
  regime for the purposes of Covered Transactions, as
  specified in ISDA 2016 Credit Support Annex for
  Initial Margin, paragraph 13, General Principles,
  (b)(B).
* `AdditionalTypeEnum_EquityOptionOrIndexOption`
  Single stock equity option or index option
  transaction as referred to in the transitional
  provisions (if any) of the EMIR RTS.
* `AdditionalTypeEnum_NotApplicable`
  No Additional Type of transaction is applicable to
  the regulatory regulatory regime.
* `AdditionalTypeEnum_Other`

### `data` `AssetClassEnum`

  The enumerated values to specify the FpML asset class
  categorisation
* `AssetClassEnum_Commodity`
  Commodity.
* `AssetClassEnum_Credit`
  Credit.
* `AssetClassEnum_Equity`
  Equity.
* `AssetClassEnum_ForeignExchange`
  ForeignExchange.
* `AssetClassEnum_InterestRate`
  InterestRate.

### `data` `AssetTransferTypeEnum`

  The qualification of the type of asset transfer.
* `AssetTransferTypeEnum_tbd` `(`  `)`

### `data` `AveragingInOutEnum`

  The enumerated values to specify the type of
  averaging used in an Asian option.
* `AveragingInOutEnum_Both`
  The average price is used to derive both the strike
  and the expiration price.
* `AveragingInOutEnum_In`
  The average price is used to derive the strike price.
  Also known as &#39;Asian strike&#39; style option.
* `AveragingInOutEnum_Out`
  The average price is used to derive the expiration
  price. Also known as &#39;Asian price&#39; style
  option.

### `data` `AveragingMethodEnum`

  The enumerated values to specify the method of
  calculation to be used when averaging rates. Per ISDA
  2000 Definitions, Section 6.2. Certain Definitions
  Relating to Floating Amounts.
* `AveragingMethodEnum_Unweighted`
  The arithmetic mean of the relevant rates for each
  reset date.
* `AveragingMethodEnum_Weighted`
  The arithmetic mean of the relevant rates in effect
  for each day in a calculation period calculated by
  multiplying each relevant rate by the number of days
  such relevant rate is in effect, determining the sum
  of such products and dividing such sum by the number
  of days in the calculation period.

### `data` `BrokerConfirmationTypeEnum`

  The enumerated values to specify the type of Broker
  Confirm that the FpML trade represents.
* `BrokerConfirmationTypeEnum_ABX`
  Broker Confirmation Type representing ABX index
  trades.
* `BrokerConfirmationTypeEnum_AsiaCorporate`
  Broker Confirmation Type of Asia Corporate.
* `BrokerConfirmationTypeEnum_AsiaSovereign`
  Broker Confirmation Type of Asia Sovereign.
* `BrokerConfirmationTypeEnum_AustraliaCorporate`
  Broker Confirmation Type of Australia Corporate.
* `BrokerConfirmationTypeEnum_AustraliaSovereign`
  Broker Confirmation Type of Australia Sovereign.
* `BrokerConfirmationTypeEnum_CDSonLeveragedLoans`
  Broker Confirmation Type for use with Credit
  Derivative Transactions on Leveraged Loans.
* `BrokerConfirmationTypeEnum_CDSonMBS`
  Broker Confirmation Type for use with Credit
  Derivative Transactions on Mortgage-backed Security
  with Pay-As-You-Go or Physical Settlement.
* `BrokerConfirmationTypeEnum_CDXEmergingMarkets`
  Broker Confirmation Type for CDX Emerging Markets
  Untranched Transactions.
* `BrokerConfirmationTypeEnum_CDXEmergingMarketsDiversified`
  Broker Confirmation Type for CDX Emerging Markets
  Diversified Untranched Transactions.
* `BrokerConfirmationTypeEnum_CDXSwaption`
  Broker Confirmation Type for CDX Swaption
  Transactions.
* `BrokerConfirmationTypeEnum_CDXTranche`
  Broker Confirmation Type for Dow Jones CDX Tranche
  Transactions.
* `BrokerConfirmationTypeEnum_CMBX`
  Broker Confirmation Type representing CMBX index
  trades.
* `BrokerConfirmationTypeEnum_DJ_CDX_EM_`
  Broker Confirmation Type for CDS Index trades
  relating to Dow Jones CDX.EM index series.
* `BrokerConfirmationTypeEnum_DJ_CDX_NA`
  Broker Confirmation Type for CDS Index trades
  relating to Dow Jones CDX.NA.IG and Dow Jones
  CDX.NA.HY index series.
* `BrokerConfirmationTypeEnum_EmergingEuropeanAndMiddleEasternSovereign`
  Broker Confirmation Type of Emerging European and
  Middle Eastern Sovereign.
* `BrokerConfirmationTypeEnum_EmergingEuropeanCorporate`
  Broker Confirmation Type for EMERGING EUROPEAN
  CORPORATE.
* `BrokerConfirmationTypeEnum_EmergingEuropeanCorporateLPN`
  Broker Confirmation Type for EMERGING EUROPEAN
  CORPORATE LPN.
* `BrokerConfirmationTypeEnum_EuropeanCMBS`
  Broker Confirmation Type for Single Name European
  CMBS Transactions.
* `BrokerConfirmationTypeEnum_EuropeanCorporate`
  Broker Confirmation Type of European Corporate.
* `BrokerConfirmationTypeEnum_EuropeanRMBS`
  Broker Confirmation Type for Single Name European
  RMBS Transactions.
* `BrokerConfirmationTypeEnum_JapanCorporate`
  Broker Confirmation Type of Japan Corporate.
* `BrokerConfirmationTypeEnum_JapanSovereign`
  Broker Confirmation Type of Japan Sovereign.
* `BrokerConfirmationTypeEnum_LatinAmericaCorporate`
  Broker Confirmation Type of Latin America Corporate.
* `BrokerConfirmationTypeEnum_LatinAmericaCorporateBond`
  Broker Confirmation Type for LATIN AMERICA CORPORATE
  B.
* `BrokerConfirmationTypeEnum_LatinAmericaCorporateBondOrLoan`
  Broker Confirmation Type for LATIN AMERICA CORPORATE
  BL.
* `BrokerConfirmationTypeEnum_LatinAmericaSovereign`
  Broker Confirmation Type of Latin America Sovereign.
* `BrokerConfirmationTypeEnum_MBX`
  Broker Confirmation Type for MBX Transactions.
* `BrokerConfirmationTypeEnum_MCDX`
  Broker Confirmation Type for Municipal CDX Untranched
  Transactions.
* `BrokerConfirmationTypeEnum_NewZealandCorporate`
  Broker Confirmation Type of New Zealand Corporate.
* `BrokerConfirmationTypeEnum_NewZealandSovereign`
  Broker Confirmation Type of New Zealand Sovereign.
* `BrokerConfirmationTypeEnum_NorthAmericanCorporate`
  Broker ConfirmationType of North American Corporate.
* `BrokerConfirmationTypeEnum_PO`
  Broker Confirmation Type for PO Index Transactions.
* `BrokerConfirmationTypeEnum_SingaporeCorporate`
  Broker Confirmation Type of Singapore Corporate.
* `BrokerConfirmationTypeEnum_SingaporeSovereign`
  Broker Confirmation Type of Singapore Sovereign.
* `BrokerConfirmationTypeEnum_StandardAsiaCorporate`
  Broker Confirmation Type of STANDARD ASIA CORPORATE.
* `BrokerConfirmationTypeEnum_StandardAsiaSovereign`
  Broker Confirmation Type of STANDARD ASIA SOVEREIGN.
* `BrokerConfirmationTypeEnum_StandardAustraliaCorporate`
  Broker Confirmation Type of STANDARD AUSTRALIA
  CORPORATE.
* `BrokerConfirmationTypeEnum_StandardAustraliaSovereign`
  Broker Confirmation Type of STANDARD AUSTRALIA
  SOVEREIGN.
* `BrokerConfirmationTypeEnum_StandardCDXTranche`
  Broker Confirmation Type for Standard CDX Tranche
  Transactions.
* `BrokerConfirmationTypeEnum_StandardEmergingEuropeanAndMiddleEasternSovereign`
  Broker Confirmation Type of STANDARD EMERGING
  EUROPEAN AND MIDDLE EASTERN SOVEREIGN.
* `BrokerConfirmationTypeEnum_StandardEmergingEuropeanCorporate`
  Broker Confirmation Type of STANDARD EMERGING
  EUROPEAN CORPORATE.
* `BrokerConfirmationTypeEnum_StandardEmergingEuropeanCorporateLPN`
  Broker Confirmation Type of STANDARD EMERGING
  EUROPEAN CORPORATE LPN.
* `BrokerConfirmationTypeEnum_StandardEuropeanCorporate`
  Broker Confirmation Type for STANDARD EUROPEAN
  CORPORATE.
* `BrokerConfirmationTypeEnum_StandardJapanCorporate`
  Broker Confirmation Type of STANDARD JAPAN CORPORATE.
* `BrokerConfirmationTypeEnum_StandardJapanSovereign`
  Broker Confirmation Type of STANDARD JAPAN SOVEREIGN.
* `BrokerConfirmationTypeEnum_StandardLCDS`
  Standard Syndicated Secured Loan Credit Default Swap
  Broker Confirmation Type.
* `BrokerConfirmationTypeEnum_StandardLCDSBullet`
  Broker Confirmation Type for Standard Syndicated
  Secured Loan Credit Default Swap Bullet Transactions.
* `BrokerConfirmationTypeEnum_StandardLCDXBullet`
  Broker Confirmation Type for Standard Syndicated
  Secured Loan Credit Default Swap Index Bullet
  Transactions.
* `BrokerConfirmationTypeEnum_StandardLCDXBulletTranche`
  Broker Confirmation Type for Standard Syndicated
  Secured Loan Credit Default Swap Index Bullet Tranche
  Transactions.
* `BrokerConfirmationTypeEnum_StandardLatinAmericaCorporateBond`
  Broker Confirmation Type of STANDARD LATIN AMERICA
  CORPORATE B.
* `BrokerConfirmationTypeEnum_StandardLatinAmericaCorporateBondOrLoan`
  Broker Confirmation Type of STANDARD LATIN AMERICA
  CORPORATE BL.
* `BrokerConfirmationTypeEnum_StandardLatinAmericaSovereign`
  Broker Confirmation Type of STANDARD LATIN AMERICA
  SOVEREIGN.
* `BrokerConfirmationTypeEnum_StandardNewZealandCorporate`
  Broker Confirmation Type of STANDARD NEW ZEALAND
  CORPORATE.
* `BrokerConfirmationTypeEnum_StandardNewZealandSovereign`
  Broker Confirmation Type of STANDARD NEW ZEALAND
  SOVEREIGN.
* `BrokerConfirmationTypeEnum_StandardNorthAmericanCorporate`
  Broker Confirmation Type for STANDARD NORTH AMERICAN
  CORPORATE.
* `BrokerConfirmationTypeEnum_StandardSingaporeCorporate`
  Broker Confirmation Type of STANDARD SINGAPORE
  CORPORATE.
* `BrokerConfirmationTypeEnum_StandardSingaporeSovereign`
  Broker Confirmation Type of STANDARD SINGAPORE
  SOVEREIGN.
* `BrokerConfirmationTypeEnum_StandardSubordinatedEuropeanInsuranceCorporate`
  Broker Confirmation Type for STANDARD SUBORDINATED
  EUROPEAN INSURANCE CORPORATE.
* `BrokerConfirmationTypeEnum_StandardWesternEuropeanSovereign`
  Broker Confirmation Type for STANDARD WESTERN
  EUROPEAN SOVEREIGN.
* `BrokerConfirmationTypeEnum_StandardiTraxxEuropeTranche`
  Broker Confirmation Type for Standard iTraxx Europe
  Tranched Transactions.
* `BrokerConfirmationTypeEnum_SubordinatedEuropeanInsuranceCorporate`
  Broker Confirmation Type of Subordinated European
  Insurance Corporate.
* `BrokerConfirmationTypeEnum_SukukCorporate`
  Broker Confirmation Type of SUKUK CORPORATE.
* `BrokerConfirmationTypeEnum_SukukSovereign`
  Broker Confirmation Type of SUKUK SOVEREIGN.
* `BrokerConfirmationTypeEnum_SyndicatedSecuredLoanCDS`
  Syndicated Secured Loan Credit Default Swap Broker
  Confirmation Type.
* `BrokerConfirmationTypeEnum_TRX`
  Broker Confirmation Type for TRX Transactions.
* `BrokerConfirmationTypeEnum_TRX_II`
  Broker Confirmation Type for TRX.II Transactions.
* `BrokerConfirmationTypeEnum_USMunicipalFullFaithAndCredit`
  Broker Confirmation Type for U.S. MUNICIPAL FULL
  FAITH AND CREDIT.
* `BrokerConfirmationTypeEnum_USMunicipalGeneralFund`
  Broker Confirmation Type for U.S. MUNICIPAL GENERAL
  FUND.
* `BrokerConfirmationTypeEnum_USMunicipalRevenue`
  Broker Confirmation Type for U.S. MUNICIPAL REVENUE.
* `BrokerConfirmationTypeEnum_WesternEuropeanSovereign`
  Broker Confirmation Type of Western European
  Sovereign.
* `BrokerConfirmationTypeEnum_iTraxxAsiaExJapan`
  Broker Confirmation Type for iTraxx Asia Excluding
  Japan.
* `BrokerConfirmationTypeEnum_iTraxxAsiaExJapanSwaption`
  Broker Confirmation Type for iTraxx Asia Ex-Japan
  Swaption Transactions.
* `BrokerConfirmationTypeEnum_iTraxxAsiaExJapanTranche`
  Broker Confirmation Type for iTraxx Asia Excluding
  Japan Tranched Transactions.
* `BrokerConfirmationTypeEnum_iTraxxAustralia`
  Broker Confirmation Type for iTraxx Australia.
* `BrokerConfirmationTypeEnum_iTraxxAustraliaSwaption`
  Broker Confirmation Type for iTraxx Australia
  Swaption Transactions.
* `BrokerConfirmationTypeEnum_iTraxxAustraliaTranche`
  Broker Confirmation Type for iTraxx Australia
  Tranched Transactions.
* `BrokerConfirmationTypeEnum_iTraxxCJ`
  Broker Confirmation Type for iTraxx CJ.
* `BrokerConfirmationTypeEnum_iTraxxCJTranche`
  Broker Confirmation Type for iTraxx CJ Tranched
  Transactions.
* `BrokerConfirmationTypeEnum_iTraxxEurope`
  Broker Confirmation Type for iTraxx Europe
  Transactions
* `BrokerConfirmationTypeEnum_iTraxxEuropeSwaption`
  Broker Confirmation Type for iTraxx Europe Swaption
  Transactions.
* `BrokerConfirmationTypeEnum_iTraxxEuropeTranche`
  Broker Confirmation Type for iTraxx Europe Tranched
  Transactions.
* `BrokerConfirmationTypeEnum_iTraxxJapan`
  Broker Confirmation Type for iTraxx Japan.
* `BrokerConfirmationTypeEnum_iTraxxJapanSwaption`
  Broker Confirmation Type for iTraxx Japan Swaption
  Transactions.
* `BrokerConfirmationTypeEnum_iTraxxJapanTranche`
  Broker Confirmation Type for iTraxx Japan Tranched
  Transactions.
* `BrokerConfirmationTypeEnum_iTraxxLevX`
  Broker Confirmation Type for iTraxx LevX.
* `BrokerConfirmationTypeEnum_iTraxxSDI75`
  Broker Confirmation Type for iTraxx SDI 75
  Transactions.
* `BrokerConfirmationTypeEnum_iTraxxSovX`
  Broker Confirmation Type for iTraxx SovX.

### `data` `BusinessCenterEnum`

  The enumerated values to specify the business
  centers.
* `BusinessCenterEnum_AEAD`
  Abu Dhabi, United Arab Emirates
* `BusinessCenterEnum_AEDU`
  Dubai, United Arab Emirates
* `BusinessCenterEnum_AMYE`
  Yerevan, Armenia
* `BusinessCenterEnum_AOLU`
  Luanda, Angola
* `BusinessCenterEnum_ARBA`
  Buenos Aires, Argentina
* `BusinessCenterEnum_ATVI`
  Vienna, Austria
* `BusinessCenterEnum_AUAD`
  Adelaide,  Australia
* `BusinessCenterEnum_AUBR`
  Brisbane, Australia
* `BusinessCenterEnum_AUCA`
  Canberra, Australia
* `BusinessCenterEnum_AUDA`
  Darwin, Australia
* `BusinessCenterEnum_AUME`
  Melbourne, Australia
* `BusinessCenterEnum_AUPE`
  Perth, Australia
* `BusinessCenterEnum_AUSY`
  Sydney, Australia
* `BusinessCenterEnum_BBBR`
  Bridgetown, Barbados
* `BusinessCenterEnum_BDDH`
  Dhaka, Bangladesh
* `BusinessCenterEnum_BEBR`
  Brussels, Belgium
* `BusinessCenterEnum_BGSO`
  Sofia, Bulgaria
* `BusinessCenterEnum_BHMA`
  Manama, Bahrain
* `BusinessCenterEnum_BMHA`
  Hamilton, Bermuda
* `BusinessCenterEnum_BNBS`
  Bandar Seri Begawan, Brunei
* `BusinessCenterEnum_BOLP`
  La Paz, Bolivia
* `BusinessCenterEnum_BRBD`
  Brazil Business Day. This means a business day in any
  of Sao Paulo, Rio de Janeiro or Brasilia not
  otherwise declared as a financial market holiday by
  the Bolsa de Mercadorias &amp; Futuros (BM&amp;F)
* `BusinessCenterEnum_BRBR`
  Brasilia, Brazil
* `BusinessCenterEnum_BRRJ`
  Rio de Janeiro, Brazil
* `BusinessCenterEnum_BRSP`
  Sao Paulo, Brazil
* `BusinessCenterEnum_BSNA`
  Nassau, Bahamas
* `BusinessCenterEnum_BWGA`
  Gaborone, Botswana
* `BusinessCenterEnum_BYMI`
  Minsk, Belarus
* `BusinessCenterEnum_CACL`
  Calgary, Canada
* `BusinessCenterEnum_CAMO`
  Montreal, Canada
* `BusinessCenterEnum_CAOT`
  Ottawa, Canada
* `BusinessCenterEnum_CATO`
  Toronto, Canada
* `BusinessCenterEnum_CAVA`
  Vancouver, Canada
* `BusinessCenterEnum_CAWI`
  Winnipeg, Canada
* `BusinessCenterEnum_CHBA`
  Basel, Switzerland
* `BusinessCenterEnum_CHGE`
  Geneva, Switzerland
* `BusinessCenterEnum_CHZU`
  Zurich, Switzerland
* `BusinessCenterEnum_CIAB`
  Abidjan, Cote d&#39;Ivoire
* `BusinessCenterEnum_CLSA`
  Santiago, Chile
* `BusinessCenterEnum_CNBE`
  Beijing, China
* `BusinessCenterEnum_CNSH`
  Shanghai, China
* `BusinessCenterEnum_COBO`
  Bogota, Colombia
* `BusinessCenterEnum_CRSJ`
  San Jose, Costa Rica
* `BusinessCenterEnum_CYNI`
  Nicosia, Cyprus
* `BusinessCenterEnum_CZPR`
  Prague, Czech Republic
* `BusinessCenterEnum_DECO`
  Cologne, Germany
* `BusinessCenterEnum_DEDU`
  Dusseldorf, Germany
* `BusinessCenterEnum_DEFR`
  Frankfurt, Germany
* `BusinessCenterEnum_DEHH`
  Hamburg, Germany
* `BusinessCenterEnum_DELE`
  Leipzig, Germany
* `BusinessCenterEnum_DEMA`
  Mainz, Germany
* `BusinessCenterEnum_DEMU`
  Munich, Germany
* `BusinessCenterEnum_DEST`
  Stuttgart, Germany
* `BusinessCenterEnum_DKCO`
  Copenhagen, Denmark
* `BusinessCenterEnum_DOSD`
  Santo Domingo, Dominican Republic
* `BusinessCenterEnum_DZAL`
  Algiers, Algeria
* `BusinessCenterEnum_EETA`
  Tallinn, Estonia
* `BusinessCenterEnum_EGCA`
  Cairo, Egypt
* `BusinessCenterEnum_ESAS`
  ESAS Settlement Day (as defined in 2006 ISDA
  Definitions Section 7.1 and Supplement Number 15 to
  the 2000 ISDA Definitions)
* `BusinessCenterEnum_ESBA`
  Barcelona, Spain
* `BusinessCenterEnum_ESMA`
  Madrid, Spain
* `BusinessCenterEnum_ETAA`
  Addis Ababa, Ethiopia
* `BusinessCenterEnum_EUTA`
  TARGET (euro &#39;Business Center&#39;)
* `BusinessCenterEnum_FIHE`
  Helsinki, Finland
* `BusinessCenterEnum_FRPA`
  Paris, France
* `BusinessCenterEnum_GBED`
  Edinburgh, Scotland
* `BusinessCenterEnum_GBLO`
  London, United Kingdom
* `BusinessCenterEnum_GETB`
  Tbilisi, Georgia
* `BusinessCenterEnum_GGSP`
  Saint Peter Port, Guernsey
* `BusinessCenterEnum_GHAC`
  Accra, Ghana
* `BusinessCenterEnum_GRAT`
  Athens, Greece
* `BusinessCenterEnum_HKHK`
  Hong Kong, Hong Kong
* `BusinessCenterEnum_HNTE`
  Tegucigalpa, Honduras
* `BusinessCenterEnum_HRZA`
  Zagreb, Republic of Croatia
* `BusinessCenterEnum_HUBU`
  Budapest, Hungary
* `BusinessCenterEnum_IDJA`
  Jakarta, Indonesia
* `BusinessCenterEnum_IEDU`
  Dublin, Ireland
* `BusinessCenterEnum_ILJE`
  Jerusalem, Israel
* `BusinessCenterEnum_ILTA`
  Tel Aviv, Israel
* `BusinessCenterEnum_INBA`
  Bangalore, India
* `BusinessCenterEnum_INCH`
  Chennai, India
* `BusinessCenterEnum_INHY`
  Hyderabad, India
* `BusinessCenterEnum_INKO`
  Kolkata, India
* `BusinessCenterEnum_INMU`
  Mumbai, India
* `BusinessCenterEnum_INND`
  New Delhi, India
* `BusinessCenterEnum_IRTE`
  Tehran, Iran
* `BusinessCenterEnum_ISRE`
  Reykjavik, Iceland
* `BusinessCenterEnum_ITMI`
  Milan, Italy
* `BusinessCenterEnum_ITRO`
  Rome, Italy
* `BusinessCenterEnum_ITTU`
  Turin, Italy
* `BusinessCenterEnum_JESH`
  St. Helier, Channel Islands, Jersey
* `BusinessCenterEnum_JMKI`
  Kingston, Jamaica
* `BusinessCenterEnum_JOAM`
  Amman, Jordan
* `BusinessCenterEnum_JPTO`
  Tokyo, Japan
* `BusinessCenterEnum_KENA`
  Nairobi, Kenya
* `BusinessCenterEnum_KRSE`
  Seoul, Republic of Korea
* `BusinessCenterEnum_KWKC`
  Kuwait City, Kuwait
* `BusinessCenterEnum_KYGE`
  George Town, Cayman Islands
* `BusinessCenterEnum_KZAL`
  Almaty, Kazakhstan
* `BusinessCenterEnum_LBBE`
  Beirut, Lebanon
* `BusinessCenterEnum_LKCO`
  Colombo, Sri Lanka
* `BusinessCenterEnum_LULU`
  Luxembourg, Luxembourg
* `BusinessCenterEnum_LVRI`
  Riga, Latvia
* `BusinessCenterEnum_MACA`
  Casablanca, Morocco
* `BusinessCenterEnum_MARA`
  Rabat, Morocco
* `BusinessCenterEnum_MCMO`
  Monaco, Monaco
* `BusinessCenterEnum_MOMA`
  Macau, Macao
* `BusinessCenterEnum_MTVA`
  Valletta, Malta
* `BusinessCenterEnum_MUPL`
  Port Louis, Mauritius
* `BusinessCenterEnum_MVMA`
  Male, Maldives
* `BusinessCenterEnum_MWLI`
  Lilongwe, Malawi
* `BusinessCenterEnum_MXMC`
  Mexico City, Mexico
* `BusinessCenterEnum_MYKL`
  Kuala Lumpur, Malaysia
* `BusinessCenterEnum_MYLA`
  Labuan, Malaysia
* `BusinessCenterEnum_NAWI`
  Windhoek, Namibia
* `BusinessCenterEnum_NGAB`
  Abuja, Nigeria
* `BusinessCenterEnum_NGLA`
  Lagos, Nigeria
* `BusinessCenterEnum_NLAM`
  Amsterdam, Netherlands
* `BusinessCenterEnum_NLRO`
  Rotterdam, Netherlands
* `BusinessCenterEnum_NOOS`
  Oslo, Norway
* `BusinessCenterEnum_NPKA`
  Kathmandu, Nepal
* `BusinessCenterEnum_NYFD`
  New York Fed Business Day (as defined in 2006 ISDA
  Definitions Section 1.9 and 2000 ISDA Definitions
  Section 1.9)
* `BusinessCenterEnum_NYSE`
  New York Stock Exchange Business Day (as defined in
  2006 ISDA Definitions Section 1.10 and 2000 ISDA
  Definitions Section 1.10)
* `BusinessCenterEnum_NZAU`
  Auckland, New Zealand
* `BusinessCenterEnum_NZWE`
  Wellington, New Zealand
* `BusinessCenterEnum_OMMU`
  Muscat, Oman
* `BusinessCenterEnum_PAPC`
  Panama City, Panama
* `BusinessCenterEnum_PELI`
  Lima, Peru
* `BusinessCenterEnum_PHMA`
  Manila, Philippines
* `BusinessCenterEnum_PHMK`
  Makati, Philippines
* `BusinessCenterEnum_PKKA`
  Karachi, Pakistan
* `BusinessCenterEnum_PLWA`
  Warsaw, Poland
* `BusinessCenterEnum_PRSJ`
  San Juan, Puerto Rico
* `BusinessCenterEnum_PTLI`
  Lisbon, Portugal
* `BusinessCenterEnum_QADO`
  Doha, Qatar
* `BusinessCenterEnum_ROBU`
  Bucarest, Romania
* `BusinessCenterEnum_RSBE`
  Belgrade, Serbia
* `BusinessCenterEnum_RUMO`
  Moscow, Russian Federation
* `BusinessCenterEnum_SAAB`
  Abha, Saudi Arabia
* `BusinessCenterEnum_SAJE`
  Jeddah, Saudi Arabia
* `BusinessCenterEnum_SARI`
  Riyadh, Saudi Arabia
* `BusinessCenterEnum_SEST`
  Stockholm, Sweden
* `BusinessCenterEnum_SGSI`
  Singapore, Singapore
* `BusinessCenterEnum_SILJ`
  Ljubljana, Slovenia
* `BusinessCenterEnum_SKBR`
  Bratislava, Slovakia
* `BusinessCenterEnum_SNDA`
  Dakar, Senegal
* `BusinessCenterEnum_SVSS`
  San Salvador, El Salvador
* `BusinessCenterEnum_THBA`
  Bangkok, Thailand
* `BusinessCenterEnum_TNTU`
  Tunis, Tunisia
* `BusinessCenterEnum_TRAN`
  Ankara, Turkey
* `BusinessCenterEnum_TRIS`
  Istanbul, Turkey
* `BusinessCenterEnum_TTPS`
  Port of Spain, Trinidad and Tobago
* `BusinessCenterEnum_TWTA`
  Taipei, Taiwan
* `BusinessCenterEnum_TZDA`
  Dar es Salaam, Tanzania
* `BusinessCenterEnum_TZDO`
  Dodoma, Tanzania
* `BusinessCenterEnum_UAKI`
  Kiev, Ukraine
* `BusinessCenterEnum_UGKA`
  Kampala, Uganda
* `BusinessCenterEnum_USBO`
  Boston, Massachusetts, United States
* `BusinessCenterEnum_USCH`
  Chicago, United States
* `BusinessCenterEnum_USCR`
  Charlotte, North Carolina, United States
* `BusinessCenterEnum_USDC`
  Washington, District of Columbia, United States
* `BusinessCenterEnum_USDN`
  Denver, United States
* `BusinessCenterEnum_USDT`
  Detroit, Michigan, United States
* `BusinessCenterEnum_USGS`
  U.S. Government Securities Business Day (as defined
  in 2006 ISDA Definitions Section 1.11 and 2000 ISDA
  Definitions Section 1.11)
* `BusinessCenterEnum_USHL`
  Honolulu, Hawaii, United States
* `BusinessCenterEnum_USHO`
  Houston, United States
* `BusinessCenterEnum_USLA`
  Los Angeles, United States
* `BusinessCenterEnum_USMB`
  Mobile, Alabama, United States
* `BusinessCenterEnum_USMN`
  Minneapolis, United States
* `BusinessCenterEnum_USNY`
  New York, United States
* `BusinessCenterEnum_USPO`
  Portland, Oregon, United States
* `BusinessCenterEnum_USSA`
  Sacramento, California, United States
* `BusinessCenterEnum_USSE`
  Seattle, United States
* `BusinessCenterEnum_USWT`
  Wichita, United States
* `BusinessCenterEnum_UYMO`
  Montevideo, Uruguay
* `BusinessCenterEnum_VECA`
  Caracas, Venezuela
* `BusinessCenterEnum_VGRT`
  Road Town, Virgin Islands (British)
* `BusinessCenterEnum_VNHA`
  Hanoi, Vietnam
* `BusinessCenterEnum_VNHC`
  Ho Chi Minh (formerly Saigon), Vietnam
* `BusinessCenterEnum_YEAD`
  Aden, Yemen
* `BusinessCenterEnum_ZAJO`
  Johannesburg, South Africa
* `BusinessCenterEnum_ZMLU`
  Lusaka, Zambia
* `BusinessCenterEnum_ZWHA`
  Harare, Zimbabwe

### `data` `BusinessDayConventionEnum`

  The enumerated values to specify the convention for
  adjusting any relevant date if it would otherwise
  fall on a day that is not a valid business day.
* `BusinessDayConventionEnum_FOLLOWING`
  The non-business date will be adjusted to the first
  following day that is a business day
* `BusinessDayConventionEnum_FRN`
  Per 2000 ISDA Definitions, Section 4.11. FRN
  Convention; Eurodollar Convention. FRN is included
  here as a type of business day convention although it
  does not strictly fall within ISDA&#39;s definition
  of a Business Day Convention and does not conform to
  the simple definition given above.
* `BusinessDayConventionEnum_MODFOLLOWING`
  The non-business date will be adjusted to the first
  following day that is a business day unless that day
  falls in the next calendar month, in which case that
  date will be the first preceding day that is a
  business day.
* `BusinessDayConventionEnum_MODPRECEDING`
  The non-business date will be adjusted to the first
  preceding day that is a business day unless that day
  falls in the previous calendar month, in which case
  that date will be the first following day that us a
  business day.
* `BusinessDayConventionEnum_NEAREST`
  The non-business date will be adjusted to the nearest
  day that is a business day - i.e. if the non-business
  day falls on any day other than a Sunday or a Monday,
  it will be the first preceding day that is a business
  day, and will be the first following business day if
  it falls on a Sunday or a Monday.
* `BusinessDayConventionEnum_NONE`
  The date will not be adjusted if it falls on a day
  that is not a business day.
* `BusinessDayConventionEnum_NotApplicable`
  The date adjustments conventions are defined
  elsewhere, so it is not required to specify them
  here.
* `BusinessDayConventionEnum_PRECEDING`
  The non-business day will be adjusted to the first
  preceding day that is a business day.

### `data` `CalculationAgentPartyEnum`

  The enumerated values to specify how a calculation
  agent will be determined.
* `CalculationAgentPartyEnum_AsSpecifiedInMasterAgreement`
  The Calculation Agent is determined by reference to
  the relevant master agreement.
* `CalculationAgentPartyEnum_AsSpecifiedInStandardTermsSupplement`
  The Calculation Agent is determined by reference to
  the relevant standard terms supplement.
* `CalculationAgentPartyEnum_Both`
  Both parties with joined rights to be a calculation
  agent.
* `CalculationAgentPartyEnum_ExercisingParty`
  The party that gives notice of exercise. Per 2000
  ISDA Definitions, Section 11.1. Parties, paragraph
  (d).
* `CalculationAgentPartyEnum_NonExercisingParty`
  The party that is given notice of exercise. Per 2000
  ISDA Definitions, Section 11.1. Parties, paragraph
  (e).

### `data` `CashflowTypeEnum`

  The qualification of the type of cash flows
  associated with OTC derivatives contracts and their
  lifecycle events.
* `CashflowTypeEnum_AmendmentFee`
  A cash flow associated with an amendment lifecycle
  event.
* `CashflowTypeEnum_AssignmentFee`
  A cash flow resulting from the assignment of a
  contract to a new counterparty.
* `CashflowTypeEnum_BrokerageCommission`
  The brokerage commission.
* `CashflowTypeEnum_Coupon`
  A cash flow corresponding to the periodic accrued
  interests.
* `CashflowTypeEnum_CreditEvent`
  A cashflow resulting from a credit event.
* `CashflowTypeEnum_DividendReturn`
  A cash flow corresponding to the synthetic dividend
  of an equity underlier asset traded through a
  derivative instrument.
* `CashflowTypeEnum_ExerciseFee`
  A cash flow associated with an exercise lifecycle
  event.
* `CashflowTypeEnum_Fee`
  A generic term for describing a non-scheduled
  cashflow that can be associated either with the
  initial contract, with some later corrections to it
  (e.g. a correction to the day count fraction that has
  a cashflow impact) or with some lifecycle events.
  Fees that are specifically associated with
  termination and partial termination, increase,
  amendment, and exercise events are qualified
  accordingly.
* `CashflowTypeEnum_IncreaseFee`
  A cash flow associated with an increase lifecycle
  event.
* `CashflowTypeEnum_Interest`
  Interest, without qualification as to whether it a
  gross or net interest relates cashflow.
* `CashflowTypeEnum_InterestReturn`
  A cash flow corresponding to the return of the
  interest rate portion of a derivative instrument that
  has different types of underlying assets, such as a
  total return swap.
* `CashflowTypeEnum_NetInterest`
  Net interest across payout components. Applicable to
  products such as interest rate swaps.
* `CashflowTypeEnum_NovationFee`
  The novation fee.
* `CashflowTypeEnum_PartialTerminationFee`
  A cash flow associated with a partial termination
  lifecycle event.
* `CashflowTypeEnum_Premium`
  The premium associated with an OTC contract such as
  an option or a cap/floor.
* `CashflowTypeEnum_PriceReturn`
  A cash flow corresponding to the return of the price
  portion of a derivative instrument that has different
  types of underlying assets, such as a total return
  swap.
* `CashflowTypeEnum_PrincipalExchange`
  A cash flow which amount typically corresponds to the
  notional of the contract and that is exchanged
  between the parties on trade inception and reverted
  back when the contract is terminated.
* `CashflowTypeEnum_TerminationFee`
  A cash flow associated with a termination lifecycle
  event.
* `CashflowTypeEnum_UpfrontFee`
  An upfront cashflow associated to the swap to adjust
  for a difference between the swap price and the
  current market price.

### `data` `CategoryEnum`

  The enumerated values to specify the type of
  organisation involved in the transaction.
* `CategoryEnum_Agent`
  The trade or trade report represents the information
  from the perspective of the sender of the report,
  typically a clearing member firm or dealer (acting as
  an agent).
* `CategoryEnum_Counterparty`
  The trade or trade report represents the information
  from the perspective of the counterparty of the
  sender of the report, which is typically a clearing
  member firm or dealer.
* `CategoryEnum_Customer`
  The trade or trade report represents the information
  from the perspective of a client opposite the sender
  of the report, which is typically a clearing member
  firm or dealer.
* `CategoryEnum_Principal`
  The trade or trade report represents the information
  from the perspective of the sender of the report,
  typically a clearing member firm or dealer (acting as
  a principal).

### `data` `ClosedStateEnum`

  The enumerated values to specify what led to the
  contract or execution closure.
* `ClosedStateEnum_Allocated`
  The execution or contract has been allocated.
* `ClosedStateEnum_Cancelled`
  The execution or contract has been cancelled.
* `ClosedStateEnum_Exercised`
  The (option) contract has been exercised.
* `ClosedStateEnum_Expired`
  The (option) contract has expired without being
  exercised.
* `ClosedStateEnum_Matured`
  The contract has reached its contractual termination
  date.
* `ClosedStateEnum_Novated`
  The contract has been novated. This state applies to
  the stepped-out contract component of the novation
  event.
* `ClosedStateEnum_Terminated`
  The contract has been subject of an early termination
  event.

### `data` `CollateralAssetDefinitionsEnum`

  The ISDA Collateral Assets Definitions as published
  by ISDA in the 2003 ISDA Collateral Asset
  Definitions.
* `CollateralAssetDefinitionsEnum_AU_CASH`
  Australian Dollar (AUD) Cash.
* `CollateralAssetDefinitionsEnum_AU_CIB`
  Australian Government Securities Capital-Indexed
  Bonds.
* `CollateralAssetDefinitionsEnum_AU_FIB`
  Australian Semi-Government Securities Fixed Interest
  Bonds.
* `CollateralAssetDefinitionsEnum_AU_FRB`
  Australian Government Securities Fixed Rate Bonds.
* `CollateralAssetDefinitionsEnum_AU_ILB`
  Australian Semi-Government Securities Index Linked
  Bonds.
* `CollateralAssetDefinitionsEnum_AU_NOTE`
  Australian Government Securities Treasury Notes.
* `CollateralAssetDefinitionsEnum_AU_STATENOTE`
  Australian Semi-Government Securities Treasury Notes.
* `CollateralAssetDefinitionsEnum_AU_TAB`
  Australian Government Securities Treasury Adjustable
  Rate Bonds.
* `CollateralAssetDefinitionsEnum_BE_BEL20`
  BEL20 Equity Securities.
* `CollateralAssetDefinitionsEnum_BE_CERT`
  Belgian Treasury Certificates.
* `CollateralAssetDefinitionsEnum_BE_LINEAR`
  Belgian Linear Obligations.
* `CollateralAssetDefinitionsEnum_BE_NOTE`
  Belgian Treasury notes.
* `CollateralAssetDefinitionsEnum_BE_REGIONGT`
  Public sector issues guaranteed by Regional
  Authorities.
* `CollateralAssetDefinitionsEnum_BE_STATEGT`
  Public sector issues guaranteed by the Belgian State.
* `CollateralAssetDefinitionsEnum_BE_STATELOAN`
  Belgian State Loans.
* `CollateralAssetDefinitionsEnum_CA_BOND`
  Canada Bonds.
* `CollateralAssetDefinitionsEnum_CA_CASH`
  Canadian Dollar (CAD) Cash.
* `CollateralAssetDefinitionsEnum_CA_RRB`
  Government of Canada Real Return Bonds.
* `CollateralAssetDefinitionsEnum_CA_TBILL`
  Government of Canada Treasury Bills.
* `CollateralAssetDefinitionsEnum_CH_CANTON`
  Public Authority Bond.
* `CollateralAssetDefinitionsEnum_CH_CASH`
  Swiss Franc (CHF) Cash.
* `CollateralAssetDefinitionsEnum_CH_FEDBOND`
  Federal Bond.
* `CollateralAssetDefinitionsEnum_DE_BILL`
  Unverzinsliche Schatzanweisungen (Bills).
* `CollateralAssetDefinitionsEnum_DE_BOND`
  Bundesanleihen (Bonds).
* `CollateralAssetDefinitionsEnum_DE_ERBLAST`
  Negotiable Debt Obligations issued by or taken over
  and since serviced and managed by the
  Erblasttilgungsfond (Redemption Fund for Inherited
  Liabilities) backed by Federal Republic of Germany,
  including but not limited to former issues of the
  Treuhandanstalt, the Bundesbahn, the Bundespost, the
  Economic Recovery Program (ERP), the privatised
  Federal Railway (Bahn AG), the telecommunications
  element of the Federal Post Office (Telekom) and the
  German Unity Fund.
* `CollateralAssetDefinitionsEnum_DE_MUNI`
  Kommunalschuldverschreibungen (Municipal Bonds).
* `CollateralAssetDefinitionsEnum_DE_NOTE2`
  Bundesschatzanweisungen (Notes).
* `CollateralAssetDefinitionsEnum_DE_NOTE5_5`
  Bundesobligationen (Notes).
* `CollateralAssetDefinitionsEnum_DE_PFAND`
  Hypothekenpfandbriefe (Mortgage Bonds).
* `CollateralAssetDefinitionsEnum_DK_BILL`
  Skatkammerbeviser (Treasury Bills).
* `CollateralAssetDefinitionsEnum_DK_BOLIGX`
  BoligX obligationer.
* `CollateralAssetDefinitionsEnum_DK_BOND`
  Statsobligationer (Government Bonds).
* `CollateralAssetDefinitionsEnum_DK_CALLMORT`
  Callable Mortgage Bonds.
* `CollateralAssetDefinitionsEnum_DK_CASH`
  Danish Krone (DKK) Cash.
* `CollateralAssetDefinitionsEnum_DK_KFX`
  KFX Equity Securities.
* `CollateralAssetDefinitionsEnum_DK_MORT`
  Non-callable Mortgage Bonds.
* `CollateralAssetDefinitionsEnum_DK_NOTE`
  Statsgaeldsbeviser (Treasury Notes).
* `CollateralAssetDefinitionsEnum_ES_BILL`
  Treasury Bills - Letras del Tesoro.
* `CollateralAssetDefinitionsEnum_ES_BOND`
  Public Government Debt.
* `CollateralAssetDefinitionsEnum_ES_CEDULAS`
  Cedulas.
* `CollateralAssetDefinitionsEnum_ES_CORP`
  Corporate Bonds.
* `CollateralAssetDefinitionsEnum_ES_EQUITY`
  Equity securities issued by a Spanish company, and
  listed as an IBEX 35 constituent company as reported
  by the Sociedad de Bolsas, each share representing
  the minimum unit of participation of a shareholder in
  the stock capital of the company.
* `CollateralAssetDefinitionsEnum_EU_CASH`
  Euro (EUR) Cash.
* `CollateralAssetDefinitionsEnum_EU_EURO100`
  FTSE Euro 100 Index Equity Securities.
* `CollateralAssetDefinitionsEnum_EU_EUROTOP300`
  FTSE Eurotop 300 Index Equity Securities.
* `CollateralAssetDefinitionsEnum_EU_STOXX50`
  EuroSTOXX 50 Index Equity Securities.
* `CollateralAssetDefinitionsEnum_EU_STOXX600`
  STOXX 600 Index Equity Securities.
* `CollateralAssetDefinitionsEnum_FI_BILL`
  Treasury bills.
* `CollateralAssetDefinitionsEnum_FI_BOND`
  Serial bonds (Finnish Government Bond).
* `CollateralAssetDefinitionsEnum_FI_HEX`
  HEX Equity Securities.
* `CollateralAssetDefinitionsEnum_FR_BDT`
  Commercial Paper: (Billet de Trésorerie).
* `CollateralAssetDefinitionsEnum_FR_BTAN`
  Treasury Notes: Bons du Trésor à Taux Annuel (BTAN).
* `CollateralAssetDefinitionsEnum_FR_BTF`
  Treasury Bills: Bons du Trésor à Taux Fixe (BTF).
* `CollateralAssetDefinitionsEnum_FR_OAT`
  Government bonds: Obligations Assimilables du Trésor
  (OAT).
* `CollateralAssetDefinitionsEnum_FR_STRIP`
  STRIPS.
* `CollateralAssetDefinitionsEnum_GA_AU_GOV`
  Generally Accepted Australian Government Obligations.
* `CollateralAssetDefinitionsEnum_GA_BE_GOV`
  Generally Accepted Belgian Government Obligations.
* `CollateralAssetDefinitionsEnum_GA_CA_GOV`
  Generally Accepted Canadian Government Obligations.
* `CollateralAssetDefinitionsEnum_GA_CH_GOV`
  Generally Accepted Swiss Government Obligations.
* `CollateralAssetDefinitionsEnum_GA_DE_GOV`
  Generally Accepted German Government Obligations.
* `CollateralAssetDefinitionsEnum_GA_DK_GOV`
  Generally Accepted Danish Government Obligations.
* `CollateralAssetDefinitionsEnum_GA_ES_GOV`
  Generally Accepted Spanish Government Obligations.
* `CollateralAssetDefinitionsEnum_GA_EUROZONE_GOV`
  Generally Accepted Euro Zone Government Securities.
* `CollateralAssetDefinitionsEnum_GA_EU_GOV`
  Generally Accepted EU Member State Government
  Securities.
* `CollateralAssetDefinitionsEnum_GA_FI_GOV`
  Generally Accepted Finnish Government Obligations.
* `CollateralAssetDefinitionsEnum_GA_FR_GOV`
  Generally Accepted French Government Obligations.
* `CollateralAssetDefinitionsEnum_GA_G5_GOV`
  Generally Accepted G5 Government Obligations.
* `CollateralAssetDefinitionsEnum_GA_GB_GOV`
  Generally Accepted British Government Obligations.
* `CollateralAssetDefinitionsEnum_GA_HK_GOV`
  Generally Accepted Hong Kong Government Obligations.
* `CollateralAssetDefinitionsEnum_GA_IT_GOV`
  Generally Accepted Italian Government Obligations.
* `CollateralAssetDefinitionsEnum_GA_JP_GOV`
  Generally Accepted Japanese Government Obligations.
* `CollateralAssetDefinitionsEnum_GA_KR_GOV`
  Generally Accepted Korean Government Obligations.
* `CollateralAssetDefinitionsEnum_GA_NL_GOV`
  Generally Accepted Netherlands Government
  Obligations.
* `CollateralAssetDefinitionsEnum_GA_NO_GOV`
  Generally Accepted Norwegian Government Obligations.
* `CollateralAssetDefinitionsEnum_GA_NZ_GOV`
  Generally Accepted New Zealand Government
  Obligations.
* `CollateralAssetDefinitionsEnum_GA_SE_GOV`
  Generally Accepted Swedish Government Obligations.
* `CollateralAssetDefinitionsEnum_GA_SG_GOV`
  Generally Accepted Singaporean Government
  Obligations.
* `CollateralAssetDefinitionsEnum_GA_US_AGENCY`
  Generally Accepted US Agency Obligations.
* `CollateralAssetDefinitionsEnum_GA_US_GOV`
  Generally Accepted US Government Obligations.
* `CollateralAssetDefinitionsEnum_GA_US_MORTGAGES`
  Generally Accepted US Mortgage-Backed Obligations.
* `CollateralAssetDefinitionsEnum_GB_CASH`
  British Pound Sterling (GBP) Cash.
* `CollateralAssetDefinitionsEnum_GB_DDGILT`
  Double-dated Gilts.
* `CollateralAssetDefinitionsEnum_GB_FT100`
  FTSE 100 Equity Securities.
* `CollateralAssetDefinitionsEnum_GB_FT250`
  FTSE 250 Equity Securities.
* `CollateralAssetDefinitionsEnum_GB_FT350`
  FTSE 350 Equity Securities.
* `CollateralAssetDefinitionsEnum_GB_GILT`
  Conventional Gilts.
* `CollateralAssetDefinitionsEnum_GB_INDEXGILT`
  Index-Linked Gilts.
* `CollateralAssetDefinitionsEnum_GB_PERPGILT`
  Undated or Perpetual Gilts.
* `CollateralAssetDefinitionsEnum_GB_RUMPGILT`
  Rump Stock.
* `CollateralAssetDefinitionsEnum_GB_SUPR1`
  Bank of England Euro Bills.
* `CollateralAssetDefinitionsEnum_GB_SUPR2`
  Bank of England Euro Notes.
* `CollateralAssetDefinitionsEnum_GB_TBILL`
  UK Treasury Bills.
* `CollateralAssetDefinitionsEnum_GB_ZEROGILT`
  Gilt Strips or Zero Coupon Gilts.
* `CollateralAssetDefinitionsEnum_HK_BILL`
  Hong Kong Government Exchange Fund Bills.
* `CollateralAssetDefinitionsEnum_HK_CASH`
  Hong Kong Dollar (HKD) Cash.
* `CollateralAssetDefinitionsEnum_HK_NOTE`
  Hong Kong Government Exchange Fund Notes.
* `CollateralAssetDefinitionsEnum_IT_BOT`
  Botbuoni Ordinari del Tesoro (BOT) zero coupon debt
  securities issued by the Italian Treasury with
  maturities up to 365 days.
* `CollateralAssetDefinitionsEnum_IT_BTP`
  Buoni del Tesoro Poliennali fixed interest
  semi-annual debt securities issued by the Italian
  Treasury with original maturities between 3 and 30
  years.
* `CollateralAssetDefinitionsEnum_IT_CCT`
  Certificati di Credito del Tesoro a Cedola Variable
  (CCT) or floating rate interest bearing debt
  securities issued by the Italian Treasury.
* `CollateralAssetDefinitionsEnum_IT_CORP`
  Corporate bonds.
* `CollateralAssetDefinitionsEnum_IT_CTZ`
  Certificati del Tesoro zero coupon debt securities
  issued by the Italian Treasury with maturities
  between 18 and 24 months.
* `CollateralAssetDefinitionsEnum_IT_MIB30`
  MIB30 Equity Securities.
* `CollateralAssetDefinitionsEnum_IT_REP`
  Debt securities issued and marketed by the Republic
  of Italy outside the Italian market, traded as
  Eurobonds.
* `CollateralAssetDefinitionsEnum_JP_CASH`
  Japanese Yen (JPY) Cash.
* `CollateralAssetDefinitionsEnum_JP_CORPORATE`
  Corporate bonds including straight bonds.
* `CollateralAssetDefinitionsEnum_JP_CP`
  Commercial Paper.
* `CollateralAssetDefinitionsEnum_JP_EQUITY`
  Equity securities issued by a Japanese company, each
  share representing the minimum unit of participation
  of a partner in the stock capital of the company.
* `CollateralAssetDefinitionsEnum_JP_EUROBOND`
  Yen-denominated foreign bonds.
* `CollateralAssetDefinitionsEnum_JP_JGB`
  Japanese Government Bonds.
* `CollateralAssetDefinitionsEnum_KR_BOND`
  Korean Treasury Bonds.
* `CollateralAssetDefinitionsEnum_KR_CASH`
  Korean Won (KRW) Cash.
* `CollateralAssetDefinitionsEnum_KR_EXIM`
  Non Korean Won denominated Export-Import Bank of
  Korea bonds.
* `CollateralAssetDefinitionsEnum_KR_KDICKRW`
  Korean Development Insurance Corporation Bonds
  (Korean Won denominated).
* `CollateralAssetDefinitionsEnum_KR_KDR`
  Non-Korean Won denominated Korea Development Bank
  bonds (KDBs).
* `CollateralAssetDefinitionsEnum_KR_KEPCO`
  KEPCO bonds.
* `CollateralAssetDefinitionsEnum_KR_MSB`
  Monetary Stabilisation Bonds.
* `CollateralAssetDefinitionsEnum_KR_NHC`
  Non Korean Won denominated Korea National Housing
  Corporation bonds (KNHCs).
* `CollateralAssetDefinitionsEnum_KR_ROK`
  Non-Korean Won denominated Republic of Korea bonds
  (ROKs).
* `CollateralAssetDefinitionsEnum_NL_AEX`
  AEX Equity Securities.
* `CollateralAssetDefinitionsEnum_NL_BILL`
  Dutch Treasury Certificates.
* `CollateralAssetDefinitionsEnum_NL_BOND`
  Dutch State Loans.
* `CollateralAssetDefinitionsEnum_NO_BOND`
  Norwegian Government Bonds.
* `CollateralAssetDefinitionsEnum_NO_CASH`
  Norwegian Krone (NOK) Cash.
* `CollateralAssetDefinitionsEnum_NO_OBX`
  OBX Equity Securities.
* `CollateralAssetDefinitionsEnum_NO_TBILL`
  Norwegian T-Bills.
* `CollateralAssetDefinitionsEnum_NZ_BOND`
  New Zealand Government Bonds.
* `CollateralAssetDefinitionsEnum_NZ_CASH`
  New Zealand Dollar (NZD) Cash.
* `CollateralAssetDefinitionsEnum_NZ_TBILL`
  New Zealand Government Treasury Bills.
* `CollateralAssetDefinitionsEnum_SE_CASH`
  Swedish Krona (SEK) Cash.
* `CollateralAssetDefinitionsEnum_SE_GOVT`
  Swedish Government Bonds (SGB).
* `CollateralAssetDefinitionsEnum_SE_ILGOVT`
  Swedish Index Linked Government bonds.
* `CollateralAssetDefinitionsEnum_SE_MORT`
  Swedish Mortgage Bonds.
* `CollateralAssetDefinitionsEnum_SE_OMX`
  OMX Equity Securities.
* `CollateralAssetDefinitionsEnum_SE_TBILL`
  Swedish Treasury Bills (STB).
* `CollateralAssetDefinitionsEnum_SG_BOND`
  Singapore Government (SGS) Bonds.
* `CollateralAssetDefinitionsEnum_SG_CASH`
  Singapore Dollar (SGD) Cash.
* `CollateralAssetDefinitionsEnum_SG_TBILL`
  Singapore Government T-Bills (T-Bills).
* `CollateralAssetDefinitionsEnum_SU_IADB`
  Inter-American Development Bank Bonds.
* `CollateralAssetDefinitionsEnum_SU_IBRDDN`
  International Bank for Reconstruction and Development
  (World Bank) Discount Notes.
* `CollateralAssetDefinitionsEnum_SU_IBRDGB`
  International Bank for Reconstruction and Development
  (World Bank or IBRD) Global Benchmark Bonds.
* `CollateralAssetDefinitionsEnum_US_ARM`
  Adjustable Rate Mortgage (ARM) Bonds.
* `CollateralAssetDefinitionsEnum_US_CASH`
  United States of America Dollar (USD) Cash.
* `CollateralAssetDefinitionsEnum_US_DERIV`
  REMICs, CMOs and other derivative structures.
* `CollateralAssetDefinitionsEnum_US_DOW`
  Dow Jones Industrial Average Equity Securities.
* `CollateralAssetDefinitionsEnum_US_DOW_COMP`
  Dow Jones Composite Average Equity Securities.
* `CollateralAssetDefinitionsEnum_US_DOW_TRAN`
  Dow Jones TransportationAverage Equity Securities.
* `CollateralAssetDefinitionsEnum_US_DOW_UTIL`
  Dow Jones Utilities Average Equity Securities.
* `CollateralAssetDefinitionsEnum_US_FAMC`
  Federal Agricultural Mortgage Corp (Farmer Mac)
  Bonds.
* `CollateralAssetDefinitionsEnum_US_FCS`
  Farm Credit System (FCS) Bonds.
* `CollateralAssetDefinitionsEnum_US_FCSFAC`
  Farm Credit System Financial Assistance Corporation
  (FCSFAC) Bonds.
* `CollateralAssetDefinitionsEnum_US_FHLB`
  Callable Agency Debt – Federal Home Loan Bank (FHLB).
* `CollateralAssetDefinitionsEnum_US_FHLBNC`
  Non-Callable Federal Home Loan Bank Debt.
* `CollateralAssetDefinitionsEnum_US_FHLBNCDN`
  Non-Callable Federal Home Loan Bank Discount Notes.
* `CollateralAssetDefinitionsEnum_US_FHLMC`
  Callable Agency Debt – the Federal Home Loan Mortgage
  Corporation (FHLMC or Freddie Mac).
* `CollateralAssetDefinitionsEnum_US_FHLMCMBS`
  Federal Home Loan Mortgage Corporation Certificates –
  Mortgage Backed Securities.
* `CollateralAssetDefinitionsEnum_US_FICO`
  Financing Corp (FICO) Bonds.
* `CollateralAssetDefinitionsEnum_US_FNMA`
  Callable Agency Debt – Federal National Mortgage
  Association (FNMA or Fannie Mae).
* `CollateralAssetDefinitionsEnum_US_FNMAMBS`
  Federal National Mortgage Association Certificates –
  Mortgage Backed Securities.
* `CollateralAssetDefinitionsEnum_US_GNMA`
  Callable Agency Debt – Government National Mortgage
  Association (GNMA).
* `CollateralAssetDefinitionsEnum_US_GNMAMBS`
  Government National Mortgage Association Certificates
  – Mortgage Backed Securities (GNMA or Ginnie Mae)
* `CollateralAssetDefinitionsEnum_US_LEHM_BOND`
  Lehman Brothers Credit Bond Index Debt Securities.
* `CollateralAssetDefinitionsEnum_US_NAS_100`
  NASDAQ-100 Index Equity Securities.
* `CollateralAssetDefinitionsEnum_US_NAS_COMP`
  NASDAQ Composite Index Equity Securities.
* `CollateralAssetDefinitionsEnum_US_NCAD`
  Non-Callable Agency Debt – Various Issuers.
* `CollateralAssetDefinitionsEnum_US_NCADN`
  Non-Callable Agency Discount Notes – Various Issuers.
* `CollateralAssetDefinitionsEnum_US_NYSE_COMP`
  NYSE Composite Index Equity Securities.
* `CollateralAssetDefinitionsEnum_US_REFCORP`
  Resolution Funding Corp (REFCorp) Bonds.
* `CollateralAssetDefinitionsEnum_US_SLMA`
  Student Loan Marketing Association (Sallie Mae)
  Bonds.
* `CollateralAssetDefinitionsEnum_US_STRIP`
  US Treasury Strips.
* `CollateralAssetDefinitionsEnum_US_S_P100`
  Standard &amp; Poor’s 100 Index Equity Securities.
* `CollateralAssetDefinitionsEnum_US_S_P400`
  Standard &amp; Poor’s Midcap 400 Equity Securities.
  corporations that are included within the Standard
  And Poor&#39;s Midcap 400 Index published by Standard
  And Poor&#39;s, a division of The McGraw-Hill
  Companies, Inc.
* `CollateralAssetDefinitionsEnum_US_S_P500`
  Standard &amp;  Poor’s 500 Index Equity Securities.
* `CollateralAssetDefinitionsEnum_US_S_P600`
  Standard &amp; Poor’s Smallcap 600 Index Equity
  Securities.
* `CollateralAssetDefinitionsEnum_US_TBILL`
  US Treasury Bills.
* `CollateralAssetDefinitionsEnum_US_TBOND`
  US Treasury Bonds.
* `CollateralAssetDefinitionsEnum_US_TIPS`
  US Treasury Inflation Protected Issues (TIPS).
* `CollateralAssetDefinitionsEnum_US_TNOTE`
  US Treasury Notes.
* `CollateralAssetDefinitionsEnum_US_TVA`
  Tennessee Valley Authority (TVA) Bonds.

### `data` `CommodityReferencePriceEnum`

  The enumeration values to specify the Commodity
  Reference Prices specified in the Annex to the 2005
  ISDA Commodity Definitions.
* `CommodityReferencePriceEnum_ALUMINIUM_ALLOY_LME_15_MONTH`
  Per 2005 ISDA Commodity Definitions, Sub-Annex A,
  Section 7.1 Commodity Reference Prices, as amended
  and supplemented through the date on which parties
  enter into the relevant transaction.
* `CommodityReferencePriceEnum_COAL_CENTRAL_APPALACHIAN_NYMEX`
  A code for the NYMEX Central Appalachian Coal
  commodity
* `CommodityReferencePriceEnum_COCOA_ICE`
  A code for the ICE Futures U.S. (‘ICUS’) Cocoa
  commodity
* `CommodityReferencePriceEnum_COFFEE_ARABICA_ICE`
  A code for the ICUS Coffee C commodity
* `CommodityReferencePriceEnum_COFFEE_ROBUSTA_ICE`
  A code for the ICUS Coffee C commodity
* `CommodityReferencePriceEnum_COPPER_COMEX`
  A code for the COMEX (‘CMX’) Copper Grade #1
  commodity
* `CommodityReferencePriceEnum_CORN_CBOT`
  A code for the Chicago Board of Trade (‘CBOT’) Corn
  commodity
* `CommodityReferencePriceEnum_COTTON_NO__2_ICE`
  A code for the ICUS Cotton No. 2 commodity
* `CommodityReferencePriceEnum_ETHANOL_CBOT`
  A code for the CBOT Ethanol commodity
* `CommodityReferencePriceEnum_FEEDER_CATTLE_CME`
  A code for the CME Feeder Cattle commodity
* `CommodityReferencePriceEnum_FROZEN_CONCENTRATED_ORANGE_JUICE_NO__1_ICE`
  A code for the ICUS Frozen Concentrated Orange Juice
  commodity
* `CommodityReferencePriceEnum_GASOLINE_RBOB_NEW_YORK_ICE`
  A code for the NYMEX Gasoline Blendstock (RBOB)
  commodity
* `CommodityReferencePriceEnum_GASOLINE_RBOB_NEW_YORK_NYMEX`
  A code for the NYMEX Gasoline Blendstock (RBOB)
  commodity
* `CommodityReferencePriceEnum_GOLD_COMEX`
  A code for the CMX Gold commodity
* `CommodityReferencePriceEnum_HEATING_OIL_NEW_YORK_NYMEX`
  A code for the NYMEX No. 2 Heating Oil, New York
  Harbor commodity
* `CommodityReferencePriceEnum_LEAN_HOGS_CME`
  A code for the CME Lean Hogs commodity
* `CommodityReferencePriceEnum_LIVE_CATTLE_CME`
  A code for the CME Live Cattle commodity
* `CommodityReferencePriceEnum_LUMBER_CME`
  A code for the CME Random Length Lumber commodity
* `CommodityReferencePriceEnum_MILK_CLASS_III_CME`
  A code for the CME Milk Class III commodity
* `CommodityReferencePriceEnum_MILK_NONFAT_DRY_CME`
  A code for the CME Non Fat Dry Milk commodity
* `CommodityReferencePriceEnum_NATURAL_GAS_NYMEX`
  A code for the NYMEX Natural Gas commodity
* `CommodityReferencePriceEnum_NATURAL_GAS_PEPL__TEXOK_MAINLINE__INSIDE_FERC`
  A code for the NYMEX Panhandle Basis Swap commodity
* `CommodityReferencePriceEnum_NATURAL_GAS_W__TEXAS__WAHA__INSIDE_FERC`
  A code for the NYMEX Waha Basis Swap commodity
* `CommodityReferencePriceEnum_OATS_CBOT`
  A code for the CBOT Oats commodity
* `CommodityReferencePriceEnum_OIL_WTI_NYMEX`
  A code for the NYMEX Crude Oil, Light Sweet commodity
* `CommodityReferencePriceEnum_PALLADIUM_NYMEX`
  A code for the NYMEX Palladium commodity
* `CommodityReferencePriceEnum_PLATINUM_NYMEX`
  A code for the NYMEX Platinum commodity
* `CommodityReferencePriceEnum_RICE_CBOT`
  A code for the CBOT Rough Rice commodity
* `CommodityReferencePriceEnum_SILVER_COMEX`
  A code for the CMX Silver commodity
* `CommodityReferencePriceEnum_SOYBEANS_CBOT`
  A code for the CBOT Soybeans commodity
* `CommodityReferencePriceEnum_SOYBEAN_MEAL_CBOT`
  A code for the CBOT Soybean Meal commodity
* `CommodityReferencePriceEnum_SOYBEAN_OIL_CBOT`
  A code for the CBOT Soybean Oil commodity
* `CommodityReferencePriceEnum_SUGAR___11__WORLD__ICE`
  A code for the ICUS Sugar No. 11 commodity
* `CommodityReferencePriceEnum_SUGAR___16__US__ICE`
  A code for the ICUS Sugar No. 16 commodity
* `CommodityReferencePriceEnum_WHEAT_CBOT`
  A code for the CBOT Wheat commodity
* `CommodityReferencePriceEnum_WHEAT_HRW_KCBOT`
  A code for the Kansas City Board of Trade
  (‘KCBT’)Wheat commodity
* `CommodityReferencePriceEnum_WHEAT_RED_SPRING_MGE`
  A code for the Wheat commodity

### `data` `CompoundingMethodEnum`

  The enumerated values to specify the type of
  compounding, e.g. flat, straight.
* `CompoundingMethodEnum_Flat`
  Flat compounding. Compounding excludes the spread.
  Note that the first compounding period has it&#39;s
  interest calculated including any spread then
  subsequent periods compound this at a rate excluding
  the spread.
* `CompoundingMethodEnum_None`
  No compounding is to be applied.
* `CompoundingMethodEnum_SpreadExclusive`
  Spread Exclusive compounding.
* `CompoundingMethodEnum_Straight`
  Straight compounding. Compounding includes the
  spread.

### `data` `ContractualDefinitionsEnum`

  The enumerated values to specify a set of standard
  contract definitions relevant to the transaction.
* `ContractualDefinitionsEnum_ISDA1991`
  ISDA 1991 Definitions
* `ContractualDefinitionsEnum_ISDA1993Commodity`
  ISDA 1993 Commodity Derivatives Definitions
* `ContractualDefinitionsEnum_ISDA1996Equity`
  ISDA 1996 Equity Derivatives Definitions
* `ContractualDefinitionsEnum_ISDA1997Bullion`
  ISDA 1997 Bullion Definitions
* `ContractualDefinitionsEnum_ISDA1997GovernmentBond`
  ISDA 1997 Government Bond Option Definitions
* `ContractualDefinitionsEnum_ISDA1998FX`
  ISDA 1998 FX and Currency Option Definitions
* `ContractualDefinitionsEnum_ISDA1999Credit`
  ISDA 1999 Credit Derivatives Definitions
* `ContractualDefinitionsEnum_ISDA2000`
  ISDA 2000 Definitions
* `ContractualDefinitionsEnum_ISDA2002Equity`
  ISDA 2002 Equity Derivatives Definitions
* `ContractualDefinitionsEnum_ISDA2003Credit`
  ISDA 2003 Credit Derivatives Definitions
* `ContractualDefinitionsEnum_ISDA2004Novation`
  ISDA 2004 Novation Definitions
* `ContractualDefinitionsEnum_ISDA2005Commodity`
  ISDA 2005 Commodity Derivatives Definitions
* `ContractualDefinitionsEnum_ISDA2006`
  ISDA 2006 Definitions
* `ContractualDefinitionsEnum_ISDA2006Inflation`
  ISDA 2006 Inflation Derivatives Definitions
* `ContractualDefinitionsEnum_ISDA2008Inflation`
  ISDA 2008 Inflation Derivatives Definitions
* `ContractualDefinitionsEnum_ISDA2011Equity`
  ISDA 2011 Equity Derivatives Definitions
* `ContractualDefinitionsEnum_ISDA2014Credit`
  ISDA 2014 Credit Derivatives Definitions

### `data` `ContractualSupplementEnum`

  The enumerated values to define the supplements to a
  base set of ISDA Definitions that are applicable to
  the transaction.
* `ContractualSupplementEnum_ABX`
  Standard Terms Supplement for ABX Transactions.
* `ContractualSupplementEnum_ABXTranche`
  Standard Terms Supplement for Asset-Backed Tranche
  Transactions.
* `ContractualSupplementEnum_CDSonLeveragedLoans`
  ISDA Standard Terms Supplement for use with Credit
  Derivative Transactions on Leveraged Loans.
* `ContractualSupplementEnum_CDSonMBS`
  ISDA Standard Terms Supplement for use with Credit
  Derivative Transactions on Mortgage-backed Security
  with Pay-As-You-Go or Physical Settlement.
* `ContractualSupplementEnum_CDX`
  Standard Terms Supplement for CDX Untranched
  Transactions.
* `ContractualSupplementEnum_CDXEmergingMarkets`
  Standard Terms Supplement for CDX Emerging Markets
  Untranched Transactions.
* `ContractualSupplementEnum_CDXEmergingMarketsDiversified`
  Standard Terms Supplement for CDX Emerging Markets
  Diversified Untranched Transactions..
* `ContractualSupplementEnum_CDXSwaption`
  Standard Terms Supplement for CDX Swaption
  Transactions.
* `ContractualSupplementEnum_CDXTranche`
  Standard Terms Supplement for Dow Jones CDX Tranche
  Transactions.
* `ContractualSupplementEnum_CMBX`
  Standard Terms Supplement for CMBX Transactions.
* `ContractualSupplementEnum_EuropeanCMBS`
  Standard Terms Supplement for Single Name European
  CMBS Transactions.
* `ContractualSupplementEnum_EuropeanRMBS`
  Standard Terms Supplement for Single Name European
  RMBS Transactions.
* `ContractualSupplementEnum_IOS`
  Standard Terms Supplement for IOS Transactions.
* `ContractualSupplementEnum_ISDA1999CreditConvertibleExchangeableAccretingObligations`
  Supplement to the 1999 ISDA Credit Derivatives
  Definitions Relating to Convertible, Exchangeable or
  Accreting Obligations dated November 9, 2001.
* `ContractualSupplementEnum_ISDA1999CreditRestructuring`
  Restructuring Supplement to the 1999 ISDA Credit
  Derivatives Definitions dated May 11, 2001.
* `ContractualSupplementEnum_ISDA1999CreditSuccessorAndCreditEvents`
  Supplement Relating to Successor and Credit Events to
  the 1999 ISDA Credit Derivatives Definitions dated
  November 28, 2001.
* `ContractualSupplementEnum_ISDA2003AdditionalProvisionsLPN`
  Additional Provisions for LPN dated December 6, 2007.
* `ContractualSupplementEnum_ISDA2003ContingentCreditSpreadTransaction`
  Additional Provisions for Contingent Credit Spread
  Transactions dated August 15, 2008.
* `ContractualSupplementEnum_ISDA2003Credit2005MatrixSupplement`
  2005 Matrix Supplement to the 2003 ISDA Credit
  Derivatives.
* `ContractualSupplementEnum_ISDA2003CreditArgentineRepublic`
  Additional Provisions for the Argentine Republic:
  Excluded Obligations and Excluded Deliverable
  Obligations dated December 21, 2005.
* `ContractualSupplementEnum_ISDA2003CreditAuctionSupplement`
  ISDA Credit Derivatives Determinations Committees and
  Auction Settlement Supplement to the 2003 ISDA Credit
  Derivatives Definitions (published on [TBD]).
* `ContractualSupplementEnum_ISDA2003CreditMay2003`
  May 2003 Supplement to the 2003 ISDA Credit
  Derivatives Definitions.
* `ContractualSupplementEnum_ISDA2003CreditMonolineInsurers`
  Additional Provisions for Physically Settled Default
  Swaps Monoline Insurer as Reference Entity dated May
  9, 2003.
* `ContractualSupplementEnum_ISDA2003CreditMonolineInsurers2005`
  Additional Provisions for Physically Settled Default
  Swaps Monoline Insurer as Reference Entity dated
  January 21, 2005.
* `ContractualSupplementEnum_ISDA2003CreditRepublicOfHungary`
  Additional Provisions for the Republic of Hungary:
  Obligation Characteristics and Deliverable Obligation
  Characteristics dated August 13, 2004.
* `ContractualSupplementEnum_ISDA2003CreditRepublicOfHungary2005`
  Additional Provisions for the Republic of Hungary:
  Obligation Characteristics and Deliverable Obligation
  Characteristics dated February 14, 2005.
* `ContractualSupplementEnum_ISDA2003CreditRussianFederation`
  Additional Provisions for the Russian Federation:
  Obligation Characteristics and Deliverable Obligation
  Characteristics dated August 13, 2004.
* `ContractualSupplementEnum_ISDA2003CreditUSMunicipals`
  Additional Provisions for Credit Derivative
  Transactions - U.S. Municipal Entity as Reference
  Entity dated September 17, 2004.
* `ContractualSupplementEnum_ISDA2003STMicroelectronicsNV`
  Additional Provisions for STMicroelectronics NV dated
  December 6, 2007.
* `ContractualSupplementEnum_ISDA2007FullLookthroughDepositoryReceiptSupplement`
  2007 Full Lookthrough Depository Receipt Supplement
  to the 2002 Equity Derivatives Definitions.
* `ContractualSupplementEnum_ISDA2007PartialLookthroughDepositoryReceiptSupplement`
  2007 Partial Lookthrough Depository Receipt
  Supplement to the 2002 ISDA Equity Derivatives
  Definitions.
* `ContractualSupplementEnum_ISDACreditMonolineInsurers`
  Additional Provisions for Physically Settled Default
  Swaps Monoline Insurer.
* `ContractualSupplementEnum_ISDADeliveryRestrictions`
  Additional Provisions for Fixed Recovery Credit
  Default Swap Transactions
* `ContractualSupplementEnum_ISDAFixedRecovery`
  Additional Provisions for Fixed Recovery Credit
  Default Swap Transactions.
* `ContractualSupplementEnum_ISDALPNReferenceEntities`
  Additional Provisions for LPN Reference Entities.
* `ContractualSupplementEnum_ISDAMarch2004EquityCanadianSupplement`
  Canadian Supplement to the 2004 Americas Interdealer
  Master Equity Derivatives Confirmation Agreement
  dated March 29, 2004.
* `ContractualSupplementEnum_ISDARecoveryLock`
  Additional Provisions for Recovery Lock Credit
  Default Swap Transactions.
* `ContractualSupplementEnum_ISDASecuredDeliverableObligationCharacteristic`
  Additional Provisions for Secured Deliverable
  Obligation Characteristic.
* `ContractualSupplementEnum_LCDX`
  Standard Terms Supplement for Syndicated Secured Loan
  Credit Default Swap Index Transactions.
* `ContractualSupplementEnum_LCDXTranche`
  Standard Terms Supplement for Syndicated Secured Loan
  Credit Default Swap Index Tranche Transactions.
* `ContractualSupplementEnum_MBX`
  Standard Terms Supplement for MBX Transactions.
* `ContractualSupplementEnum_MCDX`
  Standard Terms Supplement for Municipal CDX
  Untranched Transactions.
* `ContractualSupplementEnum_PO`
  Standard Terms Supplement for PO Index Transactions.
* `ContractualSupplementEnum_PrimeX`
  Standard Terms Supplement for PrimeX Transactions.
* `ContractualSupplementEnum_StandardCDXTranche`
  Standard Terms Supplement for Standard CDX Tranche
  Transactions.
* `ContractualSupplementEnum_StandardLCDS`
  Standard Syndicated Secured Loan Credit Default Swap
  Standard Terms Supplement.
* `ContractualSupplementEnum_StandardLCDSBullet`
  Standard Terms Supplement for Standard Syndicated
  Secured Loan Credit Default Swap Bullet Transactions.
* `ContractualSupplementEnum_StandardLCDXBullet`
  Standard Terms Supplement for Standard Syndicated
  Secured Loan Credit Default Swap Index Bullet
  Transactions.
* `ContractualSupplementEnum_StandardLCDXBulletTranche`
  Standard Terms Supplement for Standard Syndicated
  Secured Loan Credit Default Swap Index Bullet Tranche
  Transactions.
* `ContractualSupplementEnum_StandardiTraxxEuropeTranche`
  Standard Terms Supplement for Standard iTraxx Europe
  Tranched Transactions.
* `ContractualSupplementEnum_SyndicatedSecuredLoanCDS`
  Syndicated Secured Loan Credit Default Swap Standard
  Terms Supplement.
* `ContractualSupplementEnum_TRX`
  Standard Terms Supplement for TRX Transactions.
* `ContractualSupplementEnum_TRX_II`
  Standard Terms Supplement for TRX.II Transactions.
* `ContractualSupplementEnum_iTraxxAsiaExJapan`
  Standard Terms Supplement for iTraxx Asia Excluding
  Japan.
* `ContractualSupplementEnum_iTraxxAsiaExJapanSwaption`
  Standard Terms Supplement for iTraxx Asia Ex-Japan
  Swaption Transactions.
* `ContractualSupplementEnum_iTraxxAsiaExJapanTranche`
  Standard Terms Supplement for iTraxx Asia Excluding
  Japan Tranched Transactions.
* `ContractualSupplementEnum_iTraxxAustralia`
  Standard Terms Supplement for iTraxx Australia.
* `ContractualSupplementEnum_iTraxxAustraliaSwaption`
  Standard Terms Supplement for iTraxx Australia
  Swaption Transactions.
* `ContractualSupplementEnum_iTraxxAustraliaTranche`
  Standard Terms Supplement for iTraxx Australia
  Tranched Transactions.
* `ContractualSupplementEnum_iTraxxCJ`
  Standard Terms Supplement for iTraxx CJ.
* `ContractualSupplementEnum_iTraxxCJTranche`
  Standard Terms Supplement for iTraxx CJ Tranched
  Transactions.
* `ContractualSupplementEnum_iTraxxEurope`
  Standard Terms Supplement for iTraxx Europe
  Transactions.
* `ContractualSupplementEnum_iTraxxEuropeDealer`
  Standard Terms Supplement for iTraxx Europe Dealer
  Form.
* `ContractualSupplementEnum_iTraxxEuropeNonDealer`
  Standard Terms Supplement for iTraxx Europe
  Non-Dealer Form.
* `ContractualSupplementEnum_iTraxxEuropeSwaption`
  Standard Terms Supplement for iTraxx Europe Swaption
  Transactions.
* `ContractualSupplementEnum_iTraxxEuropeTranche`
  Standard Terms Supplement for iTraxx Europe Tranched
  Transactions.
* `ContractualSupplementEnum_iTraxxJapan`
  Standard Terms Supplement for iTraxx Japan.
* `ContractualSupplementEnum_iTraxxJapanSwaption`
  Standard Terms Supplement for iTraxx Japan Swaption
  Transactions.
* `ContractualSupplementEnum_iTraxxJapanTranche`
  Standard Terms Supplement for iTraxx Japan Tranched
  Transactions.
* `ContractualSupplementEnum_iTraxxLevX`
  Standard Terms Supplement for iTraxx LevX.
* `ContractualSupplementEnum_iTraxxSDI75Dealer`
  Standard Terms Supplement for iTraxx SDI 75 Dealer
  Transactions.
* `ContractualSupplementEnum_iTraxxSDI75NonDealer`
  Standard Terms Supplement for iTraxx SDI 75
  Non-Dealer Transactions.
* `ContractualSupplementEnum_iTraxxSovX`
  Standard Terms Supplement for iTraxx SovX.

### `data` `CreditLimitTypeEnum`

  The enumeration values to qualify the type of credit
  limits.
* `CreditLimitTypeEnum_CS01`
  The type of credit line expressed in CS01. The
  sensitivity with respect to changes in the CDS
  spread.
* `CreditLimitTypeEnum_DV01`
  The type of credit line expressed in DV01. The dollar
  value of a one basis point decrease in interest
  rates. It shows the change in a bond&#39;s price
  compared to a decrease in the bond&#39;s yield.
* `CreditLimitTypeEnum_IM`
  The type of credit line expressed in Initial Margin
  value.
* `CreditLimitTypeEnum_NPV`
  The type of credit line expressed as a Net Present
  Value.
* `CreditLimitTypeEnum_Notional`
  The type of credit line expressed in Notional amount.
* `CreditLimitTypeEnum_PV01`
  The type of credit line expressed in PV01. The value
  of a one dollar or one basis point annuity.

### `data` `CreditRatingAgencyEnum`

  The enumerated values to specify the rating agencies.
* `CreditRatingAgencyEnum_AMBest`
  A. M. Best
* `CreditRatingAgencyEnum_CBRS`
  Canadian Bond Rating Service
* `CreditRatingAgencyEnum_DBRS`
  Dominion Bond Rating Service
* `CreditRatingAgencyEnum_Fitch`
  Fitch
* `CreditRatingAgencyEnum_JapanAgency`
  Japan Credit Rating Agency, Ltd.
* `CreditRatingAgencyEnum_Moodys`
  Moody&#39;s
* `CreditRatingAgencyEnum_RatingAndInvestmentInformation`
  Rating And Investment Information, Inc.
* `CreditRatingAgencyEnum_StandardAndPoors`
  Standard And Poor&#39;s

### `data` `CreditSupportAgreementTypeEnum`

  The enumerated values to specify the type of ISDA
  Credit Support Agreement governing the transaction.
* `CreditSupportAgreementTypeEnum_ISDA1994CreditSupportAnnexNewYorkLaw`
  The ISDA 1994 Credit Support Annex New York Law
  (pledge) applies.
* `CreditSupportAgreementTypeEnum_ISDA1995CreditSupportAnnexEnglishLaw`
  The ISDA 1995 Credit Support Annex English Law (title
  transfer) applies.
* `CreditSupportAgreementTypeEnum_ISDA1995CreditSupportAnnexJapaneseLaw`
  The ISDA 1995 Credit Support Annex Japanese Law
  applies.
* `CreditSupportAgreementTypeEnum_ISDA1995CreditSupportDeedEnglishLaw`
  The ISDA 1995 Credit Support Deed English Law
  (charge) applies.
* `CreditSupportAgreementTypeEnum_ISDA2001MarginProvisions`
  The ISDA 2001 Margin Provisions applies.
* `CreditSupportAgreementTypeEnum_ISDA2013StandardCreditSupportAgreement`
  The ISDA 2013 Standard Credit Support Agreement.
* `CreditSupportAgreementTypeEnum_ISDA2014StandardCreditSupportAgreement`
  The ISDA 2014 Standard Credit Support Agreement.

### `data` `DayCountFractionEnum`

  The enumerated values to specify the day count
  fraction.
* `DayCountFractionEnum_ACT_360`
  Per 2006 ISDA Definitions, Section 4.16. Day Count
  Fraction, paragraph (e) or Annex to the 2000 ISDA
  Definitions (June 2000 Version), Section 4.16. Day
  Count Fraction, paragraph (d).
* `DayCountFractionEnum_ACT_365L`
  Per 2006 ISDA Definitions, Section 4.16. Day Count
  Fraction, paragraph (i).
* `DayCountFractionEnum_ACT_365_FIXED`
  Per 2006 ISDA Definitions, Section 4.16. Day Count
  Fraction, paragraph (d) or Annex to the 2000 ISDA
  Definitions (June 2000 Version), Section 4.16. Day
  Count Fraction, paragraph (c).
* `DayCountFractionEnum_ACT_ACT_AFB`
  The Fixed/Floating Amount will be calculated in
  accordance with the &#39;BASE EXACT/EXACT&#39; day
  count fraction, as defined in the &#39;Definitions
  Communes plusieurs Additifs Techniques&#39; published
  by the Association Francaise des Banques in September
  1994.
* `DayCountFractionEnum_ACT_ACT_ICMA`
  Per 2006 ISDA Definitions, Section 4.16. Day Count
  Fraction, paragraph (c). This day count fraction code
  is applicable for transactions booked under the 2006
  ISDA Definitions. Transactions under the 2000 ISDA
  Definitions should use the ACT/ACT.ISMA code instead.
* `DayCountFractionEnum_ACT_ACT_ISDA`
  Per 2006 ISDA Definitions, Section 4.16. Day Count
  Fraction, paragraph (b) or Annex to the 2000 ISDA
  Definitions (June 2000 Version), Section 4.16. Day
  Count Fraction, paragraph (b). Note that going from
  FpML 2.0 Recommendation to the FpML 3.0 Trial
  Recommendation the code in FpML 2.0
  &#39;ACT/365.ISDA&#39; became &#39;ACT/ACT.ISDA&#39;.
* `DayCountFractionEnum_BUS_252`
  The number of Business Days in the Calculation Period
  or Compounding Period in respect of which payment is
  being made divided by 252.
* `DayCountFractionEnum_RBA_BOND_BASIS_ANNUAL`
  Per 2006 ISDA Definitions Supplement number 43, Day
  Count Fraction, (k)if “RBA Bond Basis (semi-annual)”
  is specified, 0.5. However, Actual/Actual (ISDA)
  applies to each of the first Calculation Period and
  the final Calculation Period if such Calculation
  Period is less than six months
* `DayCountFractionEnum_RBA_BOND_BASIS_QUARTER`
  Per 2006 ISDA Definitions Supplement number 43, Day
  Count Fraction, if “RBA Bond Basis (quarter)” is
  specified, 0.25. However, Actual/Actual (ISDA)
  applies to each of the first Calculation Period and
  the final Calculation Period if such Calculation
  Period is less than three months
* `DayCountFractionEnum_RBA_BOND_BASIS_SEMI_ANNUAL`
  Per 2006 ISDA Definitions Supplement number 43, Day
  Count Fraction, if “RBA Bond Basis (semi-annual)” is
  specified, 0.5. However, Actual/Actual (ISDA) applies
  to each of the first Calculation Period and the final
  Calculation Period if such Calculation Period is less
  than six months
* `DayCountFractionEnum__1_1`
  Per 2006 ISDA Definitions, Section 4.16. Day Count
  Fraction, paragraph (a) or Annex to the 2000 ISDA
  Definitions (June 2000 Version), Section 4.16. Day
  Count Fraction, paragraph (a).
* `DayCountFractionEnum__30E_360`
  Per 2006 ISDA Definitions, Section 4.16. Day Count
  Fraction, paragraph (g) or Annex to the 2000 ISDA
  Definitions (June 2000 Version), Section 4.16. Day
  Count Fraction, paragraph (f). Note that the
  algorithm defined for this day count fraction has
  changed between the 2000 ISDA Definitions and 2006
  ISDA Definitions. See Introduction to the 2006 ISDA
  Definitions for further information relating to this
  change.
* `DayCountFractionEnum__30E_360_ISDA`
  Per 2006 ISDA Definitions, Section 4.16. Day Count
  Fraction, paragraph (h). Note the algorithm for this
  day count fraction under the 2006 ISDA Definitions is
  designed to yield the same results in practice as the
  version of the 30E/360 day count fraction defined in
  the 2000 ISDA Definitions. See Introduction to the
  2006 ISDA Definitions for further information
  relating to this change.
* `DayCountFractionEnum__30_360`
  Per 2006 ISDA Definitions, Section 4.16. Day Count
  Fraction, paragraph (f) or Annex to the 2000 ISDA
  Definitions (June 2000 Version), Section 4.16. Day
  Count Fraction, paragraph (e).

### `data` `DayOfWeekEnum`

  The enumerated values to specify a day of the
  seven-day week.
* `DayOfWeekEnum_FRI`
  Friday
* `DayOfWeekEnum_MON`
  Monday
* `DayOfWeekEnum_SAT`
  Saturday
* `DayOfWeekEnum_SUN`
  Sunday
* `DayOfWeekEnum_THU`
  Thursday
* `DayOfWeekEnum_TUE`
  Tuesday
* `DayOfWeekEnum_WED`
  Wednesday

### `data` `DayTypeEnum`

  The enumerated values to specify the day type
  classification used in counting the number of days
  between two dates.
* `DayTypeEnum_Business`
  When calculating the number of days between two dates
  the count includes only business days.
* `DayTypeEnum_Calendar`
  When calculating the number of days between two dates
  the count includes all calendar days.
* `DayTypeEnum_CommodityBusiness`
  When calculating the number of days between two dates
  the count includes only commodity business days.
* `DayTypeEnum_CurrencyBusiness`
  When calculating the number of days between two dates
  the count includes only currency business days.
* `DayTypeEnum_ExchangeBusiness`
  When calculating the number of days between two dates
  the count includes only stock exchange business days.
* `DayTypeEnum_ScheduledTradingDay`
  When calculating the number of days between two dates
  the count includes only scheduled trading days.

### `data` `DeterminationMethodEnum`

  The enumerated values to specify the method according
  to which an amount or a date is determined.
* `DeterminationMethodEnum_AgreedInitialPrice`
  Agreed separately between the parties.
* `DeterminationMethodEnum_AsSpecifiedInMasterConfirmation`
  As specified in Master Confirmation.
* `DeterminationMethodEnum_CalculationAgent`
  Determined by the Calculation Agent.
* `DeterminationMethodEnum_ClosingPrice`
  Official Closing Price.
* `DeterminationMethodEnum_DividendCurrency`
  Determined by the Currency of Equity Dividends.
* `DeterminationMethodEnum_ExpiringContractLevel`
  The initial Index Level is the level of the Expiring
  Contract as provided in the Master Confirmation.
* `DeterminationMethodEnum_HedgeExecution`
  Determined by the Hedging Party.
* `DeterminationMethodEnum_IssuerPaymentCurrency`
  Issuer Payment Currency.
* `DeterminationMethodEnum_NAV`
  Net Asset Value.
* `DeterminationMethodEnum_OSPPrice`
  Official Settlement Price.
* `DeterminationMethodEnum_OpenPrice`
  Opening Price of the Market.
* `DeterminationMethodEnum_SettlementCurrency`
  Settlement Currency.
* `DeterminationMethodEnum_StrikeDateDetermination`
  Date on which the strike is determined in respect of
  a forward starting swap.
* `DeterminationMethodEnum_TWAPPrice`
  Official Trade-Weighted Average Price.
* `DeterminationMethodEnum_VWAPPrice`
  Official Volume-Weighted Average Price.
* `DeterminationMethodEnum_ValuationTime`
  Price determined at valuation time.

### `data` `DiscountingTypeEnum`

  The enumerated values to specify the method of
  calculating discounted payment amounts. This
  enumerations combines the FpML DiscountingTypeEnum
  and FraDiscountingEnum enumerations.
* `DiscountingTypeEnum_AFMA`
  As specified by the the Australian Financial Markets
  Association (AFMA) OTC Financial Product Conventions.
  This discounting method should not be used for a
  trade documented under a legal framework where the
  2006 ISDA Definitions have been incorporated.
* `DiscountingTypeEnum_FRA`
  As specified by the 2006 ISDA Definitions, Section
  8.4. Discounting, paragraph (b).
* `DiscountingTypeEnum_FRAYield`
  As specified by the 2006 ISDA Definitions, Section
  8.4. Discounting, paragraph (e).
* `DiscountingTypeEnum_Standard`
  As specified by the 2006 ISDA Definitions, Section
  8.4. Discounting, paragraph (a).

### `data` `DividendAmountTypeEnum`

  The enumerated values to specify whether the dividend
  is paid with respect to the Dividend Period.
* `DividendAmountTypeEnum_AsSpecifiedInMasterConfirmation`
  The Amount is determined as provided in the relevant
  Master Confirmation.
* `DividendAmountTypeEnum_ExAmount`
  The ex-date for a dividend occurs during a dividend
  period.
* `DividendAmountTypeEnum_PaidAmount`
  The payment date for a dividend occurs during a
  dividend period.
* `DividendAmountTypeEnum_RecordAmount`
  The record date for a dividend occurs during a
  dividend period.

### `data` `DividendDateReferenceEnum`

  The enumerated values to specify the date by
  reference to which the dividend will be paid.
* `DividendDateReferenceEnum_AdHocDate`
  The dividend date will be specified ad-hoc by the
  parties, typically on the dividend ex-date.
* `DividendDateReferenceEnum_CashSettlePaymentDateExDiv`
  If &#39;Dividend Payment Date(s)&#39; is specified in
  the Transaction Supplement as &#39;Cash Settlement
  Payment Date – Ex Dividend&#39;&#39;, then the
  Dividend Payment Date in respect of a Dividend Amount
  shall be the Cash Settlement Payment Date relating to
  the end of the Dividend Period during which the
  Shares commenced trading &#39;ex&#39; the relevant
  dividend on the Exchange.
* `DividendDateReferenceEnum_CashSettlePaymentDateIssuerPayment`
  If &#39;Dividend Payment Date(s)&#39; is specified in
  the Transaction Supplement as &#39;Cash Settlement
  Payment Date – Issuer Payment&#39;, then the Dividend
  Payment Date in respect of a Dividend Amount shall be
  the Cash Settlement Payment Date relating to the end
  of the Dividend Period during which the issuer pays
  the relevant dividend to a holder of record provided
  that in the case where the Equity Amount Payer is the
  party specified to be the sole Hedging Party and the
  Hedging Party has not received the Dividend Amount by
  such date, then the date falling a number of Currency
  Business Days as specified in the Cash Settlement
  Payment Date after actual receipt by the Hedging
  Party of the Received Ex Amount or Paid Ex Amount (as
  applicable).
* `DividendDateReferenceEnum_CashSettlementPaymentDate`
  If &#39;Dividend Payment Date(s)&#39; is specified in
  the Transaction Supplement as &#39;Cash Settlement
  Payment Date&#39;, then the Dividend Payment Date in
  respect of a Dividend Amount shall be the Cash
  Settlement Payment Date relating to the end of the
  Dividend Period during which the Shares commenced
  trading &#39;ex&#39; the relevant dividend on the
  Exchange.
* `DividendDateReferenceEnum_CumulativeEquityExDiv`
  Total of dividends which go ex, paid on next
  following Cash Settlement Payment Date, which is
  immediately following the Dividend Period during
  which the Shares commence trading ex-dividend on the
  Exchange.
* `DividendDateReferenceEnum_CumulativeEquityPaid`
  Total of paid dividends, paid on next following Cash
  Settlement Payment Date, which is immediately
  following the Dividend Period during which the
  dividend is paid by the Issuer to the holders of
  record of a Share.
* `DividendDateReferenceEnum_CumulativeLiborExDiv`
  Total of dividends which go ex, paid on next
  following Payment Date, which is immediately
  following the Dividend Period during which the Shares
  commence trading ex-dividend on the Exchange, or
  where the date on which the Shares commence trading
  ex-dividend is a Payment Date, such Payment Date.
* `DividendDateReferenceEnum_CumulativeLiborPaid`
  Total of paid dividends, paid on next following
  Payment Date, which is immediately following the
  Dividend Period during which the dividend is paid by
  the Issuer to the holders of record of a Share.
* `DividendDateReferenceEnum_DividendPaymentDate`
  Date on which the dividend will be paid by the
  issuer.
* `DividendDateReferenceEnum_DividendValuationDate`
  In respect of each Dividend Period, the relevant
  Dividend Valuation Date.
* `DividendDateReferenceEnum_EquityPaymentDate`
  Equity payment date of the swap.
* `DividendDateReferenceEnum_ExDate`
  Date on which a holder of the security is entitled to
  the dividend.
* `DividendDateReferenceEnum_FloatingAmountPaymentDate`
  If &#39;Dividend Payment Date(s)&#39; is specified in
  the Transaction Supplement as &#39;Floating Amount
  Payment Date&#39;, then the Dividend Payment Date in
  respect of a Dividend Amount shall be the first
  Payment Date falling at least one Settlement Cycle
  after the date that the Shares have commenced trading
  &#39;ex&#39; the relevant dividend on the Exchange.
* `DividendDateReferenceEnum_FollowingPaymentDate`
  The next payment date of the swap.
* `DividendDateReferenceEnum_RecordDate`
  Date on which the dividend will be recorded in the
  books of the paying agent.
* `DividendDateReferenceEnum_SharePayment`
  If &#39;Dividend Payment Date(s)&#39; is specified in
  the Transaction Supplement as &#39;Share
  Payment&#39;, then the Dividend Payment Date in
  respect of a Dividend Amount shall fall on a date on
  or before the date that is two (or any other number
  that is specified in the Transaction Supplement)
  Currency Business Days following the day on which the
  Issuer of the Shares pays the relevant dividend to
  holders of record of the Shares.
* `DividendDateReferenceEnum_TerminationDate`
  Termination date of the swap.

### `data` `DividendEntitlementEnum`

  The enumerated values to specify the date on which
  the receiver of the equity payout is entitled to the
  dividend.
* `DividendEntitlementEnum_ExDate`
  Dividend entitlement is on the dividend ex-date.
* `DividendEntitlementEnum_RecordDate`
  Dividend entitlement is on the dividend record date.

### `data` `DividendPeriodEnum`

  2002 ISDA Equity Derivatives Definitions: First
  Period, Second Period |
* `DividendPeriodEnum_FirstPeriod`
  2002 ISDA Equity Derivatives Definitions: First
  Period means each period from, and including, one
  Cash Settlement Payment Date or Settlement Date, as
  the case may be, to, but excluding, the next
  following Cash Settlement Payment Date or Settlement
  Date, as the case may be, except that (i) the initial
  Dividend Period will commence on, and include, the
  Clearance System Business Day that is one Settlement
  Cycle following the Trade Date and (ii) the final
  Dividend Period will end on, but exclude, the final
  Cash Settlement Payment Date or Settlement Date, as
  the case may be.
* `DividendPeriodEnum_SecondPeriod`
  2002 ISDA Equity Derivatives Definitions: Second
  Period means each period from, but excluding, one
  Valuation Date to, and including, the next Valuation
  Date, except that (i) the initial Dividend Period
  will commence on, but exclude, the Trade Date and
  (ii) the final Dividend Period will end on, and
  include, the final Valuation Date or, in respect of a
  Physically-settled Forward Transaction to which
  Variable Obligation is not applicable, the date that
  is one Settlement Cycle prior to the Settlement Date.

### `data` `EntityTypeEnum`

  The enumerated values to specify the reference entity
  types corresponding to a list of types defined in the
  ISDA First to Default documentation.
* `EntityTypeEnum_Asian`
  Entity Type of Asian.
* `EntityTypeEnum_AustralianAndNewZealand`
  Entity Type of Australian and New Zealand.
* `EntityTypeEnum_EuropeanEmergingMarkets`
  Entity Type of European Emerging Markets.
* `EntityTypeEnum_Japanese`
  Entity Type of Japanese.
* `EntityTypeEnum_NorthAmericanHighYield`
  Entity Type of North American High Yield.
* `EntityTypeEnum_NorthAmericanInsurance`
  Entity Type of North American Insurance.
* `EntityTypeEnum_NorthAmericanInvestmentGrade`
  Entity Type of North American Investment Grade.
* `EntityTypeEnum_Singaporean`
  Entity Type of Singaporean.
* `EntityTypeEnum_WesternEuropean`
  Entity Type of Western European.
* `EntityTypeEnum_WesternEuropeanInsurance`
  Entity Type of Western European Insurance.

### `data` `EventTimeStampQualificationEnum`

  The enumeration values to qualify the time stamps
  that can be associated with a lifecycle event.
* `EventTimeStampQualificationEnum_clearingConfirmationTime`
  The date and time on which trade was confirmed as
  cleared.
* `EventTimeStampQualificationEnum_clearingSubmissionTime`
  The date and time on which the event was submitted
  for clearing.
* `EventTimeStampQualificationEnum_clearingTime`
  The date and time on the trade was cleared.
* `EventTimeStampQualificationEnum_eventCreationTime`
  The date and time on which the event was created.
* `EventTimeStampQualificationEnum_eventExpirationTime`
  The date and time on which the event will be
  considered expired.
* `EventTimeStampQualificationEnum_eventProcessingTime`
  The date and time on which the event was processed.
* `EventTimeStampQualificationEnum_eventSentTime`
  The date and time on which the event was sent.
* `EventTimeStampQualificationEnum_eventSubmittedTime`
  The date and time on which the event was submitted.
* `EventTimeStampQualificationEnum_executionTime`
  The time on which the trade execution was performed.
* `EventTimeStampQualificationEnum_transactionCreationTime`
  The time on which the transaction has been created.
  This timestamp is specified as such by the CME
  ClearPort Matched IRS Trade submission API
  specification: &#39;The transaction time of the
  trade. Represents the time that the trade was
  initially generated either by CME Clearing or firm.
  The transaction time may be assigned by CME Clearing
  at the point the trade is reported as cleared.
  Transaction time can also be provided by an external
  submitter of the trade at the point the trade is
  submitted.&#39;

### `data` `ExecutionTypeEnum`

  The enumerated values to specify how a contract has
  been executed, e.g. electronically, verbally, ...
* `ExecutionTypeEnum_Electronic`
  Execution via electronic execution facility,
  derivatives contract market, or other electronic
  message such as an instant message.
* `ExecutionTypeEnum_OffFacility`
  Bilateral execution between counterparties not
  pursuant to the rules of a SEF or DCM.

### `data` `FloatingRateIndexEnum`

  The enumerated values to specify the list of floating
  rate index.
* `FloatingRateIndexEnum_AED_EBOR_Reuters`
  Per 2006 ISDA Definitions or Annex to the 2000 ISDA
  Definitions, Section 7.1 Rate Options, as amended and
  supplemented through the date on which parties enter
  into the relevant transaction.
* `FloatingRateIndexEnum_AUD_AONIA_OIS_COMPOUND`
  Per 2006 ISDA Definitions or Annex to the 2000 ISDA
  Definitions, Section 7.1 Rate Options, as amended and
  supplemented through the date on which parties enter
  into the relevant transaction.
* `FloatingRateIndexEnum_AUD_AONIA_OIS_COMPOUND_SwapMarker`
  Per 2006 ISDA Definitions or Annex to the 2000 ISDA
  Definitions, Section 7.1 Rate Options, as amended and
  supplemented through the date on which parties enter
  into the relevant transaction.
* `FloatingRateIndexEnum_AUD_BBR_AUBBSW`
  Per 2006 ISDA Definitions or Annex to the 2000 ISDA
  Definitions, Section 7.1 Rate Options, as amended and
  supplemented through the date on which parties enter
  into the relevant transaction.
* `FloatingRateIndexEnum_AUD_BBR_BBSW`
  Per 2006 ISDA Definitions or Annex to the 2000 ISDA
  Definitions, Section 7.1 Rate Options, as amended and
  supplemented through the date on which parties enter
  into the relevant transaction.
* `FloatingRateIndexEnum_AUD_BBR_BBSW_Bloomberg`
  Per 2006 ISDA Definitions or Annex to the 2000 ISDA
  Definitions, Section 7.1 Rate Options, as amended and
  supplemented through the date on which parties enter
  into the relevant transaction.
* `FloatingRateIndexEnum_AUD_BBR_BBSY__BID_`
  Per 2006 ISDA Definitions or Annex to the 2000 ISDA
  Definitions, Section 7.1 Rate Options, as amended and
  supplemented through the date on which parties enter
  into the relevant transaction.
* `FloatingRateIndexEnum_AUD_BBR_ISDC`
  Per 2006 ISDA Definitions or Annex to the 2000 ISDA
  Definitions, Section 7.1 Rate Options, as amended and
  supplemented through the date on which parties enter
  into the relevant transaction.
* `FloatingRateIndexEnum_AUD_LIBOR_BBA`
  Per 2006 ISDA Definitions or Annex to the 2000 ISDA
  Definitions, Section 7.1 Rate Options, as amended and
  supplemented through the date on which parties enter
  into the relevant transaction.
* `FloatingRateIndexEnum_AUD_LIBOR_BBA_Bloomberg`
  Per 2006 ISDA Definitions or Annex to the 2000 ISDA
  Definitions, Section 7.1 Rate Options, as amended and
  supplemented through the date on which parties enter
  into the relevant transaction.
* `FloatingRateIndexEnum_AUD_LIBOR_Reference_Banks`
  Per 2006 ISDA Definitions or Annex to the 2000 ISDA
  Definitions, Section 7.1 Rate Options, as amended and
  supplemented through the date on which parties enter
  into the relevant transaction.
* `FloatingRateIndexEnum_AUD_Quarterly_Swap_Rate_ICAP`
  Per 2006 ISDA Definitions or Annex to the 2000 ISDA
  Definitions, Section 7.1 Rate Options, as amended and
  supplemented through the date on which parties enter
  into the relevant transaction.
* `FloatingRateIndexEnum_AUD_Quarterly_Swap_Rate_ICAP_Reference_Banks`
  Per 2006 ISDA Definitions or Annex to the 2000 ISDA
  Definitions, Section 7.1 Rate Options, as amended and
  supplemented through the date on which parties enter
  into the relevant transaction.
* `FloatingRateIndexEnum_AUD_Semi_Annual_Swap_Rate_11_00_BGCANTOR`
  Per 2006 ISDA Definitions or Annex to the 2000 ISDA
  Definitions, Section 7.1 Rate Options, as amended and
  supplemented through the date on which parties enter
  into the relevant transaction.
* `FloatingRateIndexEnum_AUD_Semi_Annual_Swap_Rate_BGCANTOR_Reference_Banks`
  Per 2006 ISDA Definitions or Annex to the 2000 ISDA
  Definitions, Section 7.1 Rate Options, as amended and
  supplemented through the date on which parties enter
  into the relevant transaction.
* `FloatingRateIndexEnum_AUD_Semi_Annual_Swap_Rate_ICAP_Reference_Banks`
  Per 2006 ISDA Definitions or Annex to the 2000 ISDA
  Definitions, Section 7.1 Rate Options, as amended and
  supplemented through the date on which parties enter
  into the relevant transaction.
* `FloatingRateIndexEnum_AUD_Semi_annual_Swap_Rate_ICAP`
  Per 2006 ISDA Definitions or Annex to the 2000 ISDA
  Definitions, Section 7.1 Rate Options, as amended and
  supplemented through the date on which parties enter
  into the relevant transaction.
* `FloatingRateIndexEnum_AUD_Swap_Rate_Reuters`
  Per 2006 ISDA Definitions or Annex to the 2000 ISDA
  Definitions, Section 7.1 Rate Options, as amended and
  supplemented through the date on which parties enter
  into the relevant transaction.
* `FloatingRateIndexEnum_BRL_CDI`
  Refers to the Overnight Brazilian Interbank Deposit
  Rate Annualized known as the average (Media) of the
  DI-OVER-EXTRA Grupo as published by CETIP (Camara de
  Custodia e Liquidacao).
* `FloatingRateIndexEnum_CAD_BA_CDOR`
  Per 2006 ISDA Definitions or Annex to the 2000 ISDA
  Definitions, Section 7.1 Rate Options, as amended and
  supplemented through the date on which parties enter
  into the relevant transaction.
* `FloatingRateIndexEnum_CAD_BA_CDOR_Bloomberg`
  Per 2006 ISDA Definitions or Annex to the 2000 ISDA
  Definitions, Section 7.1 Rate Options, as amended and
  supplemented through the date on which parties enter
  into the relevant transaction.
* `FloatingRateIndexEnum_CAD_BA_ISDD`
  Per 2006 ISDA Definitions or Annex to the 2000 ISDA
  Definitions, Section 7.1 Rate Options, as amended and
  supplemented through the date on which parties enter
  into the relevant transaction.
* `FloatingRateIndexEnum_CAD_BA_Reference_Banks`
  Per 2006 ISDA Definitions or Annex to the 2000 ISDA
  Definitions, Section 7.1 Rate Options, as amended and
  supplemented through the date on which parties enter
  into the relevant transaction.
* `FloatingRateIndexEnum_CAD_BA_Reuters`
  Per 2006 ISDA Definitions or Annex to the 2000 ISDA
  Definitions, Section 7.1 Rate Options, as amended and
  supplemented through the date on which parties enter
  into the relevant transaction.
* `FloatingRateIndexEnum_CAD_BA_Telerate`
  Per 2006 ISDA Definitions or Annex to the 2000 ISDA
  Definitions, Section 7.1 Rate Options, as amended and
  supplemented through the date on which parties enter
  into the relevant transaction.
* `FloatingRateIndexEnum_CAD_CORRA_OIS_COMPOUND`
  Per 2006 ISDA Definitions or Annex to the 2000 ISDA
  Definitions, Section 7.1 Rate Options, as amended and
  supplemented through the date on which parties enter
  into the relevant transaction.
* `FloatingRateIndexEnum_CAD_ISDA_Swap_Rate`
  Per 2006 ISDA Definitions or Annex to the 2000 ISDA
  Definitions, Section 7.1 Rate Options, as amended and
  supplemented through the date on which parties enter
  into the relevant transaction.
* `FloatingRateIndexEnum_CAD_LIBOR_BBA`
  Per 2006 ISDA Definitions or Annex to the 2000 ISDA
  Definitions, Section 7.1 Rate Options, as amended and
  supplemented through the date on which parties enter
  into the relevant transaction.
* `FloatingRateIndexEnum_CAD_LIBOR_BBA_Bloomberg`
  Per 2006 ISDA Definitions or Annex to the 2000 ISDA
  Definitions, Section 7.1 Rate Options, as amended and
  supplemented through the date on which parties enter
  into the relevant transaction.
* `FloatingRateIndexEnum_CAD_LIBOR_BBA_SwapMarker`
  Per 2006 ISDA Definitions or Annex to the 2000 ISDA
  Definitions, Section 7.1 Rate Options, as amended and
  supplemented through the date on which parties enter
  into the relevant transaction.
* `FloatingRateIndexEnum_CAD_LIBOR_Reference_Banks`
  Per 2006 ISDA Definitions or Annex to the 2000 ISDA
  Definitions, Section 7.1 Rate Options, as amended and
  supplemented through the date on which parties enter
  into the relevant transaction.
* `FloatingRateIndexEnum_CAD_REPO_CORRA`
  Per 2006 ISDA Definitions or Annex to the 2000 ISDA
  Definitions, Section 7.1 Rate Options, as amended and
  supplemented through the date on which parties enter
  into the relevant transaction.
* `FloatingRateIndexEnum_CAD_TBILL_ISDD`
  Per 2006 ISDA Definitions or Annex to the 2000 ISDA
  Definitions, Section 7.1 Rate Options, as amended and
  supplemented through the date on which parties enter
  into the relevant transaction.
* `FloatingRateIndexEnum_CAD_TBILL_Reference_Banks`
  Per 2006 ISDA Definitions or Annex to the 2000 ISDA
  Definitions, Section 7.1 Rate Options, as amended and
  supplemented through the date on which parties enter
  into the relevant transaction.
* `FloatingRateIndexEnum_CAD_TBILL_Reuters`
  Per 2006 ISDA Definitions or Annex to the 2000 ISDA
  Definitions, Section 7.1 Rate Options, as amended and
  supplemented through the date on which parties enter
  into the relevant transaction.
* `FloatingRateIndexEnum_CAD_TBILL_Telerate`
  Per 2006 ISDA Definitions or Annex to the 2000 ISDA
  Definitions, Section 7.1 Rate Options, as amended and
  supplemented through the date on which parties enter
  into the relevant transaction.
* `FloatingRateIndexEnum_CHF_3M_LIBOR_SWAP_CME_vs_LCH_ICAP`
  Per 2006 ISDA Definitions or Annex to the 2000 ISDA
  Definitions, Section 7.1 Rate Options, as amended and
  supplemented through the date on which parties enter
  into the relevant transaction.
* `FloatingRateIndexEnum_CHF_3M_LIBOR_SWAP_CME_vs_LCH_ICAP_Bloomberg`
  Per 2006 ISDA Definitions or Annex to the 2000 ISDA
  Definitions, Section 7.1 Rate Options, as amended and
  supplemented through the date on which parties enter
  into the relevant transaction.
* `FloatingRateIndexEnum_CHF_3M_LIBOR_SWAP_EUREX_vs_LCH_ICAP`
  Per 2006 ISDA Definitions or Annex to the 2000 ISDA
  Definitions, Section 7.1 Rate Options, as amended and
  supplemented through the date on which parties enter
  into the relevant transaction.
* `FloatingRateIndexEnum_CHF_3M_LIBOR_SWAP_EUREX_vs_LCH_ICAP_Bloomberg`
  Per 2006 ISDA Definitions or Annex to the 2000 ISDA
  Definitions, Section 7.1 Rate Options, as amended and
  supplemented through the date on which parties enter
  into the relevant transaction.
* `FloatingRateIndexEnum_CHF_6M_LIBORSWAP_CME_vs_LCH_ICAP_Bloomberg`
  Per 2006 ISDA Definitions or Annex to the 2000 ISDA
  Definitions, Section 7.1 Rate Options, as amended and
  supplemented through the date on which parties enter
  into the relevant transaction.
* `FloatingRateIndexEnum_CHF_6M_LIBOR_SWAP_CME_vs_LCH_ICAP`
  Per 2006 ISDA Definitions or Annex to the 2000 ISDA
  Definitions, Section 7.1 Rate Options, as amended and
  supplemented through the date on which parties enter
  into the relevant transaction.
* `FloatingRateIndexEnum_CHF_6M_LIBOR_SWAP_EUREX_vs_LCH_ICAP`
  Per 2006 ISDA Definitions or Annex to the 2000 ISDA
  Definitions, Section 7.1 Rate Options, as amended and
  supplemented through the date on which parties enter
  into the relevant transaction.
* `FloatingRateIndexEnum_CHF_6M_LIBOR_SWAP_EUREX_vs_LCH_ICAP_Bloomberg`
  Per 2006 ISDA Definitions or Annex to the 2000 ISDA
  Definitions, Section 7.1 Rate Options, as amended and
  supplemented through the date on which parties enter
  into the relevant transaction.
* `FloatingRateIndexEnum_CHF_Annual_Swap_Rate`
  Per 2006 ISDA Definitions or Annex to the 2000 ISDA
  Definitions, Section 7.1 Rate Options, as amended and
  supplemented through the date on which parties enter
  into the relevant transaction.
* `FloatingRateIndexEnum_CHF_Annual_Swap_Rate_11_00_ICAP`
  Per 2006 ISDA Definitions or Annex to the 2000 ISDA
  Definitions, Section 7.1 Rate Options, as amended and
  supplemented through the date on which parties enter
  into the relevant transaction.
* `FloatingRateIndexEnum_CHF_Annual_Swap_Rate_Reference_Banks`
  Per 2006 ISDA Definitions or Annex to the 2000 ISDA
  Definitions, Section 7.1 Rate Options, as amended and
  supplemented through the date on which parties enter
  into the relevant transaction.
* `FloatingRateIndexEnum_CHF_Basis_Swap_3m_vs_6m_LIBOR_11_00_ICAP`
  Per 2006 ISDA Definitions or Annex to the 2000 ISDA
  Definitions, Section 7.1 Rate Options, as amended and
  supplemented through the date on which parties enter
  into the relevant transaction.
* `FloatingRateIndexEnum_CHF_ISDAFIX_Swap_Rate`
  Per 2006 ISDA Definitions or Annex to the 2000 ISDA
  Definitions, Section 7.1 Rate Options, as amended and
  supplemented through the date on which parties enter
  into the relevant transaction.
* `FloatingRateIndexEnum_CHF_LIBOR_BBA`
  Per 2006 ISDA Definitions or Annex to the 2000 ISDA
  Definitions, Section 7.1 Rate Options, as amended and
  supplemented through the date on which parties enter
  into the relevant transaction.
* `FloatingRateIndexEnum_CHF_LIBOR_BBA_Bloomberg`
  Per 2006 ISDA Definitions or Annex to the 2000 ISDA
  Definitions, Section 7.1 Rate Options, as amended and
  supplemented through the date on which parties enter
  into the relevant transaction.
* `FloatingRateIndexEnum_CHF_LIBOR_ISDA`
  Per 2006 ISDA Definitions or Annex to the 2000 ISDA
  Definitions, Section 7.1 Rate Options, as amended and
  supplemented through the date on which parties enter
  into the relevant transaction.
* `FloatingRateIndexEnum_CHF_LIBOR_Reference_Banks`
  Per 2006 ISDA Definitions or Annex to the 2000 ISDA
  Definitions, Section 7.1 Rate Options, as amended and
  supplemented through the date on which parties enter
  into the relevant transaction.
* `FloatingRateIndexEnum_CHF_OIS_11_00_ICAP`
  Per 2006 ISDA Definitions or Annex to the 2000 ISDA
  Definitions, Section 7.1 Rate Options, as amended and
  supplemented through the date on which parties enter
  into the relevant transaction.
* `FloatingRateIndexEnum_CHF_SARON_OIS_COMPOUND`
  PPer 2006 ISDA Definitions or Annex to the 2000 ISDA
  Definitions, Section 7.1 Rate Options, as amended and
  supplemented through the date on which parties enter
  into the relevant transaction.
* `FloatingRateIndexEnum_CHF_TOIS_OIS_COMPOUND`
  Per 2006 ISDA Definitions or Annex to the 2000 ISDA
  Definitions, Section 7.1 Rate Options, as amended and
  supplemented through the date on which parties enter
  into the relevant transaction.
* `FloatingRateIndexEnum_CHF_USD_Basis_Swaps_11_00_ICAP`
  Per 2006 ISDA Definitions or Annex to the 2000 ISDA
  Definitions, Section 7.1 Rate Options, as amended and
  supplemented through the date on which parties enter
  into the relevant transaction.
* `FloatingRateIndexEnum_CLP_TNA`
  Refers to the Indice Camara Promedio (&#39;ICP&#39;)
  rate for Chilean Pesos which, for a Reset Date, is
  determined and published by the Asociacion de Bancos
  e Instituciones Financieras de Chile A.G.
  (&#39;ABIF&#39;) in accordance with the
  &#39;Reglamento Indice de Camara Promedio&#39; of the
  ABIF as published in the Diario Oficial de la
  Republica de Chile (the &#39;ICP Rules&#39;) and
  which is reported on the ABIF website by not later
  than 10:00 a.m., Santiago time, on that Reset Date.
* `FloatingRateIndexEnum_CL_CLICP_Bloomberg`
  Per 2006 ISDA Definitions or Annex to the 2000 ISDA
  Definitions, Section 7.1 Rate Options, as amended and
  supplemented through the date on which parties enter
  into the relevant transaction.
* `FloatingRateIndexEnum_CNH_HIBOR_Reference_Banks`
  Per 2006 ISDA Definitions or Annex to the 2000 ISDA
  Definitions, Section 7.1 Rate Options, as amended and
  supplemented through the date on which parties enter
  into the relevant transaction.
* `FloatingRateIndexEnum_CNH_HIBOR_TMA`
  Per 2006 ISDA Definitions or Annex to the 2000 ISDA
  Definitions, Section 7.1 Rate Options, as amended and
  supplemented through the date on which parties enter
  into the relevant transaction.
* `FloatingRateIndexEnum_CNY_7_Repo_Compounding_Date`
  Per 2006 ISDA Definitions or Annex to the 2000 ISDA
  Definitions, Section 7.1 Rate Options, as amended and
  supplemented through the date on which parties enter
  into the relevant transaction.
* `FloatingRateIndexEnum_CNY_CNREPOFIX_CFXS_Reuters`
  Per 2006 ISDA Definitions or Annex to the 2000 ISDA
  Definitions, Section 7.1 Rate Options, as amended and
  supplemented through the date on which parties enter
  into the relevant transaction.
* `FloatingRateIndexEnum_CNY_PBOCB_Reuters`
  Per 2006 ISDA Definitions or Annex to the 2000 ISDA
  Definitions, Section 7.1 Rate Options, as amended and
  supplemented through the date on which parties enter
  into the relevant transaction.
* `FloatingRateIndexEnum_CNY_Quarterly_7_day_Repo_Non_Deliverable_Swap_Rate_TRADITION`
  Per 2006 ISDA Definitions or Annex to the 2000 ISDA
  Definitions, Section 7.1 Rate Options, as amended and
  supplemented through the date on which parties enter
  into the relevant transaction.
* `FloatingRateIndexEnum_CNY_Quarterly_7_day_Repo_Non_Deliverable_Swap_Rate_TRADITION_Reference_Banks`
  Per 2006 ISDA Definitions or Annex to the 2000 ISDA
  Definitions, Section 7.1 Rate Options, as amended and
  supplemented through the date on which parties enter
  into the relevant transaction.
* `FloatingRateIndexEnum_CNY_SHIBOR_Reuters`
  Per 2006 ISDA Definitions or Annex to the 2000 ISDA
  Definitions, Section 7.1 Rate Options, as amended and
  supplemented through the date on which parties enter
  into the relevant transaction..
* `FloatingRateIndexEnum_CNY_Semi_Annual_Swap_Rate_11_00_BGCANTOR`
  Per 2006 ISDA Definitions or Annex to the 2000 ISDA
  Definitions, Section 7.1 Rate Options, as amended and
  supplemented through the date on which parties enter
  into the relevant transaction.
* `FloatingRateIndexEnum_CNY_Semi_Annual_Swap_Rate_Reference_Banks`
  Per 2006 ISDA Definitions or Annex to the 2000 ISDA
  Definitions, Section 7.1 Rate Options, as amended and
  supplemented through the date on which parties enter
  into the relevant transaction.
* `FloatingRateIndexEnum_CNY_Shibor_OIS_Compounding`
  Per 2006 ISDA Definitions or Annex to the 2000 ISDA
  Definitions, Section 7.1 Rate Options, as amended and
  supplemented through the date on which parties enter
  into the relevant transaction.
* `FloatingRateIndexEnum_COP_IBR_OIS_COMPOUND`
  Per 2006 ISDA Definitions or Annex to the 2000 ISDA
  Definitions, Section 7.1 Rate Options, as amended and
  supplemented through the date on which parties enter
  into the relevant transaction.
* `FloatingRateIndexEnum_CZK_Annual_Swap_Rate_11_00_BGCANTOR`
  Per 2006 ISDA Definitions or Annex to the 2000 ISDA
  Definitions, Section 7.1 Rate Options, as amended and
  supplemented through the date on which parties enter
  into the relevant transaction.
* `FloatingRateIndexEnum_CZK_Annual_Swap_Rate_Reference_Banks`
  Per 2006 ISDA Definitions or Annex to the 2000 ISDA
  Definitions, Section 7.1 Rate Options, as amended and
  supplemented through the date on which parties enter
  into the relevant transaction.
* `FloatingRateIndexEnum_CZK_PRIBOR_PRBO`
  Per 2006 ISDA Definitions or Annex to the 2000 ISDA
  Definitions, Section 7.1 Rate Options, as amended and
  supplemented through the date on which parties enter
  into the relevant transaction.
* `FloatingRateIndexEnum_CZK_PRIBOR_Reference_Banks`
  Per 2006 ISDA Definitions or Annex to the 2000 ISDA
  Definitions, Section 7.1 Rate Options, as amended and
  supplemented through the date on which parties enter
  into the relevant transaction.
* `FloatingRateIndexEnum_DKK_CIBOR2_Bloomberg`
  Per 2006 ISDA Definitions or Annex to the 2000 ISDA
  Definitions, Section 7.1 Rate Options, as amended and
  supplemented through the date on which parties enter
  into the relevant transaction.
* `FloatingRateIndexEnum_DKK_CIBOR2_DKNA13`
  Per 2006 ISDA Definitions or Annex to the 2000 ISDA
  Definitions, Section 7.1 Rate Options, as amended and
  supplemented through the date on which parties enter
  into the relevant transaction.
* `FloatingRateIndexEnum_DKK_CIBOR_DKNA13`
  Per 2006 ISDA Definitions or Annex to the 2000 ISDA
  Definitions, Section 7.1 Rate Options, as amended and
  supplemented through the date on which parties enter
  into the relevant transaction.
* `FloatingRateIndexEnum_DKK_CIBOR_DKNA13_Bloomberg`
  Per 2006 ISDA Definitions or Annex to the 2000 ISDA
  Definitions, Section 7.1 Rate Options, as amended and
  supplemented through the date on which parties enter
  into the relevant transaction.
* `FloatingRateIndexEnum_DKK_CIBOR_Reference_Banks`
  Per 2006 ISDA Definitions or Annex to the 2000 ISDA
  Definitions, Section 7.1 Rate Options, as amended and
  supplemented through the date on which parties enter
  into the relevant transaction.
* `FloatingRateIndexEnum_DKK_CITA_DKNA14_COMPOUND`
  Per 2006 ISDA Definitions or Annex to the 2000 ISDA
  Definitions, Section 7.1 Rate Options, as amended and
  supplemented through the date on which parties enter
  into the relevant transaction.
* `FloatingRateIndexEnum_DKK_DKKOIS_OIS_COMPOUND`
  Per 2006 ISDA Definitions or Annex to the 2000 ISDA
  Definitions, Section 7.1 Rate Options, as amended and
  supplemented through the date on which parties enter
  into the relevant transaction.
* `FloatingRateIndexEnum_EUR_3M_EURIBOR_SWAP_CME_vs_LCH_ICAP`
  Per 2006 ISDA Definitions or Annex to the 2000 ISDA
  Definitions, Section 7.1 Rate Options, as amended and
  supplemented through the date on which parties enter
  into the relevant transaction.
* `FloatingRateIndexEnum_EUR_3M_EURIBOR_SWAP_CME_vs_LCH_ICAP_Bloomberg`
  Per 2006 ISDA Definitions or Annex to the 2000 ISDA
  Definitions, Section 7.1 Rate Options, as amended and
  supplemented through the date on which parties enter
  into the relevant transaction.
* `FloatingRateIndexEnum_EUR_3M_EURIBOR_SWAP_EUREX_vs_LCH_ICAP`
  Per 2006 ISDA Definitions or Annex to the 2000 ISDA
  Definitions, Section 7.1 Rate Options, as amended and
  supplemented through the date on which parties enter
  into the relevant transaction.
* `FloatingRateIndexEnum_EUR_3M_EURIBOR_SWAP_EUREX_vs_LCH_ICAP_Bloomberg`
  Per 2006 ISDA Definitions or Annex to the 2000 ISDA
  Definitions, Section 7.1 Rate Options, as amended and
  supplemented through the date on which parties enter
  into the relevant transaction.
* `FloatingRateIndexEnum_EUR_6M_EURIBOR_SWAP_CME_vs_LCH_ICAP`
  Per 2006 ISDA Definitions or Annex to the 2000 ISDA
  Definitions, Section 7.1 Rate Options, as amended and
  supplemented through the date on which parties enter
  into the relevant transaction.
* `FloatingRateIndexEnum_EUR_6M_EURIBOR_SWAP_CME_vs_LCH_ICAP_Bloomberg`
  Per 2006 ISDA Definitions or Annex to the 2000 ISDA
  Definitions, Section 7.1 Rate Options, as amended and
  supplemented through the date on which parties enter
  into the relevant transaction.
* `FloatingRateIndexEnum_EUR_6M_EURIBOR_SWAP_EUREX_vs_LCH_ICAP`
  Per 2006 ISDA Definitions or Annex to the 2000 ISDA
  Definitions, Section 7.1 Rate Options, as amended and
  supplemented through the date on which parties enter
  into the relevant transaction.
* `FloatingRateIndexEnum_EUR_6M_EURIBOR_SWAP_EUREX_vs_LCH_ICAP_Bloomberg`
  Per 2006 ISDA Definitions or Annex to the 2000 ISDA
  Definitions, Section 7.1 Rate Options, as amended and
  supplemented through the date on which parties enter
  into the relevant transaction.
* `FloatingRateIndexEnum_EUR_Annual_Swap_Rate_10_00`
  Per 2006 ISDA Definitions or Annex to the 2000 ISDA
  Definitions, Section 7.1 Rate Options, as amended and
  supplemented through the date on which parties enter
  into the relevant transaction.
* `FloatingRateIndexEnum_EUR_Annual_Swap_Rate_10_00_BGCANTOR`
  Per 2006 ISDA Definitions or Annex to the 2000 ISDA
  Definitions, Section 7.1 Rate Options, as amended and
  supplemented through the date on which parties enter
  into the relevant transaction.
* `FloatingRateIndexEnum_EUR_Annual_Swap_Rate_10_00_Bloomberg`
  Per 2006 ISDA Definitions or Annex to the 2000 ISDA
  Definitions, Section 7.1 Rate Options, as amended and
  supplemented through the date on which parties enter
  into the relevant transaction.
* `FloatingRateIndexEnum_EUR_Annual_Swap_Rate_10_00_ICAP`
  Per 2006 ISDA Definitions or Annex to the 2000 ISDA
  Definitions, Section 7.1 Rate Options, as amended and
  supplemented through the date on which parties enter
  into the relevant transaction.
* `FloatingRateIndexEnum_EUR_Annual_Swap_Rate_10_00_SwapMarker`
  Per 2006 ISDA Definitions or Annex to the 2000 ISDA
  Definitions, Section 7.1 Rate Options, as amended and
  supplemented through the date on which parties enter
  into the relevant transaction.
* `FloatingRateIndexEnum_EUR_Annual_Swap_Rate_10_00_TRADITION`
  Per 2006 ISDA Definitions or Annex to the 2000 ISDA
  Definitions, Section 7.1 Rate Options, as amended and
  supplemented through the date on which parties enter
  into the relevant transaction.
* `FloatingRateIndexEnum_EUR_Annual_Swap_Rate_11_00`
  Per 2006 ISDA Definitions or Annex to the 2000 ISDA
  Definitions, Section 7.1 Rate Options, as amended and
  supplemented through the date on which parties enter
  into the relevant transaction.
* `FloatingRateIndexEnum_EUR_Annual_Swap_Rate_11_00_Bloomberg`
  Per 2006 ISDA Definitions or Annex to the 2000 ISDA
  Definitions, Section 7.1 Rate Options, as amended and
  supplemented through the date on which parties enter
  into the relevant transaction.
* `FloatingRateIndexEnum_EUR_Annual_Swap_Rate_11_00_ICAP`
  Per 2006 ISDA Definitions or Annex to the 2000 ISDA
  Definitions, Section 7.1 Rate Options, as amended and
  supplemented through the date on which parties enter
  into the relevant transaction.
* `FloatingRateIndexEnum_EUR_Annual_Swap_Rate_11_00_SwapMarker`
  Per 2006 ISDA Definitions or Annex to the 2000 ISDA
  Definitions, Section 7.1 Rate Options, as amended and
  supplemented through the date on which parties enter
  into the relevant transaction.
* `FloatingRateIndexEnum_EUR_Annual_Swap_Rate_3_Month`
  Per 2006 ISDA Definitions or Annex to the 2000 ISDA
  Definitions, Section 7.1 Rate Options, as amended and
  supplemented through the date on which parties enter
  into the relevant transaction.
* `FloatingRateIndexEnum_EUR_Annual_Swap_Rate_3_Month_SwapMarker`
  Per 2006 ISDA Definitions or Annex to the 2000 ISDA
  Definitions, Section 7.1 Rate Options, as amended and
  supplemented through the date on which parties enter
  into the relevant transaction.
* `FloatingRateIndexEnum_EUR_Annual_Swap_Rate_4_15_TRADITION`
  Per 2006 ISDA Definitions or Annex to the 2000 ISDA
  Definitions, Section 7.1 Rate Options, as amended and
  supplemented through the date on which parties enter
  into the relevant transaction.
* `FloatingRateIndexEnum_EUR_Annual_Swap_Rate_Reference_Banks`
  Per 2006 ISDA Definitions or Annex to the 2000 ISDA
  Definitions, Section 7.1 Rate Options, as amended and
  supplemented through the date on which parties enter
  into the relevant transaction.
* `FloatingRateIndexEnum_EUR_Basis_Swap_EONIA_vs_3m_EUR_IBOR_Swap_Rates_A_360_10_00_ICAP`
  Per 2006 ISDA Definitions or Annex to the 2000 ISDA
  Definitions, Section 7.1 Rate Options, as amended and
  supplemented through the date on which parties enter
  into the relevant transaction.
* `FloatingRateIndexEnum_EUR_EONIA_AVERAGE`
  Per 2006 ISDA Definitions or Annex to the 2000 ISDA
  Definitions, Section 7.1 Rate Options, as amended and
  supplemented through the date on which parties enter
  into the relevant transaction.
* `FloatingRateIndexEnum_EUR_EONIA_OIS_10_00_BGCANTOR`
  Per 2006 ISDA Definitions or Annex to the 2000 ISDA
  Definitions, Section 7.1 Rate Options, as amended and
  supplemented through the date on which parties enter
  into the relevant transaction.
* `FloatingRateIndexEnum_EUR_EONIA_OIS_10_00_ICAP`
  Per 2006 ISDA Definitions or Annex to the 2000 ISDA
  Definitions, Section 7.1 Rate Options, as amended and
  supplemented through the date on which parties enter
  into the relevant transaction.
* `FloatingRateIndexEnum_EUR_EONIA_OIS_10_00_TRADITION`
  Per 2006 ISDA Definitions or Annex to the 2000 ISDA
  Definitions, Section 7.1 Rate Options, as amended and
  supplemented through the date on which parties enter
  into the relevant transaction.
* `FloatingRateIndexEnum_EUR_EONIA_OIS_11_00_ICAP`
  Per 2006 ISDA Definitions or Annex to the 2000 ISDA
  Definitions, Section 7.1 Rate Options, as amended and
  supplemented through the date on which parties enter
  into the relevant transaction.
* `FloatingRateIndexEnum_EUR_EONIA_OIS_4_15_TRADITION`
  Per 2006 ISDA Definitions or Annex to the 2000 ISDA
  Definitions, Section 7.1 Rate Options, as amended and
  supplemented through the date on which parties enter
  into the relevant transaction.
* `FloatingRateIndexEnum_EUR_EONIA_OIS_COMPOUND`
  Per 2006 ISDA Definitions or Annex to the 2000 ISDA
  Definitions, Section 7.1 Rate Options, as amended and
  supplemented through the date on which parties enter
  into the relevant transaction.
* `FloatingRateIndexEnum_EUR_EONIA_OIS_COMPOUND_Bloomberg`
  Per 2006 ISDA Definitions or Annex to the 2000 ISDA
  Definitions, Section 7.1 Rate Options, as amended and
  supplemented through the date on which parties enter
  into the relevant transaction.
* `FloatingRateIndexEnum_EUR_EONIA_Swap_Index`
  Per 2006 ISDA Definitions or Annex to the 2000 ISDA
  Definitions, Section 7.1 Rate Options, as amended and
  supplemented through the date on which parties enter
  into the relevant transaction.
* `FloatingRateIndexEnum_EUR_EURIBOR_Act_365`
  Per 2006 ISDA Definitions or Annex to the 2000 ISDA
  Definitions, Section 7.1 Rate Options, as amended and
  supplemented through the date on which parties enter
  into the relevant transaction.
* `FloatingRateIndexEnum_EUR_EURIBOR_Act_365_Bloomberg`
  Per 2006 ISDA Definitions or Annex to the 2000 ISDA
  Definitions, Section 7.1 Rate Options, as amended and
  supplemented through the date on which parties enter
  into the relevant transaction.
* `FloatingRateIndexEnum_EUR_EURIBOR_Annual_Bond_Swap_vs_1m_11_00_ICAP`
  Per 2006 ISDA Definitions or Annex to the 2000 ISDA
  Definitions, Section 7.1 Rate Options, as amended and
  supplemented through the date on which parties enter
  into the relevant transaction.
* `FloatingRateIndexEnum_EUR_EURIBOR_Basis_Swap_1m_vs_3m_Euribor_11_00_ICAP`
  Per 2006 ISDA Definitions or Annex to the 2000 ISDA
  Definitions, Section 7.1 Rate Options, as amended and
  supplemented through the date on which parties enter
  into the relevant transaction.
* `FloatingRateIndexEnum_EUR_EURIBOR_Basis_Swap_3m_vs_6m_11_00_ICAP`
  Per 2006 ISDA Definitions or Annex to the 2000 ISDA
  Definitions, Section 7.1 Rate Options, as amended and
  supplemented through the date on which parties enter
  into the relevant transaction.
* `FloatingRateIndexEnum_EUR_EURIBOR_Reference_Banks`
  Per 2006 ISDA Definitions or Annex to the 2000 ISDA
  Definitions, Section 7.1 Rate Options, as amended and
  supplemented through the date on which parties enter
  into the relevant transaction.
* `FloatingRateIndexEnum_EUR_EURIBOR_Reuters`
  Per 2006 ISDA Definitions or Annex to the 2000 ISDA
  Definitions, Section 7.1 Rate Options, as amended and
  supplemented through the date on which parties enter
  into the relevant transaction.
* `FloatingRateIndexEnum_EUR_EURIBOR_Telerate`
  Per 2006 ISDA Definitions or Annex to the 2000 ISDA
  Definitions, Section 7.1 Rate Options, as amended and
  supplemented through the date on which parties enter
  into the relevant transaction.
* `FloatingRateIndexEnum_EUR_EURONIA_OIS_COMPOUND`
  Per 2006 ISDA Definitions or Annex to the 2000 ISDA
  Definitions, Section 7.1 Rate Options, as amended and
  supplemented through the date on which parties enter
  into the relevant transaction.
* `FloatingRateIndexEnum_EUR_ISDA_EURIBOR_Swap_Rate_11_00`
  Per 2006 ISDA Definitions or Annex to the 2000 ISDA
  Definitions, Section 7.1 Rate Options, as amended and
  supplemented through the date on which parties enter
  into the relevant transaction.
* `FloatingRateIndexEnum_EUR_ISDA_EURIBOR_Swap_Rate_12_00`
  Per 2006 ISDA Definitions or Annex to the 2000 ISDA
  Definitions, Section 7.1 Rate Options, as amended and
  supplemented through the date on which parties enter
  into the relevant transaction.
* `FloatingRateIndexEnum_EUR_ISDA_LIBOR_Swap_Rate_10_00`
  Per 2006 ISDA Definitions or Annex to the 2000 ISDA
  Definitions, Section 7.1 Rate Options, as amended and
  supplemented through the date on which parties enter
  into the relevant transaction.
* `FloatingRateIndexEnum_EUR_ISDA_LIBOR_Swap_Rate_11_00`
  Per 2006 ISDA Definitions or Annex to the 2000 ISDA
  Definitions, Section 7.1 Rate Options, as amended and
  supplemented through the date on which parties enter
  into the relevant transaction.
* `FloatingRateIndexEnum_EUR_LIBOR_BBA`
  Per 2006 ISDA Definitions or Annex to the 2000 ISDA
  Definitions, Section 7.1 Rate Options, as amended and
  supplemented through the date on which parties enter
  into the relevant transaction.
* `FloatingRateIndexEnum_EUR_LIBOR_BBA_Bloomberg`
  Per 2006 ISDA Definitions or Annex to the 2000 ISDA
  Definitions, Section 7.1 Rate Options, as amended and
  supplemented through the date on which parties enter
  into the relevant transaction.
* `FloatingRateIndexEnum_EUR_LIBOR_Reference_Banks`
  Per 2006 ISDA Definitions or Annex to the 2000 ISDA
  Definitions, Section 7.1 Rate Options, as amended and
  supplemented through the date on which parties enter
  into the relevant transaction.
* `FloatingRateIndexEnum_EUR_TAM_CDC`
  Per 2006 ISDA Definitions or Annex to the 2000 ISDA
  Definitions, Section 7.1 Rate Options, as amended and
  supplemented through the date on which parties enter
  into the relevant transaction.
* `FloatingRateIndexEnum_EUR_TEC10_CNO`
  Per 2006 ISDA Definitions or Annex to the 2000 ISDA
  Definitions, Section 7.1 Rate Options, as amended and
  supplemented through the date on which parties enter
  into the relevant transaction.
* `FloatingRateIndexEnum_EUR_TEC10_CNO_SwapMarker`
  Per 2006 ISDA Definitions or Annex to the 2000 ISDA
  Definitions, Section 7.1 Rate Options, as amended and
  supplemented through the date on which parties enter
  into the relevant transaction.
* `FloatingRateIndexEnum_EUR_TEC10_Reference_Banks`
  Per 2006 ISDA Definitions or Annex to the 2000 ISDA
  Definitions, Section 7.1 Rate Options, as amended and
  supplemented through the date on which parties enter
  into the relevant transaction.
* `FloatingRateIndexEnum_EUR_TEC5_CNO`
  Per 2006 ISDA Definitions or Annex to the 2000 ISDA
  Definitions, Section 7.1 Rate Options, as amended and
  supplemented through the date on which parties enter
  into the relevant transaction.
* `FloatingRateIndexEnum_EUR_TEC5_CNO_SwapMarker`
  Per 2006 ISDA Definitions or Annex to the 2000 ISDA
  Definitions, Section 7.1 Rate Options, as amended and
  supplemented through the date on which parties enter
  into the relevant transaction.
* `FloatingRateIndexEnum_EUR_TEC5_Reference_Banks`
  Per 2006 ISDA Definitions or Annex to the 2000 ISDA
  Definitions, Section 7.1 Rate Options, as amended and
  supplemented through the date on which parties enter
  into the relevant transaction.
* `FloatingRateIndexEnum_EUR_TMM_CDC_COMPOUND`
  Per 2006 ISDA Definitions or Annex to the 2000 ISDA
  Definitions, Section 7.1 Rate Options, as amended and
  supplemented through the date on which parties enter
  into the relevant transaction.
* `FloatingRateIndexEnum_EUR_USD_Basis_Swaps_11_00_ICAP`
  Per 2006 ISDA Definitions or Annex to the 2000 ISDA
  Definitions, Section 7.1 Rate Options, as amended and
  supplemented through the date on which parties enter
  into the relevant transaction.
* `FloatingRateIndexEnum_GBP_6M_LIBOR_SWAP_CME_vs_LCH_ICAP`
  Per 2006 ISDA Definitions or Annex to the 2000 ISDA
  Definitions, Section 7.1 Rate Options, as amended and
  supplemented through the date on which parties enter
  into the relevant transaction.
* `FloatingRateIndexEnum_GBP_6M_LIBOR_SWAP_CME_vs_LCH_ICAP_Bloomberg`
  Per 2006 ISDA Definitions or Annex to the 2000 ISDA
  Definitions, Section 7.1 Rate Options, as amended and
  supplemented through the date on which parties enter
  into the relevant transaction.
* `FloatingRateIndexEnum_GBP_6M_LIBOR_SWAP_EUREX_vs_LCH_ICAP`
  Per 2006 ISDA Definitions or Annex to the 2000 ISDA
  Definitions, Section 7.1 Rate Options, as amended and
  supplemented through the date on which parties enter
  into the relevant transaction.
* `FloatingRateIndexEnum_GBP_6M_LIBOR_SWAP_EUREX_vs_LCH_ICAP_Bloomberg`
  Per 2006 ISDA Definitions or Annex to the 2000 ISDA
  Definitions, Section 7.1 Rate Options, as amended and
  supplemented through the date on which parties enter
  into the relevant transaction.
* `FloatingRateIndexEnum_GBP_ISDA_Swap_Rate`
  Per 2006 ISDA Definitions or Annex to the 2000 ISDA
  Definitions, Section 7.1 Rate Options, as amended and
  supplemented through the date on which parties enter
  into the relevant transaction.
* `FloatingRateIndexEnum_GBP_LIBOR_BBA`
  Per 2006 ISDA Definitions or Annex to the 2000 ISDA
  Definitions, Section 7.1 Rate Options, as amended and
  supplemented through the date on which parties enter
  into the relevant transaction.
* `FloatingRateIndexEnum_GBP_LIBOR_BBA_Bloomberg`
  Per 2006 ISDA Definitions or Annex to the 2000 ISDA
  Definitions, Section 7.1 Rate Options, as amended and
  supplemented through the date on which parties enter
  into the relevant transaction.
* `FloatingRateIndexEnum_GBP_LIBOR_ISDA`
  Per 2006 ISDA Definitions or Annex to the 2000 ISDA
  Definitions, Section 7.1 Rate Options, as amended and
  supplemented through the date on which parties enter
  into the relevant transaction.
* `FloatingRateIndexEnum_GBP_LIBOR_Reference_Banks`
  Per 2006 ISDA Definitions or Annex to the 2000 ISDA
  Definitions, Section 7.1 Rate Options, as amended and
  supplemented through the date on which parties enter
  into the relevant transaction.
* `FloatingRateIndexEnum_GBP_SONIA_COMPOUND`
  Per 2006 ISDA Definitions or Annex to the 2000 ISDA
  Definitions, Section 7.1 Rate Options, as amended and
  supplemented through the date on which parties enter
  into the relevant transaction.
* `FloatingRateIndexEnum_GBP_SONIA_OIS_11_00_ICAP`
  Per 2006 ISDA Definitions or Annex to the 2000 ISDA
  Definitions, Section 7.1 Rate Options, as amended and
  supplemented through the date on which parties enter
  into the relevant transaction.
* `FloatingRateIndexEnum_GBP_SONIA_OIS_11_00_TRADITION`
  Per 2006 ISDA Definitions or Annex to the 2000 ISDA
  Definitions, Section 7.1 Rate Options, as amended and
  supplemented through the date on which parties enter
  into the relevant transaction.
* `FloatingRateIndexEnum_GBP_SONIA_OIS_4_15_TRADITION`
  Per 2006 ISDA Definitions or Annex to the 2000 ISDA
  Definitions, Section 7.1 Rate Options, as amended and
  supplemented through the date on which parties enter
  into the relevant transaction.
* `FloatingRateIndexEnum_GBP_Semi_Annual_Swap_Rate`
  Per 2006 ISDA Definitions or Annex to the 2000 ISDA
  Definitions, Section 7.1 Rate Options, as amended and
  supplemented through the date on which parties enter
  into the relevant transaction.
* `FloatingRateIndexEnum_GBP_Semi_Annual_Swap_Rate_11_00_ICAP`
  Per 2006 ISDA Definitions or Annex to the 2000 ISDA
  Definitions, Section 7.1 Rate Options, as amended and
  supplemented through the date on which parties enter
  into the relevant transaction.
* `FloatingRateIndexEnum_GBP_Semi_Annual_Swap_Rate_11_00_TRADITION`
  Per 2006 ISDA Definitions or Annex to the 2000 ISDA
  Definitions, Section 7.1 Rate Options, as amended and
  supplemented through the date on which parties enter
  into the relevant transaction.
* `FloatingRateIndexEnum_GBP_Semi_Annual_Swap_Rate_4_15_TRADITION`
  Per 2006 ISDA Definitions or Annex to the 2000 ISDA
  Definitions, Section 7.1 Rate Options, as amended and
  supplemented through the date on which parties enter
  into the relevant transaction.
* `FloatingRateIndexEnum_GBP_Semi_Annual_Swap_Rate_Reference_Banks`
  Per 2006 ISDA Definitions or Annex to the 2000 ISDA
  Definitions, Section 7.1 Rate Options, as amended and
  supplemented through the date on which parties enter
  into the relevant transaction.
* `FloatingRateIndexEnum_GBP_Semi_Annual_Swap_Rate_SwapMarker26`
  Per 2006 ISDA Definitions or Annex to the 2000 ISDA
  Definitions, Section 7.1 Rate Options, as amended and
  supplemented through the date on which parties enter
  into the relevant transaction.
* `FloatingRateIndexEnum_GBP_USD_Basis_Swaps_11_00_ICAP`
  Per 2006 ISDA Definitions or Annex to the 2000 ISDA
  Definitions, Section 7.1 Rate Options, as amended and
  supplemented through the date on which parties enter
  into the relevant transaction.
* `FloatingRateIndexEnum_GBP_WMBA_RONIA_COMPOUND`
  Per 2006 ISDA Definitions or Annex to the 2000 ISDA
  Definitions, Section 7.1 Rate Options, as amended and
  supplemented through the date on which parties enter
  into the relevant transaction.
* `FloatingRateIndexEnum_GBP_WMBA_SONIA_COMPOUND`
  Per 2006 ISDA Definitions or Annex to the 2000 ISDA
  Definitions, Section 7.1 Rate Options, as amended and
  supplemented through the date on which parties enter
  into the relevant transaction.
* `FloatingRateIndexEnum_GRD_ATHIBOR_ATHIBOR`
  Per 2006 ISDA Definitions or Annex to the 2000 ISDA
  Definitions, Section 7.1 Rate Options, as amended and
  supplemented through the date on which parties enter
  into the relevant transaction.
* `FloatingRateIndexEnum_GRD_ATHIBOR_Reference_Banks`
  Per 2006 ISDA Definitions or Annex to the 2000 ISDA
  Definitions, Section 7.1 Rate Options, as amended and
  supplemented through the date on which parties enter
  into the relevant transaction.
* `FloatingRateIndexEnum_GRD_ATHIBOR_Telerate`
  Per 2006 ISDA Definitions or Annex to the 2000 ISDA
  Definitions, Section 7.1 Rate Options, as amended and
  supplemented through the date on which parties enter
  into the relevant transaction.
* `FloatingRateIndexEnum_GRD_ATHIMID_Reference_Banks`
  Per 2006 ISDA Definitions or Annex to the 2000 ISDA
  Definitions, Section 7.1 Rate Options, as amended and
  supplemented through the date on which parties enter
  into the relevant transaction.
* `FloatingRateIndexEnum_GRD_ATHIMID_Reuters`
  Per 2006 ISDA Definitions or Annex to the 2000 ISDA
  Definitions, Section 7.1 Rate Options, as amended and
  supplemented through the date on which parties enter
  into the relevant transaction.
* `FloatingRateIndexEnum_HKD_HIBOR_HIBOR_`
  Per 2006 ISDA Definitions or Annex to the 2000 ISDA
  Definitions, Section 7.1 Rate Options, as amended and
  supplemented through the date on which parties enter
  into the relevant transaction.
* `FloatingRateIndexEnum_HKD_HIBOR_HIBOR_Bloomberg`
  Per 2006 ISDA Definitions or Annex to the 2000 ISDA
  Definitions, Section 7.1 Rate Options, as amended and
  supplemented through the date on which parties enter
  into the relevant transaction.
* `FloatingRateIndexEnum_HKD_HIBOR_HKAB`
  Per 2006 ISDA Definitions or Annex to the 2000 ISDA
  Definitions, Section 7.1 Rate Options, as amended and
  supplemented through the date on which parties enter
  into the relevant transaction.
* `FloatingRateIndexEnum_HKD_HIBOR_HKAB_Bloomberg`
  Per 2006 ISDA Definitions or Annex to the 2000 ISDA
  Definitions, Section 7.1 Rate Options, as amended and
  supplemented through the date on which parties enter
  into the relevant transaction.
* `FloatingRateIndexEnum_HKD_HIBOR_ISDC`
  Per 2006 ISDA Definitions or Annex to the 2000 ISDA
  Definitions, Section 7.1 Rate Options, as amended and
  supplemented through the date on which parties enter
  into the relevant transaction.
* `FloatingRateIndexEnum_HKD_HIBOR_Reference_Banks`
  Per 2006 ISDA Definitions or Annex to the 2000 ISDA
  Definitions, Section 7.1 Rate Options, as amended and
  supplemented through the date on which parties enter
  into the relevant transaction.
* `FloatingRateIndexEnum_HKD_HONIX_OIS_COMPOUND`
  Per 2006 ISDA Definitions or Annex to the 2000 ISDA
  Definitions, Section 7.1 Rate Options, as amended and
  supplemented through the date on which parties enter
  into the relevant transaction.
* `FloatingRateIndexEnum_HKD_ISDA_Swap_Rate_11_00`
  Per 2006 ISDA Definitions or Annex to the 2000 ISDA
  Definitions, Section 7.1 Rate Options, as amended and
  supplemented through the date on which parties enter
  into the relevant transaction.
* `FloatingRateIndexEnum_HKD_ISDA_Swap_Rate_4_00`
  Per 2006 ISDA Definitions or Annex to the 2000 ISDA
  Definitions, Section 7.1 Rate Options, as amended and
  supplemented through the date on which parties enter
  into the relevant transaction.
* `FloatingRateIndexEnum_HKD_Quarterly_Annual_Swap_Rate_11_00_BGCANTOR`
  Per 2006 ISDA Definitions or Annex to the 2000 ISDA
  Definitions, Section 7.1 Rate Options, as amended and
  supplemented through the date on which parties enter
  into the relevant transaction.
* `FloatingRateIndexEnum_HKD_Quarterly_Annual_Swap_Rate_11_00_TRADITION`
  Per 2006 ISDA Definitions or Annex to the 2000 ISDA
  Definitions, Section 7.1 Rate Options, as amended and
  supplemented through the date on which parties enter
  into the relevant transaction.
* `FloatingRateIndexEnum_HKD_Quarterly_Annual_Swap_Rate_4_00_BGCANTOR`
  Per 2006 ISDA Definitions or Annex to the 2000 ISDA
  Definitions, Section 7.1 Rate Options, as amended and
  supplemented through the date on which parties enter
  into the relevant transaction.
* `FloatingRateIndexEnum_HKD_Quarterly_Annual_Swap_Rate_Reference_Banks`
  Per 2006 ISDA Definitions or Annex to the 2000 ISDA
  Definitions, Section 7.1 Rate Options, as amended and
  supplemented through the date on which parties enter
  into the relevant transaction.
* `FloatingRateIndexEnum_HKD_Quarterly_Quarterly_Swap_Rate_11_00_ICAP`
  Per 2006 ISDA Definitions or Annex to the 2000 ISDA
  Definitions, Section 7.1 Rate Options, as amended and
  supplemented through the date on which parties enter
  into the relevant transaction.
* `FloatingRateIndexEnum_HKD_Quarterly_Quarterly_Swap_Rate_4_00_ICAP`
  Per 2006 ISDA Definitions or Annex to the 2000 ISDA
  Definitions, Section 7.1 Rate Options, as amended and
  supplemented through the date on which parties enter
  into the relevant transaction.
* `FloatingRateIndexEnum_HKD_Quarterly_Quarterly_Swap_Rate_Reference_Banks`
  Per 2006 ISDA Definitions or Annex to the 2000 ISDA
  Definitions, Section 7.1 Rate Options, as amended and
  supplemented through the date on which parties enter
  into the relevant transaction.
* `FloatingRateIndexEnum_HUF_BUBOR_Reference_Banks`
  Per 2006 ISDA Definitions or Annex to the 2000 ISDA
  Definitions, Section 7.1 Rate Options, as amended and
  supplemented through the date on which parties enter
  into the relevant transaction.
* `FloatingRateIndexEnum_HUF_BUBOR_Reuters`
  Per 2006 ISDA Definitions or Annex to the 2000 ISDA
  Definitions, Section 7.1 Rate Options, as amended and
  supplemented through the date on which parties enter
  into the relevant transaction.
* `FloatingRateIndexEnum_IDR_IDMA_Bloomberg`
  Per 2006 ISDA Definitions or Annex to the 2000 ISDA
  Definitions, Section 7.1 Rate Options, as amended and
  supplemented through the date on which parties enter
  into the relevant transaction.
* `FloatingRateIndexEnum_IDR_IDRFIX`
  Per 2006 ISDA Definitions or Annex to the 2000 ISDA
  Definitions, Section 7.1 Rate Options, as amended and
  supplemented through the date on which parties enter
  into the relevant transaction.
* `FloatingRateIndexEnum_IDR_JIBOR_Reuters`
  Per 2006 ISDA Definitions or Annex to the 2000 ISDA
  Definitions, Section 7.1 Rate Options, as amended and
  supplemented through the date on which parties enter
  into the relevant transaction.
* `FloatingRateIndexEnum_IDR_SBI_Reuters`
  Per 2006 ISDA Definitions or Annex to the 2000 ISDA
  Definitions, Section 7.1 Rate Options, as amended and
  supplemented through the date on which parties enter
  into the relevant transaction.
* `FloatingRateIndexEnum_IDR_SOR_Reference_Banks`
  Per 2006 ISDA Definitions or Annex to the 2000 ISDA
  Definitions, Section 7.1 Rate Options, as amended and
  supplemented through the date on which parties enter
  into the relevant transaction.
* `FloatingRateIndexEnum_IDR_SOR_Reuters`
  Per 2006 ISDA Definitions or Annex to the 2000 ISDA
  Definitions, Section 7.1 Rate Options, as amended and
  supplemented through the date on which parties enter
  into the relevant transaction.
* `FloatingRateIndexEnum_IDR_SOR_Telerate`
  Per 2006 ISDA Definitions or Annex to the 2000 ISDA
  Definitions, Section 7.1 Rate Options, as amended and
  supplemented through the date on which parties enter
  into the relevant transaction.
* `FloatingRateIndexEnum_IDR_Semi_Annual_Swap_Rate_11_00_BGCANTOR`
  Per 2006 ISDA Definitions or Annex to the 2000 ISDA
  Definitions, Section 7.1 Rate Options, as amended and
  supplemented through the date on which parties enter
  into the relevant transaction.
* `FloatingRateIndexEnum_IDR_Semi_Annual_Swap_Rate_Reference_Banks`
  Per 2006 ISDA Definitions or Annex to the 2000 ISDA
  Definitions, Section 7.1 Rate Options, as amended and
  supplemented through the date on which parties enter
  into the relevant transaction.
* `FloatingRateIndexEnum_ILS_TELBOR01_Reuters`
  Per 2006 ISDA Definitions or Annex to the 2000 ISDA
  Definitions, Section 7.1 Rate Options, as amended and
  supplemented through the date on which parties enter
  into the relevant transaction.
* `FloatingRateIndexEnum_ILS_TELBOR_Reference_Banks`
  Per 2006 ISDA Definitions or Annex to the 2000 ISDA
  Definitions, Section 7.1 Rate Options, as amended and
  supplemented through the date on which parties enter
  into the relevant transaction.
* `FloatingRateIndexEnum_INR_BMK`
  Per 2006 ISDA Definitions or Annex to the 2000 ISDA
  Definitions, Section 7.1 Rate Options, as amended and
  supplemented through the date on which parties enter
  into the relevant transaction.
* `FloatingRateIndexEnum_INR_CMT`
  Per 2006 ISDA Definitions or Annex to the 2000 ISDA
  Definitions, Section 7.1 Rate Options, as amended and
  supplemented through the date on which parties enter
  into the relevant transaction.
* `FloatingRateIndexEnum_INR_FBIL_MIBOR_OIS_COMPOUND`
  Per 2006 ISDA Definitions or Annex to the 2000 ISDA
  Definitions, Section 7.1 Rate Options, as amended and
  supplemented through the date on which parties enter
  into the relevant transaction.
* `FloatingRateIndexEnum_INR_INBMK_REUTERS`
  Per 2006 ISDA Definitions or Annex to the 2000 ISDA
  Definitions, Section 7.1 Rate Options, as amended and
  supplemented through the date on which parties enter
  into the relevant transaction.
* `FloatingRateIndexEnum_INR_MIBOR_OIS_COMPOUND`
  Per 2006 ISDA Definitions or Annex to the 2000 ISDA
  Definitions, Section 7.1 Rate Options, as amended and
  supplemented through the date on which parties enter
  into the relevant transaction.
* `FloatingRateIndexEnum_INR_MIFOR`
  Per 2006 ISDA Definitions or Annex to the 2000 ISDA
  Definitions, Section 7.1 Rate Options, as amended and
  supplemented through the date on which parties enter
  into the relevant transaction.
* `FloatingRateIndexEnum_INR_MIOIS`
  Per 2006 ISDA Definitions or Annex to the 2000 ISDA
  Definitions, Section 7.1 Rate Options, as amended and
  supplemented through the date on which parties enter
  into the relevant transaction.
* `FloatingRateIndexEnum_INR_MITOR_OIS_COMPOUND`
  Per 2006 ISDA Definitions or Annex to the 2000 ISDA
  Definitions, Section 7.1 Rate Options, as amended and
  supplemented through the date on which parties enter
  into the relevant transaction.
* `FloatingRateIndexEnum_INR_Reference_Banks`
  Per 2006 ISDA Definitions or Annex to the 2000 ISDA
  Definitions, Section 7.1 Rate Options, as amended and
  supplemented through the date on which parties enter
  into the relevant transaction.
* `FloatingRateIndexEnum_INR_Semi_Annual_Swap_Rate_11_30_BGCANTOR`
  Per 2006 ISDA Definitions or Annex to the 2000 ISDA
  Definitions, Section 7.1 Rate Options, as amended and
  supplemented through the date on which parties enter
  into the relevant transaction.
* `FloatingRateIndexEnum_INR_Semi_Annual_Swap_Rate_Non_deliverable_16_00_Tullett_Prebon`
  Per 2006 ISDA Definitions or Annex to the 2000 ISDA
  Definitions, Section 7.1 Rate Options, as amended and
  supplemented through the date on which parties enter
  into the relevant transaction.
* `FloatingRateIndexEnum_INR_Semi_Annual_Swap_Rate_Reference_Banks`
  Per 2006 ISDA Definitions or Annex to the 2000 ISDA
  Definitions, Section 7.1 Rate Options, as amended and
  supplemented through the date on which parties enter
  into the relevant transaction.
* `FloatingRateIndexEnum_ISK_REIBOR_Reference_Banks`
  Per 2006 ISDA Definitions or Annex to the 2000 ISDA
  Definitions, Section 7.1 Rate Options, as amended and
  supplemented through the date on which parties enter
  into the relevant transaction.
* `FloatingRateIndexEnum_ISK_REIBOR_Reuters`
  Per 2006 ISDA Definitions or Annex to the 2000 ISDA
  Definitions, Section 7.1 Rate Options, as amended and
  supplemented through the date on which parties enter
  into the relevant transaction.
* `FloatingRateIndexEnum_JPY_Annual_Swap_Rate_11_00_TRADITION`
  Per 2006 ISDA Definitions or Annex to the 2000 ISDA
  Definitions, Section 7.1 Rate Options, as amended and
  supplemented through the date on which parties enter
  into the relevant transaction.
* `FloatingRateIndexEnum_JPY_Annual_Swap_Rate_3_00_TRADITION`
  Per 2006 ISDA Definitions or Annex to the 2000 ISDA
  Definitions, Section 7.1 Rate Options, as amended and
  supplemented through the date on which parties enter
  into the relevant transaction.
* `FloatingRateIndexEnum_JPY_BBSF_Bloomberg_10_00`
  Per 2006 ISDA Definitions or Annex to the 2000 ISDA
  Definitions, Section 7.1 Rate Options, as amended and
  supplemented through the date on which parties enter
  into the relevant transaction.
* `FloatingRateIndexEnum_JPY_BBSF_Bloomberg_15_00`
  Per 2006 ISDA Definitions or Annex to the 2000 ISDA
  Definitions, Section 7.1 Rate Options, as amended and
  supplemented through the date on which parties enter
  into the relevant transaction.
* `FloatingRateIndexEnum_JPY_ISDA_Swap_Rate_10_00`
  Per 2006 ISDA Definitions or Annex to the 2000 ISDA
  Definitions, Section 7.1 Rate Options, as amended and
  supplemented through the date on which parties enter
  into the relevant transaction.
* `FloatingRateIndexEnum_JPY_ISDA_Swap_Rate_15_00`
  Per 2006 ISDA Definitions or Annex to the 2000 ISDA
  Definitions, Section 7.1 Rate Options, as amended and
  supplemented through the date on which parties enter
  into the relevant transaction.
* `FloatingRateIndexEnum_JPY_LIBOR_BBA`
  Per 2006 ISDA Definitions or Annex to the 2000 ISDA
  Definitions, Section 7.1 Rate Options, as amended and
  supplemented through the date on which parties enter
  into the relevant transaction.
* `FloatingRateIndexEnum_JPY_LIBOR_BBA_Bloomberg`
  Per 2006 ISDA Definitions or Annex to the 2000 ISDA
  Definitions, Section 7.1 Rate Options, as amended and
  supplemented through the date on which parties enter
  into the relevant transaction.
* `FloatingRateIndexEnum_JPY_LIBOR_FRASETT`
  Per 2006 ISDA Definitions or Annex to the 2000 ISDA
  Definitions, Section 7.1 Rate Options, as amended and
  supplemented through the date on which parties enter
  into the relevant transaction.
* `FloatingRateIndexEnum_JPY_LIBOR_ISDA`
  Per 2006 ISDA Definitions or Annex to the 2000 ISDA
  Definitions, Section 7.1 Rate Options, as amended and
  supplemented through the date on which parties enter
  into the relevant transaction.
* `FloatingRateIndexEnum_JPY_LIBOR_Reference_Banks`
  Per 2006 ISDA Definitions or Annex to the 2000 ISDA
  Definitions, Section 7.1 Rate Options, as amended and
  supplemented through the date on which parties enter
  into the relevant transaction.
* `FloatingRateIndexEnum_JPY_LTPR_MHCB`
  Per 2006 ISDA Definitions or Annex to the 2000 ISDA
  Definitions, Section 7.1 Rate Options, as amended and
  supplemented through the date on which parties enter
  into the relevant transaction.
* `FloatingRateIndexEnum_JPY_LTPR_TBC`
  Per 2006 ISDA Definitions or Annex to the 2000 ISDA
  Definitions, Section 7.1 Rate Options, as amended and
  supplemented through the date on which parties enter
  into the relevant transaction.
* `FloatingRateIndexEnum_JPY_MUTANCALL_TONAR`
  Per 2006 ISDA Definitions or Annex to the 2000 ISDA
  Definitions, Section 7.1 Rate Options, as amended and
  supplemented through the date on which parties enter
  into the relevant transaction.
* `FloatingRateIndexEnum_JPY_OIS_11_00_ICAP`
  Per 2006 ISDA Definitions or Annex to the 2000 ISDA
  Definitions, Section 7.1 Rate Options, as amended and
  supplemented through the date on which parties enter
  into the relevant transaction.
* `FloatingRateIndexEnum_JPY_OIS_11_00_TRADITION`
  Per 2006 ISDA Definitions or Annex to the 2000 ISDA
  Definitions, Section 7.1 Rate Options, as amended and
  supplemented through the date on which parties enter
  into the relevant transaction.
* `FloatingRateIndexEnum_JPY_OIS_3_00_TRADITION`
  Per 2006 ISDA Definitions or Annex to the 2000 ISDA
  Definitions, Section 7.1 Rate Options, as amended and
  supplemented through the date on which parties enter
  into the relevant transaction.
* `FloatingRateIndexEnum_JPY_Quoting_Banks_LIBOR`
  Per 2006 ISDA Definitions or Annex to the 2000 ISDA
  Definitions, Section 7.1 Rate Options, as amended and
  supplemented through the date on which parties enter
  into the relevant transaction.
* `FloatingRateIndexEnum_JPY_STPR_Quoting_Banks`
  Per 2006 ISDA Definitions or Annex to the 2000 ISDA
  Definitions, Section 7.1 Rate Options, as amended and
  supplemented through the date on which parties enter
  into the relevant transaction.
* `FloatingRateIndexEnum_JPY_TIBOR_17096`
  Per 2006 ISDA Definitions or Annex to the 2000 ISDA
  Definitions, Section 7.1 Rate Options, as amended and
  supplemented through the date on which parties enter
  into the relevant transaction.
* `FloatingRateIndexEnum_JPY_TIBOR_17097`
  Per 2006 ISDA Definitions or Annex to the 2000 ISDA
  Definitions, Section 7.1 Rate Options, as amended and
  supplemented through the date on which parties enter
  into the relevant transaction.
* `FloatingRateIndexEnum_JPY_TIBOR_DTIBOR01`
  Per 2006 ISDA Definitions or Annex to the 2000 ISDA
  Definitions, Section 7.1 Rate Options, as amended and
  supplemented through the date on which parties enter
  into the relevant transaction.
* `FloatingRateIndexEnum_JPY_TIBOR_TIBM`
  Per 2006 ISDA Definitions or Annex to the 2000 ISDA
  Definitions, Section 7.1 Rate Options, as amended and
  supplemented through the date on which parties enter
  into the relevant transaction.
* `FloatingRateIndexEnum_JPY_TIBOR_TIBM_Reference_Banks`
  Per 2006 ISDA Definitions or Annex to the 2000 ISDA
  Definitions, Section 7.1 Rate Options, as amended and
  supplemented through the date on which parties enter
  into the relevant transaction.
* `FloatingRateIndexEnum_JPY_TIBOR_TIBM__10_Banks_`
  Per 2006 ISDA Definitions or Annex to the 2000 ISDA
  Definitions, Section 7.1 Rate Options, as amended and
  supplemented through the date on which parties enter
  into the relevant transaction.
* `FloatingRateIndexEnum_JPY_TIBOR_TIBM__5_Banks_`
  Per 2006 ISDA Definitions or Annex to the 2000 ISDA
  Definitions, Section 7.1 Rate Options, as amended and
  supplemented through the date on which parties enter
  into the relevant transaction.
* `FloatingRateIndexEnum_JPY_TIBOR_TIBM__All_Banks_`
  Per 2006 ISDA Definitions or Annex to the 2000 ISDA
  Definitions, Section 7.1 Rate Options, as amended and
  supplemented through the date on which parties enter
  into the relevant transaction.
* `FloatingRateIndexEnum_JPY_TIBOR_TIBM__All_Banks__Bloomberg`
  Per 2006 ISDA Definitions or Annex to the 2000 ISDA
  Definitions, Section 7.1 Rate Options, as amended and
  supplemented through the date on which parties enter
  into the relevant transaction.
* `FloatingRateIndexEnum_JPY_TIBOR_ZTIBOR`
  Per 2006 ISDA Definitions or Annex to the 2000 ISDA
  Definitions, Section 7.1 Rate Options, as amended and
  supplemented through the date on which parties enter
  into the relevant transaction.
* `FloatingRateIndexEnum_JPY_TONA_OIS_COMPOUND`
  Per 2006 ISDA Definitions or Annex to the 2000 ISDA
  Definitions, Section 7.1 Rate Options, as amended and
  supplemented through the date on which parties enter
  into the relevant transaction.
* `FloatingRateIndexEnum_JPY_TSR_Reference_Banks`
  Per 2006 ISDA Definitions or Annex to the 2000 ISDA
  Definitions, Section 7.1 Rate Options, as amended and
  supplemented through the date on which parties enter
  into the relevant transaction.
* `FloatingRateIndexEnum_JPY_TSR_Reuters_10_00`
  Per 2006 ISDA Definitions or Annex to the 2000 ISDA
  Definitions, Section 7.1 Rate Options, as amended and
  supplemented through the date on which parties enter
  into the relevant transaction.
* `FloatingRateIndexEnum_JPY_TSR_Reuters_15_00`
  Per 2006 ISDA Definitions or Annex to the 2000 ISDA
  Definitions, Section 7.1 Rate Options, as amended and
  supplemented through the date on which parties enter
  into the relevant transaction.
* `FloatingRateIndexEnum_JPY_TSR_Telerate_10_00`
  Per 2006 ISDA Definitions or Annex to the 2000 ISDA
  Definitions, Section 7.1 Rate Options, as amended and
  supplemented through the date on which parties enter
  into the relevant transaction.
* `FloatingRateIndexEnum_JPY_TSR_Telerate_15_00`
  Per 2006 ISDA Definitions or Annex to the 2000 ISDA
  Definitions, Section 7.1 Rate Options, as amended and
  supplemented through the date on which parties enter
  into the relevant transaction.
* `FloatingRateIndexEnum_JPY_USD_Basis_Swaps_11_00_ICAP`
  Per 2006 ISDA Definitions or Annex to the 2000 ISDA
  Definitions, Section 7.1 Rate Options, as amended and
  supplemented through the date on which parties enter
  into the relevant transaction.
* `FloatingRateIndexEnum_KRW_Bond_3222`
  Per 2006 ISDA Definitions or Annex to the 2000 ISDA
  Definitions, Section 7.1 Rate Options, as amended and
  supplemented through the date on which parties enter
  into the relevant transaction.
* `FloatingRateIndexEnum_KRW_CD_3220`
  Per 2006 ISDA Definitions or Annex to the 2000 ISDA
  Definitions, Section 7.1 Rate Options, as amended and
  supplemented through the date on which parties enter
  into the relevant transaction.
* `FloatingRateIndexEnum_KRW_CD_KSDA_Bloomberg`
  Per 2006 ISDA Definitions or Annex to the 2000 ISDA
  Definitions, Section 7.1 Rate Options, as amended and
  supplemented through the date on which parties enter
  into the relevant transaction.
* `FloatingRateIndexEnum_KRW_Quarterly_Annual_Swap_Rate_3_30_ICAP`
  Per 2006 ISDA Definitions or Annex to the 2000 ISDA
  Definitions, Section 7.1 Rate Options, as amended and
  supplemented through the date on which parties enter
  into the relevant transaction.
* `FloatingRateIndexEnum_MXN_TIIE_Banxico`
  Per 2006 ISDA Definitions or Annex to the 2000 ISDA
  Definitions, Section 7.1 Rate Options, as amended and
  supplemented through the date on which parties enter
  into the relevant transaction.
* `FloatingRateIndexEnum_MXN_TIIE_Banxico_Bloomberg`
  Per 2006 ISDA Definitions or Annex to the 2000 ISDA
  Definitions, Section 7.1 Rate Options, as amended and
  supplemented through the date on which parties enter
  into the relevant transaction.
* `FloatingRateIndexEnum_MXN_TIIE_Banxico_Reference_Banks`
  Per 2006 ISDA Definitions or Annex to the 2000 ISDA
  Definitions, Section 7.1 Rate Options, as amended and
  supplemented through the date on which parties enter
  into the relevant transaction.
* `FloatingRateIndexEnum_MYR_KLIBOR_BNM`
  Per 2006 ISDA Definitions or Annex to the 2000 ISDA
  Definitions, Section 7.1 Rate Options, as amended and
  supplemented through the date on which parties enter
  into the relevant transaction.
* `FloatingRateIndexEnum_MYR_KLIBOR_Reference_Banks`
  Per 2006 ISDA Definitions or Annex to the 2000 ISDA
  Definitions, Section 7.1 Rate Options, as amended and
  supplemented through the date on which parties enter
  into the relevant transaction.
* `FloatingRateIndexEnum_MYR_Quarterly_Swap_Rate_11_00_TRADITION`
  Per 2006 ISDA Definitions or Annex to the 2000 ISDA
  Definitions, Section 7.1 Rate Options, as amended and
  supplemented through the date on which parties enter
  into the relevant transaction.
* `FloatingRateIndexEnum_MYR_Quarterly_Swap_Rate_TRADITION_Reference_Banks`
  Per 2006 ISDA Definitions or Annex to the 2000 ISDA
  Definitions, Section 7.1 Rate Options, as amended and
  supplemented through the date on which parties enter
  into the relevant transaction.
* `FloatingRateIndexEnum_NOK_NIBOR_NIBR`
  Per 2006 ISDA Definitions or Annex to the 2000 ISDA
  Definitions, Section 7.1 Rate Options, as amended and
  supplemented through the date on which parties enter
  into the relevant transaction.
* `FloatingRateIndexEnum_NOK_NIBOR_NIBR_Reference_Banks`
  Per 2006 ISDA Definitions or Annex to the 2000 ISDA
  Definitions, Section 7.1 Rate Options, as amended and
  supplemented through the date on which parties enter
  into the relevant transaction.
* `FloatingRateIndexEnum_NOK_NIBOR_OIBOR`
  Per 2006 ISDA Definitions or Annex to the 2000 ISDA
  Definitions, Section 7.1 Rate Options, as amended and
  supplemented through the date on which parties enter
  into the relevant transaction.
* `FloatingRateIndexEnum_NOK_NIBOR_Reference_Banks`
  Per 2006 ISDA Definitions or Annex to the 2000 ISDA
  Definitions, Section 7.1 Rate Options, as amended and
  supplemented through the date on which parties enter
  into the relevant transaction.
* `FloatingRateIndexEnum_NZD_BBR_BID`
  Per 2006 ISDA Definitions or Annex to the 2000 ISDA
  Definitions, Section 7.1 Rate Options, as amended and
  supplemented through the date on which parties enter
  into the relevant transaction.
* `FloatingRateIndexEnum_NZD_BBR_FRA`
  Per 2006 ISDA Definitions or Annex to the 2000 ISDA
  Definitions, Section 7.1 Rate Options, as amended and
  supplemented through the date on which parties enter
  into the relevant transaction.
* `FloatingRateIndexEnum_NZD_BBR_ISDC`
  Per 2006 ISDA Definitions or Annex to the 2000 ISDA
  Definitions, Section 7.1 Rate Options, as amended and
  supplemented through the date on which parties enter
  into the relevant transaction.
* `FloatingRateIndexEnum_NZD_BBR_Reference_Banks`
  Per 2006 ISDA Definitions or Annex to the 2000 ISDA
  Definitions, Section 7.1 Rate Options, as amended and
  supplemented through the date on which parties enter
  into the relevant transaction.
* `FloatingRateIndexEnum_NZD_BBR_Telerate`
  Per 2006 ISDA Definitions or Annex to the 2000 ISDA
  Definitions, Section 7.1 Rate Options, as amended and
  supplemented through the date on which parties enter
  into the relevant transaction.
* `FloatingRateIndexEnum_NZD_NZIONA_OIS_COMPOUND`
  Per 2006 ISDA Definitions or Annex to the 2000 ISDA
  Definitions, Section 7.1 Rate Options, as amended and
  supplemented through the date on which parties enter
  into the relevant transaction.
* `FloatingRateIndexEnum_NZD_Semi_Annual_Swap_Rate_11_00_BGCANTOR`
  Per 2006 ISDA Definitions or Annex to the 2000 ISDA
  Definitions, Section 7.1 Rate Options, as amended and
  supplemented through the date on which parties enter
  into the relevant transaction.
* `FloatingRateIndexEnum_NZD_Semi_Annual_Swap_Rate_BGCANTOR_Reference_Banks`
  Per 2006 ISDA Definitions or Annex to the 2000 ISDA
  Definitions, Section 7.1 Rate Options, as amended and
  supplemented through the date on which parties enter
  into the relevant transaction.
* `FloatingRateIndexEnum_NZD_Swap_Rate_ICAP`
  Per 2006 ISDA Definitions or Annex to the 2000 ISDA
  Definitions, Section 7.1 Rate Options, as amended and
  supplemented through the date on which parties enter
  into the relevant transaction.
* `FloatingRateIndexEnum_NZD_Swap_Rate_ICAP_Reference_Banks`
  Per 2006 ISDA Definitions or Annex to the 2000 ISDA
  Definitions, Section 7.1 Rate Options, as amended and
  supplemented through the date on which parties enter
  into the relevant transaction.
* `FloatingRateIndexEnum_PHP_PHIREF_BAP`
  Per 2006 ISDA Definitions or Annex to the 2000 ISDA
  Definitions, Section 7.1 Rate Options, as amended and
  supplemented through the date on which parties enter
  into the relevant transaction.
* `FloatingRateIndexEnum_PHP_PHIREF_Bloomberg`
  Per 2006 ISDA Definitions or Annex to the 2000 ISDA
  Definitions, Section 7.1 Rate Options, as amended and
  supplemented through the date on which parties enter
  into the relevant transaction.
* `FloatingRateIndexEnum_PHP_PHIREF_Reference_Banks`
  Per 2006 ISDA Definitions or Annex to the 2000 ISDA
  Definitions, Section 7.1 Rate Options, as amended and
  supplemented through the date on which parties enter
  into the relevant transaction.
* `FloatingRateIndexEnum_PHP_Semi_Annual_Swap_Rate_11_00_BGCANTOR`
  Per 2006 ISDA Definitions or Annex to the 2000 ISDA
  Definitions, Section 7.1 Rate Options, as amended and
  supplemented through the date on which parties enter
  into the relevant transaction.
* `FloatingRateIndexEnum_PHP_Semi_Annual_Swap_Rate_Reference_Banks`
  Per 2006 ISDA Definitions or Annex to the 2000 ISDA
  Definitions, Section 7.1 Rate Options, as amended and
  supplemented through the date on which parties enter
  into the relevant transaction.
* `FloatingRateIndexEnum_PLN_POLONIA_OIS_COMPOUND`
  Per 2006 ISDA Definitions or Annex to the 2000 ISDA
  Definitions, Section 7.1 Rate Options, as amended and
  supplemented through the date on which parties enter
  into the relevant transaction.
* `FloatingRateIndexEnum_PLN_WIBOR_Reference_Banks`
  Per 2006 ISDA Definitions or Annex to the 2000 ISDA
  Definitions, Section 7.1 Rate Options, as amended and
  supplemented through the date on which parties enter
  into the relevant transaction.
* `FloatingRateIndexEnum_PLN_WIBOR_WIBO`
  Per 2006 ISDA Definitions or Annex to the 2000 ISDA
  Definitions, Section 7.1 Rate Options, as amended and
  supplemented through the date on which parties enter
  into the relevant transaction.
* `FloatingRateIndexEnum_PLZ_WIBOR_Reference_Banks`
  Per 2006 ISDA Definitions or Annex to the 2000 ISDA
  Definitions, Section 7.1 Rate Options, as amended and
  supplemented through the date on which parties enter
  into the relevant transaction.
* `FloatingRateIndexEnum_PLZ_WIBOR_WIBO`
  Per 2006 ISDA Definitions or Annex to the 2000 ISDA
  Definitions, Section 7.1 Rate Options, as amended and
  supplemented through the date on which parties enter
  into the relevant transaction.
* `FloatingRateIndexEnum_REPOFUNDS_RATE_FRANCE_OIS_COMPOUND`
  Per 2006 ISDA Definitions or Annex to the 2000 ISDA
  Definitions, Section 7.1 Rate Options, as amended and
  supplemented through the date on which parties enter
  into the relevant transaction.
* `FloatingRateIndexEnum_REPOFUNDS_RATE_GERMANY_OIS_COMPOUND`
  Per 2006 ISDA Definitions or Annex to the 2000 ISDA
  Definitions, Section 7.1 Rate Options, as amended and
  supplemented through the date on which parties enter
  into the relevant transaction.
* `FloatingRateIndexEnum_REPOFUNDS_RATE_ITALY_OIS_COMPOUND`
  Per 2006 ISDA Definitions or Annex to the 2000 ISDA
  Definitions, Section 7.1 Rate Options, as amended and
  supplemented through the date on which parties enter
  into the relevant transaction.
* `FloatingRateIndexEnum_RON_Annual_Swap_Rate_11_00_BGCANTOR`
  Per 2006 ISDA Definitions or Annex to the 2000 ISDA
  Definitions, Section 7.1 Rate Options, as amended and
  supplemented through the date on which parties enter
  into the relevant transaction.
* `FloatingRateIndexEnum_RON_Annual_Swap_Rate_Reference_Banks`
  Per 2006 ISDA Definitions or Annex to the 2000 ISDA
  Definitions, Section 7.1 Rate Options, as amended and
  supplemented through the date on which parties enter
  into the relevant transaction.
* `FloatingRateIndexEnum_RON_RBOR_Reuters`
  Per 2006 ISDA Definitions or Annex to the 2000 ISDA
  Definitions, Section 7.1 Rate Options, as amended and
  supplemented through the date on which parties enter
  into the relevant transaction.
* `FloatingRateIndexEnum_RUB_Annual_Swap_Rate_11_00_BGCANTOR`
  Per 2006 ISDA Definitions or Annex to the 2000 ISDA
  Definitions, Section 7.1 Rate Options, as amended and
  supplemented through the date on which parties enter
  into the relevant transaction.
* `FloatingRateIndexEnum_RUB_Annual_Swap_Rate_12_45_TRADITION`
  Per 2006 ISDA Definitions or Annex to the 2000 ISDA
  Definitions, Section 7.1 Rate Options, as amended and
  supplemented through the date on which parties enter
  into the relevant transaction.
* `FloatingRateIndexEnum_RUB_Annual_Swap_Rate_4_15_TRADITION`
  Per 2006 ISDA Definitions or Annex to the 2000 ISDA
  Definitions, Section 7.1 Rate Options, as amended and
  supplemented through the date on which parties enter
  into the relevant transaction.
* `FloatingRateIndexEnum_RUB_Annual_Swap_Rate_Reference_Banks`
  Per 2006 ISDA Definitions or Annex to the 2000 ISDA
  Definitions, Section 7.1 Rate Options, as amended and
  supplemented through the date on which parties enter
  into the relevant transaction.
* `FloatingRateIndexEnum_RUB_Annual_Swap_Rate_TRADITION_Reference_Banks`
  Per 2006 ISDA Definitions or Annex to the 2000 ISDA
  Definitions, Section 7.1 Rate Options, as amended and
  supplemented through the date on which parties enter
  into the relevant transaction.
* `FloatingRateIndexEnum_RUB_MOSPRIME_NFEA`
  Per 2006 ISDA Definitions or Annex to the 2000 ISDA
  Definitions, Section 7.1 Rate Options, as amended and
  supplemented through the date on which parties enter
  into the relevant transaction.
* `FloatingRateIndexEnum_RUB_MOSPRIME_Reference_Banks`
  Per 2006 ISDA Definitions or Annex to the 2000 ISDA
  Definitions, Section 7.1 Rate Options, as amended and
  supplemented through the date on which parties enter
  into the relevant transaction.
* `FloatingRateIndexEnum_RUB_RUONIA_OIS_COMPOUND`
  Per 2006 ISDA Definitions or Annex to the 2000 ISDA
  Definitions, Section 7.1 Rate Options, as amended and
  supplemented through the date on which parties enter
  into the relevant transaction.
* `FloatingRateIndexEnum_SAR_SRIOR_Reference_Banks`
  Per 2006 ISDA Definitions or Annex to the 2000 ISDA
  Definitions, Section 7.1 Rate Options, as amended and
  supplemented through the date on which parties enter
  into the relevant transaction.
* `FloatingRateIndexEnum_SAR_SRIOR_SUAA`
  Per 2006 ISDA Definitions or Annex to the 2000 ISDA
  Definitions, Section 7.1 Rate Options, as amended and
  supplemented through the date on which parties enter
  into the relevant transaction.
* `FloatingRateIndexEnum_SEK_Annual_Swap_Rate`
  Per 2006 ISDA Definitions or Annex to the 2000 ISDA
  Definitions, Section 7.1 Rate Options, as amended and
  supplemented through the date on which parties enter
  into the relevant transaction.
* `FloatingRateIndexEnum_SEK_Annual_Swap_Rate_SESWFI`
  Per 2006 ISDA Definitions or Annex to the 2000 ISDA
  Definitions, Section 7.1 Rate Options, as amended and
  supplemented through the date on which parties enter
  into the relevant transaction.
* `FloatingRateIndexEnum_SEK_SIOR_OIS_COMPOUND`
  Per 2006 ISDA Definitions or Annex to the 2000 ISDA
  Definitions, Section 7.1 Rate Options, as amended and
  supplemented through the date on which parties enter
  into the relevant transaction.
* `FloatingRateIndexEnum_SEK_STIBOR_Bloomberg`
  Per 2006 ISDA Definitions or Annex to the 2000 ISDA
  Definitions, Section 7.1 Rate Options, as amended and
  supplemented through the date on which parties enter
  into the relevant transaction.
* `FloatingRateIndexEnum_SEK_STIBOR_Reference_Banks`
  Per 2006 ISDA Definitions or Annex to the 2000 ISDA
  Definitions, Section 7.1 Rate Options, as amended and
  supplemented through the date on which parties enter
  into the relevant transaction.
* `FloatingRateIndexEnum_SEK_STIBOR_SIDE`
  Per 2006 ISDA Definitions or Annex to the 2000 ISDA
  Definitions, Section 7.1 Rate Options, as amended and
  supplemented through the date on which parties enter
  into the relevant transaction.
* `FloatingRateIndexEnum_SGD_SIBOR_Reference_Banks`
  Per 2006 ISDA Definitions or Annex to the 2000 ISDA
  Definitions, Section 7.1 Rate Options, as amended and
  supplemented through the date on which parties enter
  into the relevant transaction.
* `FloatingRateIndexEnum_SGD_SIBOR_Reuters`
  Per 2006 ISDA Definitions or Annex to the 2000 ISDA
  Definitions, Section 7.1 Rate Options, as amended and
  supplemented through the date on which parties enter
  into the relevant transaction.
* `FloatingRateIndexEnum_SGD_SIBOR_Telerate`
  Per 2006 ISDA Definitions or Annex to the 2000 ISDA
  Definitions, Section 7.1 Rate Options, as amended and
  supplemented through the date on which parties enter
  into the relevant transaction.
* `FloatingRateIndexEnum_SGD_SONAR_OIS_COMPOUND`
  Per 2006 ISDA Definitions or Annex to the 2000 ISDA
  Definitions, Section 7.1 Rate Options, as amended and
  supplemented through the date on which parties enter
  into the relevant transaction.
* `FloatingRateIndexEnum_SGD_SONAR_OIS_VWAP_COMPOUND`
  Per 2006 ISDA Definitions or Annex to the 2000 ISDA
  Definitions, Section 7.1 Rate Options, as amended and
  supplemented through the date on which parties enter
  into the relevant transaction.
* `FloatingRateIndexEnum_SGD_SOR_Reference_Banks`
  Per 2006 ISDA Definitions or Annex to the 2000 ISDA
  Definitions, Section 7.1 Rate Options, as amended and
  supplemented through the date on which parties enter
  into the relevant transaction.
* `FloatingRateIndexEnum_SGD_SOR_Reuters`
  Per 2006 ISDA Definitions or Annex to the 2000 ISDA
  Definitions, Section 7.1 Rate Options, as amended and
  supplemented through the date on which parties enter
  into the relevant transaction.
* `FloatingRateIndexEnum_SGD_SOR_Telerate`
  Per 2006 ISDA Definitions or Annex to the 2000 ISDA
  Definitions, Section 7.1 Rate Options, as amended and
  supplemented through the date on which parties enter
  into the relevant transaction.
* `FloatingRateIndexEnum_SGD_SOR_VWAP`
  Per 2006 ISDA Definitions or Annex to the 2000 ISDA
  Definitions, Section 7.1 Rate Options, as amended and
  supplemented through the date on which parties enter
  into the relevant transaction.
* `FloatingRateIndexEnum_SGD_SOR_VWAP_Reference_Banks`
  Per 2006 ISDA Definitions or Annex to the 2000 ISDA
  Definitions, Section 7.1 Rate Options, as amended and
  supplemented through the date on which parties enter
  into the relevant transaction.
* `FloatingRateIndexEnum_SGD_Semi_Annual_Currency_Basis_Swap_Rate_11_00_Tullett_Prebon`
  Per 2006 ISDA Definitions or Annex to the 2000 ISDA
  Definitions, Section 7.1 Rate Options, as amended and
  supplemented through the date on which parties enter
  into the relevant transaction.
* `FloatingRateIndexEnum_SGD_Semi_Annual_Currency_Basis_Swap_Rate_16_00_Tullett_Prebon`
  Per 2006 ISDA Definitions or Annex to the 2000 ISDA
  Definitions, Section 7.1 Rate Options, as amended and
  supplemented through the date on which parties enter
  into the relevant transaction.
* `FloatingRateIndexEnum_SGD_Semi_Annual_Swap_Rate_11_00_BGCANTOR`
  Per 2006 ISDA Definitions or Annex to the 2000 ISDA
  Definitions, Section 7.1 Rate Options, as amended and
  supplemented through the date on which parties enter
  into the relevant transaction.
* `FloatingRateIndexEnum_SGD_Semi_Annual_Swap_Rate_11_00_TRADITION`
  Per 2006 ISDA Definitions or Annex to the 2000 ISDA
  Definitions, Section 7.1 Rate Options, as amended and
  supplemented through the date on which parties enter
  into the relevant transaction.
* `FloatingRateIndexEnum_SGD_Semi_Annual_Swap_Rate_11_00_Tullett_Prebon`
  Per 2006 ISDA Definitions or Annex to the 2000 ISDA
  Definitions, Section 7.1 Rate Options, as amended and
  supplemented through the date on which parties enter
  into the relevant transaction.
* `FloatingRateIndexEnum_SGD_Semi_Annual_Swap_Rate_16_00_Tullett_Prebon`
  Per 2006 ISDA Definitions or Annex to the 2000 ISDA
  Definitions, Section 7.1 Rate Options, as amended and
  supplemented through the date on which parties enter
  into the relevant transaction.
* `FloatingRateIndexEnum_SGD_Semi_Annual_Swap_Rate_ICAP`
  Per 2006 ISDA Definitions or Annex to the 2000 ISDA
  Definitions, Section 7.1 Rate Options, as amended and
  supplemented through the date on which parties enter
  into the relevant transaction.
* `FloatingRateIndexEnum_SGD_Semi_Annual_Swap_Rate_ICAP_Reference_Banks`
  Per 2006 ISDA Definitions or Annex to the 2000 ISDA
  Definitions, Section 7.1 Rate Options, as amended and
  supplemented through the date on which parties enter
  into the relevant transaction.
* `FloatingRateIndexEnum_SGD_Semi_Annual_Swap_Rate_Reference_Banks`
  Per 2006 ISDA Definitions or Annex to the 2000 ISDA
  Definitions, Section 7.1 Rate Options, as amended and
  supplemented through the date on which parties enter
  into the relevant transaction.
* `FloatingRateIndexEnum_SGD_Semi_Annual_Swap_Rate_TRADITION_Reference_Banks`
  Per 2006 ISDA Definitions or Annex to the 2000 ISDA
  Definitions, Section 7.1 Rate Options, as amended and
  supplemented through the date on which parties enter
  into the relevant transaction.
* `FloatingRateIndexEnum_SKK_BRIBOR_BRBO`
  Per 2006 ISDA Definitions or Annex to the 2000 ISDA
  Definitions, Section 7.1 Rate Options, as amended and
  supplemented through the date on which parties enter
  into the relevant transaction.
* `FloatingRateIndexEnum_SKK_BRIBOR_Bloomberg`
  Per 2006 ISDA Definitions or Annex to the 2000 ISDA
  Definitions, Section 7.1 Rate Options, as amended and
  supplemented through the date on which parties enter
  into the relevant transaction.
* `FloatingRateIndexEnum_SKK_BRIBOR_NBSK07`
  Per 2006 ISDA Definitions or Annex to the 2000 ISDA
  Definitions, Section 7.1 Rate Options, as amended and
  supplemented through the date on which parties enter
  into the relevant transaction.
* `FloatingRateIndexEnum_SKK_BRIBOR_Reference_Banks`
  Per 2006 ISDA Definitions or Annex to the 2000 ISDA
  Definitions, Section 7.1 Rate Options, as amended and
  supplemented through the date on which parties enter
  into the relevant transaction.
* `FloatingRateIndexEnum_THB_SOR_Reference_Banks`
  Per 2006 ISDA Definitions or Annex to the 2000 ISDA
  Definitions, Section 7.1 Rate Options, as amended and
  supplemented through the date on which parties enter
  into the relevant transaction.
* `FloatingRateIndexEnum_THB_SOR_Reuters`
  Per 2006 ISDA Definitions or Annex to the 2000 ISDA
  Definitions, Section 7.1 Rate Options, as amended and
  supplemented through the date on which parties enter
  into the relevant transaction.
* `FloatingRateIndexEnum_THB_SOR_Telerate`
  Per 2006 ISDA Definitions or Annex to the 2000 ISDA
  Definitions, Section 7.1 Rate Options, as amended and
  supplemented through the date on which parties enter
  into the relevant transaction.
* `FloatingRateIndexEnum_THB_Semi_Annual_Swap_Rate_11_00_BGCANTOR`
  Per 2006 ISDA Definitions or Annex to the 2000 ISDA
  Definitions, Section 7.1 Rate Options, as amended and
  supplemented through the date on which parties enter
  into the relevant transaction.
* `FloatingRateIndexEnum_THB_Semi_Annual_Swap_Rate_Reference_Banks`
  Per 2006 ISDA Definitions or Annex to the 2000 ISDA
  Definitions, Section 7.1 Rate Options, as amended and
  supplemented through the date on which parties enter
  into the relevant transaction.
* `FloatingRateIndexEnum_THB_THBFIX_Reference_Banks`
  Per 2006 ISDA Definitions or Annex to the 2000 ISDA
  Definitions, Section 7.1 Rate Options, as amended and
  supplemented through the date on which parties enter
  into the relevant transaction.
* `FloatingRateIndexEnum_THB_THBFIX_Reuters`
  Per 2006 ISDA Definitions or Annex to the 2000 ISDA
  Definitions, Section 7.1 Rate Options, as amended and
  supplemented through the date on which parties enter
  into the relevant transaction.
* `FloatingRateIndexEnum_TRY_Annual_Swap_Rate_11_00_TRADITION`
  Per 2006 ISDA Definitions or Annex to the 2000 ISDA
  Definitions, Section 7.1 Rate Options, as amended and
  supplemented through the date on which parties enter
  into the relevant transaction.
* `FloatingRateIndexEnum_TRY_Annual_Swap_Rate_11_15_BGCANTOR`
  Per 2006 ISDA Definitions or Annex to the 2000 ISDA
  Definitions, Section 7.1 Rate Options, as amended and
  supplemented through the date on which parties enter
  into the relevant transaction.
* `FloatingRateIndexEnum_TRY_Annual_Swap_Rate_Reference_Banks`
  Per 2006 ISDA Definitions or Annex to the 2000 ISDA
  Definitions, Section 7.1 Rate Options, as amended and
  supplemented through the date on which parties enter
  into the relevant transaction.
* `FloatingRateIndexEnum_TRY_Semi_Annual_Swap_Rate_TRADITION_Reference_Banks`
  Per 2006 ISDA Definitions or Annex to the 2000 ISDA
  Definitions, Section 7.1 Rate Options, as amended and
  supplemented through the date on which parties enter
  into the relevant transaction.
* `FloatingRateIndexEnum_TRY_TRYIBOR_Reference_Banks`
  Per 2006 ISDA Definitions or Annex to the 2000 ISDA
  Definitions, Section 7.1 Rate Options, as amended and
  supplemented through the date on which parties enter
  into the relevant transaction.
* `FloatingRateIndexEnum_TRY_TRYIBOR_Reuters`
  Per 2006 ISDA Definitions or Annex to the 2000 ISDA
  Definitions, Section 7.1 Rate Options, as amended and
  supplemented through the date on which parties enter
  into the relevant transaction.
* `FloatingRateIndexEnum_TWD_Quarterly_Annual_Swap_Rate_11_00_BGCANTOR`
  Per 2006 ISDA Definitions or Annex to the 2000 ISDA
  Definitions, Section 7.1 Rate Options, as amended and
  supplemented through the date on which parties enter
  into the relevant transaction.
* `FloatingRateIndexEnum_TWD_Quarterly_Annual_Swap_Rate_Reference_Banks`
  Per 2006 ISDA Definitions or Annex to the 2000 ISDA
  Definitions, Section 7.1 Rate Options, as amended and
  supplemented through the date on which parties enter
  into the relevant transaction.
* `FloatingRateIndexEnum_TWD_Reference_Dealers`
  Per 2006 ISDA Definitions or Annex to the 2000 ISDA
  Definitions, Section 7.1 Rate Options, as amended and
  supplemented through the date on which parties enter
  into the relevant transaction.
* `FloatingRateIndexEnum_TWD_Reuters_6165`
  Per 2006 ISDA Definitions or Annex to the 2000 ISDA
  Definitions, Section 7.1 Rate Options, as amended and
  supplemented through the date on which parties enter
  into the relevant transaction.
* `FloatingRateIndexEnum_TWD_TAIBIR01`
  Per 2006 ISDA Definitions or Annex to the 2000 ISDA
  Definitions, Section 7.1 Rate Options, as amended and
  supplemented through the date on which parties enter
  into the relevant transaction.
* `FloatingRateIndexEnum_TWD_TAIBIR02`
  Per 2006 ISDA Definitions or Annex to the 2000 ISDA
  Definitions, Section 7.1 Rate Options, as amended and
  supplemented through the date on which parties enter
  into the relevant transaction.
* `FloatingRateIndexEnum_TWD_TAIBOR_Bloomberg`
  Per 2006 ISDA Definitions or Annex to the 2000 ISDA
  Definitions, Section 7.1 Rate Options, as amended and
  supplemented through the date on which parties enter
  into the relevant transaction.
* `FloatingRateIndexEnum_TWD_TAIBOR_Reuters`
  Per 2006 ISDA Definitions or Annex to the 2000 ISDA
  Definitions, Section 7.1 Rate Options, as amended and
  supplemented through the date on which parties enter
  into the relevant transaction.
* `FloatingRateIndexEnum_TWD_TWCPBA`
  Per 2006 ISDA Definitions or Annex to the 2000 ISDA
  Definitions, Section 7.1 Rate Options, as amended and
  supplemented through the date on which parties enter
  into the relevant transaction.
* `FloatingRateIndexEnum_TWD_Telerate_6165`
  Per 2006 ISDA Definitions or Annex to the 2000 ISDA
  Definitions, Section 7.1 Rate Options, as amended and
  supplemented through the date on which parties enter
  into the relevant transaction.
* `FloatingRateIndexEnum_UK_RPIX`
  United Kingdom: GBP - Non-revised Retail Price Index
  Excluding Mortgage Interest Payments (UKRPIX)
* `FloatingRateIndexEnum_USA_CPI_U`
  United States: USA - Non-revised Consumer Price Index
  - Urban (CPI-U)
* `FloatingRateIndexEnum_USD_3M_LIBOR_SWAP_CME_vs_LCH_ICAP`
  Per 2006 ISDA Definitions or Annex to the 2000 ISDA
  Definitions, Section 7.1 Rate Options, as amended and
  supplemented through the date on which parties enter
  into the relevant transaction.
* `FloatingRateIndexEnum_USD_3M_LIBOR_SWAP_CME_vs_LCH_ICAP_Bloomberg`
  Per 2006 ISDA Definitions or Annex to the 2000 ISDA
  Definitions, Section 7.1 Rate Options, as amended and
  supplemented through the date on which parties enter
  into the relevant transaction.
* `FloatingRateIndexEnum_USD_6M_LIBOR_SWAP_CME_vs_LCH_ICAP`
  Per 2006 ISDA Definitions or Annex to the 2000 ISDA
  Definitions, Section 7.1 Rate Options, as amended and
  supplemented through the date on which parties enter
  into the relevant transaction.
* `FloatingRateIndexEnum_USD_6M_LIBOR_SWAP_CME_vs_LCH_ICAP_Bloomberg`
  Per 2006 ISDA Definitions or Annex to the 2000 ISDA
  Definitions, Section 7.1 Rate Options, as amended and
  supplemented through the date on which parties enter
  into the relevant transaction.
* `FloatingRateIndexEnum_USD_Annual_Swap_Rate_11_00_BGCANTOR`
  Per 2006 ISDA Definitions or Annex to the 2000 ISDA
  Definitions, Section 7.1 Rate Options, as amended and
  supplemented through the date on which parties enter
  into the relevant transaction.
* `FloatingRateIndexEnum_USD_Annual_Swap_Rate_11_00_TRADITION`
  Per 2006 ISDA Definitions or Annex to the 2000 ISDA
  Definitions, Section 7.1 Rate Options, as amended and
  supplemented through the date on which parties enter
  into the relevant transaction.
* `FloatingRateIndexEnum_USD_Annual_Swap_Rate_4_00_TRADITION`
  Per 2006 ISDA Definitions or Annex to the 2000 ISDA
  Definitions, Section 7.1 Rate Options, as amended and
  supplemented through the date on which parties enter
  into the relevant transaction.
* `FloatingRateIndexEnum_USD_BA_H_15`
  Per 2006 ISDA Definitions or Annex to the 2000 ISDA
  Definitions, Section 7.1 Rate Options, as amended and
  supplemented through the date on which parties enter
  into the relevant transaction.
* `FloatingRateIndexEnum_USD_BA_Reference_Dealers`
  Per 2006 ISDA Definitions or Annex to the 2000 ISDA
  Definitions, Section 7.1 Rate Options, as amended and
  supplemented through the date on which parties enter
  into the relevant transaction.
* `FloatingRateIndexEnum_USD_BMA_Municipal_Swap_Index`
  Per 2006 ISDA Definitions or Annex to the 2000 ISDA
  Definitions, Section 7.1 Rate Options, as amended and
  supplemented through the date on which parties enter
  into the relevant transaction.
* `FloatingRateIndexEnum_USD_CD_H_15`
  Per 2006 ISDA Definitions or Annex to the 2000 ISDA
  Definitions, Section 7.1 Rate Options, as amended and
  supplemented through the date on which parties enter
  into the relevant transaction.
* `FloatingRateIndexEnum_USD_CD_Reference_Dealers`
  Per 2006 ISDA Definitions or Annex to the 2000 ISDA
  Definitions, Section 7.1 Rate Options, as amended and
  supplemented through the date on which parties enter
  into the relevant transaction.
* `FloatingRateIndexEnum_USD_CMS_Reference_Banks`
  Per 2006 ISDA Definitions or Annex to the 2000 ISDA
  Definitions, Section 7.1 Rate Options, as amended and
  supplemented through the date on which parties enter
  into the relevant transaction.
* `FloatingRateIndexEnum_USD_CMS_Reference_Banks_ICAP_SwapPX`
  Per 2006 ISDA Definitions or Annex to the 2000 ISDA
  Definitions, Section 7.1 Rate Options, as amended and
  supplemented through the date on which parties enter
  into the relevant transaction.
* `FloatingRateIndexEnum_USD_CMS_Reuters`
  Per 2006 ISDA Definitions or Annex to the 2000 ISDA
  Definitions, Section 7.1 Rate Options, as amended and
  supplemented through the date on which parties enter
  into the relevant transaction.
* `FloatingRateIndexEnum_USD_CMS_Telerate`
  Per 2006 ISDA Definitions or Annex to the 2000 ISDA
  Definitions, Section 7.1 Rate Options, as amended and
  supplemented through the date on which parties enter
  into the relevant transaction.
* `FloatingRateIndexEnum_USD_CMT_T7051`
  Per 2006 ISDA Definitions or Annex to the 2000 ISDA
  Definitions, Section 7.1 Rate Options, as amended and
  supplemented through the date on which parties enter
  into the relevant transaction.
* `FloatingRateIndexEnum_USD_CMT_T7052`
  Per 2006 ISDA Definitions or Annex to the 2000 ISDA
  Definitions, Section 7.1 Rate Options, as amended and
  supplemented through the date on which parties enter
  into the relevant transaction.
* `FloatingRateIndexEnum_USD_COF11_FHLBSF`
  Per 2006 ISDA Definitions or Annex to the 2000 ISDA
  Definitions, Section 7.1 Rate Options, as amended and
  supplemented through the date on which parties enter
  into the relevant transaction.
* `FloatingRateIndexEnum_USD_COF11_Reuters`
  Per 2006 ISDA Definitions or Annex to the 2000 ISDA
  Definitions, Section 7.1 Rate Options, as amended and
  supplemented through the date on which parties enter
  into the relevant transaction.
* `FloatingRateIndexEnum_USD_COF11_Telerate`
  Per 2006 ISDA Definitions or Annex to the 2000 ISDA
  Definitions, Section 7.1 Rate Options, as amended and
  supplemented through the date on which parties enter
  into the relevant transaction.
* `FloatingRateIndexEnum_USD_CP_H_15`
  Per 2006 ISDA Definitions or Annex to the 2000 ISDA
  Definitions, Section 7.1 Rate Options, as amended and
  supplemented through the date on which parties enter
  into the relevant transaction.
* `FloatingRateIndexEnum_USD_CP_Reference_Dealers`
  Per 2006 ISDA Definitions or Annex to the 2000 ISDA
  Definitions, Section 7.1 Rate Options, as amended and
  supplemented through the date on which parties enter
  into the relevant transaction.
* `FloatingRateIndexEnum_USD_FFCB_DISCO`
  Per 2006 ISDA Definitions or Annex to the 2000 ISDA
  Definitions, Section 7.1 Rate Options, as amended and
  supplemented through the date on which parties enter
  into the relevant transaction.
* `FloatingRateIndexEnum_USD_Federal_Funds_H_15`
  Per 2006 ISDA Definitions or Annex to the 2000 ISDA
  Definitions, Section 7.1 Rate Options, as amended and
  supplemented through the date on which parties enter
  into the relevant transaction.
* `FloatingRateIndexEnum_USD_Federal_Funds_H_15_Bloomberg`
  Per 2006 ISDA Definitions or Annex to the 2000 ISDA
  Definitions, Section 7.1 Rate Options, as amended and
  supplemented through the date on which parties enter
  into the relevant transaction.
* `FloatingRateIndexEnum_USD_Federal_Funds_H_15_OIS_COMPOUND`
  Per 2006 ISDA Definitions or Annex to the 2000 ISDA
  Definitions, Section 7.1 Rate Options, as amended and
  supplemented through the date on which parties enter
  into the relevant transaction.
* `FloatingRateIndexEnum_USD_Federal_Funds_Reference_Dealers`
  Per 2006 ISDA Definitions or Annex to the 2000 ISDA
  Definitions, Section 7.1 Rate Options, as amended and
  supplemented through the date on which parties enter
  into the relevant transaction.
* `FloatingRateIndexEnum_USD_ISDAFIX3_Swap_Rate`
  Per 2006 ISDA Definitions or Annex to the 2000 ISDA
  Definitions, Section 7.1 Rate Options, as amended and
  supplemented through the date on which parties enter
  into the relevant transaction.
* `FloatingRateIndexEnum_USD_ISDAFIX3_Swap_Rate_3_00`
  Per 2006 ISDA Definitions or Annex to the 2000 ISDA
  Definitions, Section 7.1 Rate Options, as amended and
  supplemented through the date on which parties enter
  into the relevant transaction.
* `FloatingRateIndexEnum_USD_ISDA_Swap_Rate`
  Per 2006 ISDA Definitions or Annex to the 2000 ISDA
  Definitions, Section 7.1 Rate Options, as amended and
  supplemented through the date on which parties enter
  into the relevant transaction.
* `FloatingRateIndexEnum_USD_ISDA_Swap_Rate_3_00`
  Per 2006 ISDA Definitions or Annex to the 2000 ISDA
  Definitions, Section 7.1 Rate Options, as amended and
  supplemented through the date on which parties enter
  into the relevant transaction.
* `FloatingRateIndexEnum_USD_LIBOR_BBA`
  Per 2006 ISDA Definitions or Annex to the 2000 ISDA
  Definitions, Section 7.1 Rate Options, as amended and
  supplemented through the date on which parties enter
  into the relevant transaction.
* `FloatingRateIndexEnum_USD_LIBOR_BBA_Bloomberg`
  Per 2006 ISDA Definitions or Annex to the 2000 ISDA
  Definitions, Section 7.1 Rate Options, as amended and
  supplemented through the date on which parties enter
  into the relevant transaction.
* `FloatingRateIndexEnum_USD_LIBOR_ISDA`
  Per 2006 ISDA Definitions or Annex to the 2000 ISDA
  Definitions, Section 7.1 Rate Options, as amended and
  supplemented through the date on which parties enter
  into the relevant transaction.
* `FloatingRateIndexEnum_USD_LIBOR_LIBO`
  Per 2006 ISDA Definitions or Annex to the 2000 ISDA
  Definitions, Section 7.1 Rate Options, as amended and
  supplemented through the date on which parties enter
  into the relevant transaction.
* `FloatingRateIndexEnum_USD_LIBOR_Reference_Banks`
  Per 2006 ISDA Definitions or Annex to the 2000 ISDA
  Definitions, Section 7.1 Rate Options, as amended and
  supplemented through the date on which parties enter
  into the relevant transaction.
* `FloatingRateIndexEnum_USD_Municipal_Swap_Libor_Ratio_11_00_ICAP`
  Per 2006 ISDA Definitions or Annex to the 2000 ISDA
  Definitions, Section 7.1 Rate Options, as amended and
  supplemented through the date on which parties enter
  into the relevant transaction.
* `FloatingRateIndexEnum_USD_Municipal_Swap_Rate_11_00_ICAP`
  Per 2006 ISDA Definitions or Annex to the 2000 ISDA
  Definitions, Section 7.1 Rate Options, as amended and
  supplemented through the date on which parties enter
  into the relevant transaction.
* `FloatingRateIndexEnum_USD_OIS_11_00_BGCANTOR`
  Per 2006 ISDA Definitions or Annex to the 2000 ISDA
  Definitions, Section 7.1 Rate Options, as amended and
  supplemented through the date on which parties enter
  into the relevant transaction.
* `FloatingRateIndexEnum_USD_OIS_11_00_LON_ICAP`
  Per 2006 ISDA Definitions or Annex to the 2000 ISDA
  Definitions, Section 7.1 Rate Options, as amended and
  supplemented through the date on which parties enter
  into the relevant transaction.
* `FloatingRateIndexEnum_USD_OIS_11_00_NY_ICAP`
  Per 2006 ISDA Definitions or Annex to the 2000 ISDA
  Definitions, Section 7.1 Rate Options, as amended and
  supplemented through the date on which parties enter
  into the relevant transaction.
* `FloatingRateIndexEnum_USD_OIS_11_00_TRADITION`
  Per 2006 ISDA Definitions or Annex to the 2000 ISDA
  Definitions, Section 7.1 Rate Options, as amended and
  supplemented through the date on which parties enter
  into the relevant transaction.
* `FloatingRateIndexEnum_USD_OIS_3_00_BGCANTOR`
  Per 2006 ISDA Definitions or Annex to the 2000 ISDA
  Definitions, Section 7.1 Rate Options, as amended and
  supplemented through the date on which parties enter
  into the relevant transaction.
* `FloatingRateIndexEnum_USD_OIS_3_00_NY_ICAP`
  Per 2006 ISDA Definitions or Annex to the 2000 ISDA
  Definitions, Section 7.1 Rate Options, as amended and
  supplemented through the date on which parties enter
  into the relevant transaction.
* `FloatingRateIndexEnum_USD_OIS_4_00_TRADITION`
  Per 2006 ISDA Definitions or Annex to the 2000 ISDA
  Definitions, Section 7.1 Rate Options, as amended and
  supplemented through the date on which parties enter
  into the relevant transaction.
* `FloatingRateIndexEnum_USD_Overnight_Bank_Funding_Rate`
  Per 2006 ISDA Definitions or Annex to the 2000 ISDA
  Definitions, Section 7.1 Rate Options, as amended and
  supplemented through the date on which parties enter
  into the relevant transaction.
* `FloatingRateIndexEnum_USD_Prime_H_15`
  Per 2006 ISDA Definitions or Annex to the 2000 ISDA
  Definitions, Section 7.1 Rate Options, as amended and
  supplemented through the date on which parties enter
  into the relevant transaction.
* `FloatingRateIndexEnum_USD_Prime_Reference_Banks`
  Per 2006 ISDA Definitions or Annex to the 2000 ISDA
  Definitions, Section 7.1 Rate Options, as amended and
  supplemented through the date on which parties enter
  into the relevant transaction.
* `FloatingRateIndexEnum_USD_SIBOR_Reference_Banks`
  Per 2006 ISDA Definitions or Annex to the 2000 ISDA
  Definitions, Section 7.1 Rate Options, as amended and
  supplemented through the date on which parties enter
  into the relevant transaction.
* `FloatingRateIndexEnum_USD_SIBOR_SIBO`
  Per 2006 ISDA Definitions or Annex to the 2000 ISDA
  Definitions, Section 7.1 Rate Options, as amended and
  supplemented through the date on which parties enter
  into the relevant transaction.
* `FloatingRateIndexEnum_USD_SIFMA_Municipal_Swap_Index`
  Per 2006 ISDA Definitions or Annex to the 2000 ISDA
  Definitions, Section 7.1 Rate Options, as amended and
  supplemented through the date on which parties enter
  into the relevant transaction.
* `FloatingRateIndexEnum_USD_SOFR_COMPOUND`
  Per 2006 ISDA Definitions or Annex to the 2000 ISDA
  Definitions, Section 7.1 Rate Options, as amended and
  supplemented through the date on which parties enter
  into the relevant transaction.
* `FloatingRateIndexEnum_USD_S_P_Index_High_Grade`
  Per 2006 ISDA Definitions or Annex to the 2000 ISDA
  Definitions, Section 7.1 Rate Options, as amended and
  supplemented through the date on which parties enter
  into the relevant transaction.
* `FloatingRateIndexEnum_USD_TBILL_H_15`
  Per 2006 ISDA Definitions or Annex to the 2000 ISDA
  Definitions, Section 7.1 Rate Options, as amended and
  supplemented through the date on which parties enter
  into the relevant transaction.
* `FloatingRateIndexEnum_USD_TBILL_H_15_Bloomberg`
  Per 2006 ISDA Definitions or Annex to the 2000 ISDA
  Definitions, Section 7.1 Rate Options, as amended and
  supplemented through the date on which parties enter
  into the relevant transaction.
* `FloatingRateIndexEnum_USD_TBILL_Secondary_Market`
  Per 2006 ISDA Definitions or Annex to the 2000 ISDA
  Definitions, Section 7.1 Rate Options, as amended and
  supplemented through the date on which parties enter
  into the relevant transaction.
* `FloatingRateIndexEnum_USD_TIBOR_ISDC`
  Per 2006 ISDA Definitions or Annex to the 2000 ISDA
  Definitions, Section 7.1 Rate Options, as amended and
  supplemented through the date on which parties enter
  into the relevant transaction.
* `FloatingRateIndexEnum_USD_TIBOR_Reference_Banks`
  Per 2006 ISDA Definitions or Annex to the 2000 ISDA
  Definitions, Section 7.1 Rate Options, as amended and
  supplemented through the date on which parties enter
  into the relevant transaction.
* `FloatingRateIndexEnum_USD_Treasury_19901_3_00_ICAP`
  Per 2006 ISDA Definitions or Annex to the 2000 ISDA
  Definitions, Section 7.1 Rate Options, as amended and
  supplemented through the date on which parties enter
  into the relevant transaction.
* `FloatingRateIndexEnum_USD_Treasury_Rate_ICAP_BrokerTec`
  Per 2006 ISDA Definitions or Annex to the 2000 ISDA
  Definitions, Section 7.1 Rate Options, as amended and
  supplemented through the date on which parties enter
  into the relevant transaction.
* `FloatingRateIndexEnum_USD_Treasury_Rate_SwapMarker100`
  Per 2006 ISDA Definitions or Annex to the 2000 ISDA
  Definitions, Section 7.1 Rate Options, as amended and
  supplemented through the date on which parties enter
  into the relevant transaction.
* `FloatingRateIndexEnum_USD_Treasury_Rate_SwapMarker99`
  Per 2006 ISDA Definitions or Annex to the 2000 ISDA
  Definitions, Section 7.1 Rate Options, as amended and
  supplemented through the date on which parties enter
  into the relevant transaction.
* `FloatingRateIndexEnum_USD_Treasury_Rate_T19901`
  Per 2006 ISDA Definitions or Annex to the 2000 ISDA
  Definitions, Section 7.1 Rate Options, as amended and
  supplemented through the date on which parties enter
  into the relevant transaction.
* `FloatingRateIndexEnum_USD_Treasury_Rate_T500`
  Per 2006 ISDA Definitions or Annex to the 2000 ISDA
  Definitions, Section 7.1 Rate Options, as amended and
  supplemented through the date on which parties enter
  into the relevant transaction.
* `FloatingRateIndexEnum_VND_Semi_Annual_Swap_Rate_11_00_BGCANTOR`
  Per 2006 ISDA Definitions or Annex to the 2000 ISDA
  Definitions, Section 7.1 Rate Options, as amended and
  supplemented through the date on which parties enter
  into the relevant transaction.
* `FloatingRateIndexEnum_VND_Semi_Annual_Swap_Rate_Reference_Banks`
  Per 2006 ISDA Definitions or Annex to the 2000 ISDA
  Definitions, Section 7.1 Rate Options, as amended and
  supplemented through the date on which parties enter
  into the relevant transaction.
* `FloatingRateIndexEnum_ZAR_DEPOSIT_Reference_Banks`
  Per 2006 ISDA Definitions or Annex to the 2000 ISDA
  Definitions, Section 7.1 Rate Options, as amended and
  supplemented through the date on which parties enter
  into the relevant transaction.
* `FloatingRateIndexEnum_ZAR_DEPOSIT_SAFEX`
  Per 2006 ISDA Definitions or Annex to the 2000 ISDA
  Definitions, Section 7.1 Rate Options, as amended and
  supplemented through the date on which parties enter
  into the relevant transaction.
* `FloatingRateIndexEnum_ZAR_JIBAR_Reference_Banks`
  Per 2006 ISDA Definitions or Annex to the 2000 ISDA
  Definitions, Section 7.1 Rate Options, as amended and
  supplemented through the date on which parties enter
  into the relevant transaction.
* `FloatingRateIndexEnum_ZAR_JIBAR_SAFEX`
  Per 2006 ISDA Definitions or Annex to the 2000 ISDA
  Definitions, Section 7.1 Rate Options, as amended and
  supplemented through the date on which parties enter
  into the relevant transaction.
* `FloatingRateIndexEnum_ZAR_PRIME_AVERAGE`
  Per 2006 ISDA Definitions or Annex to the 2000 ISDA
  Definitions, Section 7.1 Rate Options, as amended and
  supplemented through the date on which parties enter
  into the relevant transaction.
* `FloatingRateIndexEnum_ZAR_PRIME_AVERAGE_Reference_Banks`
  Per 2006 ISDA Definitions or Annex to the 2000 ISDA
  Definitions, Section 7.1 Rate Options, as amended and
  supplemented through the date on which parties enter
  into the relevant transaction.
* `FloatingRateIndexEnum_ZAR_Quarterly_Swap_Rate_1_00_TRADITION`
  Per 2006 ISDA Definitions or Annex to the 2000 ISDA
  Definitions, Section 7.1 Rate Options, as amended and
  supplemented through the date on which parties enter
  into the relevant transaction.
* `FloatingRateIndexEnum_ZAR_Quarterly_Swap_Rate_5_30_TRADITION`
  Per 2006 ISDA Definitions or Annex to the 2000 ISDA
  Definitions, Section 7.1 Rate Options, as amended and
  supplemented through the date on which parties enter
  into the relevant transaction.
* `FloatingRateIndexEnum_ZAR_Quarterly_Swap_Rate_TRADITION_Reference_Banks`
  Per 2006 ISDA Definitions or Annex to the 2000 ISDA
  Definitions, Section 7.1 Rate Options, as amended and
  supplemented through the date on which parties enter
  into the relevant transaction.

### `data` `GoverningLawEnum`

  The enumerated values to specify the law governing
  the transaction.
* `GoverningLawEnum_AsSpecifiedInMasterAgreement`
  The Governing Law is determined by reference to the
  relevant master agreement.
* `GoverningLawEnum_CAAB`
  Alberta law
* `GoverningLawEnum_CABC`
  British Columbia Law
* `GoverningLawEnum_CAMN`
  Manitoba law
* `GoverningLawEnum_CAON`
  Ontario law
* `GoverningLawEnum_CAQC`
  Quebec law
* `GoverningLawEnum_DE`
  German law
* `GoverningLawEnum_FR`
  French law
* `GoverningLawEnum_GBEN`
  English law
* `GoverningLawEnum_GBGY`
  The law of the island of Guernsey
* `GoverningLawEnum_GBIM`
  The law of the Isle of Man
* `GoverningLawEnum_GBJY`
  The law of the island of Jersey
* `GoverningLawEnum_GBSC`
  Scottish law
* `GoverningLawEnum_JP`
  Japanese law
* `GoverningLawEnum_USCA`
  Californian law
* `GoverningLawEnum_USDE`
  Delaware law
* `GoverningLawEnum_USIL`
  Illinois law
* `GoverningLawEnum_USNY`
  New York law

### `data` `IndependentAmountEligibilityEnum`

  The enumerated values to specify the instances where
  the independent amount eligible collateral is not
  defined as a set of eligible collateral assets.
* `IndependentAmountEligibilityEnum_None`
  None.
* `IndependentAmountEligibilityEnum_NoneUnlessSpecifiedInConfirmation`
  None, unless otherwise specified in a Confirmation.

### `data` `IndexAnnexSourceEnum`

  The enumerated values to specify the CDX index annex
  source.
* `IndexAnnexSourceEnum_MasterConfirmation`
  As defined in the relevant form of Master
  Confirmation applicable to the confirmation of Dow
  Jones CDX indices.
* `IndexAnnexSourceEnum_Publisher`
  As defined in the relevant form of Master
  Confirmation applicable to the confirmation of Dow
  Jones CDX indices.

### `data` `IndexEventConsequenceEnum`

  The enumerated values to specify the consequences of
  Index Events.
* `IndexEventConsequenceEnum_CalculationAgentAdjustment`
  Calculation Agent Adjustment.
* `IndexEventConsequenceEnum_CancellationAndPayment`
  Cancellation and Payment.
* `IndexEventConsequenceEnum_NegotiatedCloseOut`
  Negotiated Close Out.
* `IndexEventConsequenceEnum_RelatedExchange`
  Related Exchange.

### `data` `InformationProviderEnum`

  The enumerated values to specify the list of
  information providers.
* `InformationProviderEnum_AssocBanksSingapore`
  The Association of Banks in Singapore.
* `InformationProviderEnum_BankOfCanada`
  The central bank of Canada.
* `InformationProviderEnum_BankOfEngland`
  The Bank Of England.
* `InformationProviderEnum_BankOfJapan`
  The central bank of Japan.
* `InformationProviderEnum_Bloomberg`
  Bloomberg LP.
* `InformationProviderEnum_EuroCentralBank`
  The European Central Bank.
* `InformationProviderEnum_FHLBSF`
  The Federal Home Loan Bank of San Francisco, or its
  successor.
* `InformationProviderEnum_FederalReserve`
  The Federal Reserve, the central bank of the United
  States.
* `InformationProviderEnum_ISDA`
  International Swaps and Derivatives Association, Inc.
* `InformationProviderEnum_Other`
* `InformationProviderEnum_ReserveBankAustralia`
  The Reserve Bank of Australia.
* `InformationProviderEnum_ReserveBankNewZealand`
  The Reserve Bank of New Zealand.
* `InformationProviderEnum_Reuters`
  Reuters Group Plc.
* `InformationProviderEnum_SAFEX`
  South African Futures Exchange, or its successor.
* `InformationProviderEnum_Telerate`
  Telerate, Inc.

### `data` `IntentEnum`

  The enumeration values to qualify the intent
  associated with a transaction event.
* `IntentEnum_Correction`
  The intent is to correct the event or associated
  execution/contract.
* `IntentEnum_Increase`
  The intent is to increase the notional or quantity
  associated with the contract or execution.
* `IntentEnum_PartialTermination`
  The intent is to reduce the notional or quantity
  associated with the contract (a.k.a. partially
  terminate it).
* `IntentEnum_Renegotiation`
  The intent is to re-negotiate some of the terms of
  the contract.
* `IntentEnum_Termination`
  The intent is to terminate the contract.

### `data` `InterestShortfallCapEnum`

  The enumerated values to specify the interest
  shortfall cap, applicable to mortgage derivatives.
* `InterestShortfallCapEnum_Fixed`
* `InterestShortfallCapEnum_Variable`

### `data` `InterpolationMethodEnum`

  The enumerated values to specify the interpolation
  method, e.g. linear.
* `InterpolationMethodEnum_LinearZeroYield`
  Linear Interpolation applicable.
* `InterpolationMethodEnum_None`
  No Interpolation applicable.

### `data` `LegalDocumentNameEnum`

  The enumerated values to specify the legal document
  name.
* `LegalDocumentNameEnum_CreditSupportAnnex`
  A Credit Support Annex legal document.
* `LegalDocumentNameEnum_MasterAgreement`
  A Master Agreement.
* `LegalDocumentNameEnum_StandardCreditSupportAnnex`
  An Standard Credit Support Annex.

### `data` `LegalDocumentPublisherEnum`

  The enumerated values to specify the legal document
  publisher.
* `LegalDocumentPublisherEnum_AFB`
  Association Française des Banques.
* `LegalDocumentPublisherEnum_ISDA`
  International Swaps and Derivatives Association, Inc.

### `data` `LegalDocumentStyleEnum`

  The enumerated values to specify the legal document
  style.
* `LegalDocumentStyleEnum_EnglishLaw`
  English Law.
* `LegalDocumentStyleEnum_JapaneseLaw`
  Japanese Law.
* `LegalDocumentStyleEnum_NewYorkLaw`
  New York Law.

### `data` `LengthUnitEnum`

  The enumerated values to specify the length unit in
  the Resource type.
* `LengthUnitEnum_Pages`
* `LengthUnitEnum_TimeUnit`

### `data` `LimitLevelEnum`

  The enumeration values to specify the level at which
  the limit is set: customer business, proprietary
  business or account level. This is part of the CME
  specification for clearing credit limits, although
  not specified as a set of enumerated values as part
  of the clearing confirmation specification.
* `LimitLevelEnum_Account`
  The limit is set in relation to the proprietary
  business undertaken by the clearing counterparty.
* `LimitLevelEnum_Customer`
  The limit is set in relation to the customer business
  undertaken by the clearing counterparty.
* `LimitLevelEnum_House`
  The limit is set at the account level in relation to
  the clearing counterparty.

### `data` `MarketDisruptionEnum`

  The enumerated values to specify the handling of an
  averaging date market disruption for an equity
  derivative transaction.
* `MarketDisruptionEnum_ModifiedPostponement`
  As defined in section 6.7 paragraph (c) sub-paragraph
  (iii) of the ISDA 2002 Equity Derivative definitions.
* `MarketDisruptionEnum_Omission`
  As defined in section 6.7 paragraph (c) sub-paragraph
  (i) of the ISDA 2002 Equity Derivative definitions.
* `MarketDisruptionEnum_Postponement`
  As defined in section 6.7 paragraph (c) sub-paragraph
  (ii) of the ISDA 2002 Equity Derivative definitions.

### `data` `MasterAgreementTypeEnum`

  The enumerated values to specify the type of the
  master agreement governing the transaction.
* `MasterAgreementTypeEnum_AFB`
  AFB Master Agreement for Foreign Exchange and
  Derivatives Transactions
* `MasterAgreementTypeEnum_Bespoke`
  A Bespoke (custom) Master Agreement, including
  one-off agreements for transactions
* `MasterAgreementTypeEnum_CMA`
  Clearing Master Agreement
* `MasterAgreementTypeEnum_CMOF`
  Contrato Marco de Operaciones Financieras
* `MasterAgreementTypeEnum_EEIPower`
  EEI Master Power Purchase and Sale Agreement
* `MasterAgreementTypeEnum_EFETElectricity`
  EFET General Agreement Concerning the Delivery and
  Acceptance of Electricity
* `MasterAgreementTypeEnum_EFETGas`
  EFET General Agreement Concerning The Delivery And
  Acceptance of Natural Gas
* `MasterAgreementTypeEnum_EMA`
  European Master Agreement and the Derivatives Annex
  (Banking Federation of the European Union)
* `MasterAgreementTypeEnum_FBF`
  Master Agreement Relating to transactions on Forward
  Financial Instruments (Federation Bancaire Francaise)
* `MasterAgreementTypeEnum_GMRA`
  ICMA Global Master Agreement for REPO Trades
* `MasterAgreementTypeEnum_GMSLA`
  ISLA Global Master Agreement for Securities Lending
* `MasterAgreementTypeEnum_GTMA`
  FOA Grid Trade Master Agreement
* `MasterAgreementTypeEnum_GasEDI`
  GasEDI Base Contract for Short-term Sale and Purchase
  of Natural Gas
* `MasterAgreementTypeEnum_German`
  German Master Agreement for Financial derivatives and
  Addendum for Options on Stock Exchange Indices or
  Securities
* `MasterAgreementTypeEnum_ICOM`
  International Currency Options Market Master
  Agreement
* `MasterAgreementTypeEnum_IETA_ERPA`
  International Emissions Trading Association Emissions
  Reduction Purchase Agreement
* `MasterAgreementTypeEnum_IETA_ETMA`
  International Emissions Trading Association Emissions
  Trading Master Agreement
* `MasterAgreementTypeEnum_IETA_IETMA`
  International Emissions Trading Association
  International Emissions Trading Master Agreement
* `MasterAgreementTypeEnum_IFEMA`
  International Foreign Exchange Master Agreement
* `MasterAgreementTypeEnum_IFEOMA`
  International Foreign Exchange and Options Master
  Agreement
* `MasterAgreementTypeEnum_ISDA`
  ISDA Master Agreement
* `MasterAgreementTypeEnum_ISDAFIA_CDEA`
  ISDA-FIA Cleared Derivatives Execution Agreement
* `MasterAgreementTypeEnum_JSCC`
  Master agreement of Japan Securities Clearing
  Corporation
* `MasterAgreementTypeEnum_LBMA`
  International Bullion Master Agreement Terms
  published by the London Bullion Market Association
* `MasterAgreementTypeEnum_LEAP`
  Leadership in Energy Automated Processing
* `MasterAgreementTypeEnum_MCPSA`
  CTA Master Coal Purchase and Sales Agreement
* `MasterAgreementTypeEnum_NAESBGas`
  NAESB Base Contract for Sale and Purchase of Natural
  Gas
* `MasterAgreementTypeEnum_NBP`
  Short Term Flat NBP Trading Terms and Conditions
* `MasterAgreementTypeEnum_RussianDerivatives`
  Standard Documentation for Derivative Transactions on
  the Russian Financial Markets
* `MasterAgreementTypeEnum_RussianRepo`
  Master Agreement and Contractual Terms for Repurchase
  Agreements on the Russian Financial Market
* `MasterAgreementTypeEnum_SCoTA`
  globalCOAL Standard Coal Trading Agreement
* `MasterAgreementTypeEnum_Swiss`
  Swiss Master Agreement for OTC Derivatives
  Instruments
* `MasterAgreementTypeEnum_TTF`
  TTF Hub Natural Gas Trading Terms and Conditions
* `MasterAgreementTypeEnum_ZBT`
  Zeebrugge Hub Natural Gas Trading Terms and
  Conditions

### `data` `MasterConfirmationAnnexTypeEnum`

  The enumerated values to specify the type of annex to
  be used with master confirmation agreement governing
  the transaction.
* `MasterConfirmationAnnexTypeEnum_ISDA2004IndexVarianceSwapAmericasInterdealer`
  The Index Variance Swap 2004 Annex to the ISDA 2004
  Americas Interdealer Master Equity Derivatives
  Confirmation Agreement and to the Revised ISDA 2004
  Americas Interdealer Master Equity Derivatives
  Confirmation Agreement applies.
* `MasterConfirmationAnnexTypeEnum_ISDA2004ShareVarianceSwapAmericasInterdealer`
  The Share Variance Swap 2004 Annex to the ISDA 2004
  Americas Interdealer Master Equity Derivatives
  Confirmation Agreement and to the Revised ISDA 2004
  Americas Interdealer Master Equity Derivatives
  Confirmation Agreement applies.
* `MasterConfirmationAnnexTypeEnum_ISDA2007DispersionVarianceSwapEuropean`
  The Dispersion Variance Swap Annex to the Revised
  2007 ISDA European Variance Swap Master Confirmation
  Agreement applies.
* `MasterConfirmationAnnexTypeEnum_ISDA2007EquityFinanceSwapEuropean`
  The EFS (Equity Share Finance Swap) 2007 Annex to the
  ISDA 2007 European Master Equity Derivatives
  Confirmation Agreement applies.
* `MasterConfirmationAnnexTypeEnum_ISDA2007IndexVarianceSwapAmericasInterdealer`
  The Index Variance Swap 2007 Annex to the Revised
  ISDA 2004 Americas Interdealer Master Equity
  Derivatives Confirmation Agreement applies.
* `MasterConfirmationAnnexTypeEnum_ISDA2007ShareVarianceSwapAmericasInterdealer`
  The Share Variance Swap 2007 Annex to the Revised
  ISDA 2004 Americas Interdealer Master Equity
  Derivatives Confirmation Agreement applies.
* `MasterConfirmationAnnexTypeEnum_ISDA2007VarianceOptionEuropean`
  The Variance Option Standard Terms Appendix to the
  Revised ISDA 2007 European Variance Swap Master
  Confirmation Agreement applies.
* `MasterConfirmationAnnexTypeEnum_ISDA2008EquityFinanceSwapAsiaExcludingJapan`
  The Cash-settled Open Market EFS (Equity Finance
  Share Swap) 2008 Annex to the ISDA 2008 AEJ (Asia
  Excluding Japan) Master Equity Derivatives
  Confirmation Agreement applies.
* `MasterConfirmationAnnexTypeEnum_ISDA2008EquityFinanceSwapAsiaExcludingJapanRev1`
  The Cash-settled Open Market EFS (Equity Finance
  Share Swap) Annex to the Revised ISDA 2008 AEJ (Asia
  Excluding Japan) Master Equity Derivatives
  Confirmation Agreement applies.
* `MasterConfirmationAnnexTypeEnum_ISDA2008EquityOptionAsiaExcludingJapan`
  The Open Market Equity Option 2008 Annex to the ISDA
  2008 AEJ (Asia Excluding Japan) Master Equity
  Derivatives Confirmation Agreement applies.
* `MasterConfirmationAnnexTypeEnum_ISDA2008EquityOptionAsiaExcludingJapanRev1`
  The Open Market Equity Option Annex to the Revised
  ISDA 2008 AEJ (Asia Excluding Japan) Master Equity
  Derivatives Confirmation Agreement applies.
* `MasterConfirmationAnnexTypeEnum_ISDA2008EquityOptionJapan`
  The Equity Option 2008 Annex to the ISDA 2008
  Japanese Master Equity Derivatives Confirmation
  Agreement applies.
* `MasterConfirmationAnnexTypeEnum_ISDA2009ClosedMarketsOptionsAsiaExcludingJapan`
  The Cash-settled Closed Market Index and Share
  Options 2009 Annex to the Revised ISDA 2008 AEJ (Asia
  Excluding Japan) Master Equity Derivatives
  Confirmation Agreement applies.
* `MasterConfirmationAnnexTypeEnum_ISDA2009EquityEuropeanIS`
  The Index Swap 2009 Annex to the ISDA 2007 European
  Master Equity Derivatives Confirmation Agreement
  applies.
* `MasterConfirmationAnnexTypeEnum_ISDA2009EquityEuropeanInterdealerSS`
  The Interdealer Share Swap 2009 Annex to the ISDA
  2009 European Interdealer Master Equity Derivatives
  Confirmation Agreement applies.
* `MasterConfirmationAnnexTypeEnum_ISDA2009IndexShareOptionAmericas`
  The Index and Share Options 2009 Annex to the ISDA
  2009 Americas Master Equity Derivatives Confirmation
  Agreement applies.
* `MasterConfirmationAnnexTypeEnum_ISDA2009IndexSwapEuropeanInterdealer`
  The Interdealer Index Swap 2009 Annex to the ISDA
  2009 European Interdealer Master Equity Derivatives
  Confirmation Agreement applies.
* `MasterConfirmationAnnexTypeEnum_ISDA2009IndexSwapPanAsiaInterdealer`
  The Index Swap 2009 Annex to the ISDA 2009 Pan-Asia
  Interdealer Master Equity Derivatives Confirmation
  Agreement applies.
* `MasterConfirmationAnnexTypeEnum_ISDA2009ShareSwapPanAsia`
  The Share Swap 2009 Annex to the ISDA 2009 Pan-Asia
  Interdealer Master Equity Derivatives Confirmation
  Agreement applies.
* `MasterConfirmationAnnexTypeEnum_ISDA2010FairValueShareSwapEuropeanInterdealer`
  The Fair Value Interdealer Share Swap 2010 Annex to
  the ISDA 2009 European Interdealer Master Equity
  Derivatives Confirmation Agreement applies.
* `MasterConfirmationAnnexTypeEnum_ISDA2010IndexShareOptionEMEAInterdealer`
  The Cash-settled Index Option/Cash/Physically-settled
  Share Option 2010 Annex to the ISDA 2010 EMEA EM
  Interdealer Master Equity Derivatives Confirmation
  Agreement applies.

### `data` `MasterConfirmationTypeEnum`

  The enumerated values to specify the type of master
  confirmation agreement governing the transaction.
  While FpML positions the date a prefix, the CDM
  positions it as the suffix to handle grammar type
  constraints.
* `MasterConfirmationTypeEnum_DJ_CDX_EM`
  Used for CDS Index trades executed under the Dow
  Jones CDX Emerging Markets Master Confirmation.
* `MasterConfirmationTypeEnum_DJ_CDX_EM_DIV`
  Used for CDS Index trades executed under the Dow
  Jones CDX Emerging Markets Diversified Master
  Confirmation.
* `MasterConfirmationTypeEnum_DJ_CDX_NA`
  Used for CDS Index trades executed under the Dow
  Jones CDX Master Confirmation that covers CDX.NA.IG,
  CDX.NA.HY, and CDX.NA.XO.
* `MasterConfirmationTypeEnum_DJ_iTraxx_Europe`
  Used for CDS Index trades executed under the Dow
  Jones iTraxx Europe Master Confirmation Agreement.
* `MasterConfirmationTypeEnum_EquityAmericas`
  A general reference to the types of Americas Master
  Confirmation Agreements. Use the more specific values
  to reference a specific type of Americas Master
  Confirmation Agreement.
* `MasterConfirmationTypeEnum_EquityAsia`
  A general reference to the types of Asia Master
  Confirmation Agreements. Use the more specific values
  to reference a specific type of Asia Master
  Confirmation Agreement.
* `MasterConfirmationTypeEnum_EquityEuropean`
  A general reference to the types of European Master
  Confirmation Agreements. Use the more specific values
  to reference a specific type of European Master
  Confirmation Agreement.
* `MasterConfirmationTypeEnum_ISDA1999Credit`
  ISDA 1999 Master Credit Derivatives Confirmation
  Agreement.
* `MasterConfirmationTypeEnum_ISDA2003CreditAsia`
  ISDA 2003 Master Credit Derivatives Confirmation
  Agreement interpreted as if Asia had been specified
  as the relevant Transaction Type in the Transaction
  Supplement.
* `MasterConfirmationTypeEnum_ISDA2003CreditAustraliaNewZealand`
  ISDA 2003 Master Credit Derivatives Confirmation
  Agreement interpreted as if Australia and New Zealand
  had been specified as the relevant Transaction Type
  in the Transaction Supplement.
* `MasterConfirmationTypeEnum_ISDA2003CreditEuropean`
  ISDA 2003 Master Credit Derivatives Confirmation
  Agreement interpreted as if European had been
  specified as the relevant Transaction Type in the
  Transaction Supplement.
* `MasterConfirmationTypeEnum_ISDA2003CreditJapan`
  ISDA 2003 Master Credit Derivatives Confirmation
  Agreement interpreted as if Japan had been specified
  as the relevant Transaction Type in the Transaction
  Supplement.
* `MasterConfirmationTypeEnum_ISDA2003CreditNorthAmerican`
  ISDA 2003 Master Credit Derivatives Confirmation
  Agreement interpreted as if North American had been
  specified as the relevant Transaction Type in the
  Transaction Supplement.
* `MasterConfirmationTypeEnum_ISDA2003CreditSingapore`
  ISDA 2003 Master Credit Derivatives Confirmation
  Agreement interpreted as if Singapore had been
  specified as the relevant Transaction Type in the
  Transaction Supplement.
* `MasterConfirmationTypeEnum_ISDA2003CreditSovereignAsia`
  ISDA Sovereign 2003 Master Credit Derivatives
  Confirmation Agreement interpreted as if Asia had
  been specified as the relevant Transaction Type in
  the Transaction Supplement. The 2003 Sovereign Master
  Confirmation has been superceded by the 2004.
* `MasterConfirmationTypeEnum_ISDA2003CreditSovereignCentralAndEasternEurope`
  ISDA Sovereign 2003 Master Credit Derivatives
  Confirmation Agreement interpreted as if Central and
  Eastern Europe had been specified as the relevant
  Transaction Type in the Transaction Supplement. The
  2003 Sovereign Master Confirmation has been
  superceded by the 2004.
* `MasterConfirmationTypeEnum_ISDA2003CreditSovereignJapan`
  ISDA Sovereign 2003 Master Credit Derivatives
  Confirmation Agreement interpreted as if Japan had
  been specified as the relevant Transaction Type in
  the Transaction Supplement. The 2003 Sovereign Master
  Confirmation has been superceded by the 2004.
* `MasterConfirmationTypeEnum_ISDA2003CreditSovereignLatinAmerica`
  ISDA Sovereign 2003 Master Credit Derivatives
  Confirmation Agreement interpreted as if Latin
  America had been specified as the relevant
  Transaction Type in the Transaction Supplement. The
  2003 Sovereign Master Confirmation has been
  superceded by the 2004.
* `MasterConfirmationTypeEnum_ISDA2003CreditSovereignMiddleEast`
  ISDA Sovereign 2003 Master Credit Derivatives
  Confirmation Agreement interpreted as if Middle East
  had been specified as the relevant Transaction Type
  in the Transaction Supplement. The 2003 Sovereign
  Master Confirmation has been superceded by the 2004.
* `MasterConfirmationTypeEnum_ISDA2003CreditSovereignWesternEurope`
  ISDA Sovereign 2003 Master Credit Derivatives
  Confirmation Agreement interpreted as if Western
  Europe had been specified as the relevant Transaction
  Type in the Transaction Supplement. The 2003
  Sovereign Master Confirmation has been superceded by
  the 2004.
* `MasterConfirmationTypeEnum_ISDA2003StandardCreditAsia`
  Dummy MCA value mirroring the matrix term values
  StandardAsiaCorporate.
* `MasterConfirmationTypeEnum_ISDA2003StandardCreditAustraliaNewZealand`
  Dummy MCA value mirroring the matrix term values
  StandardAustraliaCorporate/Sovereign and
  StandardNewZealandCorporate/Sovereign.
* `MasterConfirmationTypeEnum_ISDA2003StandardCreditEuropean`
  Dummy MCA value mirroring the matrix term value
  StandardEuropeanCorporate.
* `MasterConfirmationTypeEnum_ISDA2003StandardCreditJapan`
  Dummy MCA value mirroring the matrix term values
  StandardJapanCorporate.
* `MasterConfirmationTypeEnum_ISDA2003StandardCreditNorthAmerican`
  Dummy MCA value mirroring the matrix term value
  StandardNorthAmericanCorporate.
* `MasterConfirmationTypeEnum_ISDA2003StandardCreditSingapore`
  Dummy MCA value mirroring the matrix term values
  StandardSingaporeCorporate/Sovereign.
* `MasterConfirmationTypeEnum_ISDA2004CreditSovereignAsia`
  ISDA Sovereign 2004 Master Credit Derivatives
  Confirmation Agreement interpreted as if Asia had
  been specified as the relevant Transaction Type in
  the Transaction Supplement.
* `MasterConfirmationTypeEnum_ISDA2004CreditSovereignEmergingEuropeanAndMiddleEastern`
  ISDA Sovereign 2004 Master Credit Derivatives
  Confirmation Agreement interpreted as if Emerging
  European and Middle Eastern had been specified as the
  relevant Transaction Type in the Transaction
  Supplement.
* `MasterConfirmationTypeEnum_ISDA2004CreditSovereignJapan`
  ISDA Sovereign 2004 Master Credit Derivatives
  Confirmation Agreement interpreted as if Japan had
  been specified as the relevant Transaction Type in
  the Transaction Supplement.
* `MasterConfirmationTypeEnum_ISDA2004CreditSovereignLatinAmerican`
  ISDA Sovereign 2004 Master Credit Derivatives
  Confirmation Agreement interpreted as if Latin
  American had been specified as the relevant
  Transaction Type in the Transaction Supplement.
* `MasterConfirmationTypeEnum_ISDA2004CreditSovereignWesternEuropean`
  ISDA Sovereign 2004 Master Credit Derivatives
  Confirmation Agreement interpreted as if Western
  European had been specified as the relevant
  Transaction Type in the Transaction Supplement.
* `MasterConfirmationTypeEnum_ISDA2004EquityAmericasInterdealer`
  The ISDA 2004 Americas Interdealer Master Equity
  Derivatives Confirmation Agreement applies.
* `MasterConfirmationTypeEnum_ISDA2004EquityAmericasInterdealerRev1`
  The Revised ISDA 2004 Americas Interdealer Master
  Equity Derivatives Confirmation Agreement applies.
* `MasterConfirmationTypeEnum_ISDA2004StandardCreditSovereignAsia`
  Dummy MCA value mirroring the matrix term values
  StandardAsiaSovereign.
* `MasterConfirmationTypeEnum_ISDA2004StandardCreditSovereignEmergingEuropeanAndMiddleEastern`
  Dummy MCA value mirroring the matrix term value
  StandardEmergingEuropeanAndMiddleEasternSovereign.
* `MasterConfirmationTypeEnum_ISDA2004StandardCreditSovereignJapan`
  Dummy MCA value mirroring the matrix term values
  StandardJapanSovereign.
* `MasterConfirmationTypeEnum_ISDA2004StandardCreditSovereignLatinAmerican`
  Dummy MCA value mirroring the matrix term value
  StandardLatinAmericaSovereign.
* `MasterConfirmationTypeEnum_ISDA2004StandardCreditSovereignWesternEuropean`
  Dummy MCA value mirroring the matrix term value
  StandardWesternEuropeanSovereign.
* `MasterConfirmationTypeEnum_ISDA2005EquityAsiaExcludingJapanInterdealer`
  ISDA 2005 AEJ (Asia Excluding Japan) Interdealer
  Master Equity Derivatives Confirmation Agreement
  applies.
* `MasterConfirmationTypeEnum_ISDA2005EquityAsiaExcludingJapanInterdealerRev2`
  Second Revised ISDA 2005 AEJ (Asia Excluding Japan)
  Interdealer Master Equity Derivatives Confirmation
  Agreement applies.
* `MasterConfirmationTypeEnum_ISDA2005EquityJapaneseInterdealer`
  The ISDA 2005 Japanese Interdealer Master Equity
  Derivatives Confirmation Agreement applies.
* `MasterConfirmationTypeEnum_ISDA2006VarianceSwapJapanese`
  ISDA 2006 Variance Swap Japanese Confirmation
  Agreement applies.
* `MasterConfirmationTypeEnum_ISDA2006VarianceSwapJapaneseInterdealer`
  ISDA 2006 Variance Swap Japanese Interdealer
  Confirmation Agreement applies.
* `MasterConfirmationTypeEnum_ISDA2007EquityEuropean`
  The ISDA 2007 European Master Equity Derivatives
  Confirmation Agreement applies.
* `MasterConfirmationTypeEnum_ISDA2007VarianceSwapAmericas`
  The ISDA 2007 Americas Master Variance Swap
  Confirmation Agreement applies.
* `MasterConfirmationTypeEnum_ISDA2007VarianceSwapAsiaExcludingJapan`
  The ISDA 2007 AEJ Master Variance Swap Confirmation
  Agreement applies.
* `MasterConfirmationTypeEnum_ISDA2007VarianceSwapAsiaExcludingJapanRev1`
  The Revised ISDA 2007 AEJ Master Variance Swap
  Confirmation Agreement applies.
* `MasterConfirmationTypeEnum_ISDA2007VarianceSwapAsiaExcludingJapanRev2`
  The Second Revised ISDA 2007 AEJ Master Variance Swap
  Confirmation Agreement applies.
* `MasterConfirmationTypeEnum_ISDA2007VarianceSwapEuropean`
  The ISDA 2007 European Variance Swap Master
  Confirmation Agreement applies.
* `MasterConfirmationTypeEnum_ISDA2007VarianceSwapEuropeanRev1`
  The Revised ISDA 2007 European Variance Swap Master
  Confirmation Agreement applies.
* `MasterConfirmationTypeEnum_ISDA2008DividendSwapJapan`
  The ISDA 2008 Japanese Dividend Swap Master
  Confirmation Agreement applies.
* `MasterConfirmationTypeEnum_ISDA2008DividendSwapJapaneseRev1`
  The Revised ISDA 2008 Japanese Dividend Swap Master
  Confirmation Agreement applies.
* `MasterConfirmationTypeEnum_ISDA2008EquityAmericas`
  The ISDA 2008 Americas Master
  Designated/Exchange-Traded Contract Option
  Confirmation Agreement applies.
* `MasterConfirmationTypeEnum_ISDA2008EquityAsiaExcludingJapan`
  The ISDA 2008 AEJ (Asia Excluding Japan) Master
  Equity Derivatives Confirmation Agreement applies.
* `MasterConfirmationTypeEnum_ISDA2008EquityAsiaExcludingJapanRev1`
  The Revised ISDA 2008 AEJ (Asia Excluding Japan)
  Master Equity Derivatives Confirmation Agreement
  applies.
* `MasterConfirmationTypeEnum_ISDA2008EquityJapan`
  The ISDA 2008 Japanese Master Equity Derivatives
  Confirmation Agreement applies.
* `MasterConfirmationTypeEnum_ISDA2009EquityAmericas`
  The ISDA 2009 Americas Master Equity Derivatives
  Confirmation Agreement applies.
* `MasterConfirmationTypeEnum_ISDA2009EquityEuropeanInterdealer`
  The ISDA 2009 European Interdealer Master Equity
  Derivatives Confirmation Agreement applies.
* `MasterConfirmationTypeEnum_ISDA2009EquityPanAsia`
  2009 Pan-Asia Interdealer Master Equity Derivatives
  Confirmation Agreement applies.
* `MasterConfirmationTypeEnum_ISDA2010EquityEMEAInterdealer`
  The ISDA 2010 EMEA EM Interdealer Master Equity
  Derivatives Confirmation Agreement applies.
* `MasterConfirmationTypeEnum_ISDA2013VolatilitySwapAmericas`
  The ISDA 2013 Americas Master Volatility Swap
  Confirmation Agreement applies.
* `MasterConfirmationTypeEnum_ISDA2013VolatilitySwapAsiaExcludingJapan`
  The ISDA 2013 AEJ Master Volatility Swap Confirmation
  Agreement applies.
* `MasterConfirmationTypeEnum_ISDA2013VolatilitySwapEuropean`
  The ISDA 2013 European Volatility Swap Master
  Confirmation Agreement applies.
* `MasterConfirmationTypeEnum_ISDA2013VolatilitySwapJapanese`
  The ISDA 2013 Volatility Swap Japanese Confirmation
  Agreement applies.
* `MasterConfirmationTypeEnum__2003CreditIndex`
  Used for CDS Index trades. Relevant Master
  Confirmation determined by the contents of the
  creditDefaultSwap element. Best practice is to use
  the most specific code that applies.
* `MasterConfirmationTypeEnum__2004EquityEuropeanInterdealer`
  A privately negotiated European Interdealer Master
  Confirmation Agreement applies.
* `MasterConfirmationTypeEnum__2005VarianceSwapEuropeanInterdealer`
  A privately negotiated European Interdealer Master
  Confirmation Agreement applies.
* `MasterConfirmationTypeEnum__2006DividendSwapEuropean`
  A European Interdealer Master Confirmation Agreement
  not defined by ISDA, and modified by the parties to
  the transaction applies.
* `MasterConfirmationTypeEnum__2006DividendSwapEuropeanInterdealer`
  A European Interdealer Master Confirmation Agreement
  not defined by ISDA applies.
* `MasterConfirmationTypeEnum__2014CreditAsia`
  Dummy MCA value mirroring the matrix term value
  AsiaCorporate.
* `MasterConfirmationTypeEnum__2014CreditAsiaFinancial`
  Dummy MCA value mirroring the matrix term value
  AsiaFinancialCorporate.
* `MasterConfirmationTypeEnum__2014CreditAustraliaNewZealand`
  Dummy MCA value mirroring the matrix term value
  AustraliaCorporate/NewZealandCorporate.
* `MasterConfirmationTypeEnum__2014CreditAustraliaNewZealandFinancial`
  Dummy MCA value mirroring the matrix term value
  AustraliaFinancialCorporate/NewZealandFinancialCorporate.
* `MasterConfirmationTypeEnum__2014CreditEuropean`
  Dummy MCA value mirroring the matrix term value
  EuropeanCorporate.
* `MasterConfirmationTypeEnum__2014CreditEuropeanCoCoFinancial`
  Dummy MCA value mirroring the matrix term value
  EuropeanCoCoFinancialCorporate.
* `MasterConfirmationTypeEnum__2014CreditEuropeanFinancial`
  Dummy MCA value mirroring the matrix term value
  EuropeanFinancialCorporate.
* `MasterConfirmationTypeEnum__2014CreditJapan`
  Dummy MCA value mirroring the matrix term value
  JapanCorporate.
* `MasterConfirmationTypeEnum__2014CreditJapanFinancial`
  Dummy MCA value mirroring the matrix term value
  JapanFinancialCorporate.
* `MasterConfirmationTypeEnum__2014CreditNorthAmerican`
  Dummy MCA value mirroring the matrix term value
  NorthAmericanCorporate.
* `MasterConfirmationTypeEnum__2014CreditNorthAmericanFinancial`
  Dummy MCA value mirroring the matrix term value
  NorthAmericanFinancialCorporate.
* `MasterConfirmationTypeEnum__2014CreditSingapore`
  Dummy MCA value mirroring the matrix term values
  SingaporeCorporate.
* `MasterConfirmationTypeEnum__2014CreditSingaporeFinancial`
  Dummy MCA value mirroring the matrix term values
  SingaporeFinancialCorporate.
* `MasterConfirmationTypeEnum__2014CreditSovereignAsia`
  Dummy MCA value mirroring the matrix term value
  AsiaSovereign.
* `MasterConfirmationTypeEnum__2014CreditSovereignEmergingEuropeanAndMiddleEastern`
  Dummy MCA value mirroring the matrix term value
  EmergingEuropeanAndMiddleEasternSovereign.
* `MasterConfirmationTypeEnum__2014CreditSovereignJapan`
  Dummy MCA value mirroring the matrix term value
  JapanSovereign.
* `MasterConfirmationTypeEnum__2014CreditSovereignLatinAmerican`
  Dummy MCA value mirroring the matrix term value
  LatinAmericaSovereign.
* `MasterConfirmationTypeEnum__2014CreditSovereignWesternEuropean`
  Dummy MCA value mirroring the matrix term value
  WesternEuropeanSovereign.
* `MasterConfirmationTypeEnum__2014StandardCreditAsia`
  Dummy MCA value mirroring the matrix term values
  StandardAsiaCorporate.
* `MasterConfirmationTypeEnum__2014StandardCreditAsiaFinancial`
  Dummy MCA value mirroring the matrix term values
  StandardAsiaFinancialCorporate.
* `MasterConfirmationTypeEnum__2014StandardCreditAustraliaNewZealand`
  Dummy MCA value mirroring the matrix term values
  StandardAustraliaCorporate and
  StandardNewZealandCorporate.
* `MasterConfirmationTypeEnum__2014StandardCreditAustraliaNewZealandFinancial`
  Dummy MCA value mirroring the matrix term values
  StandardAustraliaFinancialCorporate and
  StandardNewZealandFinancialCorporate.
* `MasterConfirmationTypeEnum__2014StandardCreditEuropean`
  Dummy MCA value mirroring the matrix term value
  StandardEuropeanCorporate.
* `MasterConfirmationTypeEnum__2014StandardCreditEuropeanCoCoFinancial`
  Dummy MCA value mirroring the matrix term value
  StandardEuropeanCoCoFinancialCorporate.
* `MasterConfirmationTypeEnum__2014StandardCreditEuropeanFinancial`
  Dummy MCA value mirroring the matrix term value
  StandardEuropeanFinancialCorporate.
* `MasterConfirmationTypeEnum__2014StandardCreditJapan`
  Dummy MCA value mirroring the matrix term values
  StandardJapanCorporate.
* `MasterConfirmationTypeEnum__2014StandardCreditJapanFinancial`
  Dummy MCA value mirroring the matrix term value
  StandardJapanFinancialCorporate.
* `MasterConfirmationTypeEnum__2014StandardCreditNorthAmerican`
  Dummy MCA value mirroring the matrix term value
  StandardNorthAmericanCorporate.
* `MasterConfirmationTypeEnum__2014StandardCreditNorthAmericanFinancial`
  Dummy MCA value mirroring the matrix term value
  standardNorthAmericanFinancialCorporate.
* `MasterConfirmationTypeEnum__2014StandardCreditSingapore`
  Dummy MCA value mirroring the matrix term values
  StandardSingaporeCorporate.
* `MasterConfirmationTypeEnum__2014StandardCreditSingaporeFinancial`
  Dummy MCA value mirroring the matrix term value
  StandardSingaporeFinancialCorporate.
* `MasterConfirmationTypeEnum__2014StandardCreditSovereignAsia`
  Dummy MCA value mirroring the matrix term value
  StandardAsiaSovereign.
* `MasterConfirmationTypeEnum__2014StandardCreditSovereignEmergingEuropeanAndMiddleEastern`
  Dummy MCA value mirroring the matrix term value
  StandardEmergingEuropeanAndMiddleEasternSovereign.
* `MasterConfirmationTypeEnum__2014StandardCreditSovereignJapan`
  Dummy MCA value mirroring the matrix term values
  StandardJapanSovereign.
* `MasterConfirmationTypeEnum__2014StandardCreditSovereignLatinAmerican`
  Dummy MCA value mirroring the matrix term value
  StandardLatinAmericaSovereign.
* `MasterConfirmationTypeEnum__2014StandardCreditSovereignWesternEuropean`
  Dummy MCA value mirroring the matrix term value
  StandardWesternEuropeanSovereign.

### `data` `MatrixTermEnum`

  The enumerated values to specify a scheme of
  transaction types specified in the Equity Derivatives
  Settlement Matrix.
* `MatrixTermEnum_AsiaCorporate`
  Matrix Transaction Type of ASIA CORPORATE.
* `MatrixTermEnum_AsiaFinancialCorporate`
  Matrix Transaction Type of ASIA FINANCIAL CORPORATE.
* `MatrixTermEnum_AsiaSovereign`
  Matrix Transaction Type of ASIA SOVEREIGN.
* `MatrixTermEnum_AustraliaCorporate`
  Matrix Transaction Type of AUSTRALIA CORPORATE.
* `MatrixTermEnum_AustraliaFinancialCorporate`
  Matrix Transaction Type of AUSTRALIA FINANCIAL
  CORPORATE.
* `MatrixTermEnum_AustraliaSovereign`
  Matrix Transaction Type of AUSTRALIA SOVEREIGN.
* `MatrixTermEnum_EmergingEuropeanAndMiddleEasternSovereign`
  Matrix Transaction Type of EMERGING EUROPEAN AND
  MIDDLE EASTERN SOVEREIGN.
* `MatrixTermEnum_EmergingEuropeanCorporate`
  Matrix Transaction Type of EMERGING EUROPEAN
  CORPORATE.
* `MatrixTermEnum_EmergingEuropeanCorporateLPN`
  Matrix Transaction Type of EMERGING EUROPEAN
  CORPORATE LPN.
* `MatrixTermEnum_EmergingEuropeanFinancialCorporate`
  Matrix Transaction Type of EMERGING EUROPEAN
  FINANCIAL CORPORATE.
* `MatrixTermEnum_EmergingEuropeanFinancialCorporateLPN`
  Matrix Transaction Type of EMERGING EUROPEAN
  FINANCIAL CORPORATE LPN.
* `MatrixTermEnum_EuropeanCoCoFinancialCorporate`
  Matrix Transaction Type of EUROPEAN COCO FINANCIAL
  CORPORATE.
* `MatrixTermEnum_EuropeanCorporate`
  Matrix Transaction Type of EUROPEAN CORPORATE.
* `MatrixTermEnum_EuropeanFinancialCorporate`
  Matrix Transaction Type of EUROPEAN FINANCIAL
  CORPORATE.
* `MatrixTermEnum_EuropeanSeniorNonPreferredFinancialCorporate`
  Matrix Transaction Type of EUROPEAN SENIOR NON
  PREFERRED FINANCIAL CORPORATE.
* `MatrixTermEnum_IVS1OpenMarkets`
  The ISDA-published 2011 Index Volatility Swap
  Agreement for Open Markets.
* `MatrixTermEnum_JapanCorporate`
  Matrix Transaction Type of JAPAN CORPORATE.
* `MatrixTermEnum_JapanFinancialCorporate`
  Matrix Transaction Type of JAPAN FINANCIAL CORPORATE.
* `MatrixTermEnum_JapanSovereign`
  Matrix Transaction Type of JAPAN SOVEREIGN.
* `MatrixTermEnum_LatinAmericaCorporate`
  Matrix Transaction Type of LATIN AMERICA CORPORATE.
* `MatrixTermEnum_LatinAmericaCorporateBond`
  Matrix Transaction Type of LATIN AMERICA CORPORATE B.
* `MatrixTermEnum_LatinAmericaCorporateBondOrLoan`
  Matrix Transaction Type of LATIN AMERICA CORPORATE
  BL.
* `MatrixTermEnum_LatinAmericaFinancialCorporateBond`
  Matrix Transaction Type of LATIN AMERICA FINANCIAL
  CORPORATE B.
* `MatrixTermEnum_LatinAmericaFinancialCorporateBondOrLoan`
  Matrix Transaction Type of LATIN AMERICA FINANCIAL
  CORPORATE BL.
* `MatrixTermEnum_LatinAmericaSovereign`
  Matrix Transaction Type of LATIN AMERICA SOVEREIGN.
* `MatrixTermEnum_NewZealandCorporate`
  Matrix Transaction Type of NEW ZEALAND CORPORATE.
* `MatrixTermEnum_NewZealandFinancialCorporate`
  Matrix Transaction Type of NEW ZEALAND FINANCIAL
  CORPORATE.
* `MatrixTermEnum_NewZealandSovereign`
  Matrix Transaction Type of NEW ZEALAND SOVEREIGN.
* `MatrixTermEnum_NorthAmericanCorporate`
  Matrix Transaction Type of NORTH AMERICAN CORPORATE.
* `MatrixTermEnum_NorthAmericanFinancialCorporate`
  Matrix Transaction Type of NORTH AMERICAN FINANCIAL
  CORPORATE.
* `MatrixTermEnum_SingaporeCorporate`
  Matrix Transaction Type of SINGAPORE CORPORATE.
* `MatrixTermEnum_SingaporeFinancialCorporate`
  Matrix Transaction Type of SINGAPORE FINANCIAL
  CORPORATE.
* `MatrixTermEnum_SingaporeSovereign`
  Matrix Transaction Type of SINGAPORE SOVEREIGN.
* `MatrixTermEnum_StandardAsiaCorporate`
  Matrix Transaction Type of STANDARD ASIA CORPORATE.
* `MatrixTermEnum_StandardAsiaFinancialCorporate`
  Matrix Transaction Type of STANDARD ASIA FINANCIAL
  CORPORATE.
* `MatrixTermEnum_StandardAsiaSovereign`
  Matrix Transaction Type of STANDARD ASIA SOVEREIGN.
* `MatrixTermEnum_StandardAustraliaCorporate`
  Matrix Transaction Type of STANDARD AUSTRALIA
  CORPORATE.
* `MatrixTermEnum_StandardAustraliaFinancialCorporate`
  Matrix Transaction Type of STANDARD AUSTRALIA
  FINANCIAL CORPORATE.
* `MatrixTermEnum_StandardAustraliaSovereign`
  Matrix Transaction Type of STANDARD AUSTRALIA
  SOVEREIGN.
* `MatrixTermEnum_StandardEmergingEuropeanAndMiddleEasternSovereign`
  Matrix Transaction Type of STANDARD EMERGING EUROPEAN
  AND MIDDLE EASTERN SOVEREIGN.
* `MatrixTermEnum_StandardEmergingEuropeanCorporate`
  Matrix Transaction Type of STANDARD EMERGING EUROPEAN
  CORPORATE.
* `MatrixTermEnum_StandardEmergingEuropeanCorporateLPN`
  Matrix Transaction Type of STANDARD EMERGING EUROPEAN
  CORPORATE LPN.
* `MatrixTermEnum_StandardEmergingEuropeanFinancialCorporate`
  Matrix Transaction Type of STANDARD EMERGING EUROPEAN
  FINANCIAL CORPORATE.
* `MatrixTermEnum_StandardEmergingEuropeanFinancialCorporateLPN`
  Matrix Transaction Type of STANDARD EMERGING EUROPEAN
  FINANCIAL CORPORATE LPN.
* `MatrixTermEnum_StandardEuropeanCoCoFinancialCorporate`
  Matrix Transaction Type of STANDARD EUROPEAN COCO
  FINANCIAL CORPORATE.
* `MatrixTermEnum_StandardEuropeanCorporate`
  Matrix Transaction Type of STANDARD EUROPEAN
  CORPORATE.
* `MatrixTermEnum_StandardEuropeanFinancialCorporate`
  Matrix Transaction Type of STANDARD EUROPEAN
  FINANCIAL CORPORATE.
* `MatrixTermEnum_StandardEuropeanSeniorNonPreferredFinancialCorporate`
  Matrix Transaction Type of STANDARD EUROPEAN SENIOR
  NON PREFERRED FINANCIAL CORPORATE.
* `MatrixTermEnum_StandardJapanCorporate`
  Matrix Transaction Type of STANDARD JAPAN CORPORATE.
* `MatrixTermEnum_StandardJapanFinancialCorporate`
  Matrix Transaction Type of STANDARD JAPAN FINANCIAL
  CORPORATE.
* `MatrixTermEnum_StandardJapanSovereign`
  Matrix Transaction Type of STANDARD JAPAN SOVEREIGN.
* `MatrixTermEnum_StandardLatinAmericaCorporateBond`
  Matrix Transaction Type of STANDARD LATIN AMERICA
  CORPORATE B.
* `MatrixTermEnum_StandardLatinAmericaCorporateBondOrLoan`
  Matrix Transaction Type of STANDARD LATIN AMERICA
  CORPORATE BL.
* `MatrixTermEnum_StandardLatinAmericaFinancialCorporateBond`
  Matrix Transaction Type of STANDARD LATIN AMERICA
  FINANCIAL CORPORATE B.
* `MatrixTermEnum_StandardLatinAmericaFinancialCorporateBondOrLoan`
  Matrix Transaction Type of STANDARD LATIN AMERICA
  FINANCIAL CORPORATE BL.
* `MatrixTermEnum_StandardLatinAmericaSovereign`
  Matrix Transaction Type of STANDARD LATIN AMERICA
  SOVEREIGN.
* `MatrixTermEnum_StandardNewZealandCorporate`
  Matrix Transaction Type of STANDARD NEW ZEALAND
  CORPORATE.
* `MatrixTermEnum_StandardNewZealandFinancialCorporate`
  Matrix Transaction Type of STANDARD NEW ZEALAND
  FINANCIAL CORPORATE.
* `MatrixTermEnum_StandardNewZealandSovereign`
  Matrix Transaction Type of STANDARD NEW ZEALAND
  SOVEREIGN.
* `MatrixTermEnum_StandardNorthAmericanCorporate`
  Matrix Transaction Type of STANDARD NORTH AMERICAN
  CORPORATE.
* `MatrixTermEnum_StandardNorthAmericanFinancialCorporate`
  Matrix Transaction Type of STANDARD NORTH AMERICAN
  FINANCIAL CORPORATE.
* `MatrixTermEnum_StandardSingaporeCorporate`
  Matrix Transaction Type of STANDARD SINGAPORE
  CORPORATE.
* `MatrixTermEnum_StandardSingaporeFinancialCorporate`
  Matrix Transaction Type of STANDARD SINGAPORE
  FINANCIAL CORPORATE.
* `MatrixTermEnum_StandardSingaporeSovereign`
  Matrix Transaction Type of STANDARD SINGAPORE
  SOVEREIGN.
* `MatrixTermEnum_StandardSubordinatedEuropeanInsuranceCorporate`
  Transaction Type of STANDARD SUBORDINATED EUROPEAN
  INSURANCE CORPORATE.
* `MatrixTermEnum_StandardSukukFinancialCorporate`
  Matrix Transaction Type of STANDARD SUKUK FINANCIAL
  CORPORATE.
* `MatrixTermEnum_StandardUSMunicipalFullFaithAndCredit`
  Matrix Transaction Type of STANDARD U.S. MUNICIPAL
  FULL FAITH AND CREDIT.
* `MatrixTermEnum_StandardUSMunicipalGeneralFund`
  Matrix Transaction Type of STANDARD U.S. MUNICIPAL
  GENERAL FUND.
* `MatrixTermEnum_StandardUSMunicipalRevenue`
  Matrix Transaction Type of STANDARD U.S. MUNICIPAL
  REVENUE.
* `MatrixTermEnum_StandardWesternEuropeanSovereign`
  Matrix Transaction Type of STANDARD WESTERN EUROPEAN
  SOVEREIGN.
* `MatrixTermEnum_SubordinatedEuropeanInsuranceCorporate`
  Matrix Transaction Type of SUBORDINATED EUROPEAN
  INSURANCE CORPORATE.
* `MatrixTermEnum_SukukCorporate`
  Matrix Transaction Type of SUKUK CORPORATE.
* `MatrixTermEnum_SukukFinancialCorporate`
  Matrix Transaction Type of SUKUK FINANCIAL CORPORATE.
* `MatrixTermEnum_SukukSovereign`
  Matrix Transaction Type of SUKUK SOVEREIGN.
* `MatrixTermEnum_USMunicipalFullFaithAndCredit`
  Matrix Transaction Type of U.S. MUNICIPAL FULL FAITH
  AND CREDIT.
* `MatrixTermEnum_USMunicipalGeneralFund`
  Matrix Transaction Type of U.S. MUNICIPAL GENERAL
  FUND.
* `MatrixTermEnum_USMunicipalRevenue`
  Matrix Transaction Type of U.S. MUNICIPAL REVENUE.
* `MatrixTermEnum_WesternEuropeanSovereign`
  Matrix Transaction Type of WESTERN EUROPEAN
  SOVEREIGN.

### `data` `MatrixTypeEnum`

  The enumerated values to specify the identification
  the form of applicable matrix.
* `MatrixTypeEnum_CreditDerivativesPhysicalSettlementMatrix`
  The ISDA-published Credit Derivatives Physical
  Settlement Matrix.
* `MatrixTypeEnum_EquityDerivativesMatrix`
  The ISDA-published Equity Derivatives Matrix.
* `MatrixTypeEnum_SettlementMatrix`
  The ISDA-published 2000 ISDA Definitions Settlement
  Matrix for Early Terminations and Swaptions.

### `data` `MortgageSectorEnum`

  The enumerated values to specify a mortgage typology.
* `MortgageSectorEnum_ABS`
  Asset Backed Security.
* `MortgageSectorEnum_CDO`
  Collateralized Debt Obligation.
* `MortgageSectorEnum_CMBS`
  Commercial Mortgage Backed Security.
* `MortgageSectorEnum_RMBS`
  Residential Mortgage Backed Security.

### `data` `NationalizationOrInsolvencyOrDelistingEventEnum`

  Defines the consequences of nationalization,
  insolvency and delisting events relating to the
  underlying.
* `NationalizationOrInsolvencyOrDelistingEventEnum_CancellationAndPayment`
  The trade is terminated.
* `NationalizationOrInsolvencyOrDelistingEventEnum_NegotiatedCloseout`
  The parties may, but are not obliged, to terminate
  the transaction on mutually acceptable terms and if
  the terms are not agreed then the transaction
  continues.

### `data` `NaturalPersonRoleEnum`

  The enumerated values for the natural person&#39;s
  role.
* `NaturalPersonRoleEnum_Broker`
  The person who arranged with a client to execute the
  trade.
* `NaturalPersonRoleEnum_Buyer`
  Acquirer of the legal title to the financial
  instrument.
* `NaturalPersonRoleEnum_DecisionMaker`
  The party or person with legal responsibility for
  authorization of the execution of the transaction.
* `NaturalPersonRoleEnum_ExecutionWithinFirm`
  Person within the firm who is responsible for
  execution of the transaction.
* `NaturalPersonRoleEnum_InvestmentDecisionMaker`
  Person who is responsible for making the investment
  decision.
* `NaturalPersonRoleEnum_Seller`
  Seller of the legal title to the financial
  instrument.
* `NaturalPersonRoleEnum_Trader`
  The person who executed the trade.

### `data` `NegativeInterestRateTreatmentEnum`

  The enumerated values to specify the method of
  calculating payment obligations when a floating rate
  is negative (either due to a quoted negative floating
  rate or by operation of a spread that is subtracted
  from the floating rate).
* `NegativeInterestRateTreatmentEnum_NegativeInterestRateMethod`
  Negative Interest Rate Method. Per 2000 ISDA
  Definitions, Section 6.4 Negative Interest Rates,
  paragraphs (b) and (c).
* `NegativeInterestRateTreatmentEnum_ZeroInterestRateMethod`
  Zero Interest Rate Method. Per 2000 ISDA Definitions,
  Section 6.4. Negative Interest Rates, paragraphs (d)
  and (e).

### `data` `NoThresholdEnum`

  The enumerated value to specify the fact that no
  threshold applies.
* `NoThresholdEnum_zero` `(`  `)`

### `data` `NotionalAdjustmentEnum`

  The enumerated values to specify the conditions that
  govern the adjustment to the number of units of the
  return swap.
* `NotionalAdjustmentEnum_Execution`
  The adjustments to the number of units are governed
  by an execution clause.
* `NotionalAdjustmentEnum_PortfolioRebalancing`
  The adjustments to the number of units are governed
  by a portfolio rebalancing clause.
* `NotionalAdjustmentEnum_Standard`
  The adjustments to the number of units are not
  governed by any specific clause.

### `data` `ObligationCategoryEnum`

  The enumerated values used in both the obligations
  and deliverable obligations of the credit default
  swap to represent a class or type of securities which
  apply.
* `ObligationCategoryEnum_Bond`
  ISDA term &#39;Bond&#39;.
* `ObligationCategoryEnum_BondOrLoan`
  ISDA term &#39;Bond or Loan&#39;.
* `ObligationCategoryEnum_BorrowedMoney`
  ISDA term &#39;Borrowed Money&#39;.
* `ObligationCategoryEnum_Loan`
  ISDA term &#39;Loan&#39;.
* `ObligationCategoryEnum_Payment`
  ISDA term &#39;Payment&#39;.
* `ObligationCategoryEnum_ReferenceObligationsOnly`
  ISDA term &#39;Reference Obligations Only&#39;.

### `data` `OptionTypeEnum`

  The enumerated values to specify the type of the
  option. In FpML, OptionTypeEnum is a union with
  PutCallEnum, which specifies whether the option is a
  put or a call.
* `OptionTypeEnum_Call`
  A call option gives the holder the right to buy the
  underlying asset by a certain date for a certain
  price.
* `OptionTypeEnum_Payer`
  A &#39;payer&#39; option: If you buy a
  &#39;payer&#39; option you have the right but not the
  obligation to enter into the underlying swap
  transaction as the &#39;fixed&#39; rate/price payer
  and receive float.
* `OptionTypeEnum_Put`
  A put option gives the holder the right to sell the
  underlying asset by a certain date for a certain
  price.
* `OptionTypeEnum_Receiver`
  A &#39;receiver&#39; option: If you buy a
  &#39;receiver&#39; option you have the right but not
  the obligation to enter into the underlying swap
  transaction as the &#39;fixed&#39; rate/price
  receiver and pay float.
* `OptionTypeEnum_Straddle`
  A straddle strategy, which involves the simultaneous
  buying of a put and a call of the same underlier, at
  the same strike and same expiration date

### `data` `OriginatingEventEnum`

  The enumeration values to specify the originating
  event that gave way to the trade.
* `OriginatingEventEnum_Allocation`
  The trade results from an allocation event.
* `OriginatingEventEnum_Amendment`
  The trade results from a trade amendment.
* `OriginatingEventEnum_Clearing`
  The trade results from a clearing event.
* `OriginatingEventEnum_Compression`
  The trade results from a compression event.
* `OriginatingEventEnum_Exercise`
  The trade results from an exercise event.
* `OriginatingEventEnum_NewTrade`
  The trade results from a new trade event.
* `OriginatingEventEnum_Novation`
  The trade presented results from a novation event.
* `OriginatingEventEnum_PartialExercise`
  The trade results from a partial exercise event.
* `OriginatingEventEnum_PartialNovation`
  The trade results from a partial novation event.
* `OriginatingEventEnum_Transfer`
  The trade results from a transfer.

### `data` `PackageTypeEnum`

  The enumerated values to specify the type of package
  transaction.
* `PackageTypeEnum_Butterfly`
  A strategy in which a firm either pays or receives
  fixed for intermediate term (the &#39;body&#39;), and
  does the opposite (receives or pays fixed) for a
  short and a long term (the &#39;wings&#39;&#39;).
* `PackageTypeEnum_CalendarRoll`
  A strategy in which a swap is used to Roll from one
  IMM date into another IMM swap.
* `PackageTypeEnum_CalendarSpread`
  A strategy in which 2 trades on different dates are
  done at the same time, e.g., Sept vs June.
* `PackageTypeEnum_Custom`
  A package created for a particular client need e.g.
  portfolioCompression, termination.
* `PackageTypeEnum_IndexRoll`
  A strategy in which a firms buys new version of index
  and sells and old version of the same index.
* `PackageTypeEnum_OneCancelsOthers`
  A package in which only a maximum of one of the
  components will be executed (used for credit limit
  checking/orders).
* `PackageTypeEnum_SwapSpread`
  A strategy in which a firm either buys a treasury and
  enters a payer swap, or sells treasury and enters a
  receiver swap.
* `PackageTypeEnum_Switch`
  A strategy in which a firm either pays or receives
  fixed for some term versus the opposite (receives or
  pays fixed) for different term. Typically the second
  term starts at the completion of the first.

### `data` `PartyIdSourceEnum`

  The enumeration values associated with party
  identifier sources.
* `PartyIdSourceEnum_ARNU`
  Alien Registration Number, number assigned by a
  social security agency to identify a non-resident
  person.
* `PartyIdSourceEnum_BIC`
  The Bank Identifier Code.
* `PartyIdSourceEnum_CCPT`
  Passport Number, number assigned by an authority to
  identify the passport number of a person.
* `PartyIdSourceEnum_CUST`
  Customer Identification Number, number assigned by an
  issuer to identify a customer.
* `PartyIdSourceEnum_DRLC`
  Drivers License Number, number assigned by an
  authority to identify a driver&#39;s license.
* `PartyIdSourceEnum_EMPL`
  Employee Identification Number, number assigned by a
  registration authority to an employee.
* `PartyIdSourceEnum_LEI`
  The ISO 17442:2012 Legal Entity Identifier.
* `PartyIdSourceEnum_NIDN`
  National Identity Number, number assigned by an
  authority to identify the national identity number of
  a person..
* `PartyIdSourceEnum_SOSE`
  Social Security Number, number assigned by an
  authority to identify the social security number of a
  person.
* `PartyIdSourceEnum_TXID`
  Tax Identification Number, number assigned by a tax
  authority to identify a person.

### `data` `PartyRoleEnum`

  The enumerated values for the party role. The
  enumerated values go beyond the FpML partyRoleScheme
  as they also include elements that are part of the
  FpML Trade, such as the Barrier Determination Agent
  and the Hedging Party.
* `PartyRoleEnum_Accountant`
  Organization responsible for preparing the accounting
  for the trade.
* `PartyRoleEnum_AllocationAgent`
  The organization responsible for supplying the
  allocations for a trade to be allocated to multiple
  accounts/organizations.
* `PartyRoleEnum_ArrangingBroker`
  The organization that arranged the trade, i.e.
  brought together the counterparties.
  Synonyms/Alternatives: Inter-dealer broker, agent.
* `PartyRoleEnum_BarrierDeterminationAgent`
  The party specified in the related confirmation as
  Barrier Determination Agent.
* `PartyRoleEnum_Beneficiary`
  Organization that suffers the economic benefit of the
  trade.  The beneficiary may be distinct from the
  principal/counterparty - an example occurs when a
  hedge fund trades via a prime broker; in this case
  the principal is the prime broker, but the
  beneficiary is the hedge fund.  This can be
  represented as a payer/receiver account in the name
  of the hedge fund, but it is also possible to add the
  party role of &#39;Beneficiary&#39; at the
  partyTradeInformation level.
* `PartyRoleEnum_BookingParty`
  The entity for which the organization supporting the
  trade&#39;s processing  has booked/recorded the
  trade. This is used in non-reporting workflows
  situations in which the trade doesn&#39;t need to be
  reported but a firm still wants to specify their own
  side.
* `PartyRoleEnum_Buyer`
  Acquirer of the legal title to the financial
  instrument. In the case of an option, the buyer is
  the holder of the option. In the case of a swap or
  forward, the buyer will be determined by industry
  best practice.  This does not refer to an investor or
  investment manager or other organization on what is
  typically called  the &#39;Buy side&#39;; for that,
  see the &#39;Client&#39; role. Corresponds to
  &#39;Buyer&#39; as defined in certain regulations
  such as ESMA MiFID II/MIFIR RTS 22 field 9.
* `PartyRoleEnum_BuyerDecisionMaker`
  The party or person who, having legal authority to
  act on behalf of the trade counterparty acting as
  Buyer as defined in this coding scheme, made the
  decision to acquire the financial instrument.
  Corresponds to &#39;buyer decision maker&#39; as
  defined in ESMA&#39;s MIFIR RTS 23 report. This does
  not refer to the decision maker for what is
  traditionally called the &#39;Buy side&#39;; for
  that, see the &#39;Client Decision Maker&#39; role.
* `PartyRoleEnum_Chargor`
  The party that provides credit support under English
  Law.
* `PartyRoleEnum_ClearingClient`
  An organization that clears trades through a clearing
  house, via a clearing broker (member of the clearing
  house) who acts as an agent on its behalf. The term
  &#39;client&#39; refers to the organization&#39;s
  role in the clearing process in relation to its
  clearing broker, and not whether it is a price maker
  or taker in the execution process.
* `PartyRoleEnum_ClearingExceptionParty`
  A party to the trade that claims a clearing
  exception, such as an end-user exception under
  Dodd-Frank Act provisions.
* `PartyRoleEnum_ClearingFirm`
  Organization that submits the trade to a clearing
  house on behalf of the principal.
  Synonyms/alternates:  Futures Commission Merchant
  (FCM), Clearing Broker, Clearing Member Firm. Some
  implementations use &#39;Clearing Broker&#39; as
  synonym.
* `PartyRoleEnum_ClearingOrganization`
  The organization that acts as a central counterparty
  to clear a derivatives contract.  This is used to
  represent the role of Central Counterparties (CCPs)
  or Derivative Clearing Organizations (DCOs).
  Sometimes called &#39;ClearingService&#39;. Some
  implementations also use the term &#39;Clearer&#39;.
* `PartyRoleEnum_Client`
  Client as defined under ESMA MIFIR. This is generally
  the investor or other client of an investment firm,
  and is synonymous with the Beneficiary in many
  circumstances.
* `PartyRoleEnum_ClientDecisionMaker`
  The party or person who, having legal authority to
  act on behalf of a trade counterparty, made the
  decision to acquire or sell the financial instrument.
* `PartyRoleEnum_ConfirmationPlatform`
  Organization serving as a financial intermediary for
  the purposes of electronic confirmation or providing
  services for post-processing of transactional data.
* `PartyRoleEnum_ContractualParty`
  A party to a contractual document.  If the intended
  usage relates to the context of the trade lifecycle,
  more specific annotations have been defined which
  might be more appropriate.
* `PartyRoleEnum_CounterPartyAffiliate`
  Organization officially attached to the counterparty.
  e.g. partner, branch, subsidiary.
* `PartyRoleEnum_CounterPartyUltimateParent`
  The topmost entity or organization, within the
  corporate hierarchy, responsible for the reporting
  party.
* `PartyRoleEnum_Counterparty`
  An economic counterparty to the trade. Synonym:
  principal.
* `PartyRoleEnum_CreditSupportProvider`
  Organization that enhances the credit of another
  organization (similar to guarantor, but may not fully
  guarantee the obligation).
* `PartyRoleEnum_Custodian`
  Organization that maintains custody of the asset
  represented by the trade on behalf of the
  owner/principal.
* `PartyRoleEnum_DataSubmitter`
  Entity submitting the transaction report to the
  competent authority.
* `PartyRoleEnum_DeterminingParty`
  The party referenced is specified in the contract
  confirmation as Determination Party.
* `PartyRoleEnum_DisputingParty`
  Organization that is disputing the trade or
  transaction.
* `PartyRoleEnum_DocumentRepository`
  A marketplace organization which purpose is to
  maintain document records.  If the intended usage
  relates to the context of the trade lifecycle, more
  specific annotations have been defined which might be
  more appropriate.
* `PartyRoleEnum_ExecutingBroker`
  The (generally sell-side) organization that executed
  the trade; the price-making party.
* `PartyRoleEnum_ExecutingEntity`
  Entity executing the transaction.  If the transaction
  is executed directly by the reporting party, it will
  be the reporting party.  If it is executed by an
  execution agent or an affiliated party on behalf of
  the reporting party, it will be that affiliate or
  agent.
* `PartyRoleEnum_ExecutionAgent`
  The (generally buy-side) organization that acts to
  execute trades on behalf of an investor. Typically
  this is an investment manager or asset manager, and
  also makes the investment decisions for the investor.
  If required, a separate InvestmentDecision role can
  be specified to distinguish that the party making the
  investment decision is different.
* `PartyRoleEnum_ExecutionFacility`
  The facility, exchange, or market where the trade was
  executed. Synonym: Swap Execution Facility,
  Designated Contract Market, Execution Venue.
* `PartyRoleEnum_Guarantor`
  Organization that backs (guarantees) the credit risk
  of the trade.
* `PartyRoleEnum_HedgingParty`
  The ISDA Hedging Party that is specified in the
  related confirmation as Hedging, or if no Hedging
  Party is specified, either party to the contract.
* `PartyRoleEnum_OrderTransmitter`
  The entity transmitting the order to the reporting
  firm. Synonym: Transmitting Firm.
* `PartyRoleEnum_Pledgor`
  The party that provides credit support under New York
  Law.
* `PartyRoleEnum_PrimeBroker`
  The organization that takes on or took on the credit
  risk for this trade by stepping in between the two
  economic parties (without a central counterparty
  clearing mechanism).
* `PartyRoleEnum_PriorTradeRepository`
  The trade repository at which the trade was reported
  previous to the current trade repository.
* `PartyRoleEnum_PublicationVenue`
  The reporting service (whether trade repository,
  market data service, or exchange/facility/venue data
  distribution service) that published the report of
  this trade.
* `PartyRoleEnum_ReportingParty`
  The party with the regulatory responsibility to
  report this trade.
* `PartyRoleEnum_ReportingPartyAffiliate`
  Organization officially attached to the reporting
  party  e.g. partner, branch, subsidiary.
* `PartyRoleEnum_ReportingPartyUltimateParent`
  The topmost entity or organization, within the
  corporate hierarchy, responsible for the reporting
  party.
* `PartyRoleEnum_SecuredParty`
  The party that receives credit support under New York
  or English Law.
* `PartyRoleEnum_Seller`
  A counterparty in a trade, which performs in one of
  the following capacities: 1) it transfers or agrees
  to transfer in the future an instrument or title to
  that instrument in exchange for payment, 2) it writes
  a derivatives instrument such as an option or a swap
  in which it provides risk protection to the buyer.
  This does not refer to the broker/dealer or other
  organization on what is typically called  the
  &#39;Sell side&#39;; for that, see the &#39;Executing
  Broker&#39; role. Corresponds to &#39;Seller&#39; as
  defined in certain regulations such as ESMA MiFID
  II/MIFIR RTS 22 field 16.
* `PartyRoleEnum_SellerDecisionMaker`
  The party or person who, having legal authority to
  act on behalf of the trade counterparty acting as
  Seller as defined in this coding scheme, made the
  decision to sell the financial instrument.
  Corresponds to &#39;seller decision maker&#39; as
  defined in ESMA&#39;s MIFIR RTS 23 report. This does
  not refer to the decision maker for what is
  traditionally called the &#39;Sell side&#39;; for
  that, see the &#39;Trader&#39; person role.
* `PartyRoleEnum_SettlementAgent`
  The organization that makes or receives payments on
  behalf of the given principal party.
* `PartyRoleEnum_TradeRepository`
  An organization that maintains records of the trade
  for regulatory reporting purposes.
* `PartyRoleEnum_TradeSource`
  The organization that originally supplied the record
  of the trade. In the context of regulatory reporting,
  it is the submitter of the trade record to a
  regulator or TR.
* `PartyRoleEnum_TradingManager`
  The entity responsible for managing the
  assets/investments of this party.  Synonnym:  Asset
  Manager, Investment Manager, Trading Advisory.
* `PartyRoleEnum_TradingPartner`
  An entity with which this party trades from time to
  time, ie. with which it acts as a counterparty on
  some transactions.   This role is used for static
  reference data, not individual transactions.

### `data` `PayRelativeToEnum`

  The enumerated values to specify whether payments
  occur relative to the calculation period start date
  or end date, each reset date, valuation date or the
  last pricing date.
* `PayRelativeToEnum_CalculationPeriodEndDate`
  Payments will occur relative to the last day of each
  calculation period.
* `PayRelativeToEnum_CalculationPeriodStartDate`
  Payments will occur relative to the first day of each
  calculation period.
* `PayRelativeToEnum_LastPricingDate`
  Payments will occur relative to the last Pricing Date
  of each Calculation Period.
* `PayRelativeToEnum_ResetDate`
  Payments will occur relative to the reset date.
* `PayRelativeToEnum_ValuationDate`
  Payments will occur relative to the valuation date.

### `data` `PayerReceiverEnum`

  The enumerated values to specify an interest rate
  stream payer or receiver party.
* `PayerReceiverEnum_Payer`
  The party identified as the stream payer.
* `PayerReceiverEnum_Receiver`
  The party identified as the stream receiver.

### `data` `PaymentStatusEnum`

  The enumeration values to specify the payment status.
* `PaymentStatusEnum_Disputed`
  The payment is disputed.
* `PaymentStatusEnum_Instructed`
  The payment has been instructed.
* `PaymentStatusEnum_Pending`
  The payment is pending instruction.
* `PaymentStatusEnum_Settled`
  The payment has been settled.

### `data` `PaymentTypeEnum`

  The enumeration values to specify the type of
  payment.
* `PaymentTypeEnum_AmendmentFee`
  A cash flow associated with an amendment lifecycle
  event.
* `PaymentTypeEnum_AssignmentFee`
  A cash flow resulting from the assignment of a
  contract to a new counterparty.
* `PaymentTypeEnum_BrokerageCommission`
  The brokerage commission.
* `PaymentTypeEnum_Coupon`
  A cash flow corresponding to the periodic accrued
  interests.
* `PaymentTypeEnum_CreditEvent`
  A cashflow resulting from a credit event.
* `PaymentTypeEnum_DividendReturn`
  A cash flow corresponding to the synthetic dividend
  of an equity underlier asset traded through a
  derivative instrument.
* `PaymentTypeEnum_ExerciseFee`
  A cash flow associated with an exercise lifecycle
  event.
* `PaymentTypeEnum_Fee`
  A generic term for describing a non-scheduled
  cashflow that can be associated either with the
  initial contract, with some later corrections to it
  (e.g. a correction to the day count fraction that has
  a cashflow impact) or with some lifecycle events.
  Fees that are specifically associated with
  termination and partial termination, increase,
  amendment, and exercise events are qualified
  accordingly.
* `PaymentTypeEnum_IncreaseFee`
  A cash flow associated with an increase lifecycle
  event.
* `PaymentTypeEnum_Interest`
  Interest, without qualification as to whether it a
  gross or net interest relates cashflow.
* `PaymentTypeEnum_InterestReturn`
  A cash flow corresponding to the return of the
  interest rate portion of a derivative instrument that
  has different types of underlying assets, such as a
  total return swap.
* `PaymentTypeEnum_NetCashflow`
* `PaymentTypeEnum_NetInterest`
  Net interest across payout components. Applicable to
  products such as interest rate swaps.
* `PaymentTypeEnum_NovationFee`
  The novation fee.
* `PaymentTypeEnum_PartialTerminationFee`
  A cash flow associated with a partial termination
  lifecycle event.
* `PaymentTypeEnum_Premium`
  The premium associated with an OTC contract such as
  an option or a cap/floor.
* `PaymentTypeEnum_PriceReturn`
  A cash flow corresponding to the return of the price
  portion of a derivative instrument that has different
  types of underlying assets, such as a total return
  swap.
* `PaymentTypeEnum_PrincipalExchange`
  A cash flow which amount typically corresponds to the
  notional of the contract and that is exchanged
  between the parties on trade inception and reverted
  back when the contract is terminated.
* `PaymentTypeEnum_TerminationFee`
  A cash flow associated with a termination lifecycle
  event.
* `PaymentTypeEnum_UpfrontFee`
  An upfront cashflow associated to the swap to adjust
  for a difference between the swap price and the
  current market price.

### `data` `PeriodEnum`

  The enumerated values to specify the period, e.g.
  day, week.
* `PeriodEnum_D`
  Day
* `PeriodEnum_M`
  Month
* `PeriodEnum_W`
  Week
* `PeriodEnum_Y`
  Year

### `data` `PeriodExtendedEnum`

  The enumerated values to specify a time period
  containing the additional value of Term.
* `PeriodExtendedEnum_D`
  Day
* `PeriodExtendedEnum_M`
  Month
* `PeriodExtendedEnum_T`
  Term. The period commencing on the effective date and
  ending on the termination date. The T period always
  appears in association with periodMultiplier = 1, and
  the notation is intended for use in contexts where
  the interval thus qualified (e.g. accrual period,
  payment period, reset period, ...) spans the entire
  term of the trade.
* `PeriodExtendedEnum_W`
  Week
* `PeriodExtendedEnum_Y`
  Year

### `data` `PeriodTimeEnum`

  The enumeration values to specify a time period
  containing additional values such as Term.
* `PeriodTimeEnum_Hour`
  Period measured in hours.
* `PeriodTimeEnum_Minute`
  Period measured in minutes.
* `PeriodTimeEnum_Second`
  Period measured in seconds.

### `data` `PremiumTypeEnum`

  The enumerated values to specify the premium type for
  forward start options.
* `PremiumTypeEnum_Fixed`
* `PremiumTypeEnum_PostPaid`
* `PremiumTypeEnum_PrePaid`
* `PremiumTypeEnum_Variable`

### `data` `PriceExpressionEnum`

  he enumerated values to specify whether the price is
  expressed in absolute or relative terms.
* `PriceExpressionEnum_AbsoluteTerms`
  The price is expressed as an absolute amount.
* `PriceExpressionEnum_PercentageOfNotional`
  The price is expressed in percentage of the notional
  amount.

### `data` `ProductIdSourceEnum`

  The enumerated values to specify the product
  identifier source. FpML doesn&#39;t specify a list of
  values.
* `ProductIdSourceEnum_CUSIP`
  The Committee on Uniform Security Identification
  Procedures
* `ProductIdSourceEnum_FIGI`
  The Financial Instrument Global Identifier
* `ProductIdSourceEnum_ISIN`
  The ISO 6166 product identifier
* `ProductIdSourceEnum_RIC`
  The Reuters Instrument Code
* `ProductIdSourceEnum_SEDOL`
  The Stock Exchange Daily Official List, a list of
  security identifiers used in the United Kingdom and
  Ireland for clearing purposes.
* `ProductIdSourceEnum_Sicovam`
  The identification code issued by the French Société
  Interprofessionnelle pour la Compensation des Valeurs
  Mobilières.
* `ProductIdSourceEnum_Wertpapier`
  The German Wertpapierkennnummer securities
  identification code. It is composed of six digits or
  capital letters (excluding I and O), and no check
  digit.

### `data` `QuantifierEnum`

  The enumerated values to specify a logical
  quantification, i.e. either All or Any.
* `QuantifierEnum_All`
  The condition in the scope of the quantifier is true
  of every member of the domain i.e. every one of the
  elements in scope.
* `QuantifierEnum_Any`
  The condition in the scope of the quantifier is true
  of at least one member of the domain i.e. one or more
  of the elements in scope.

### `data` `QuantityTypeEnum`

  The enumeration values to qualify the type of
  quantity.
* `QuantityTypeEnum_Contracts`
  Contracts
* `QuantityTypeEnum_Units`
  Units
* `QuantityTypeEnum_UnitsOfMeasurePerTimeUnit`
  Units of measure per time unit.

### `data` `QuotationRateTypeEnum`

  The enumerated values to specify the type of
  quotation rate to be obtained from each cash
  settlement reference bank.
* `QuotationRateTypeEnum_Ask`
  An ask rate.
* `QuotationRateTypeEnum_Bid`
  A bid rate.
* `QuotationRateTypeEnum_ExercisingPartyPays`
  If optional early termination is applicable to a swap
  transaction, the rate, which may be a bid or ask
  rate, which would result, if seller is in-the-money,
  in the higher absolute value of the cash settlement
  amount, or, is seller is out-of-the-money, in the
  lower absolute value of the cash settlement amount.
* `QuotationRateTypeEnum_Mid`
  A mid-market rate.

### `data` `QuotationSideEnum`

  The enumerated values to specify the side from which
  perspective a value is quoted.
* `QuotationSideEnum_Ask`
  A value &#39;asked&#39; by a seller for an asset,
  i.e. the value at which a seller is willing to sell.
* `QuotationSideEnum_Bid`
  A value &#39;bid&#39; by a buyer for an asset, i.e.
  the value a buyer is willing to pay.
* `QuotationSideEnum_Mid`
  A value midway between the bid and the ask value.

### `data` `QuotationStyleEnum`

  The enumerated values to specify the actual quotation
  style (e.g. PointsUpFront, TradedSpread) used to
  quote a credit default swap fee leg.
* `QuotationStyleEnum_PointsUpFront`
  When quotation style is &#39;PointsUpFront&#39;, the
  initialPoints element of the Credit Default Swap
  feeLeg should be populated
* `QuotationStyleEnum_Price`
  When quotation style is &#39;Price&#39;, the
  marketPrice element of the Credit Default Swap feeLeg
  should be populated
* `QuotationStyleEnum_TradedSpread`
  When quotation style is &#39;TradedSpread&#39;, the
  marketFixedRate element of the Credit Default Swap
  feeLeg should be populated

### `data` `QuoteBasisEnum`

  The enumerated values to specify how an exchange rate
  is quoted.
* `QuoteBasisEnum_Currency1PerCurrency2`
  The amount of currency1 for one unit of currency2
* `QuoteBasisEnum_Currency2PerCurrency1`
  The amount of currency2 for one unit of currency1

### `data` `RateTreatmentEnum`

  The enumerated values to specify the methods for
  converting rates from one basis to another.
* `RateTreatmentEnum_BondEquivalentYield`
  Bond Equivalent Yield. Per Annex to the 2000 ISDA
  Definitions (June 2000 Version), Section 7.3. Certain
  General Definitions Relating to Floating Rate
  Options, paragraph (g).
* `RateTreatmentEnum_MoneyMarketYield`
  Money Market Yield. Per Annex to the 2000 ISDA
  Definitions (June 2000 Version), Section 7.3. Certain
  General Definitions Relating to Floating Rate
  Options, paragraph (h).

### `data` `RegulatoryRegimeEnum`

  The enumerated values to specify the regulatory
  regimes. The ISDA 2018 CSA is used as one input to
  qualify those enumerated values. The display name
  corresponds to the set of values specified as part of
  of the ISDA 2016 and 2018 CSA for Initial Margin.
  2016 ISDA Credit Support Annex for Initial Margin:
  Regime | 2018 ISDA Credit Support Annex for Initial
  Margin: Regime.
* `RegulatoryRegimeEnum_AustraliaMarginRules`
  2018 ISDA Credit Support Annex for Initial Margin,
  paragraph 13, General Principles: Australian
  Prudential Standard CPS 226 Margining and risk
  mitigation for non-centrally cleared derivatives.
* `RegulatoryRegimeEnum_CFTC_MarginRules`
  2018 ISDA Credit Support Annex for Initial Margin,
  paragraph 13, General Principles: Margin requirements
  adopted by the U.S. Commodity Futures Trading
  Commission pursuant to CEA § 4s(e).
* `RegulatoryRegimeEnum_CanadaMarginRules`
  2018 ISDA Credit Support Annex for Initial Margin,
  paragraph 13, General Principles: Guideline E-22,
  Margin Requirements for Non-Centrally Cleared
  Derivatives issued by the Canadian Office of the
  Superintendent of Financial Institutions
* `RegulatoryRegimeEnum_EMIR_MarginRules`
  2018 ISDA Credit Support Annex for Initial Margin,
  paragraph 13, General Principles: Regulation (EU) No
  648/2012 of the European Parliament and of the
  Council of 4 July 2012 on OTC derivatives, central
  counterparties and trade repositories (including the
  EMIR RTS).
* `RegulatoryRegimeEnum_HongKongMarginRules`
  2018 ISDA Credit Support Annex for Initial Margin,
  paragraph 13, General Principles: Chapter CR-G-14
  &#39;Non-centrally Cleared OTC Derivatives
  Transactions – Margin and Other Risk Mitigation
  Standards&#39; in the Banking Supervisory Policy
  Manual issued by the Hong Kong Monetary Authority.
* `RegulatoryRegimeEnum_JapanMarginRules`
  2018 ISDA Credit Support Annex for Initial Margin,
  paragraph 13, General Principles: Margin rules
  adopted by the Financial Services Agency of Japan
  pursuant to Article 40, Item 2 of the Financial
  Instruments and Exchange Act (kin’yuu shouhin
  torihiki hou) (Act No. 25 of 1948) and by the
  Ministry of Agriculture, Forestry and Fisheries and
  the Ministry of Economy, Trade and Industry pursuant
  to the Commodity Derivatives Act (shouhin sakimono
  torihiki hou) (Act No. 239 of 1950) (including their
  subordinated regulations and the related supervisory
  guidelines).
* `RegulatoryRegimeEnum_SEC_MarginRules`
  2018 ISDA Credit Support Annex for Initial Margin,
  paragraph 13, General Principles: Margin requirements
  adopted by the U.S. Securities and Exchange
  Commission pursuant to Exchange Act § 15F(e).
* `RegulatoryRegimeEnum_SingaporeMarginRules`
  2018 ISDA Credit Support Annex for Initial Margin,
  paragraph 13, General Principles: Guidelines on
  Margin Requirements for Non-centrally Cleared OTC
  Derivatives Contracts issued by the Monetary
  Authority of Singapore (MAS) pursuant to section 321
  of the Securities and Futures Act, Chapter 289 of
  Singapore.
* `RegulatoryRegimeEnum_SwitzerlandMarginRules`
  2018 ISDA Credit Support Annex for Initial Margin,
  paragraph 13, General Principles: Margin rules
  adopted by the Swiss Federal Council pursuant to
  Article 110-111 of the Financial Market
  Infrastructure Act as well as Articles 100 to 107 and
  Annexes 3 to 5 of the Financial Market Infrastructure
  Ordinance.
* `RegulatoryRegimeEnum_US_PrudentialMarginRules`
  2018 ISDA Credit Support Annex for Initial Margin,
  paragraph 13, General Principles: Margin requirements
  adopted by a &#39;prudential regulator&#39; (as
  defined in CEA § 1a(39)) pursuant to CEA § 4s(e) and
  Exchange Act § 15F(e).

### `data` `ResetRelativeToEnum`

  The enumerated values to specify whether resets occur
  relative to the first or last day of a calculation
  period.
* `ResetRelativeToEnum_CalculationPeriodEndDate`
  Resets occur relative to the last day of a
  calculation period.
* `ResetRelativeToEnum_CalculationPeriodStartDate`
  Resets occur relative to the first day of a
  calculation period.

### `data` `ResourceTypeEnum`

  The enumerated values to specify the type of a
  resource (e.g. document).
* `ResourceTypeEnum_Confirmation`
  Document describing the legal terms of a transaction.
* `ResourceTypeEnum_SupplementalMaterialEconomicTerms`
  Document providing supplemental material economic
  terms to the FpML data representation.  The initial
  intended usage is to fulfill the CFTC Part 45 rule
  requirement to report ‘Any other terms(s) of the swap
  matched or affirmed by the counterparties in
  verifying the swap’ when the reporting is done via
  the generic FpML representation.
* `ResourceTypeEnum_TermSheet`
  Document describing the economic characteristics of a
  transaction.

### `data` `RestructuringEnum`

  The enumerated values to specify the form of the
  restructuring credit event that is applicable to the
  credit default swap.
* `RestructuringEnum_ModModR`
  Restructuring (Section 4.7) and Modified
  Restructuring Maturity Limitation and Conditionally
  Transferable Obligation (2014 Definitions: Section
  3.31, 2003 Definitions: 2.32) apply.
* `RestructuringEnum_ModR`
  Restructuring (Section 4.7) and Restructuring
  Maturity Limitation and Fully Transferable Obligation
  (2014 Definitions: Section 3.31, 2003 Definitions:
  2.32) apply.
* `RestructuringEnum_R`
  Restructuring as defined in the applicable ISDA
  Credit Derivatives Definitions. (2003 or 2014).

### `data` `ReturnTypeEnum`

  The enumerated values to specify the type of return
  associated the equity payout.
* `ReturnTypeEnum_Dividend`
  Dividend return, i.e. excluding price variations.
* `ReturnTypeEnum_Price`
  Price return, i.e. excluding dividends.
* `ReturnTypeEnum_Total`
  Total return, i.e. including dividend and price
  components.
* `ReturnTypeEnum_Variance`
  Variance return.
* `ReturnTypeEnum_Volatility`
  Volatility return.

### `data` `RollConventionEnum`

  The enumerated values to specify the period term as
  part of a periodic schedule, i.e. the calculation
  period end date within the regular part of the
  calculation period. The value could be a rule, e.g.
  IMM Settlement Dates, which is the 3rd Wednesday of
  the month, or it could be a specific day of the
  month, such as the first day of the applicable month.
* `RollConventionEnum_EOM`
  Rolls on month end dates irrespective of the length
  of the month and the previous roll day.
* `RollConventionEnum_FRI`
  Rolling weekly on a Friday
* `RollConventionEnum_FRN`
  Roll days are determined according to the FRN
  Convention or Euro-dollar Convention as described in
  ISDA 2000 definitions.
* `RollConventionEnum_IMM`
  IMM Settlement Dates. The third Wednesday of the
  (delivery) month.
* `RollConventionEnum_IMMAUD`
  The last trading day of the Sydney Futures Exchange
  90 Day Bank Accepted Bills Futures contract (see
  http://www.sfe.com.au/content/sfe/trading/con_specs.pdf).
  One Sydney business day preceding the second Friday
  of the relevant settlement.
* `RollConventionEnum_IMMCAD`
  The last trading day/expiration day of the Canadian
  Derivatives Exchange (Bourse de Montreal Inc)
  Three-month Canadian Bankers&#39; Acceptance Futures
  (Ticker Symbol BAX). The second London banking day
  prior to the third Wednesday of the contract month.
  If the determined day is a Bourse or bank holiday in
  Montreal or Toronto, the last trading day shall be
  the previous bank business day. Per Canadian
  Derivatives Exchange BAX contract specification.
* `RollConventionEnum_IMMNZD`
  The last trading day of the Sydney Futures Exchange
  NZ 90 Day Bank Bill Futures contract (see
  http://www.sfe.com.au/content/sfe/trading/con_specs.pdf).
  The first Wednesday after the ninth day of the
  relevant settlement month.
* `RollConventionEnum_MON`
  Rolling weekly on a Monday.
* `RollConventionEnum_NONE`
  The roll convention is not required. For example, in
  the case of a daily calculation frequency.
* `RollConventionEnum_SAT`
  Rolling weekly on a Saturday
* `RollConventionEnum_SFE`
  Sydney Futures Exchange 90-Day Bank Accepted Bill
  Futures Settlement Dates. The second Friday of the
  (delivery) month
* `RollConventionEnum_SUN`
  Rolling weekly on a Sunday
* `RollConventionEnum_TBILL`
  13-week and 26-week U.S. Treasury Bill Auction Dates.
  Each Monday except for U.S. (New York) holidays when
  it will occur on a Tuesday.
* `RollConventionEnum_THU`
  Rolling weekly on a Thursday
* `RollConventionEnum_TUE`
  Rolling weekly on a Tuesday
* `RollConventionEnum_WED`
  Rolling weekly on a Wednesday
* `RollConventionEnum__1`
  Rolls on the 1st day of the month.
* `RollConventionEnum__10`
  Rolls on the 10th day of the month.
* `RollConventionEnum__11`
  Rolls on the 11th day of the month.
* `RollConventionEnum__12`
  Rolls on the 12th day of the month.
* `RollConventionEnum__13`
  Rolls on the 13th day of the month.
* `RollConventionEnum__14`
  Rolls on the 14th day of the month.
* `RollConventionEnum__15`
  Rolls on the 15th day of the month.
* `RollConventionEnum__16`
  Rolls on the 16th day of the month.
* `RollConventionEnum__17`
  Rolls on the 17th day of the month.
* `RollConventionEnum__18`
  Rolls on the 18th day of the month.
* `RollConventionEnum__19`
  Rolls on the 19th day of the month.
* `RollConventionEnum__2`
  Rolls on the 2nd day of the month.
* `RollConventionEnum__20`
  Rolls on the 20th day of the month.
* `RollConventionEnum__21`
  Rolls on the 21st day of the month.
* `RollConventionEnum__22`
  Rolls on the 22nd day of the month.
* `RollConventionEnum__23`
  Rolls on the 23rd day of the month.
* `RollConventionEnum__24`
  Rolls on the 24th day of the month.
* `RollConventionEnum__25`
  Rolls on the 25th day of the month.
* `RollConventionEnum__26`
  Rolls on the 26th day of the month.
* `RollConventionEnum__27`
  Rolls on the 27th day of the month.
* `RollConventionEnum__28`
  Rolls on the 28th day of the month.
* `RollConventionEnum__29`
  Rolls on the 29th day of the month.
* `RollConventionEnum__3`
  Rolls on the 3rd day of the month.
* `RollConventionEnum__30`
  Rolls on the 30th day of the month.
* `RollConventionEnum__4`
  Rolls on the 4th day of the month.
* `RollConventionEnum__5`
  Rolls on the 5th day of the month.
* `RollConventionEnum__6`
  Rolls on the 6th day of the month.
* `RollConventionEnum__7`
  Rolls on the 7th day of the month.
* `RollConventionEnum__8`
  Rolls on the 8th day of the month.
* `RollConventionEnum__9`
  Rolls on the 9th day of the month.

### `data` `RoundingDirectionEnum`

  The enumerated values to specify the rounding
  direction and precision to be used in the rounding of
  a rate.
* `RoundingDirectionEnum_Down`
  A fractional number will be rounded down to the
  specified number of decimal places (the precision).
  For example, 5.29 and 5.25 rounded down to 1 decimal
  place are 5.2 and 5.2 respectively.
* `RoundingDirectionEnum_Nearest`
  A fractional number will be rounded either up or down
  to the specified number of decimal places (the
  precision) depending on its value. For example, 5.24
  would be rounded down to 5.2 and 5.25 would be
  rounded up to 5.3 if a precision of 1 decimal place
  were specified.
* `RoundingDirectionEnum_Up`
  A fractional number will be rounded up to the
  specified number of decimal places (the precision).
  For example, 5.21 and 5.25 rounded up to 1 decimal
  place are 5.3 and 5.3 respectively.

### `data` `SensitivitiesEnum`

  The enumerated values to specify the methodology
  according to which sensitivities to equity indices,
  funds and ETFs on hand, and commodity indices on the
  other hand, are computed for the purpose of the ISDA
  2016 and 2016 CSA for Initial Margin. ISDA 2016
  Credit Support Annex for Initial Margin, paragraph
  13, General Principles, (gg).
* `SensitivitiesEnum_Alternative`
  The parties agree that in respect of the relevant
  sensitivities, the delta is allocated back to
  individual constituents.
* `SensitivitiesEnum_NotSpecified`
  The methodology to compute relevant sensitivities is
  not specified.
* `SensitivitiesEnum_Standard`
  The relevant sensitivities are addressed by the
  standard preferred approach where the entire delta is
  put into the applicable asset class/category.

### `data` `SettledEntityMatrixSourceEnum`

  The enumerated values to specify the relevant settled
  entity matrix source.
* `SettledEntityMatrixSourceEnum_ConfirmationAnnex`
  The Relevant Settled Entity Matrix shall be the list
  agreed for this purpose by the parties. The list is
  not included as part of the electronic confirmation.
* `SettledEntityMatrixSourceEnum_NotApplicable`
  The term is not applicable.
* `SettledEntityMatrixSourceEnum_Publisher`
  The Settled Entity Matrix published by the Index
  Publisher.

### `data` `SettlementRateOptionEnum`

  The enumerated values to specify the settlement rate
  options as specified in the Annex A to the 1998 FX
  and Currency Options Definitions.
* `SettlementRateOptionEnum_ARS_BNAR_ARS01`
  The Spot Rate for a Rate Calculation Date will be the
  Argentine Peso/U.S. Dollar Specified Rate, expressed
  as the amount of Argentine Pesos per one U.S. Dollar,
  for settlement on the same day (or, if such day is
  not a Business Day in New York, for settlement on the
  first succeeding day that is a Business Day in both
  Buenos Aires and New York) which appears on the
  Reuters Screen BNAR Page at the close of business in
  Buenos Aires on that Rate Calculation Date.
* `SettlementRateOptionEnum_ARS_EMTA_INDICATIVE_SURVEY_RATE_ARS04`
  The Spot Rate for a Rate Calculation Date will be the
  Argentine Peso/U.S. Dollar Specified Rate for U.S.
  Dollars, expressed as the amount of Argentine Pesos
  per one U.S. Dollar, for settlement on the same day,
  as published on EMTA&#39;s web site (www.emta.org) at
  approximately 1:00 p.m. (Buenos Aires time), or as
  soon thereafter as practicable, on such Rate
  Calculation Date. The Spot Rate shall be calculated
  by EMTA (or a service provider EMTA may select in its
  sole discretion) pursuant to the EMTA ARS Indicative
  Survey Methodology (which means a methodology, dated
  as of January 2, 2003, as amended from time to time,
  for a centralized industry-wide survey of financial
  institutions that are active participants in the
  Argentine Peso/U.S. Dollar markets for the purpose of
  determining the EMTA ARS Indicative Survey Rate).
* `SettlementRateOptionEnum_ARS_EMTA_INDUSTRY_SURVEY_RATE_ARS03`
  The Spot Rate for a Rate Calculation Date will be the
  Argentine Peso/U.S. Dollar Specified Rate for U.S.
  Dollars, expressed as the amount of Argentine Pesos
  per one U.S. Dollar, for settlement on the same day,
  as published on EMTA&#39;s web site (www.emta.org) at
  approximately 1:00 p.m. (Buenos Aires time), or as
  soon thereafter as practicable, on such Rate
  Calculation Date. The Spot Rate shall be calculated
  by EMTA (or a service provider EMTA may select in its
  sole discretion) pursuant to the EMTA ARS Industry
  Survey Methodology (which means a methodology, dated
  as of January 2, 2003, as amended from time to time,
  for a centralized industry-wide survey of financial
  institutions in Buenos Aires that are active
  participants in the Argentine Peso/U.S. Dollar spot
  markets for the purpose of determining the EMTA ARS
  Industry Survey Rate).
* `SettlementRateOptionEnum_ARS_MAE_ARS05`
  The Spot Rate for a Rate Calculation Date will be the
  volume weighted average Argentine Peso/U.S. Dollar
  Rate of all trades executed in the electronic market
  for a Rate Calculation Day expressed as the amount of
  Argentine Pesos per one U.S. Dollar, for settlement
  on the same day, reported by the Mercado Abierto
  Electronico (the &#39;MAE&#39;) at approximately 3:00
  pm, Buenos Aires time, and published on the FOREX-MAE
  Page as the &#39;PPN&#39; rate (&#39;Promedio
  Ponderado Noticiado&#39;) on www.mae.com.ar on that
  Rate Calculation Date.
* `SettlementRateOptionEnum_ARS_OFFICIAL_RATE_ARS02`
  The Spot Rate for a Rate Calculation Date will be the
  Argentine Peso/U.S. Dollar offered rate for U.S.
  Dollars, expressed as the amount of Argentine Pesos
  per one U.S. Dollar, for settlement on the same day
  quoted by Banco de la Nacion (in accordance with the
  Convertibility Law of March 27, 1991 and Regulatory
  Decree No. 529/91 of April 1, 1991, as may be amended
  from time to time) for that Rate Calculation Date.
* `SettlementRateOptionEnum_BRL_BRBY_BRL01`
  The Spot Rate for a Rate Calculation Date will be the
  Brazilian Real/U.S. Dollar Specified Rate, expressed
  as the amount of Brazilian Reais per one U.S. Dollar,
  for settlement in two Business Days (where such days
  are Business Days in both Sao Paulo and New York)
  which appears on the Reuters Screen BRBY Page under
  the caption &#39;INTBK FLTING (LAST)&#39; at
  approximately 11:00 a.m., Sao Paulo time, on that
  Rate Calculation Date.
* `SettlementRateOptionEnum_BRL_EMTA_INDICATIVE_SURVEY_RATE_BRL13`
  The Spot Rate for a Rate Calculation Date will be the
  Brazilian Real/U.S. Dollar Specified Rate for U.S.
  Dollars, expressed as the amount of Brazilian Reais
  per one U.S. Dollar, for settlement in two Business
  Days, as published on EMTA&#39;s web site
  (www.emta.org) at approximately 12:00 p.m. (Sao Paulo
  time), or as soon thereafter as practicable, on such
  Rate Calculation Date. The Spot Rate shall be
  calculated by EMTA (or a service provider EMTA may
  select in its sole discretion) pursuant to the EMTA
  BRL Indicative Survey Methodology (which means a
  methodology, dated as of March 1, 2004, as amended
  from time to time, for a centralized industry-wide
  survey of financial institutions that are active
  participants in the Brazilian Real/U.S. Dollar
  markets for the purpose of determining the EMTA BRL
  Indicative Survey Rate).
* `SettlementRateOptionEnum_BRL_EMTA_INDUSTRY_SURVEY_RATE_BRL12`
  The Spot Rate for a Rate Calculation Date will be the
  Brazilian Real/U.S. Dollar Specified Rate for U.S.
  Dollars, expressed as the amount of Brazilian Reais
  per one U.S. Dollar, for settlement in two Business
  Days, as published on EMTA&#39;s web site
  (www.emta.org) at approximately 3:45 p.m. (Sao Paulo
  time), or as soon thereafter as practicable, on such
  Rate Calculation Date. The Spot Rate shall be
  calculated by EMTA (or a service provider EMTA may
  select in its sole discretion) pursuant to the EMTA
  BRL Industry Survey Methodology (which means a
  methodology, dated as of March 1, 2004, as amended
  from time to time, for a centralized industry-wide
  survey of financial institutions in Brazil that are
  active participants in the Brazilian Real/U.S. Dollar
  spot markets for the purpose of determining the EMTA
  BRL Industry Survey Rate).
* `SettlementRateOptionEnum_BRL_OFFICIAL_RATE_BRL02`
  The Spot Rate for a Rate Calculation Date will be the
  Brazilian Real/U.S. Dollar Specified Rate, expressed
  as the amount of Brazilian Reais per one U.S. Dollar,
  for settlement in two Business Days (where such days
  are Business Days in both Sao Paulo and New York)
  reported by the Banco Central do Brasil in the
  &#39;Diario Oficial da Uniao&#39; on the first
  Business Day following that Rate Calculation Date.
* `SettlementRateOptionEnum_BRL_PCOT_COMMERCIAL_BRL03`
  The Spot Rate for a Rate Calculation Date will be the
  Brazilian Real/U.S. Dollar commercial rate, expressed
  as the amount of Brazilian Reais per one U.S. Dollar,
  for settlement in two Business Days (where such days
  are Business Days in both Sao Paulo and New York)
  reported by the Banco Central do Brasil on SISBACEN
  Data System under transaction code PCOT- 390, Option
  3, at the Specified Time, if any, on that Rate
  Calculation Date.
* `SettlementRateOptionEnum_BRL_PCOT_FLOATING_BRL04`
  The Spot Rate for a Rate Calculation Date will be the
  Brazilian Real/U.S. Dollar floating rate, expressed
  as the amount of Brazilian Reais per one U.S. Dollar,
  for settlement in two Business Days (where such days
  are Business Days in both Sao Paulo and New York)
  reported by the Banco Central do Brasil on SISBACEN
  Data System under transaction code PCOT- 390, Option
  3, at the Specified Time, if any, on that Rate
  Calculation Date.
* `SettlementRateOptionEnum_BRL_PTAX_BRL09`
  The Spot Rate for a Rate Calculation Date will be the
  Brazilian Real/U.S. Dollar offered rate for U.S.
  Dollars, expressed as the amount of Brazilian Reais
  per one U.S. Dollar, for settlement in two Business
  Days reported by the Banco Central do Brasil on
  SISBACEN Data System under transaction code PTAX-800
  (&#39;Consulta de Cambio&#39; or Exchange Rate
  Inquiry), Option 5 (&#39;Cotacoes para
  Contabilidade&#39; or &#39;Rates for Accounting
  Purposes&#39;) by approximately 6:00 p.m., Sao Paulo
  time, on that Rate Calculation Date.
* `SettlementRateOptionEnum_BRL_PTAX_COMMERCIAL_BRFR_BRL06`
  The Spot Rate for a Rate Calculation Date will be the
  Brazilian Real/U.S. Dollar commercial rate, expressed
  as the amount of Brazilian Reais per one U.S. Dollar,
  for settlement in two Business Days (where such days
  are Business Days in both Sao Paulo and New York)
  reported by the Banco Central do Brasil which appears
  on the Reuters Screen BRFR Page at PTAX-800 as of
  11:00 a.m., Sao Paulo time, on the first Business Day
  following that Rate Calculation Date. 23
* `SettlementRateOptionEnum_BRL_PTAX_COMMERCIAL_BRL05`
  The Spot Rate for a Rate Calculation Date will be the
  Brazilian Real/U.S. Dollar commercial rate, expressed
  as the amount of Brazilian Reais per one U.S. Dollar,
  for settlement in two Business Days (where such days
  are Business Days in both Sao Paulo and New York)
  reported by the Banco Central do Brasil on SISBACEN
  Data System under transaction code PTAX- 800
  (&#39;Consultas de Cambio&#39; or Exchange Rate
  Inquiry), Option 5 (&#39;Cotacoes para
  Contabilidad&#39; or Rates for Accounting Purposes)
  market type &#39;L&#39; (corresponding to U.S.
  Dollars traded in the foreign exchange market segment
  officially denominated &#39;Livre&#39; and commonly
  known as &#39;Comercial&#39;) as of 7:30 p.m., Sao
  Paulo time, on that Rate Calculation Date.
* `SettlementRateOptionEnum_BRL_PTAX_FLOATING_BRFR_BRL08`
  The Spot Rate for a Rate Calculation Date will be the
  Brazilian Real/U.S. Dollar floating rate, expressed
  as the amount of Brazilian Reais per one U.S. Dollar,
  for settlement in two Business Days (where such days
  are Business Days in both Sao Paulo and New York)
  reported by the Banco Central do Brasil on the
  SISBACEN Data System which appears on the Reuters
  Screen BRFR Page at PTAX-800 as of 11:00 a.m., Sao
  Paulo time, on the first Business Day following that
  Rate Calculation Date.
* `SettlementRateOptionEnum_BRL_PTAX_FLOATING_BRL07`
  The Spot Rate for a Rate Calculation Date will be the
  Brazilian Real/U.S. Dollar floating rate, expressed
  as the amount of Brazilian Reais per one U.S. Dollar,
  for settlement in two Business Days (where such days
  are Business Days in both Sao Paulo and New York)
  reported by the Banco Central do Brasil on SISBACEN
  Data System under transaction code PTAX- 800
  (&#39;Consultas de Cambio&#39; or Exchange Rate
  Inquiry), Option 5 (&#39;Cotacoes para
  Contabilidad&#39; or Rates for Accounting Purposes)
  market type &#39;F&#39; (corresponding to U.S.
  Dollars traded in the foreign exchange market segment
  officially denominated &#39;Flutuante&#39;) as of
  7:30 p.m., Sao Paulo time, on that Rate Calculation
  Date.
* `SettlementRateOptionEnum_CLP_BCCH_CLP01`
  The Spot Rate for a Rate Calculation Date will be the
  Chilean Peso/U.S. Dollar observado rate, expressed as
  the amount of Chilean Pesos per one U.S. Dollar, for
  settlement on the same day (or, if such day is not a
  Business Day in New York, for settlement on the first
  succeeding day that is a Business Day in both
  Santiago and New York) reported by the Banco Central
  de Chile which appears on the Reuters Screen BCCH
  Page under the caption &#39;OBSERVADO&#39; at 10:00
  a.m., Santiago time, on the first Business Day
  following that Rate Calculation Date.
* `SettlementRateOptionEnum_CLP_CHILD_INFORMAL_CLP02`
  The Spot Rate for a Rate Calculation Date will be the
  Chilean Peso/U.S. Dollar informal rate, expressed as
  the amount of Chilean Pesos per one U.S. Dollar, for
  settlement on the same day (or, if such day is not a
  Business Day in New York, for settlement on the first
  succeeding day that is a Business Day in both
  Santiago and New York) of the informal exchange
  market which appears on the Reuters Screen CHILD Page
  at the Specified Time, if any, on that Rate
  Calculation Date.
* `SettlementRateOptionEnum_CLP_CHILD_INTERBANK_CLP03`
  The Spot Rate for a Rate Calculation Date will be the
  Chilean Peso/U.S. Dollar interbank rate, expressed as
  the amount of Chilean Pesos per one U.S. Dollar, for
  settlement on the same day (or, if such day is not a
  Business Day in New York, for settlement on the first
  succeeding day that is a Business Day in both
  Santiago and New York) reported by the Banco Central
  de Chile for the formal exchange market which appears
  on the Reuters Screen CHILD Page at the Specified
  Time, if any, on that Rate Calculation Date.
* `SettlementRateOptionEnum_CLP_CHILD_OBSERVADO_CLP04`
  The Spot Rate for a Rate Calculation Date will be the
  Chilean Peso/U.S. Dollar observado rate, expressed as
  the amount of Chilean Pesos per one U.S. Dollar, for
  settlement on the same day (or, if such day is not a
  Business Day in New York, for settlement on the first
  succeeding day that is a Business Day in both
  Santiago and New York) reported by the Banco Central
  de Chile which appears on the Reuters Screen CHILD
  Page on the first Business Day following that Rate
  Calculation Date.
* `SettlementRateOptionEnum_CLP_CHILG_INFORMAL_CLP05`
  The Spot Rate for a Rate Calculation Date will be the
  Chilean Peso/U.S. Dollar informal rate, expressed as
  the amount of Chilean Pesos per one U.S. Dollar, for
  settlement on the same day (or, if such day is not a
  Business Day in New York, for settlement on the first
  succeeding day that is a Business Day in both
  Santiago and New York) of the informal exchange
  market which appears on the Reuters Screen CHILG Page
  at the Specified Time, if any, on that Rate
  Calculation Date.
* `SettlementRateOptionEnum_CLP_CHILG_INTERBANK_CLP06`
  The Spot Rate for a Rate Calculation Date will be the
  Chilean Peso/U.S. Dollar interbank rate, expressed as
  the amount of Chilean Pesos per one U.S. Dollar, for
  settlement on the same day (or, if such day is not a
  Business Day in New York, for settlement on the first
  succeeding day that is a Business Day in both
  Santiago and New York) reported by the Banco Central
  de Chile for the formal exchange market which appears
  on the Reuters Screen CHILG Page at the Specified
  Time, if any, on that Rate Calculation Date.
* `SettlementRateOptionEnum_CLP_CHILG_OBSERVADO_CLP07`
  The Spot Rate for a Rate Calculation Date will be the
  Chilean Peso/U.S. Dollar observado rate, expressed as
  the amount of Chilean Pesos per one U.S. Dollar, for
  settlement on the same day (or, if such day is not a
  Business Day in New York, for settlement on the first
  succeeding day that is a Business Day in both
  Santiago and New York) reported by the Banco Central
  de Chile which appears on the Reuters Screen CHILG
  Page under &#39;OBSERVADO&#39; at the Specified Time,
  if any, on the first Business Day following that Rate
  Calculation Date.
* `SettlementRateOptionEnum_CLP_DOLAR_OBS_CLP10`
  The Spot Rate for a Rate Calculation Date will be the
  Chilean Peso/U.S. Dollar &#39;observado&#39; rate,
  expressed as the amount of Chilean Pesos per one U.S.
  Dollar, for settlement in one Business Day reported
  by the Banco Central de Chile (www.bcentral.cl) as
  the &#39;Dolar Observado&#39; (Dollar Observado) rate
  by not later than 10:30 a.m., Santiago time, on the
  first Business Day following that Rate Calculation
  Date.
* `SettlementRateOptionEnum_CLP_EMTA_INDICATIVE_SURVEY_RATE_CLP11`
  The Spot Rate for a Rate Calculation Date will be the
  Chilean Peso/U.S. Dollar Specified Rate for U.S.
  Dollars, expressed as the amount of Chilean Pesos per
  one U.S. Dollar, for settlement on the same day, as
  published on EMTA&#39;s web site (www.emta.org) at
  approximately 11:00 a.m., Santiago time, or as soon
  thereafter as practicable, on such Rate Calculation
  Date. The Spot Rate shall be calculated by EMTA (or a
  service provider EMTA may select in its sole
  discretion) pursuant to the EMTA CLP Indicative
  Survey Methodology (which means a methodology, dated
  as of August 1, 2006, as amended from time to time,
  for a centralized industry-wide survey of financial
  institutions that are active participants in the
  Chilean Peso/U.S. Dollar markets for the purpose of
  determining the EMTA CLP Indicative Survey Rate).
* `SettlementRateOptionEnum_CLP_OFFICIAL_RATE_CLP08`
  The Spot Rate for a Rate Calculation Date will be the
  Chilean Peso/U.S. Dollar Specified Rate, expressed as
  the amount of Chilean Pesos per one U.S. Dollar (or,
  if such day is not a Business Day in New York, for
  settlement on the first succeeding day that is a
  Business Day in both Santiago and New York),
  calculated in accordance with Title I, Chapter 1
  Number 6 of the Compendium of International Exchange
  Norms of the Banco Central de Chile and published by
  the Banco Central de Chile at the Specified Time, if
  any, on the first Business Day following that Rate
  Calculation Date.
* `SettlementRateOptionEnum_CLP_TELERATE_38942_CLP09`
  The Spot Rate for a Rate Calculation Date will be the
  Chilean Peso/U.S. Dollar observado rate, expressed as
  the amount of Chilean Pesos per one U.S. Dollar, for
  settlement on the same day (or, if such day is not a
  Business Day in New York, for settlement on the first
  succeeding day that is a Business Day in both
  Santiago and New York) reported by the Banco Central
  de Chile which appears on the Telerate Page 38942
  opposite the caption &#39;Observado&#39; at the
  Specified Time, if any, on the first Business Day
  following the Rate Calculation Date.
* `SettlementRateOptionEnum_CNY_SAEC_CNY01`
  The Spot Rate for a Rate Calculation Date will be the
  Chinese Renminbi/U.S. Dollar official fixing rate,
  expressed as the amount of Chinese Renminbi per one
  U.S. Dollar, for settlement in two Business Days
  reported by the People&#39;s Bank of China, Beijing,
  People&#39;s Republic of China, which appears on the
  Reuters Screen &#39;SAEC&#39; Page opposite the
  symbol &#39;USDCNY=&#39; at approximately 9:15 a.m.,
  Beijing time, on that Rate Calculation Date.
* `SettlementRateOptionEnum_CNY_SFEMC_INDICATIVE_SURVEY_RATE_CNY02`
  The Spot Rate for a Rate Calculation Date will be the
  Chinese Renminbi/U.S. Dollar Specified Rate for U.S.
  Dollars, expressed as the amount of Chinese Renminbi
  per one U.S. Dollar, for settlement in two Business
  Days, as published on SFEMC&#39;s website
  (www.sfemc.org) at approximately 3:30 p.m. (Singapore
  time), or as soon thereafter as practicable, on such
  Rate Calculation Date. The Spot Rate will be
  calculated by SFEMC (or a service provider SFEMC may
  select in its sole discretion) pursuant to the SFEMC
  CNY Indicative Survey Methodology (which means a
  methodology, dated as of December 1, 2004, as amended
  from time to time, for a centralized industry-wide
  survey of financial institutions that are active
  participants in the Chinese Renminbi/U.S. Dollar
  markets for the purpose of determining the SFEMC CNY
  Indicative Survey Rate).
* `SettlementRateOptionEnum_COP_CO_COL03_COP01`
  The Spot Rate for a Rate Calculation Date will be the
  Colombian Peso/U.S. Dollar fixing rate, expressed as
  the amount of Colombian Pesos per one U.S. Dollar,
  for settlement on the same day (unless such day is
  not a Business Day in New York, then for settlement
  on the first succeeding day that is a Business Day in
  Bogota and New York) reported by the Colombian
  Banking Superintendency which appears on the Reuters
  Screen CO/COL03 Page opposite the caption
  &#39;TRCM&#39; (&#39;Tasa de Cierre Representative
  del Mercado&#39; or closing market price) at 12:00
  noon, Bogota time, on the first Business Day
  following that Rate Calculation Date.
* `SettlementRateOptionEnum_COP_EMTA_INDICATIVE_SURVEY_RATE_COP03`
  The Spot Rate for a Rate Calculation Date will be the
  Colombian Peso/U.S. Dollar Specified Rate for U.S.
  Dollars, expressed as the amount of Colombian Pesos
  per one U.S. Dollar, for settlement on the same day,
  as published on EMTA&#39;s web site (www.emta.org) at
  approximately 11:30 a.m., Bogota time, or as soon
  thereafter as practicable, on such Rate Calculation
  Date. The Spot Rate shall be calculated by EMTA (or a
  service provider EMTA may select in its sole
  discretion) pursuant to the EMTA COP Indicative
  Survey Methodology (which means a methodology, dated
  as of August 1, 2006, as amended from time to time,
  for a centralized industry-wide survey of financial
  institutions that are active participants in the
  Colombian Peso/U.S. Dollar markets for the purpose of
  determining the EMTA COP Indicative Survey Rate).
* `SettlementRateOptionEnum_COP_TRM_COP02`
  The Spot Rate for a Rate Calculation Date will be the
  Colombian Peso/U.S. Dollar fixing rate, expressed as
  the amount of Colombian Pesos per one U.S. Dollar,
  for settlement on the same day reported by the
  Colombian Financial Superintendency
  (www.banrep.gov.co) as the &#39;Tasa Representativa
  del Mercado (TRM)&#39; (also referred to as the
  &#39;Tasa de Cambio Representativa del Mercado&#39;
  (TCRM)) by not later than 10:30 a.m., Bogota time, on
  the first Business Day following that Rate
  Calculation Date.
* `SettlementRateOptionEnum_CURRENCY_IMPLIED_RATE__ADR__CURA1`
  the Spot Rate for a Rate Calculation Date will be the
  Reference Currency/U.S. Dollar exchange rate,
  expressed as the amount of Reference Currency per one
  U.S. Dollar, determined on the basis of quotations
  provided by Reference Dealers on that Rate
  Calculation Date of that day&#39;s price of a
  Specified Company&#39;s American Depositary Receipt
  or American Depositary Receipts (the &#39;ADR&#39; or
  &#39;ADRs&#39;, as appropriate) and the price of the
  local share or shares of such Specified Company of
  the same type and in the same quantity represented by
  such ADR or ADRs, as the case may be (the
  &#39;Share&#39; or &#39;Shares&#39;, as appropriate).
  The Calculation Agent will request each of the
  Reference Dealers to provide a firm quotation of (A)
  in the case where one ADR represents less than one
  Share, its bid and offer price (in the Reference
  Currency) for one Share and its bid and offer price
  (in U.S. Dollars) for the number of ADRs which
  represent such Share and (B) in all other cases, its
  bid andoffer price (in the Reference Currency) for
  the Share or Shares, as the case may be, and its bid
  and offer price (in U.S. Dollars) for one ADR. If one
  or more quotations are provided, the rate for a Rate
  Calculation Date will equal the ratio of (1) the
  arithmetic mean of the midpoint of the bid and offer
  prices quoted in the Reference Currency by each
  Reference Dealer for such Share or Shares, as the
  case may be, and (2) the arithmetic mean of the
  midpoint of the bid and offer prices quoted in U.S.
  Dollars by each Reference Dealer for such ADR or
  ADRs, as the case may be, subject to an adjustment,
  if any, by the Calculation Agent to reduce the effect
  of momentary disparities in the prices of the Share
  or Shares and the ADR or ADRs, as appropriate. The
  quotations used to determine the Spot Rate for a Rate
  Calculation Date will be determined in each case at
  the Specified Time on the Rate Calculation Date or,
  if no such time is specified, the time chosen by
  theCalculation Agent.
* `SettlementRateOptionEnum_CURRENCY_IMPLIED_RATE__LOCAL_ASSET__CURA2`
  The Spot Rate for a Rate Calculation Date will be the
  Reference Currency/Settlement Currency exchange rate,
  expressed as the amount of Reference Currency per one
  unit of Settlement Currency, determined on the basis
  of quotations provided by Reference Dealers on that
  Rate Calculation Date for that day&#39;s price of
  Local Assets. The Calculation Agent will request each
  of the Reference Dealers to provide a firm quotation
  of its bid and offer price (in both the Reference
  Currency and the Settlement Currency) for an amount
  of Local Assets whose face value equals the Specified
  Amount. If one or more quotations are provided, the
  rate for a Rate Calculation Date will equal the ratio
  of (A) the arithmetic mean of the midpoint of the bid
  and offer prices quoted in the Reference Currency by
  each Reference Dealer for such Local Assets and (B)
  the arithmetic mean of the midpoint of the bid and
  offer prices quoted in the Settlement Currency by
  each Reference Dealer for suchLocal Assets. The
  quotations used to determine the Spot Rate for a Rate
  Calculation Date will be determined in each case at
  the Specified Time on the Rate Calculation Date or,
  if no such time is specified, the time chosen by the
  Calculation Agent.
* `SettlementRateOptionEnum_CURRENCY_MUTUAL_AGREEMENT_CURA3`
  The Spot Rate for a Rate Calculation Date will be the
  Reference Currency/Settlement Currency Specified
  Rate, expressed as the amount of the Reference
  Currency per one unit of Settlement Currency, for
  settlement on the Settlement Date agreed upon by the
  parties on or prior to that Rate Calculation Date
  (or, if different, the day on which rates for that
  date would, in the ordinary course, be published or
  announced).
* `SettlementRateOptionEnum_CURRENCY_REFERENCE_DEALERS_CURA4`
  The Spot Rate for a Rate Calculation Date will be
  determined on the basis of quotations provided by
  Reference Dealers on that Rate Calculation Date of
  that day&#39;s Specified Rate, expressed as the
  amount of Reference Currency per one unit of
  Settlement Currency, for settlement on the Settlement
  Date. The Calculation Agent will request the
  Specified Office of each of the Reference Dealers to
  provide a firm quotation of its Specified Rate for a
  transaction where the amount of Reference Currency
  equals the Specified Amount. If four quotations are
  provided, the rate for a Rate Calculation Date will
  be the arithmetic mean of the Specified Rates,
  without regard to the Specified Rates having the
  highest and lowest value. If exactly three quotations
  are provided, the rate for a Rate Calculation Date
  will be the Specified Rate provided by the Reference
  Dealer that remains after disregarding the Specified
  Rates having the highest and lowest values. For this
  purpose, ifmore than one quotation has the same
  highest value or lowest value, then the Specified
  Rate of one of such quotations shall be disregarded.
  If exactly two quotations are provided, the rate for
  a Rate Calculation Date will be the arithmetic mean
  of the Specified Rates. If only one quotation is
  provided, the rate for a Rate Calculation Date will
  be the Specified Rate quoted by that Reference
  Dealer. The quotations used to determine the Spot
  Rate for a Rate Calculation Date will be determined
  in each case at the Specified Time on that Rate
  Calculation Date or, if no such time is specified,
  the time chosen by the Calculation Agent.
* `SettlementRateOptionEnum_CURRENCY_WHOLESALE_MARKET_CURA5`
  The Spot Rate for a Rate Calculation Date will be
  determined by the Calculation Agent on the basis of
  that day&#39;s Specified Rate, expressed as the
  amount of Reference Currency per one unit of
  Settlement Currency, in a legal and customary
  wholesale market in which there is no, or minimal,
  Governmental Authority controls or interference,
  except as a participant in such market.
* `SettlementRateOptionEnum_ECS_DNRP_ECS01`
  The Spot Rate for a Rate Calculation Date will be the
  Ecuadorian Sucre/U.S. Dollar Specified Rate,
  expressed as the amount of Ecuadorian Sucres per one
  U.S. Dollar, for settlement in one Business Day
  (where such day is a Business Day in Guayaquil and
  New York) which appears on Reuters Screen DNRP Page
  at 12:00 noon, Guayaquil time, on that Rate
  Calculation Date.
* `SettlementRateOptionEnum_IDR_ABS_IDR01`
  The Spot Rate for a Rate Calculation Date will be the
  Indonesian Rupiah/U.S. Dollar spot rate at 11:00
  a.m., Singapore time, expressed as the amount of
  Indonesian Rupiah per one U.S. Dollar, for settlement
  in two Business Days, reported by the Association of
  Banks in Singapore which appears on the Telerate Page
  50157 to the right of the caption &#39;Spot&#39;
  under the column &#39;IDR&#39; at approximately 11:30
  a.m., Singapore time, on that Rate Calculation Date.
* `SettlementRateOptionEnum_IDR_JISDOR_IDR04`
  The Spot Rate for a Rate Calculation Date will be the
  Indonesian Rupiah/U.S. Dollar weighted average spot
  rate in the interbank market based on traded IDR/USD
  spot foreign exchange transactions during a specified
  time period which are captured on a real time basis,
  expressed as the amount of Indonesian Rupiah per one
  U.S. Dollar, for settlement in two Business Days,
  published by Bank Indonesia at approximately 10:00
  a.m., Jakarta time, on that Rate Calculation Date as
  the Jakarta Interbank Spot Dollar Rate USD - IDR on
  Bank Indonesia&#39;s website or otherwise made
  available by Bank Indonesia (or its successor as
  administrator).
* `SettlementRateOptionEnum_IDR_SFEMC_INDICATIVE_SURVEY_RATE_IDR02`
  The Spot Rate for a Rate Calculation Date will be the
  Indonesian Rupiah/U.S. Dollar Specified Rate for U.S.
  Dollars, expressed as the amount of Indonesian Rupiah
  per one U.S. Dollar, for settlement in two Business
  Days, as published on SFEMC&#39;s website
  (www.sfemc.org) at approximately 3:30 p.m., Singapore
  time, or as soon thereafter as practicable, on such
  Rate Calculation Date. The Spot Rate will be
  calculated by SFEMC (or a service provider SFEMC may
  select in its sole discretion) pursuant to the SFEMC
  IDR Indicative Survey Methodology (which means a
  methodology, dated as of December 1, 2004, as amended
  from time to time, for a centralized industry-wide
  survey of financial institutions that are active
  participants in the Indonesian Rupiah/U.S. Dollar
  markets for the purpose of determining the SFEMC IDR
  Indicative Survey Rate).
* `SettlementRateOptionEnum_IDR_VWAP_IDR03`
  The Spot Rate for a Rate Calculation Date will be the
  Indonesian Rupiah/U.S. Dollar implied spot rate
  expressed as the amount of Indonesian Rupiah per one
  U.S. Dollar, for settlement in two Business Days,
  reported by ABS Benchmarks Administration Co Pte.
  Ltd. (or its successor as administrator or sponsor of
  that rate), which appears on Thomson Reuters Screen
  ABSFIX01 Page at approximately 11:30 a.m., Singapore
  time, on that Rate Calculation Date.
* `SettlementRateOptionEnum_ILS_BOIJ_ILS01`
  The Spot Rate for a Rate Calculation Date will be the
  Israeli Shekel/U.S. Dollar Specified Rate, expressed
  as the amount of Israeli Shekels per one U.S. Dollar,
  for settlement in two Business Days which appears on
  the Reuters Screen BOIJ Page as of 1:00 p.m., Tel
  Aviv time, on that Rate Calculation Date.
* `SettlementRateOptionEnum_ILS_FXIL_ILS02`
  The Spot Rate for a Rate Calculation Date will be the
  Israeli Shekel/U.S. Dollar Specified Rate, expressed
  as the amount of Israeli Shekels per one U.S. Dollar,
  for settlement in two Business Days which appears on
  the Reuters Screen FXIL Page as of 1:00 p.m., Tel
  Aviv time, on that Rate Calculation Date.
* `SettlementRateOptionEnum_INR_FBIL_INR01`
  The Spot Rate for a Rate Calculation Date will be the
  Indian Rupee/U.S. Dollar reference rate, expressed as
  the amount of Indian Rupee per one U.S. Dollar, for
  settlement in two Business Days, reported by
  Financial Benchmarks India Pvt. Ltd.
  (www.fbil.org.in) at approximately 1:30 p.m., Mumbai
  time, or as soon thereafter as practicable, on that
  Rate Calculation Date.
* `SettlementRateOptionEnum_INR_RBIB_INR01`
  The Spot Rate for a Rate Calculation Date will be the
  Indian Rupee/U.S. Dollar reference rate, expressed as
  the amount of Indian Rupee per one U.S. Dollar, for
  settlement in two Business Days reported by the
  Reserve Bank of India which appears on the Reuters
  Screen RBIB Page at approximately 12:30 p.m., Mumbai
  time, or as soon thereafter as practicable, on that
  Rate Calculation Date.
* `SettlementRateOptionEnum_INR_SFEMC_INDICATIVE_SURVEY_RATE_INR02`
  The Spot Rate for a Rate Calculation Date will be the
  Indian Rupee/U.S. Dollar Specified Rate for U.S.
  Dollars, expressed as the amount of Indian Rupee per
  one U.S. Dollar, for settlement in two Business Days,
  as published on SFEMC&#39;s website (www.sfemc.org)
  at approximately 3:30 p.m. (Singapore time), or as
  soon thereafter as practicable, on such Rate
  Calculation Date. The Spot Rate will be calculated by
  SFEMC (or a service provider SFEMC may select in its
  sole discretion) pursuant to the SFEMC INR Indicative
  Survey Methodology (which means a methodology, dated
  as of December 1, 2004, as amended from time to time,
  for a centralized industry-wide survey of financial
  institutions that are active participants in the
  Indian Rupee/U.S. Dollar markets for the purpose of
  determining the SFEMC INR Indicative Survey Rate).
* `SettlementRateOptionEnum_KRW_KEBEY_KRW01`
  The Spot Rate for a Rate Calculation Date will be the
  Korean Won/U.S. Dollar Specified Rate, expressed as
  the amount of Korean Won per one U.S. Dollar, for
  settlement in two Business Days which appears on the
  Reuters Screen KEBEY Page at the Specified Time, if
  any, on that Rate Calculation Date.
* `SettlementRateOptionEnum_KRW_KFTC18_KRW02`
  The Spot Rate for a Rate Calculation Date will be the
  Korean Won/U.S. Dollar market average rate, expressed
  as the amount of Korean Won per one U.S. Dollar, for
  settlement in two Business Days reported by the Korea
  Financial Telecommunications and Clearing Corporation
  which appears on the Reuters Screen KFTC18 Page to
  the right of the caption &#39;USD Today&#39; that is
  available at approximately 3:30 p.m., Seoul time, on
  the Rate Calculation Date or as soon thereafter as
  practicable.
* `SettlementRateOptionEnum_KRW_SFEMC_INDICATIVE_SURVEY_RATE_KRW04`
  The Spot Rate for a Rate Calculation Date will be the
  Korean Won/U.S. Dollar Specified Rate for U.S.
  Dollars, expressed as the amount of Korean Won per
  one U.S. Dollar, for settlement in two Business Days,
  as published on SFEMC&#39;s website (www.sfemc.org)
  at approximately 3:30 p.m., Singapore time, or as
  soon thereafter as practicable, on such Rate
  Calculation Date. The Spot Rate will be calculated by
  SFEMC (or a service provider SFEMC may select in its
  sole discretion) pursuant to the SFEMC KRW Indicative
  Survey Methodology (which means a methodology, dated
  as of December 1, 2004, as amended from time to time,
  for a centralized industry-wide survey of financial
  institutions that are active participants in the
  Korean Won/U.S. Dollar markets for the purpose of
  determining the SFEMC KRW Indicative Survey Rate).
* `SettlementRateOptionEnum_KRW_TELERATE_45644_KRW03`
  The Spot Rate for a Rate Calculation Date will be the
  Korean Won/U.S. Dollar market average rate, expressed
  as the amount of Korean Won per one U.S. Dollar, for
  settlement in two Business Days reported by the Korea
  Financial Telecommunications and Clearing Corporation
  which appears on Telerate Page 45644 to the right of
  the caption &#39;USD Today&#39; that is available at
  approximately 3:30 p.m., Seoul time, on the Rate
  Calculation Date or as soon thereafter as
  practicable.
* `SettlementRateOptionEnum_KZT_EMTA_INDICATIVE_SURVEY_RATE_KZT02`
  The Spot Rate for a Rate Calculation Date will be the
  Kazakhstan Tenge / U.S. Dollar Specified Rate for
  U.S. Dollars, expressed as the amount of Kazakhstan
  Tenge per one U.S. Dollar, for settlement on the same
  Business Day, as published on EMTA&#39;s website
  (www.emta.org) at approximately 1:00 p.m., Almaty
  time, or as soon thereafter as practicable, on that
  Rate Calculation Date. The Spot Rate shall be
  calculated by EMTA (or a service provider EMTA may
  select in its sole discretion) pursuant to the EMTA
  KZT Indicative Survey Methodology (which means a
  methodology, dated as of March 16, 2009, as amended
  from time to time, for a centralized industry-wide
  survey of financial institutions that are active
  participants in the Kazakhstan Tenge/U.S. Dollar
  markets for the purpose of determining the EMTA KZT
  Indicative Survey Rate).
* `SettlementRateOptionEnum_KZT_KASE_KZT01`
  The Spot Rate for a Rate Calculation Date will be the
  Kazakhstan Tenge / U.S. Dollar weighted average rate,
  expressed as the amount of Kazakhstan Tenge per one
  U.S. Dollar, for settlement on the same Business Day
  reported by the Kazakhstan Stock Exchange
  (www.kase.kz) at approximately 11:00 am, Almaty time,
  on that Rate Calculation Date.
* `SettlementRateOptionEnum_LBP_BDLX_LBP01`
  The Spot Rate for a Rate Calculation Date will be the
  Lebanese Pound/U.S. Dollar Specified Rate, expressed
  as the amount of Lebanese Pounds per one U.S. Dollar,
  for settlement in two Business Days which appears on
  the Reuters Screen BDLX Page as of 12:00 noon, Beirut
  time, on that Rate Calculation Date.
* `SettlementRateOptionEnum_MAD_OFFICIAL_RATE_MAD01`
  The Spot Rate for a Rate Calculation Date will be the
  Moroccan Dirham/U.S. Dollar Specified Rate, expressed
  as the amount of Moroccan Dirham per one U.S. Dollar,
  for settlement in two Business Days reported by the
  Central Bank of Morocco as of 1:00 p.m., Rabat time,
  on that Rate Calculation Date.
* `SettlementRateOptionEnum_MXP_BNMX_MXP01`
  The Spot Rate for a Rate Calculation Date will be the
  Mexican Pesos/U.S. Dollar Specified rate, expressed
  as the amount of Mexican Pesos per one U.S. Dollar,
  for settlement in two Business Days reported by Banco
  de Mexico which appears on the Reuters Screen BNMX
  Page opposite the caption &#39;Fix&#39; at the close
  of business in Mexico City on that Rate Calculation
  Date.
* `SettlementRateOptionEnum_MXP_FIXING_RATE_MXP02`
  The Spot Rate for a Rate Calculation Date will be the
  Mexican Peso/U.S. Dollar fixing rate, expressed as
  the amount of Mexican Pesos per one U.S. Dollar, for
  settlement in two Business Days which is published by
  Banco de Mexico in the Official Gazette of the
  Federation pursuant to the &#39;Disposiciones
  aplicables a la determinacion del tipo de Cambio para
  solventar obligaciones denominadas en moneda
  extranjera pagaderas en la Republica Mexicana&#39;
  (Rules applicable to determine the exchange rate to
  pay obligations denominated in foreign currency
  payable in Mexico) on the first Business Day
  following that Rate Calculation Date.
* `SettlementRateOptionEnum_MXP_MEX01_MXP03`
  The Spot Rate for a Rate Calculation Date will be the
  Mexican Peso/U.S. Dollar fixing rate, expressed as
  the amount of Mexican Pesos per one U.S. Dollar, for
  settlement in two Business Days reported by Banco de
  Mexico which appears on Reuters Screen MEX01 Page
  under the heading &#39;MXNFIX=RR&#39;, at the close
  of business in Mexico City on that Rate Calculation
  Date.
* `SettlementRateOptionEnum_MXP_PUBLISHED_MXP04`
  The Spot Rate for a Rate Calculation Date will be the
  Mexican Peso/U.S. Dollar fixing rate, expressed as
  the amount of Mexican Pesos per one U.S. Dollar, for
  settlement in two Business Days which is published by
  the Bolsa Mexicana de Valores, S.A. de C.V. (as
  established in Section 2 of the &#39;Resolution
  concerning the exchange rate applicable for
  calculating the Mexican Peso equivalent of principal
  and interest of Mexican Treasury Notes denominated in
  foreign currency and payable in Mexican Pesos&#39;
  published in the Diario Oficial de la Federacion on
  November 11, 1991) in the Movimiento Diario del
  Mercado de Valores de la Bolsa Mexicana de Valores,
  S.A. de C.V. under the heading &#39;Movimiento Diario
  del Mercado de Valores&#39; on that Rate Calculation
  Date.
* `SettlementRateOptionEnum_MYR_ABS_MYR01`
  The Spot Rate for a Rate Calculation Date will be the
  Malaysian Ringgit/U.S. Dollar spot rate at 11:00
  a.m., Singapore time, expressed as the amount of
  Malaysian Ringgit per one U.S. Dollar, for settlement
  in two Business Days, reported by the Association of
  Banks in Singapore, which appears on the Telerate
  Page 50157 to the right of the caption &#39;Spot&#39;
  under the column &#39;MYR&#39; at approximately 11:30
  a.m., Singapore time, on that Rate Calculation Date.
* `SettlementRateOptionEnum_MYR_KL_REF_MYR04`
  The Spot Rate for a Rate Calculation Date will be the
  Malaysian Ringgit/U.S. Dollar reference rate,
  expressed as the amount of Malaysian Ringgit per one
  U.S. Dollar, for settlement in two Business Days,
  calculated and reported by Bank Negara Malaysia as
  its Kuala Lumpur USD/MYR Reference Rate, which
  appears on Thomson Reuters Screen MYRFIX2 Page at
  approximately 3:30 p.m., Kuala Lumpur time, on that
  Rate Calculation Date.
* `SettlementRateOptionEnum_MYR_PPKM_MYR03`
  The Spot Rate for a Rate Calculation Date will be the
  Malaysian Ringgit/U.S. Dollar spot rate expressed as
  the amount of Malaysian Ringgit per one U.S. Dollar,
  for settlement in two Business Days, reported by
  Persatuan Pasaran Kewangan Malaysia (ACI - Malaysia),
  which appears on Thomson Reuters Screen MYRFIX2 Page
  at approximately 11:10 a.m., Kuala Lumpur time, on
  that Rate Calculation Date.
* `SettlementRateOptionEnum_MYR_SFEMC_INDICATIVE_SURVEY_RATE_MYR02`
  The Spot Rate for a Rate Calculation Date will be the
  Malaysian Ringgit/U.S. Dollar Specified Rate for U.S.
  Dollars, expressed as the amount of Malaysian Ringgit
  per one U.S. Dollar, for settlement in two Business
  Days, as published on SFEMC&#39;s website
  (www.sfemc.org) at approximately 3:30 p.m., Singapore
  time, or as soon thereafter as practicable, on such
  Rate Calculation Date. The Spot Rate will be
  calculated by SFEMC (or a service provider SFEMC may
  select in its sole discretion) pursuant to the SFEMC
  MYR Indicative Survey Methodology (which means a
  methodology, dated as of July 15, 2005, as amended
  from time to time, for a centralized industry-wide
  survey of financial institutions that are active
  participants in the Malaysian Ringgit/U.S. Dollar
  markets for the purpose of determining the SFEMC MYR
  Indicative Survey Rate).
* `SettlementRateOptionEnum_PEN_EMTA_INDICATIVE_SURVEY_RATE_PEN04`
  The Spot Rate for a Rate Calculation Date will be the
  Peruvian Sol/U.S. Dollar Specified Rate for U.S.
  Dollars, expressed as the amount of Peruvian Soles
  per one U.S. Dollar, for settlement on the same day,
  as published on EMTA&#39;s web site (www.emta.org) at
  approximately 11:00 a.m., Lima time, or as soon
  thereafter as practicable, on such Rate Calculation
  Date. The Spot Rate shall be calculated by EMTA (or a
  service provider EMTA may select in its sole
  discretion) pursuant to the EMTA PEN Indicative
  Survey Methodology (which means a methodology, dated
  as of August 1, 2006, as amended from time to time,
  for a centralized industry-wide survey of financial
  institutions that are active participants in the
  Peruvian Sol/U.S. Dollar markets for the purpose of
  determining the EMTA PEN Indicative Survey Rate).
* `SettlementRateOptionEnum_PEN_INTERBANK_AVE_PEN05`
  The Spot Rate for a Rate Calculation Date will be the
  Peruvian Sol/U.S. Dollar average exchange rate in the
  interbank market expressed as the amount of Peruvian
  New Soles per one U.S. Dollar for settlement on the
  same day reported by the Banco Central de Reserva del
  Peru (www.bcrp.gob.pe) as the &#39;Tipo de Cambio
  Interbancario Promedio&#39; at approximately 2:00
  p.m., Lima time, on that Rate Calculation Date.
* `SettlementRateOptionEnum_PEN_PDSB_PEN01`
  The Spot Rate for a Rate Calculation Date will be the
  Peruvian Sol/U.S. Dollar fixing rate (mid market
  last), expressed as the amount of Peruvian Sols per
  one U.S. Dollar, for settlement on that same day
  which appears on the Reuters Screen PDSB Page
  opposite the caption &#39;PEN=&#39; as of 12:00 noon,
  Lima time, on that Rate Calculation Date.
* `SettlementRateOptionEnum_PEN_WT_AVE_PEN03`
  The Spot Rate for a Rate Calculation Date will be the
  midpoint of the Peruvian Sol/U.S. Dollar closing
  weighted average bid and offer (&#39;compra y
  venta&#39;) exchange rates expressed as the amount of
  Peruvian New Soles per one U.S. Dollar for settlement
  on the same day, reported by the Superintendencia de
  Banca, Seguros y AFP (www.sbs.gob.pe) of the Republic
  of Peru at approximately 5:00 p.m., Lima time, on
  that Rate Calculation Date.
* `SettlementRateOptionEnum_PHP_BAPPESO_PHP06`
  The Spot Rate for a Rate Calculation Date will be the
  Philippine Peso/U.S. Dollar morning weighted average
  rate for that Rate Calculation Date, expressed as the
  amount of Philippine Pesos per one U.S. Dollar, for
  settlement in one Business Day, sponsored by Bankers
  Association of the Philippines (www.bap.org.ph) as
  its &#39;BAP AM Weighted Average Rate&#39; at
  approximately 11:30 a.m., Manila time, or as soon
  thereafter as practicable, on that Rate Calculation
  Date.
* `SettlementRateOptionEnum_PHP_PDSPESO_PHP06`
  The Spot Rate for a Rate Calculation Date will be the
  Philippine Peso/U.S. Dollar morning weighted average
  rate for that Rate Calculation Date, expressed as the
  amount of Philippine Pesos per one U.S. Dollar, for
  settlement in one Business Day reported by the
  Philippine Dealing System PDEX which appears on the
  Reuters Screen PDSPESO Page to the right of the
  caption &#39;AM WT AVE&#39; at approximately 11:30
  a.m., Manila time, or as soon thereafter as
  practicable, on that Rate Calculation Date.
* `SettlementRateOptionEnum_PHP_PHPESO_PHP01`
  The Spot Rate for a Rate Calculation Date will be the
  Philippine Peso/U.S. Dollar tom rate (mid market),
  expressed as the amount of Philippine Pesos per one
  U.S. Dollar, for settlement in one Business Day which
  appears on the Reuters Screen PHPESO Page at
  approximately 11:00 a.m., Manila time, on that Rate
  Calculation Date.
* `SettlementRateOptionEnum_PHP_SFEMC_INDICATIVE_SURVEY_RATE_PHP05`
  The Spot Rate for a Rate Calculation Date will be the
  Philippine Peso/U.S. Dollar Specified Rate for U.S.
  Dollars, expressed as the amount of Philippine Pesos
  per one U.S. Dollar, for settlement in one Business
  Day, as published on SFEMC&#39;s website
  (www.sfemc.org) at approximately 3:30 p.m., Singapore
  time, or as soon thereafter as practicable, on such
  Rate Calculation Date. The Spot Rate will be
  calculated by SFEMC (or a service provider SFEMC may
  select in its sole discretion) pursuant to the SFEMC
  PHP Indicative Survey Methodology (which means a
  methodology, dated as of December 1, 2004, as amended
  from time to time, for a centralized industry-wide
  survey of financial institutions that are active
  participants in the Philippine Peso/U.S. Dollar
  markets for the purpose of determining the SFEMC PHP
  Indicative Survey Rate).
* `SettlementRateOptionEnum_PHP_TELERATE_15439_PHP03`
  The Spot Rate for a Rate Calculation Date will be the
  Philippine Peso/U.S. Dollar tom rate (mid market),
  expressed as the amount of Philippine Pesos per one
  U.S. Dollar, for settlement in one Business Day which
  appears on the Telerate Page 15439 at approximately
  11:00 a.m., Manila time, on that Rate Calculation
  Date.
* `SettlementRateOptionEnum_PHP_TELERATE_2920_PHP02`
  The Spot Rate for a Rate Calculation Date will be the
  Philippine Peso/U.S. Dollar Specified Rate, expressed
  as the amount of Philippine Pesos per one U.S.
  Dollar, for settlement in one Business Day which
  appears on the Telerate Page 2920 at the Specified
  Time, if any, on that Rate Calculation Date.
* `SettlementRateOptionEnum_PKR_SBPK_PKR01`
  The Spot Rate for a Rate Calculation Date will be the
  Pakistani Rupee/U.S. Dollar reference rate expressed
  as the amount of Pakistani Rupees per one U.S.
  Dollar, for settlement in two Business Days reported
  by the State Bank of Pakistan (www.sbp.org.pk) at
  approximately 2:30 pm, Karachi time, on that Rate
  Calculation Date.
* `SettlementRateOptionEnum_PKR_SFEMC_INDICATIVE_SURVEY_RATE_PKR02`
  The Spot Rate for a Rate Calculation Date will be the
  Pakistani Rupee/U.S. Dollar Specified Rate for U.S.
  Dollars, expressed as the amount of Pakistani Rupees
  per one U.S. Dollar, for settlement in two Business
  Days, as published on SFEMC&#39;s website
  (www.sfemc.org) at approximately 3:30 p.m. Singapore
  time, or as soon thereafter as practicable, on that
  Rate Calculation Date. The Spot Rate shall be
  calculated by SFEMC (or a service provider SFEMC may
  select in its sole discretion) pursuant to the SFEMC
  PKR Indicative Survey Methodology (which means a
  methodology, dated as of July 14, 2008, as amended
  from time to time, for a centralized industry-wide
  survey of financial institutions that are active
  participants in the Pakistani Rupee/U.S. Dollar
  markets for the purpose of determining the SFEMC PKR
  Indicative Survey Rate).
* `SettlementRateOptionEnum_PLZ_NBPQ_PLZ01`
  The Spot Rate for a Rate Calculation Date will be the
  Polish Zloty/U.S. Dollar Specified Rate, expressed as
  the amount of Polish Zloty per one U.S. Dollar, for
  settlement in two Business Days reported by the
  National Bank of Poland which appears on the Reuters
  Screen NBPQ Page at the Specified Time, if any, on
  that Rate Calculation Date.
* `SettlementRateOptionEnum_PLZ_NBPR_PLZ02`
  The Spot Rate for a Rate Calculation Date will be the
  Polish Zloty/U.S. Dollar fixing rate, expressed as
  the amount of Polish Zloty per one U.S. Dollar, for
  settlement in two Business Days reported by the
  National Bank of Poland which appears on the Reuters
  Screen NBPR Page at the Specified Time, if any, on
  that Rate Calculation Date.
* `SettlementRateOptionEnum_RUB_CME_EMTA_RUB03`
  The Spot Rate for a Rate Calculation Date will be the
  Russian Ruble/U.S. Dollar Specified Rate, expressed
  as the amount of Russian Rubles per one U.S. Dollar,
  for settlement in one Business Day, calculated by the
  Chicago Mercantile Exchange (&#39;CME&#39;) and as
  published on CME&#39;s website, which appears on the
  Reuters Screen EMTA Page, at approximately 1:30 p.m.,
  Moscow time, on that Rate Calculation Date. The Spot
  Rate shall be calculated by the CME pursuant to the
  Chicago Mercantile Exchange / EMTA, Inc. Daily
  Russian Ruble Per U.S. Dollar Reference Rate
  Methodology (which means a methodology, effective as
  of June 16, 2005, as amended from time to time, for a
  centralized industry-wide survey of financial
  institutions in Russia that are active participants
  in the Russian Ruble/U.S. Dollar spot market for the
  purpose of determining the RUB CME-EMTA Rate).
* `SettlementRateOptionEnum_RUB_EMTA_INDICATIVE_SURVEY_RATE_RUB04`
  The Spot Rate for a Rate Calculation Date will be the
  Russian Ruble/U.S. Dollar Specified Rate for U.S.
  Dollars, expressed as the amount of Russian Rubles
  per one U.S. Dollar, for settlement in one Business
  Day, as published on EMTA&#39;s web site
  (www.emta.org) at approximately 2:45 p.m., Moscow
  time, or as soon thereafter as practicable, on such
  Rate Calculation Date. The Spot Rate shall be
  calculated by EMTA (or a service provider EMTA may
  select in its sole discretion) pursuant to the EMTA
  RUB Indicative Survey Methodology (which means a
  methodology dated as of June 16, 2005, as amended
  from time to time, for a centralized industry-wide
  survey of financial institutions that are active
  participants in the Russian Ruble/U.S. Dollar spot
  market for the purpose of determining the EMTA RUB
  Indicative Survey Rate).
* `SettlementRateOptionEnum_RUB_MICEXFRX_RUB01`
  The Spot Rate for a Rate Calculation Date will be the
  Russian Ruble/U.S. Dollar Specified Rate, expressed
  as the amount of Russian Rubies per one U.S. Dollar,
  for settlement on the same day reported by the Moscow
  Interbank Currency Exchange which appears on the
  Reuters Screen MICEXFRX Page as of 10:30 a.m., Moscow
  time, on that Rate Calculation Date.
* `SettlementRateOptionEnum_RUB_MMVB_RUB02`
  The Spot Rate for a Rate Calculation Date will be the
  Russian Ruble/U.S. Dollar Specified Rate, expressed
  as the amount of Russian Rubies per one U.S. Dollar,
  for settlement on the same day reported by the Moscow
  Interbank Currency Exchange which appears on the
  Reuters Screen MMVB Page as of 10:30 a.m., Moscow
  time, on that Rate Calculation Date.
* `SettlementRateOptionEnum_SGD_VWAP_SGD3`
  The Spot Rate for a Rate Calculation Date will be the
  Singapore Dollar/U.S. Dollar spot rate expressed as
  the amount of Singapore Dollar per one U.S. Dollar
  for settlement in two Business Days, reported by ABS
  Benchmarks Administration Co Pte. Ltd. (or its
  successor as administrator or sponsor of the rate),
  which appears on Thomson Reuters Screen ABSFIX01 Page
  at approximately 11:30 a.m., Singapore time, on that
  Rate Calculation Date.
* `SettlementRateOptionEnum_SKK_NBSB_SKK01`
  The Spot Rate for a Rate Calculation Date will be the
  Slovak Koruna/U.S. Dollar Specified Rate, expressed
  as the amount of Slovak Koruna per one U.S. Dollar,
  for settlement in two Business Days reported by the
  National Bank of Slovakia which appears on the
  Reuters Screen NBSB Page as of 11:40 a.m., Bratislava
  time, on that Rate Calculation Date.
* `SettlementRateOptionEnum_THB_ABS_THB01`
  The Spot Rate for a Rate Calculation Date will be the
  Thai Baht/U.S. Dollar spot rate at 11:00 a.m.,
  Singapore time, expressed as the amount of Thai Bhaht
  per one U.S. Dollar, for settlement in two Business
  Days, reported by the Association of Banks in
  Singapore which appears on the Reuters Screen
  ABSIRFIX01 Page to the right of the caption
  &#39;Spot&#39; under the column &#39;THB&#39; at
  approximately 11:30 a.m., Singapore time, on that
  Rate Calculation Date.
* `SettlementRateOptionEnum_THB_VWAP_THB01`
  The Spot Rate for a Rate Calculation Date will be the
  Thai Baht / U.S. Dollar spot rate expressed as the
  amount of Thai Baht per one U.S. Dollar for
  settlement in two Business Days, reported by ABS
  Benchmarks Administration Co Pte. Ltd. (or its
  successor as administrator or sponsor of the rate),
  which appears on Thomson Reuters Screen ABSFIX01 Page
  at approximately 11:30 a.m., Singapore time, on that
  Rate Calculation Date.
* `SettlementRateOptionEnum_TWD_SFEMC_INDICATIVE_SURVEY_RATE_TWD04`
  The Spot Rate for a Rate Calculation Date will be the
  Taiwanese Dollar/U.S. Dollar Specified Rate for U.S.
  Dollars, expressed as the amount of Taiwanese Dollars
  per one U.S. Dollar, for settlement in two Business
  Days, as published on SFEMC&#39;s website
  (www.sfemc.org) at approximately 3:30 p.m., Singapore
  time, or as soon thereafter as practicable, on such
  Rate Calculation Date. The Spot Rate will be
  calculated by SFEMC (or a service provider SFEMC may
  select in its sole discretion) pursuant to the SFEMC
  TWD Indicative Survey Methodology (which means a
  methodology, dated as of December 1, 2004, as amended
  from time to time, for a centralized industry-wide
  survey of financial institutions that are active
  participants in the Taiwanese Dollar/U.S. Dollar
  markets for the purpose of determining the SFEMC TWD
  Indicative Survey Rate).
* `SettlementRateOptionEnum_TWD_TAIFX1_TWD03`
  The Spot Rate for a Rate Calculation Date will be the
  Taiwanese Dollar/U.S. Dollar spot rate, expressed as
  the amount of Taiwanese Dollars per one U.S. Dollar,
  for settlement in two Business Days, reported by the
  Taipei Forex Inc. which appears on the Reuters Screen
  TAIFX1 Page under the heading &#39;Spot&#39; as of
  11:00 a.m. Taipei time, on that Rate Calculation
  Date, or if no rate appears as of 11:00 a.m., Taipei
  time, the rate that first appears in any of the next
  succeeding 15 minute intervals after such time, up to
  and including 12:00 noon, Taipei time on that Rate
  Calculation Date.
* `SettlementRateOptionEnum_TWD_TELERATE_6161_TWD01`
  The Spot Rate for a Rate Calculation Date will be the
  Taiwanese Dollar/U.S. Dollar spot rate, expressed as
  the amount of Taiwanese Dollars per one U.S. Dollar,
  for settlement in two Business Days, reported by the
  Taipei Forex Inc. which appears on the Telerate Page
  6161 under the heading &#39;Spot&#39; as of 11:00
  a.m., Taipei time, on that Rate Calculation Date, or
  if no rate appears as of 11:00 a.m., Taipei time, the
  rate that first appears in any of the next succeeding
  15 minute intervals after such time, up to and
  including 12:00 noon, Taipei time, on that Rate
  Calculation Date.
* `SettlementRateOptionEnum_TWD_TFEMA_TWD02`
  The Spot Rate for a Rate Calculation Date will be the
  Taiwanese Dollar/U.S. Dollar Specified Rate,
  expressed as the amount of Taiwanese Dollars per one
  U.S. Dollar, for settlement in two Business Days
  which appears on the Reuters Screen TFEMA Page as of
  11:00 a.m., Taipei time, on that Rate Calculation
  Date.
* `SettlementRateOptionEnum_UAH_EMTA_INDICATIVE_SURVEY_RATE_UAH03`
  The Spot Rate for a Rate Calculation Date will be the
  Ukrainian Hryvnia/U.S. Dollar Specified Rate for U.S.
  Dollars, expressed as the amount of Ukrainian Hryvnia
  per one U.S. Dollar, for settlement on the same
  Business Day, as published on EMTA&#39;s website
  (www.emta.org) at approximately 2:00 p.m., Kiev time,
  or as soon thereafter as practicable, on that Rate
  Calculation Date. The Spot Rate shall be calculated
  by EMTA (or a service provider EMTA may select in its
  sole discretion) pursuant to the EMTA UAH Indicative
  Survey Methodology (which means a methodology, dated
  as of March 16, 2009, as amended from time to time,
  for a centralized industry-wide survey of financial
  institutions that are active participants in the
  Ukrainian Hryvnia / U.S. Dollar markets for the
  purpose of determining the EMTA UAH Indicative Survey
  Rate).
* `SettlementRateOptionEnum_UAH_EMTA_INDUSTRY_SURVEY_RATE_UAH02`
  The Spot Rate for a Rate Calculation Date will be the
  Ukrainian Hryvnia/U.S. Dollar Specified Rate for U.S.
  Dollars expressed as the amount of Ukrainian Hryvnia
  per one U.S. Dollar, for settlement on the same
  Business Day calculated by Thomson Reuters pursuant
  to the EMTA UAH Industry Survey Methodology, which
  rate appears on EMTA&#39;s website (www.emta.org) and
  on Thomson Reuters Page EMTAUAHFIX at approximately
  11:30 am, Kiev time, on that Rate Calculation Date.
  The &#39;EMTA UAH Industry Survey Methodology&#39; as
  used herein means the methodology dated as of March
  16, 2009, for a centralized industry wide survey of
  financial institutions in the Ukrainian Hryvnia/U.S.
  Dollar spot market for the purposes of determining
  the EMTA UAH Industry Survey Rate.
* `SettlementRateOptionEnum_UAH_GFI_UAH01`
  The Spot Rate for a Rate Calculation Date will be the
  Ukrainian Hryvnia/U.S. Dollar spot rate, expressed as
  the amount of Ukrainian Hryvnia per one U.S. Dollar,
  for settlement on the same Business Day reported by
  GFI Brokers on Thomson Reuters Page GFIU by 9:30 am,
  London time, on that Rate Calculation Date.
* `SettlementRateOptionEnum_VEF_FIX_VEF01`
  The Spot Rate for a Rate Calculation Date will be the
  midpoint of the Venezuelan Bolivar /U.S. Dollar Tipo
  de Cambio De Referencia buying and selling rates,
  expressed as the amount of Venezuelan Bolivar per one
  U.S. Dollar, for settlement in two Business Days
  reported by the Banco Central de Venezuela
  (www.bcv.org.ve) at approximately 5:00 p.m., Caracas
  time, on that Rate Calculation Date.
* `SettlementRateOptionEnum_VND_ABS_VND01`
  The Spot Rate for a Rate Calculation Date will be the
  Vietnamese Dong/U.S. Dollar spot rate at 11:00 a.m.,
  Singapore time, expressed as the amount of Vietnamese
  Dong per one U.S. Dollar, for settlement in two
  Business Days reported by the Association of Banks in
  Singapore, which appears on the Reuters Screen
  ABSIRFIX01 Page to the right of the caption
  &#39;Spot&#39; under the column &#39;VND&#39; at
  approximately 11:30 a.m., Singapore time, on that
  Rate Calculation Date.
* `SettlementRateOptionEnum_VND_FX_VND02`
  The Spot Rate for a Rate Calculation Date will be the
  Vietnamese Dong/U.S. Dollar spot rate expressed as
  the amount of Vietnamese Dong per one U.S. Dollar,
  for settlement in two Business Days which appears on
  Reuters Screen VNDFIX=VN Page under the caption
  &#39;Spot&#39; and to the right of the caption
  &#39;Average&#39; at approximately 11:00 am, Hanoi
  time, on that Rate Calculation Date.
* `SettlementRateOptionEnum_VND_SFEMC_INDICATIVE_SURVEY_RATE_VND03`
  The Spot Rate for a Rate Calculation Date will be the
  Vietnamese Dong/U.S. Dollar Specified Rate for U.S.
  Dollars, expressed as the amount of Vietnamese Dong
  per one U.S. Dollar, for settlement in two Business
  Days, as published on SFEMC&#39;s website
  (www.sfemc.org) at approximately 3:30 p.m., Singapore
  time, or as soon as thereafter as practicable, on
  that Rate Calculation Date. The Spot Rate shall be
  calculated by SFEMC (or a service provider SFEMC may
  select in its sole discretion) pursuant to the SFEMC
  VND Indicative Survey Methodology (which means a
  methodology, dated as of July 14, 2008, as amended
  from time to time, for a centralized industry-wide
  survey of financial institutions that are active
  participants in the Vietnamese Dong/U.S. Dollar
  markets for the purpose of determining the SFEMC VND
  Indicative Survey Rate).

### `data` `SettlementTypeEnum`

  The enumeration values to specify how the option is
  to be settled when exercised.
* `SettlementTypeEnum_Cash`
  The intrinsic value of the option will be delivered
  by way of a cash settlement amount determined, (i) by
  reference to the differential between the strike
  price and the settlement price; or (ii) in accordance
  with a bilateral agreement between the parties.
* `SettlementTypeEnum_CashOrPhysical`
  Allow use of either Cash or Physical settlement
  without prior Election.
* `SettlementTypeEnum_Election`
  Allow Election of either Cash or Physical settlement.
* `SettlementTypeEnum_Physical`
  The securities underlying the transaction will be
  delivered by (i) in the case of a call, the seller to
  the buyer, or (ii) in the case of a put, the buyer to
  the seller versus a settlement amount equivalent to
  the strike price per share.

### `data` `ShareExtraordinaryEventEnum`

  The enumerated values to specify the consequences of
  extraordinary events relating to the underlying.
* `ShareExtraordinaryEventEnum_AlternativeObligation`
  The trade continues such that the underlying now
  consists of the New Shares and/or the Other
  Consideration, if any, and the proceeds of any
  redemption, if any, that the holder of the underlying
  Shares would have been entitled to.
* `ShareExtraordinaryEventEnum_CalculationAgent`
  The Calculation Agent will determine what adjustment
  is required to offset any change to the economics of
  the trade. If the Calculation Agent cannot achieve
  this, the trade goes to Cancellation and Payment with
  the Calculation Agent deciding on the value of the
  cancellation fee. Adjustments may not be made to
  account solely for changes in volatility, expected
  dividends, stock loan rate or liquidity.
* `ShareExtraordinaryEventEnum_CancellationAndPayment`
  The trade is cancelled and a cancellation fee will be
  paid by one party to the other.
* `ShareExtraordinaryEventEnum_Component`
  If this is a Share-for-Combined merger event (Shares
  are replaced with New Shares and Other
  Consideration), then different treatment can be
  applied to each component if the parties have
  specified this.
* `ShareExtraordinaryEventEnum_ModifiedCalculationAgent`
  The Calculation Agent will determine what adjustment
  is required to offset any change to the economics of
  the trade. If the Calculation Agent cannot achieve
  this, the trade goes to Cancellation and Payment with
  the Calculation Agent deciding on the value of the
  cancellation fee. Adjustments to account for changes
  in volatility, expected dividends, stock loan rate or
  liquidity are allowed.
* `ShareExtraordinaryEventEnum_OptionsExchange`
  The trade will be adjusted by the Calculation Agent
  in accordance with the adjustments made by any
  exchange on which options on the underlying are
  listed.
* `ShareExtraordinaryEventEnum_PartialCancellationAndPayment`
  Applies to Basket Transactions. The portion of the
  Basket made up by the affected Share will be
  cancelled and a cancellation fee will be paid from
  one party to the other. The remainder of the trade
  continues.

### `data` `SimmExceptionEnum`

  The enumerated values to specify the SIMM normalized
  exceptions applicable to the ISDA 2018 Standard CSA.
* `SimmExceptionEnum_FallBackToMandatoryMethod`
  As specified in the ISDA 2018 CSA for Initial Margin,
  the ISDA Standard Initial Margin Model exception is
  applicable as a Fallback to Mandatory Method. This
  means that the ISDA SIMM is the method applicable to
  such Regime, but if, to the extent that a party
  notifies the other that it is mandatory under such
  Regime for such notifying party to apply the
  Mandatory Method to one or more transaction types
  with respect to either the Chargor/Pledgor’s or the
  Secured Party’s posting or collecting obligation, as
  applicable (specifying in such notice the relevant
  transaction types), then with effect from the later
  of (x) the date which is the calendar day after such
  notice is effectively delivered and (y) the date
  specified in such notice as the date on which the
  Mandatory Method becomes mandatory under such Regime
  (and only in respect of Transactions of the relevant
  transaction type entered into after the later of the
  dates in (x) and (y)): (a) SIMM Exception will be
  applicable solely with respect to such transaction
  types; and (b) the applicable Method for such
  transaction types will be the Mandatory Method.
* `SimmExceptionEnum_MandatoryMethod`
  As specified in the ISDA 2018 CSA for Initial Margin,
  the ISDA Standard Initial Margin Model exception is
  applicable as a Mandatory Method. This means that the
  method applicable is to determine the Margin Amount
  (IM) by reference to the methodology prescribed
  pursuant to the applicable regulatory regime which
  uses a standardized initial margin schedule (such
  that prescribed percentages are applied to notional
  amounts before being adjusted, including by a
  net-to-gross ratio (NGR)).
* `SimmExceptionEnum_NotApplicable`
  As specified in the ISDA 2018 CSA for Initial Margin,
  the ISDA Standard Initial Margin Model exception is
  not applicable.

### `data` `SpreadScheduleTypeEnum`

  The enumerated values to specify a long or short
  spread value.
* `SpreadScheduleTypeEnum_Long`
  Represents a Long Spread Schedule. Spread schedules
  defined as &#39;Long&#39; will be applied to Long
  Positions.
* `SpreadScheduleTypeEnum_Short`
  Represents a Short Spread Schedule. Spread schedules
  defined as &#39;Short&#39; will be applied to Short
  Positions.

### `data` `StandardSettlementStyleEnum`

  The enumerated values to specify whether a trade is
  settling using standard settlement instructions as
  well as whether it is a candidate for settlement
  netting.
* `StandardSettlementStyleEnum_Net`
  This trade is a candidate for settlement netting.
* `StandardSettlementStyleEnum_Standard`
  This trade will settle using standard predetermined
  funds settlement instructions.
* `StandardSettlementStyleEnum_StandardAndNet`
  This trade will settle using standard predetermined
  funds settlement instructions and is a candidate for
  settlement netting.

### `data` `StepRelativeToEnum`

  The enumerated values to specify whether a percentage
  rate change, used to calculate a change in notional
  outstanding, is expressed as a percentage of the
  initial notional amount or the previously outstanding
  notional amount.
* `StepRelativeToEnum_Initial`
  Change in notional to be applied is calculated by
  multiplying the percentage rate by the initial
  notional amount.
* `StepRelativeToEnum_Previous`
  Change in notional to be applied is calculated by
  multiplying the percentage rate by the previously
  outstanding notional amount.

### `data` `StubPeriodTypeEnum`

  The enumerated values to specify how to deal with a
  non standard calculation period within a swap stream.
* `StubPeriodTypeEnum_LongFinal`
  If there is a non regular period remaining it is
  placed at the end of the stream and combined with the
  adjacent calculation period to give a long last
  calculation period.
* `StubPeriodTypeEnum_LongInitial`
  If there is a non regular period remaining it is
  placed at the start of the stream and combined with
  the adjacent calculation period to give a long first
  calculation period.
* `StubPeriodTypeEnum_ShortFinal`
  If there is a non regular period remaining it is left
  shorter than the streams calculation period frequency
  and placed at the end of the stream.
* `StubPeriodTypeEnum_ShortInitial`
  If there is a non regular period remaining it is left
  shorter than the streams calculation period frequency
  and placed at the start of the stream.

### `data` `TaxonomySourceEnum`

  The enumerated values to specify taxonomy sources.
* `TaxonomySourceEnum_CFI`
  The ISO 10962 Classification of Financial Instruments
  code
* `TaxonomySourceEnum_ISDA`
  The ISDA product taxonomy

### `data` `TimeTypeEnum`

  The enumerated values to specify points in the day
  when option exercise and valuation can occur.
* `TimeTypeEnum_AsSpecifiedInMasterConfirmation`
  The time is determined as provided in the relevant
  Master Confirmation.
* `TimeTypeEnum_Close`
  The official closing time of the exchange on the
  valuation date.
* `TimeTypeEnum_DerivativesClose`
  The official closing time of the derivatives exchange
  on which a derivative contract is listed on that
  security underlier.
* `TimeTypeEnum_OSP`
  The time at which the official settlement price is
  determined.
* `TimeTypeEnum_Open`
  The official opening time of the exchange on the
  valuation date.
* `TimeTypeEnum_SpecificTime`
  The time specified in the element
  equityExpirationTime or valuationTime (as
  appropriate).
* `TimeTypeEnum_XETRA`
  The time at which the official settlement price
  (following the auction by the exchange) is determined
  by the exchange.

### `data` `TimeUnitEnum`

  The enumeration values to qualify the allowed units
  of time.
* `TimeUnitEnum_Day`
  Day
* `TimeUnitEnum_Hour`
  Hour
* `TimeUnitEnum_Minute`
  Minute
* `TimeUnitEnum_Month`
  Month
* `TimeUnitEnum_Second`
  Second
* `TimeUnitEnum_Week`
  Week
* `TimeUnitEnum_Year`
  Year

### `data` `TransferSettlementEnum`

  The enumeration values to specify how the transfer
  will settle, e.g. DvP.
* `TransferSettlementEnum_DeliveryVersusDelivery`
  Simultaneous transfer of two assets, typically
  securities, as a way to avoid settlement risk.
* `TransferSettlementEnum_DeliveryVersusPayment`
  Settlement in which the transfer of the asset and the
  cash settlement are simultaneous.
* `TransferSettlementEnum_NotCentralSettlement`
  No central settlement.
* `TransferSettlementEnum_PaymentVersusPayment`
  Simultaneous transfer of cashflows.

### `data` `TransferStatusEnum`

  The enumeration values to specify the transfer
  status.
* `TransferStatusEnum_Disputed`
  The transfer is disputed.
* `TransferStatusEnum_Instructed`
  The transfer has been instructed.
* `TransferStatusEnum_Pending`
  The transfer is pending instruction.
* `TransferStatusEnum_Settled`
  The transfer has been settled.

### `data` `TriggerTimeTypeEnum`

  The enumerated values to specify the time of day
  which would be considered for valuing the knock
  event.
* `TriggerTimeTypeEnum_Anytime`
  At any time during the Knock Determination period
  (continuous barrier).
* `TriggerTimeTypeEnum_Closing`
  The close of trading on a day would be considered for
  valuation.

### `data` `TriggerTypeEnum`

  The enumerated values to specify whether an option
  will trigger or expire depending upon whether the
  spot rate is above or below the barrier rate.
* `TriggerTypeEnum_Equal`
  The underlier price must be equal to the Trigger
  level.
* `TriggerTypeEnum_EqualOrGreater`
  The underlier price must be equal to or greater than
  the Trigger level.
* `TriggerTypeEnum_EqualOrLess`
  The underlier price must be equal to or less than the
  Trigger level.
* `TriggerTypeEnum_Greater`
  The underlier price must be greater than the Trigger
  level.
* `TriggerTypeEnum_Less`
  The underlier price must be less than the Trigger
  level.

### `data` `UnitEnum`

  The enumeration values to qualify the units of
  measure. FpML makes use of the priceQuoteUnitsScheme
  for specifying the units as part of its commodity
  implementation. Its scope is however deemed too broad
  for the CDM, as it includes values such as Amount and
  BasisPoints.  As a result, it is deemed inappropriate
  as a reference scheme for that enumeration.
* `UnitEnum_BBL`
  Barrel
* `UnitEnum_BSH`
  Bushel
* `UnitEnum_GAL`
  Gallon
* `UnitEnum_MMBTU`
  Million British thermal units
* `UnitEnum_MWh`
  Megawatt-hour

### `data` `ValuationMethodEnum`

  The enumerated values to specify the ISDA defined
  methodology for determining the final price of the
  reference obligation for purposes of cash settlement.
* `ValuationMethodEnum_AverageBlendedHighest`
* `ValuationMethodEnum_AverageBlendedMarket`
* `ValuationMethodEnum_AverageHighest`
* `ValuationMethodEnum_AverageMarket`
* `ValuationMethodEnum_BlendedHighest`
* `ValuationMethodEnum_BlendedMarket`
* `ValuationMethodEnum_Highest`
* `ValuationMethodEnum_Market`

### `data` `WarehouseIdentityEnum`

* `WarehouseIdentityEnum_DTCC_TIW_Gold` `(`  `)`
  The DTCC Trade Information Warehouse Gold service

### `data` `WeeklyRollConventionEnum`

  The enumerated values to specify the weekly roll day.
* `WeeklyRollConventionEnum_FRI`
  Friday
* `WeeklyRollConventionEnum_MON`
  Monday
* `WeeklyRollConventionEnum_SAT`
  Saturday
* `WeeklyRollConventionEnum_SUN`
  Sunday
* `WeeklyRollConventionEnum_TBILL`
  13-week and 26-week U.S. Treasury Bill Auction Dates.
  Each Monday except for U.S. (New York) holidays when
  it will occur on a Tuesday
* `WeeklyRollConventionEnum_THU`
  Thursday
* `WeeklyRollConventionEnum_TUE`
  Tuesday
* `WeeklyRollConventionEnum_WED`
  Wednesday

### `data` `WorkflowStatusEnum`

* `WorkflowStatusEnum_Accepted`
* `WorkflowStatusEnum_Alleged`
* `WorkflowStatusEnum_Amended`
* `WorkflowStatusEnum_Cancelled`
* `WorkflowStatusEnum_Certain`
* `WorkflowStatusEnum_Cleared`
* `WorkflowStatusEnum_Pending`
* `WorkflowStatusEnum_Rejected`
* `WorkflowStatusEnum_Submitted`
* `WorkflowStatusEnum_Terminated`
* `WorkflowStatusEnum_Uncertain`
* `WorkflowStatusEnum_Unconfirmed`



