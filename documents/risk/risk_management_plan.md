---
title: Risk Management Plan
authors:
    - name: Joe Starr
exports:
    - format: pdf
      template: plain_latex
      logo: false
    - format: docx
      template: curvenote
      hideFooter: true
    - format: md
---

# Risk Item Checklists

_This subsection describes the risk item checklist for the project. The risk item checklist is intended to be guiding questions to help you develop risk cards. What is presented here should be considered a template and should be added to / changed for the specific project being developed._

* What current situations might have future negative consequences for the project? 
* What current risk strategies may fail?
* What events have happened in past projects that might appear in this project?
* What events may be caused by human resources?
* What events may be caused by technological resources?

# Risk Likelihood

_This section describes the categorization of risk likelihood. Presented here is
a sample likelihood table. The table describes likelihood levels used for the
project._

| Likelihood Level |                             Description                             |
| :--------------: | :-----------------------------------------------------------------: |
|        1         |        The likelihood that the event occurs is almost zero.         |
|        2         |             It is likely that the event will not occur.             |
|        3         |        It is more likely than not that the event will occur.        |
|        4         | The likelihood that the event occurs is almost one hundred percent. |

[@williamsPuttingRiskManagement1997]

# Risk Impact

_This section describes the categorization of risk impact. Presented here is
a sample impact table. The table describes impact levels determined by worst
impact of one of the three legs of the project triangle._

| Impact Level |                                     Cost Impact                                      |                                 Schedule Impact                                 |                                      Quality Impact                                       |
| :----------: | :----------------------------------------------------------------------------------: | :-----------------------------------------------------------------------------: | :---------------------------------------------------------------------------------------: |
|      1       | If the event was to occur the project will go over budget by more than **percent**%. | If the event was to occur the project will be late by more than **time frame**. | If the event was to occur the project quality will need to be lowered by **description**. |
|      2       | If the event was to occur the project will go over budget by more than **percent**%. | If the event was to occur the project will be late by more than **time frame**. | If the event was to occur the project quality will need to be lowered by **description**. |
|      3       | If the event was to occur the project will go over budget by more than **percent**%. | If the event was to occur the project will be late by more than **time frame**. | If the event was to occur the project quality will need to be lowered by **description**. |
|      4       | If the event was to occur the project will go over budget by more than **percent**%. | If the event was to occur the project will be late by more than **time frame**. | If the event was to occur the project quality will need to be lowered by **description**. |
|      5       |               If the event was to occur the project is unrecoverable.                |             If the event was to occur the project is unrecoverable.             |                  If the event was to occur the project is unrecoverable.                  |

[@boehm1989software]
[@williamsPuttingRiskManagement1997]

# Risk Severity

_This section describes the concept of risk severity the project will adopt.
Given here is a sample description for defining severity._

| Likelihood Level/Risk Impact |     1      |   2    |   3    |   4    |    5    |
| :--------------------------: | :--------: | :----: | :----: | :----: | :-----: |
|              1               | Acceptable |  Low   | Medium | Medium | Extreme |
|              2               |    Low     |  Low   | Medium |  High  | Extreme |
|              3               |    Low     | Medium | Medium |  High  | Extreme |
|              4               |   Medium   |  High  |  High  |  High  | Extreme |

[@williamsPuttingRiskManagement1997]

Risk analysis activities should be prioritized by severity in the following
order:
1. Extreme
2. High
3. Medium
4. Low
5. Acceptable

_The level of detail required for the risk management and mitigation section
of the risk card is project specific and should be described here._

# Risk Table

```{include} sections/risk_table.md

```

# Resources 

- https://static.e-publishing.af.mil/production/1/af_se/publication/dafpam90-803/dafpam90-803.pdf
