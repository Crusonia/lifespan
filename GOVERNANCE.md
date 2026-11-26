# Governance

## Purpose

Lifespan for All is a public benchmark. Its value depends on being trusted by people who disagree with each other. These rules exist to protect that.

## Maintainers

Maintained under the Crusonia GitHub organization. Carter Williams ([@jcarterwil](https://github.com/jcarterwil)) reviews and merges changes. Additional maintainers, including reviewers who do not share the maintainers' views, are a stated goal for v0.2.

## Conflicts of interest

The maintainers publish the [Food is Health](https://foodishealth.substack.com/) newsletter and invest in food, agriculture and health companies through Crusonia and affiliated funds. Some of those companies could benefit if upstream levers score well.

Because of that:

- The scoring rules apply identically to every proposal, and changes to them require public comment (below).
- Evidence grades follow the published rubric in [01 · Scoreboard](docs/01-scoreboard.md), not judgment calls about which levers are favored.
- The maintainers will not use the benchmark to score a specific company or product they have a financial interest in.
- Any contributor may request an independent review of a score or grade they think is biased.

## How the standard changes

| Change | Process | Version bump |
| --- | --- | --- |
| Typo, source fix, clarification | Pull request | None (patch) |
| New evidence, re-grade of a lever, new scored proposal | Issue + pull request, 7-day comment window | Patch |
| Change to a scoreboard definition (S1–S5), the frontier method, or the gap decomposition | Issue labeled `standard-change`, 30-day comment window, written response to every substantive objection | Minor (e.g. 0.1 → 0.2) |
| Change to the purpose or governance | Issue + 30-day window | Minor |

Every score names the benchmark version and model version it was produced with. Old scores are never silently edited; corrections are recorded in [CHANGELOG](CHANGELOG.md).

## Releases

Each tagged release freezes the scoreboard definitions, the pinned Demeter model version and the evidence tables, and is archived with a DOI so it can be cited.
