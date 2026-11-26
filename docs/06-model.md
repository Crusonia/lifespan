# 06 · The model

The benchmark runs on [Demeter](https://github.com/Crusonia/Demeter), an open-source (MIT) model of the food, agriculture, health and capital system. Demeter is a system-dynamics model: US age cohorts move between health states, with explicit mortality, aging and transitions, and every input is registered with its source, unit and uncertainty.

## What is calibrated and what is not

Be precise about this before using any number.

| Component | Status | What that means |
| --- | --- | --- |
| US population by age and sex (Census) | Calibrated | Real data |
| Mortality and life tables (NCHS 2022–2024) | **Calibrated** | Reproduces published life expectancy to within 0.001 year |
| Health-adjusted life expectancy arithmetic (Sullivan method) | Checked | Reproduces 18 published NCHS values |
| Healthy / insulin-resistant / T2D state shares | Synthetic allocation | Benchmarked against NHANES but not yet mapped into the engine |
| Diet → metabolic transition effects | **Synthetic** | Plumbing works; the coefficients are placeholders |
| Coverage, cost and market modules | Not yet built | Defined so they can be added without changing the scoreboard |

Demeter's own release gate (`demeter validate --scientific-required`) is designed to **fail** for the current alpha. That is deliberate and correct.

## What the model shows today (validation-only)

These runs demonstrate the structure the benchmark will use. **They are not findings.** Do not quote them as estimates of what any policy would do.

Demeter 0.1.0a1, commit `bfc2194`, 25-year horizon, 2024 baseline. Raw output in [`model/results/`](../model/results/).

| Measure | Baseline | Illustrative scenario: ultra-processed food intake down 30% | Difference |
| --- | --- | --- | --- |
| Life expectancy (model) | 77.0 | 77.3 | +0.25 years |
| Metabolically healthy life expectancy (S1 proxy) | 47.5 | 49.3 | +1.8 years |
| Type 2 diabetes-free life expectancy | 61.5 | 63.2 | +1.7 years |
| Cumulative deaths over 25 years | 104.1M | 103.4M | −0.67M |

What this illustrates, and why it matters for the benchmark even with synthetic inputs:

1. **The structural point holds regardless of the coefficients.** An upstream lever moves *healthy* life expectancy several times more than it moves life expectancy. A scoreboard that tracks only life expectancy, or only deaths, will systematically undervalue upstream levers. This is why [S1](01-scoreboard.md) is healthy life expectancy.
2. **The size of the effect is not known.** The +1.8 years depends entirely on placeholder coefficients. Real values could be much smaller or larger. Pinning them is the first job of the [evidence agenda](08-evidence-agenda.md).
3. **The model's baseline life expectancy (77.0) differs from the published 2024 figure (~79.0)** because of the synthetic state-specific mortality ratios. This gap is reported, not tuned away.

## Reproduce it

```bash
# requires git and uv (https://docs.astral.sh/uv/)
./model/run.sh
```

The script clones Demeter, checks out the pinned commit, runs the scenarios above and writes JSON with full provenance (version, input hashes, data vintages, `validation_only` flag).

## How the model will score plans

| Release | Model capability | What can be scored |
| --- | --- | --- |
| v0.1 | Calibrated mortality; synthetic metabolic effects | Structure, sensitivity, frontier gap method |
| v0.2 | Evidence-calibrated PreChronic transitions (DPP-anchored); coverage → access module | G1 and G3 for each plan archetype, with ranges |
| v0.3 | Cost module (spending by state, program costs) | S3 cost per healthy year |
| v0.4 | Equity strata (income, county) | S2 healthy-years gap |

Model changes are made in [Demeter](https://github.com/Crusonia/Demeter), not here. This repository pins a Demeter version for each benchmark release so scores stay reproducible.
