---
title: Birdhouse Project Schedule
authors:
    - name: Joe Starr
date: 2024-01-16
exports:
    - format: pdf
      template: curvenote
      logo: false
---

# Task Scope Description

A task in this project should:

-   Address at least one requirement.
-   Be individually schedulable.
-   Contain the following fields:
    -   Title: The title of the task.
    -   Task ID: The unique ID for the task.
    -   Due Date: The date for completion of the task.
    -   Assignee: Person to work the task.
    -   Requirements Satisfied: The requirement this task satisfies.
    -   Description: A description of the task.
    -   Completion Criteria: The closure condition of the task.

# Task Scheduling

## Task List

```{include} sections/task_list.md

```

## Critical Path

The project task and release network is as follows:

```{mermaid-py}
flowchart TB

    r1("Release 1: Blueprint Draft")
    r2("Release 2: Production Strategy Draft")
    r3("Release 3: Blueprint Final")
    r4("Release 4: Sample Run and Report")
    r5("Release 5: Production Strategy Final")

    t1("Task 1")
    t2("Task 2")
    t3("Task 3")
    t4("Task 4")
    t5("Task 5")
    t6("Task 6")
    t7("Task 7")

    t1 ---> r1
    t1 ---> t2
    t1 ---> t3
    t1 ---> t4

    t2 ---> r3
    t2 ---> t5

    t3 ---> r2
    t3 ---> t4

    t4 ---> r3

    t5 ---> r4

    t6 ---> r5
    t7 ---> r5

    r4 -.-> t6
    r4 -.-> t7


    r1-.->r2
    r2-.->r3
    r3-.->r4
    r4-.->r5

```

The critical path tasks for the project are:

-   1 [](#T1)
-   2 [](#T2)
-   3 [](#T3)

