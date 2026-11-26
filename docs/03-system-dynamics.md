# 03 · System dynamics

Health outcomes are produced by a system: stocks of people in different health states, flows between them, and feedback loops that keep the flows where they are. Reforms that ignore the loops tend to get absorbed by them.

## The stocks

```
            onset                 progression
 Healthy ───────────► PreChronic ─────────────► Chronic ──────► Death
    ▲      (IR / prediabetes)  │      (T2D, CVD, CKD …)  │
    └──────── remission ───────┘                         │
                                    (managed, rarely reversed)
```

- **Healthy:** no metabolic dysfunction.
- **PreChronic:** insulin resistance or prediabetes. Large, mostly undiagnosed, and partly reversible.
- **Chronic:** diagnosed chronic disease. Expensive, usually managed rather than reversed.

Healthy life expectancy is mostly determined by **how fast people flow out of Healthy** and **how many flow back from PreChronic.** Care delivery mostly acts on the far right of the diagram, slowing Chronic → Death. That buys life expectancy, often at high cost per year, and less healthy life expectancy.

## The loops

| Loop | Type | How it works | Effect on healthy years |
| --- | --- | --- | --- |
| **Cheap calories** | Reinforcing | Commodity crop economics and processing scale make energy-dense, nutrient-poor food the cheapest calories. Demand grows, scale grows, prices fall further. | Speeds Healthy → PreChronic |
| **Paid for disease** | Reinforcing | Fee-for-service pays for treating Chronic, not for keeping people Healthy. Revenue funds more treatment capacity, which needs more patients. | Capacity follows disease, not health |
| **Invisible middle** | Reinforcing | PreChronic is rarely measured or reimbursed, so no one is accountable for it. With no measurement, no market forms to serve it. | PreChronic grows unmanaged |
| **Wrong pocket** | Balancing (blocks change) | The payer who funds prevention usually isn't the payer who captures the savings (people switch insurers; Medicare inherits the costs at 65). | Prevention is under-bought |
| **Signal to demand** | Balancing (can drive change) | When people see their own data trend, some change what they buy and eat. Demand shifts supply. | Can slow Healthy → PreChronic |
| **Proof to price** | Reinforcing (if started) | Measured outcomes let buyers pay for results. Payment draws capital and capacity into what works. | Can scale whatever is proven |

The last two loops are the levers the [Food is Health](https://foodishealth.substack.com/) work has focused on: people paying for better signals, and a scoreboard that lets buyers pay for what changes them.

## The delays

- Diet to biomarkers: weeks to months.
- Biomarkers to disease incidence: years.
- Disease incidence to mortality: years to decades.
- Supply-chain response to a demand shift: seasons to years.
- Workforce and capacity: 5–10 years.

**This is why reforms disappoint inside a 10-year budget window.** A lever can be large and still look small at year 10. [S4](01-scoreboard.md) exists so long-delay levers aren't judged by short-window accounting, and so short-window levers aren't oversold as permanent.

## Who wins and who loses

Shifting people from Chronic back toward Healthy moves money. Industries shift rather than simply shrink or grow:

- Health care loses chronic-disease volume, and gains care in added years of life.
- Pharma and food both gain or lose depending on which lever works.
- Payers gain only if they hold the person long enough to capture the savings.
- Households gain healthy years and, often, income.

These rigidities explain why a lever with good evidence can still fail to spread. Demeter's [stakeholder rigidities](https://github.com/Crusonia/Demeter/blob/main/docs/wiki/Stakeholder-Rigidities.md) page tracks them.

## Status

The stock-and-flow structure for Healthy / PreChronic / T2D is implemented in Demeter. The loops above are **premises**. Each one needs its own evidence and equations before it is activated in the model. They are listed so they can be tested, not because they are established.
