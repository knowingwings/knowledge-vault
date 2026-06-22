---
type: fleeting
date: 2026-06-22
status: DEFERRED 22/06 — abstract drafted (v2, grounded in the dissertation); NOT submitting to i-SAIRAS 2026 (cost/feasibility, see opportunity note). Holding as the foundation for summer validation work + a later venue.
deadline: 2026-06-24
tags: [paper, isairas, wedge, isam, q3]
---

# i-SAIRAS 2026 abstract — draft

Working draft for the i-SAIRAS abstract (see `2026-06-16 i-SAIRAS 2026 abstract — opportunity (decision pending).md`). Honest WIP framing per that note + founding brief §2.5 (BEng did not validate its core claims; "a direction to prove"). **v2 grounded in the actual dissertation** (`dissertation-tlh+distributed_auction_algorithm.pdf`).

## Title (primary)
**Communication-Robust Decentralised Task Allocation for Multi-Robot In-Space Assembly: A Distributed-Auction Approach**

Alternatives:
- Validating a Distributed-Auction Approach to Decentralised Task Allocation for In-Space Assembly
- Toward Fault-Tolerant Decentralised Task Allocation for Multi-Robot In-Space Assembly

## Abstract (v2, ~285 words)

In-space assembly and servicing increasingly envisages teams of cooperating robots constructing and maintaining large structures in orbit. At scale, centralised task allocation is both a single point of failure and a communication bottleneck, while the orbital setting imposes intermittent, latency-bound and bandwidth-limited links between agents. Allocation that is decentralised and degrades gracefully under these conditions is therefore a mission-critical capability.

This work investigates a distributed auction-based approach to task allocation for teams of mobile manipulators, treating a dual-manipulator system as a ground analogue for autonomous agents that must divide assembly and inspection tasks in orbit without central control. Building on the Zavlanos auction framework, it adds a time-weighted consensus protocol, a heartbeat-and-progress failure-detection and recovery mechanism, and collaborative task handling, with theoretical convergence and optimality bounds.

An initial simulation study established convergence to balanced, stable allocations and communication cost scaling linearly rather than quadratically with task count, with task count the dominant performance factor. Its central guarantees were left open, however: the measured optimality gap far exceeded the theoretical bound, the adaptive bid-increment mechanism showed negligible effect, and implementation issues in the recovery logic and communication model confounded the evaluation of fault tolerance under delay and packet loss.

We are extending the work into a focused validation study that resolves these issues directly: corrected price-update and recovery mechanisms, and a controlled simulation campaign characterising convergence, optimality gap and recovery under realistic communication degradation, with a path to hardware-in-the-loop deployment. The aim is an evidence-backed account of whether decentralised auction methods deliver the fault tolerance and near-optimality their theory promises, and where they remain unsuited to autonomous in-space construction.

## Suggested keywords
multi-robot systems; decentralised / distributed task allocation; auction algorithms; in-space assembly (ISAM); fault-tolerant coordination; mobile manipulators.

## Grounding facts (from the dissertation, for accuracy)
- Full title: "Employing a distributed auction algorithm in decentralised mobile manipulators for independent and collaborative assembly tasks" (BEng, U. Gloucestershire, 2025).
- Genuinely clean results: convergence to balanced allocations (~iter 30 for 10 tasks, ~25 for 15); near-linear makespan vs task count; task count the dominant factor (R² = 0.976 on message count); message complexity O(K) vs O(K²) centralised.
- Open / unvalidated (do NOT present as wins): MATLAB optimality gap ~43 vs 2ε bound; ε showed negligible effect; recovery mechanism logged zero recovery time (detection-logic bug); packet-loss and delay "robustness" suspected to be simulation implementation errors (message count fell under loss; flat delay curve flagged as possible logic error). ROS2/Gazebo validation was abandoned in the BEng (platform issues) — MATLAB + Python only.
- Future work the diss itself names: recovery redesign, convergence-criteria enhancement, parameter auto-tuning, hardware validation.

## Open decisions / before submitting
- **Portal logistics:** verify the exact word/character limit on the submission portal and complete the MANDATORY pre-registration; trim/expand to the stated limit.
- **Scope = a commitment:** submitting commits to presenting in Cologne (3-6 Nov); promises validation work delivered Sept-Oct (after the dissertation wraps). Already decided "go" + willing to present — a confirm, not a re-decide.
- **Author/affiliation line:** Thomas Le Huray, University of Bath (work originated in the BEng at Gloucestershire). BEng supervisors were Dr Muhammad Babar Rasheed and Prof. Shujun Zhang — decide whether to credit them (co-author/acknowledgement) given this is an independent extension, or submit solo / with Ioannis.
- **GH repo:** not needed for the abstract (dissertation is enough). It IS the key input for the Oct validation work — that is where the price-update and recovery-detection bugs the diss flagged get located and fixed.
