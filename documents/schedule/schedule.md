---
title: Project Schedule
authors:
    - name: Joe Starr
date: 2024-01-16
exports:
    - format: pdf
      template: curvenote
      logo: false
    - format: docx
      template: curvenote
      hideFooter: true
    - format: md
---

```{note}
One of the critical steps in planning and completing a project is the
development of a project schedule. Having a project schedule allows for a team
to see and feel progress towards completion. The project schedule also allows
for effective management of risk to the project(and milestone) delivery date.
as well Tasks describe the atomic work products of the project.
```

# Task Scope Description

```{note}
This section documents what the "shape" of a task is for this project. What
should the "size"/scope of a task be? What is too big/small of a task for this
project? What information must be included in each tasks (fields in the card)?
A sample task card can be found in the `sections/task_cards/task_card.md`.
```

# Task Scheduling

## Task List

```{note}
This subsection contains the list of all task cards for the project.
```

```{include} sections/task_list.md

```

## Critical Path

```{note}
This subsection documents the critical path for tasks in the project. The
prioritization of tasks is a common pain point for projects. Common
prioritization strategies are:

*   Do the hard things first.
*   Do the easy things first.
*   Do the fun things first.

each of these prioritization strategies comes with it's own issues.
The common thread that causes pain is that none of these strategies
"see" the global project scope. One tool that allows you to
visualize the global project scope is a task network. Consider a
given task $A$, in order to complete $A$ tasks $B$ and $D$ need to
be completed. Further, for task $D$ task $E$ needs to be completed.
We can draw a network of these tasks:


:::{mermaid-py}
flowchart LR

    pe("Project Delivery")
    m1("Milestone 1: Draft")

    E-->D
    D-->B
    B-->m1
    B-->A
    A-->pe
    C-->m1
    F-->pe

    m1-.-> pe
:::

Once we have drawn the task network we can identify the "critical path" or
"critical paths" for the project. The critical path is the collection of tasks
that, if they are late, hold the most risk to the timing of project completion.
Assume each task takes a day and is underestimated by 50 percent. Under these
conditions tasks $C$ and $F$ each have a half day of unplanned effort meaning
we will still hit our deadline for the `Milestone 1: Draft` and `Delivery`.
However the path $E\to D\to B\to A$ has a day and a half extra effort for
`Milestone 1: Draft` and two whole days for `Delivery`. These delays would push
both delivery dates past due. From this example we can see that each of the
tasks $E,\,D,\,B,\,A$ are the critical path for the project.
```
