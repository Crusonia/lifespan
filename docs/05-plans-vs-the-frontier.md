# 05 · How the plans compare to the frontier

This is the center of the benchmark.

The first-principles approach is not one more plan in the lineup. It is the **frontier**: the healthy life expectancy the US would have if the system were built to produce healthy years, with nothing lost to avoidable causes. Every actual plan (Medicare for All, a public option, the status quo, market reforms, anything else) is scored by **how far short of the frontier it leaves the country, and which lost years it leaves on the table.**

This is how the debate gets a fixed reference point. Plans stop being compared only to each other. They are compared to what is achievable.

## Step 1 · Anchor the frontier in what has actually been achieved

A ceiling that is purely hypothetical invites the reply "that's a fantasy." So the frontier is anchored in outcomes that real populations have already reached.

| Frontier tier | What it is | Healthy life expectancy (approx.) | Use |
| --- | --- | --- | --- |
| **US today** | National average | ~63–66 years (WHO and IHME estimates differ) | The starting point |
| **F1 · Peer frontier** | Best-performing wealthy countries (Japan, Singapore, Switzerland, Korea) | ~71–74 years | **The headline reference.** Achieved at national scale, at lower cost per person. |
| **F2 · Domestic frontier** | Healthiest US groups and counties (top income quintile; top counties such as those in central Colorado) | Life expectancy ~85–87; HALE not yet estimated on a consistent basis | Shows the gap isn't American genetics or culture. Americans already reach the frontier where conditions allow. |
| **F3 · Biological frontier** | Compression of morbidity toward a late, short period of decline | Unknown; above F1 | Long-range reference only. Never used to score plans. |

**The headline gap: US healthy life expectancy is roughly 8–10 years below F1.** That is the number every plan is measured against.

*The exact values are a v0.1 task. WHO and IHME HALE series disagree by one to two years, and domestic HALE by income and county has to be assembled. The method is fixed now; the numbers will be pinned in the first tagged release, with sources.*

## Step 2 · Decompose the gap by cause

The gap is not one thing. Each slice has a different cause, and different plans touch different slices.

| Slice of the gap to F1 | What drives it | Rough weight | Evidence on weight |
| --- | --- | --- | --- |
| **G1 · Metabolic and cardiovascular** | Diet, obesity, insulin resistance, T2D, heart disease, kidney disease | Largest share of *time spent sick*; a large share of early death | Strong that it's large; exact share is a v0.1 task |
| **G2 · External causes** | Drug overdose, firearms, traffic deaths | A large share of the *life expectancy* gap, especially under age 50 | Strong (NRC/IOM *Shorter Lives, Poorer Health*, 2013, and later updates) |
| **G3 · Access and care quality** | Uninsurance, underinsurance, delayed and poor-quality care ("amenable" mortality) | Meaningful but smaller | Moderate |
| **G4 · Other chronic and mental illness** | Cancer, respiratory disease, depression, substance use disorders | Mixed | Mixed |
| **G5 · Social circumstances** | Income, housing, stress, environment, acting through G1–G4 | Cross-cutting | Strong that it matters; hard to separate |

**This decomposition will be uncomfortable for every side.** A good part of the US life expectancy gap is overdoses, guns and cars, which no financing plan addresses and no food plan addresses either. The benchmark reports that rather than leaving it out.

## Step 3 · Score each plan as a deviation from the frontier

For each plan, the score card in [01](01-scoreboard.md) is filled in, and one more line is added: **the share of each gap slice the plan closes.** What remains is the plan's deviation from the frontier.

### Preliminary read (v0.1, directional, before modeling)

This table is an expert first pass from published evidence, to show the method. It is **not** a model result, and it is the part of the benchmark most in need of challenge. Every cell is open to an issue.

| Plan archetype | G1 Metabolic | G2 External | G3 Access | G4 Other chronic | Financial protection | Confidence |
| --- | --- | --- | --- | --- | --- | --- |
| **Status quo** | Gap grows | Unchanged | Partial | Partial | Weak | n/a |
| **Medicare for All** (single payer, no cost-sharing) | Small | None | **Largest** | Some | **Strongest** | B for access and protection; C for healthy years |
| **Public option / coverage expansion** | Small | None | Large | Some | Strong | B |
| **Market reform** (HSAs, price transparency, competition) | Small | None | Small, may widen for low-income sick | Small | Mixed | C |
| **Upstream portfolio** (food, PreChronic programs, pay for healthy years) | **Largest potential** | None | Small | Some | Unchanged | C overall; A for the DPP component |

How to read it:

- **Every financing plan leaves most of G1 on the table.** Coverage is the right tool for G3 and for financial protection. It barely moves the largest slice of time spent sick, because that slice is produced upstream, before anyone is a patient.
- **The upstream portfolio leaves G3 and financial protection on the table.** It is not a substitute for coverage.
- **Nobody is closing G2.** It needs its own levers.
- **Confidence is inverted relative to potential.** The plans with the strongest evidence (coverage) act on the smaller slices. The slice with the largest potential (metabolic) has the weakest outcome evidence. That is the single most important thing this benchmark has found so far, and it defines the [evidence agenda](08-evidence-agenda.md).

## Step 4 · The frontier portfolio

If the frontier is "the system built to produce healthy years," then the plan closest to it isn't any one of the archetypes. It is the combination that closes the most of every slice per dollar:

1. **Measure everyone's metabolic state** (cheap, annual) so PreChronic stops being invisible.
2. **Fund the proven PreChronic programs** (DPP-class lifestyle programs, A-grade evidence) at population scale.
3. **Shift the food environment** where evidence supports it, and run the trials where it doesn't yet.
4. **Close coverage gaps where cost per healthy year is lowest**, which is the strongest piece of every coverage proposal.
5. **Target drugs by cost per healthy year**, not by eligibility alone.
6. **Pay for healthy years**, measured on this scoreboard, so the loops in [03](03-system-dynamics.md) reverse.
7. **Treat external causes (G2) as health**, with their own levers.

Each element is scored separately so readers can see what it contributes. The portfolio is held to exactly the same rules as every other plan, including its weaker evidence.

## What happens next

- **v0.1:** pin the frontier values (F1, F2) and the gap decomposition (G1–G5) with sources.
- **v0.2:** model each archetype's effect on G1 and G3 in [Demeter](06-model.md), with uncertainty, and replace the preliminary table with modeled ranges.
- **Ongoing:** anyone can submit a specific plan (a bill, a white paper, a candidate platform) to be scored. See [09](09-scoring-a-proposal.md).

## Sources

- WHO Global Health Observatory, healthy life expectancy (HALE) by country.
- IHME Global Burden of Disease, HALE estimates.
- National Research Council and Institute of Medicine. *US Health in International Perspective: Shorter Lives, Poorer Health.* 2013.
- Chetty R, et al. *JAMA.* 2016;315(16):1750–1766.
- Dwyer-Lindgren L, et al. Inequalities in life expectancy among US counties, 1980 to 2014. *JAMA Intern Med.* 2017;177(7):1003–1011.
- Coverage evidence as cited in [04](04-levers.md).
