# 01 · The Scoreboard

This is the standard. Every proposal, from any direction, is scored on these five measures, always with uncertainty, always alongside its companion measure. If a proposal can't be scored on a measure, the score says "not estimable" and says why. It is never filled in by assumption.

## The five measures

| # | Headline measure | Shown next to | Unit | Why the pair matters |
| --- | --- | --- | --- | --- |
| **S1** | **Healthy life expectancy (HALE)** | Life expectancy | Years at birth | Extra years in poor health are not the goal. The gap between the two is time lived sick. |
| **S2** | **Healthy-years gap** | Population HALE | Years between top and bottom income quintile (and county decile) | An average can rise while the people furthest behind fall further. "For all" has to be measured. |
| **S3** | **Cost per healthy life-year gained** | Gross cost and net budget impact | Dollars per healthy life-year (2024 USD) | Total cost alone can't separate an expensive plan that buys a lot from a cheap one that buys nothing. |
| **S4** | **Time to effect** | Healthy years gained at 10 and 30 years | Years to half of full effect | Budget windows are 10 years. Many upstream levers pay out over decades. Both have to be visible. |
| **S5** | **Confidence** | The evidence grade of every causal link used | Grade A–D, plus probability the effect is above zero | A large effect with weak evidence is not the same as a modest effect with strong evidence. |

### Guardrails

These are reported for every proposal. They don't feed the score, but a proposal that worsens them has to show the trade-off.

- **Financial protection:** share of households with catastrophic health spending (over 10% of income), and medical debt.
- **Climate and land:** net lifecycle greenhouse-gas emissions and land use, once [Demeter](https://github.com/Crusonia/Demeter) models them.
- **Workforce and capacity:** clinicians, beds, pharmacy and food supply needed. A plan that needs capacity that doesn't exist gets its time to effect lengthened, not ignored.

## Definitions

**S1 · Healthy life expectancy.** Computed with the Sullivan method: period life-table person-years at each age, weighted by the share of people at that age in the healthy state.

- *National baseline:* the published HALE series (WHO Global Health Observatory and IHME Global Burden of Disease) are used as reference values. Their disagreement is reported, not averaged away.
- *Model-computable proxy in v0.1:* **metabolically healthy life expectancy**, meaning years lived without insulin resistance, prediabetes or type 2 diabetes, as computed by Demeter. This is narrower than general HALE. It's used because metabolic disease is the largest single modifiable driver of the gap (see [02](02-where-years-are-lost.md)) and because it is the state Demeter models today. It is always labeled as the proxy.

**S2 · Healthy-years gap.** HALE for the top income quintile minus HALE for the bottom quintile, and the same for county deciles. Where HALE by income isn't available, life expectancy by income (e.g. Chetty et al. 2016) is reported, labeled as such. Proposals are also scored on **healthy years gained by the bottom quintile**, so that a plan that helps the worst-off is visible even if the average barely moves.

**S3 · Cost per healthy life-year gained.**

- Numerator: the change in total resources used (all payers plus out-of-pocket plus program costs) over the horizon, net of changes in downstream health spending. Gross program cost and the net federal and state budget impact are shown separately.
- Denominator: the change in healthy life-years across the population over the same horizon.
- Discount rate 3% a year, with 0% shown. Horizon 30 years, with 10 years shown.
- **Added years cost money.** Health spending in the years of life a proposal adds is counted, not dropped. Leaving it out is the most common way prevention gets oversold.
- If the net cost is negative (the plan saves money and adds healthy years), the score reads "dominant" and both numbers are shown.

**S4 · Time to effect.** Years from start until the proposal reaches half its 30-year healthy-years gain. Healthy years gained by year 10 and by year 30 are both shown, so a fast-acting small lever and a slow-acting large one can be compared honestly.

**S5 · Confidence.** Each causal link the score relies on gets a grade:

| Grade | Meaning | Typical source |
| --- | --- | --- |
| **A** | Effect on a hard outcome (death, disease incidence) shown in randomized trials in a comparable population | Multiple RCTs, meta-analysis |
| **B** | Effect on a validated intermediate (HbA1c, blood pressure, LDL) shown in trials, plus consistent observational links to hard outcomes | RCTs on biomarkers plus cohorts |
| **C** | Consistent observational association with plausible mechanism, no trial evidence on outcomes | Cohort studies, natural experiments |
| **D** | Mechanism or expert judgment only | Premise awaiting evidence |

A proposal's confidence is the **lowest grade on any link that carries more than a fifth of its estimated effect.** The score also reports the modeled probability the healthy-years effect is above zero.

## The score card

Every scored proposal gets one card, in this form:

```
Proposal: <name, version, source document>
Scored against: Lifespan for All v0.1, Demeter <version/commit>

                         10-year        30-year        Confidence
S1 HALE change           +x.x (a–b)     +x.x (a–b)     <grade>
   LE change             +x.x (a–b)     +x.x (a–b)
S2 Bottom-quintile HALE  +x.x (a–b)     +x.x (a–b)     <grade>
   Gap change            -x.x (a–b)     -x.x (a–b)
S3 $ per healthy year    $xx,xxx (a–b)                 <grade>
   Gross cost / net budget  $x.xT / $x.xT
S4 Years to half effect  x (a–b)
S5 P(effect > 0)         0.xx

Guardrails: financial protection <+/->, emissions <+/->, capacity <ok/constrained>
Not estimable: <list, with reasons>
Largest uncertainties: <top three inputs from the tornado diagram>
```

Ranges are 90% intervals from propagating the registered uncertainty in every input.

## What the scoreboard deliberately does not do

- **It doesn't add up to one number.** Collapsing five measures into one index hides the trade-offs that people are entitled to argue about. Readers can apply their own weights.
- **It doesn't judge financing as such.** A financing change is scored by the healthy years, gap change, cost and speed it produces, nothing more and nothing less.
- **It doesn't treat spending as output.** Health-care spending is a cost on this scoreboard. A plan that cuts disease and therefore cuts health-sector revenue is scored as a gain.

## Changing the standard

The definitions are versioned. A change to any definition requires an issue, a public comment period, and a new minor version (see [GOVERNANCE](../GOVERNANCE.md)). Scores are always reported against a named version so they stay reproducible.
