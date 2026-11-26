# Lifespan for All

**A first-principles benchmark for judging health policy by what it buys: healthy years of life, for everyone.**

> **v0.1 public draft.** The method is fixed; numbers are being pinned and model outputs are validation-only. Comment, challenge and submit evidence through issues.

Version 0.1 (draft) · [Scoreboard](docs/01-scoreboard.md) · [Plans vs the frontier](docs/05-plans-vs-the-frontier.md) · [Model](docs/06-model.md) · [Counterarguments](docs/07-counterarguments.md) · [Score a proposal](docs/09-scoring-a-proposal.md) · [Contribute](CONTRIBUTING.md)

---

## The missing variable

The Medicare for All debate is about who pays. Single payer, public option, employer coverage, the status quo: each is a financing design. Almost none of them specifies the outcome the money is supposed to buy, or how anyone would know whether it was bought.

That is the gap this project fills.

The United States spends more on health care per person than any other country, about $4.9 trillion or 17.6% of GDP in 2023. It gets the shortest life expectancy among comparable wealthy nations and the widest gap between lifespan and healthspan of any country measured. Spending is not the scarce input. **Healthy years are the scarce output.**

Lifespan for All starts from the output and works backward:

1. **Define the outcome.** Healthy life expectancy, for the whole population, with the gap between groups shown rather than averaged away.
2. **Find where the years are lost.** Decompose the shortfall by cause and by driver, upstream (food, environment, behavior) and downstream (care delivery).
3. **Model the system.** Stocks, flows, delays and feedback loops, so that the effect of a change can be traced and argued with.
4. **Rank the levers by healthy years per dollar.** Coverage, food, early detection, drugs, and anything else anyone proposes, all on one scale.
5. **Publish the evidence and the uncertainty.** Every number has a source, a grade and a range. Every assumption can be challenged in an issue.

## Why this is not a political document

The benchmark does not take a side on financing. It does not oppose coverage, markets, government programs or private ones. It measures them.

Any proposal, from any direction, can be scored on the same axes: healthy years gained, who gains them, at what cost, and how fast. A plan that expands coverage gets credit for the healthy years coverage produces. A plan that changes food or prevention gets credit for the years those produce. A plan that does neither gets scored too.

## The frontier, and how every plan is measured against it

The first-principles approach is not one more plan in the lineup. It is the **frontier**: the healthy life expectancy the country would have if the system were built to produce healthy years. That frontier is anchored in what real populations have already achieved, the best-performing wealthy countries, where people get roughly 8 to 10 more healthy years than the US average, and the healthiest American counties and income groups, who already live a decade or more longer than the least healthy.

Every actual plan, Medicare for All, a public option, the status quo, market reforms, is scored by how far short of that frontier it leaves the country, and which lost years it leaves on the table. See [05 · Plans vs the frontier](docs/05-plans-vs-the-frontier.md).

If the benchmark is built well, the debate stops being "which financing model is morally right" and becomes "which plan buys the most healthy years per dollar, and how sure are we." That question has answers, and the answers can be improved.

## What is in v0.1

| Part | What it does | Status |
| --- | --- | --- |
| [00 · Why](docs/00-why.md) | The problem, stated from first principles | Draft |
| [01 · Scoreboard](docs/01-scoreboard.md) | The five measures every plan is scored on | Draft standard |
| [02 · Where the years are lost](docs/02-where-years-are-lost.md) | Decomposition of the US healthy-life shortfall | Draft, sources cited |
| [03 · System dynamics](docs/03-system-dynamics.md) | Stocks, flows, loops and delays | Draft |
| [04 · Levers](docs/04-levers.md) | Candidate levers with evidence grades | Draft |
| [**05 · Plans vs the frontier**](docs/05-plans-vs-the-frontier.md) | **The centerpiece: every plan scored as its gap from the frontier** | Method fixed; preliminary read |
| [06 · Model](docs/06-model.md) | Reproducible runs with the open-source Demeter model | Runs; outputs validation-only |
| [07 · Counterarguments](docs/07-counterarguments.md) | The strongest objections, stated fairly | Draft |
| [08 · Evidence agenda](docs/08-evidence-agenda.md) | What evidence would change the numbers | Draft |
| [09 · Score a proposal](docs/09-scoring-a-proposal.md) | How to submit any plan for scoring | Draft method |

## Read this before quoting any number

The calibrated part of the model is the mortality and life-table baseline. The effects of diet and metabolic health on that baseline are **not yet calibrated**. They are run through the model to show structure and sensitivity, and they are labeled as illustrative ranges, not findings. [06 · Model](docs/06-model.md) explains exactly what is and is not established.

A benchmark that overclaims is worthless. This one will say "we don't know yet" where that is true, and will say what evidence would settle it.

## How to take part

- **Challenge an assumption.** Open an [assumption challenge](https://github.com/Crusonia/lifespan/issues/new?template=challenge-assumption.yml). Null results and contrary evidence are the most valuable contributions.
- **Add evidence.** Open an [evidence submission](https://github.com/Crusonia/lifespan/issues/new?template=evidence.yml) with the source, the effect size and its uncertainty.
- **Submit a proposal for scoring.** Open a [scoring request](https://github.com/Crusonia/lifespan/issues/new?template=score-proposal.yml) for any health plan, from any direction.
- **Improve the model.** Modeling changes go to [Demeter](https://github.com/Crusonia/Demeter), the open-source engine this benchmark runs on.

See [CONTRIBUTING](CONTRIBUTING.md) and [GOVERNANCE](GOVERNANCE.md).

## Where this comes from

Lifespan for All extends the work of the [Food is Health](https://foodishealth.substack.com/) newsletter and its open model, [Demeter](https://github.com/Crusonia/Demeter). The Substack has argued that the scoreboard telling buyers whether food worked does not exist yet, and that whoever builds it sets the price. This benchmark is an attempt to build that scoreboard for the whole population, in public.

## Citing

Cite a tagged release, not the main branch. See [CITATION.cff](CITATION.cff). Each release freezes the scoreboard definitions, the model version and the evidence registry, so a score can be reproduced later.

## License

Text and data: [CC BY 4.0](LICENSE). Code: MIT, as in [Demeter](https://github.com/Crusonia/Demeter/blob/main/LICENSE).
