---
id: 10-20-24-assessment
aliases: []
tags: []
---

# Risk Management
process of identifying, assessing, prioritizing, addressing risk

# Risk Assessment Key Questions
1. What could happen? Threat event
2. How bad could it be? Threat impact
3. How often could it happen? Frequency
4. How certain are answers to first 3 questions? Recognition of uncertainty (key issue)

# Risk Assessment
Provides a measurement of risk

Represents:
- Assignment of value to assets
- Threat frequency
- Consequence

Also Consider:
- Simple cost of replacing info (if stolen)
- Cost of replacing supporting software
- Loss of info's confidentiality
- Loss of availability
- Loss of integrity

# Risk Assessment Approaches
| Quantitative | Qualitative |
| -------------- | --------------- |
| Numerically-Based (Hard) Data | Financial Scenario-Based (Soft) Data |
| Financial Data (Objective) | Scenario-Oriented (Subjective) |

## Quantitative
Assigns independently objective numeric numbers (monetary value) to all elements of the risk analysis
- Risk analysis requires calculating quantity of asset you are protecting

### Exposure Factor (EF)
Measure of magnitude of loss/impact on value of asset
- 0%-100%

### Single Loss Expectancy (SLE)
Total loss expected from single incident
SLE = Asset Value * Exposure Factor

### Annualized Rate of Occurrence (ARO)
Frequency that threat is expected to occur per year (not probability)

Example:
- Once in 10 years
- ARO = 1/10 = 0.1

### Annualized Loss Expectancy (ALE)
Expected loss for a year
ALE = Single Loss Expectancy * Annualized Rate of Occurrence

Example:
- SLE = $1,000,000
- Rate of Occurrence is once in 10 years

ALE = \$1,000,000 * 1/10 = \$100,000

## Qualitative
Does not attempt to assign numeric value, but is scenario oriented

Example:
"Not changing the default password on the web server is a **severe** security issue"

### Qualitative Risk Assessment

#### Probability
Likelihood a threat will exploit a vulnerability

#### Impact
Negative result if a risk occurs

#### Risk Level
Risk Level = Probability * Impact

### Impact Matrix

Likelihood is rows, Consequences is columns

Likelihood:
1) Rare
2) Unlikely
3) Possible
4) Likely
5) Almost certain

Consequences:
1) Insignificant
2) Minor
3) Moderate
4) Major
5) Catastrophic

# Server Risk Report
- Type of data stored on server
    - How sensitive is the data?
- Accessibility of server
    - Is it internet facing?
- Critical function
    - Is it the company's web server?
