---
type: fleeting
date: 2026-06-11
status: active — slot to confirm, prep pending
tags: [career, lunasa, interview, isam]
---

# Lunasa — Graduate Robotics Engineer: interview request (received 11/06)

Application submitted 26/04; interview request landed 11/06 while in the TBRo lab. Short video interview (Teams), leadership member + engineer attending. Framing per the email: "learn more about you, your background, and what excites you" + intro of company vision/development/projects — a screening + mutual-fit call, not a technical grilling (prep accordingly, but have one technical story loaded).

## Slot analysis (vs the consultancy calendar)
| Offered slot | Clash check | Verdict |
|---|---|---|
| Mon 15th 2-5pm | **AB site visit (Bradford on Avon)** | Out |
| Tue 16th 10-12 | Daily labspace co-working 09:30-12:30 | Out (skipping own meeting structure in week 2 as PM = bad look) |
| Wed 17th 3-5pm | Supe meeting 14:00 w/ AB joining + charters due that day | Possible but high-load day, rushed |
| **Thu 18th 2-5pm** | Clear (co-working ends 12:30) | **CONFIRMED** |
| Thu 18th 10-12 | Daily co-working again | Out |

**CONFIRMED SLOT: Thursday 18 June, 14:00-14:45 (45 min), Teams.** Reply sent. Before the call: test camera/mic/backdrop, water to hand.

## Salary position
- See the full reusable note: `1-fleeting/2026-06-16 Job-search parameters.md`.
- Short version for THIS call: **screening — don't raise salary.** If they raise it: target £40-45k (open on the right package), floor £40k, move on. Private medical (ADHD-coverage) is the effective must-have to check at offer stage.

## Company recon (done 16/06)

**Lúnasa Space** — UK (London) startup in **in-orbit servicing & in-space transportation** (dead-centre ISAM — the founding-brief domain).
- **Core tech:** autonomous **Rendezvous & Proximity Operations (RPO)** + **R-GNSS relative navigation** (high-precision relative nav).
- **Products:** Reusable **Orbital Transfer Vehicle** (move satellites to high/unattainable orbits); **VIA** (dual-stage automated "miniature space station" — last-mile delivery + life extension, reusable); **Cosmic Labs** (shared *rideshare* payload platform — lowers mission cost; **first demo mission targeted end-2026** carrying 3 UK payloads; won a **£30k SECP sprint R&D grant**); **StarLogic** RPO kit.
- **Projects:** **ARGUS** (StarLogic RPO integrated into Space Machines' GEO-Viper inspection sat); **RANGER** (R-GNSS relative nav TRL 5→7 with a servicing satellite).
- **THE HEADLINE — acquired by Infinite Orbits, March 2026.** Lúnasa is now part of **Infinite Orbits** (Toulouse, France; founded 2017; GEO in-orbit servicing — **Orbit Guard** SSA/inspection nanosats (first commercial nanosat in GEO, 2023) + **Endurance** 750kg life-extension docking servicer, inaugural mission 2026, fits >70% of end-of-life GEO sats). Infinite Orbits **raised €40M (Nov 2025)** and has **SES + CNES** contracts. So Lúnasa went from independent startup → part of a well-funded European GEO-servicing group.

**What the recon changes:**
- **The acquisition is the single best recon flex.** A genuine, company-level question about it (how the role/roadmap/team evolves post-acquisition; UK-London vs Toulouse footprint) signals real homework. Don't lead with it as a worry — frame as interest in the combined trajectory.
- **Role mapping (be honest):** "Graduate Robotics Engineer" at an RPO/servicing company → "robotics" here likely means **autonomy for rendezvous/proximity/docking + capture, GNC-adjacent**, not manipulator arms. **Strongest bridges: autonomy + full-stack integration** (ros2_control C++ HW interface, micro-ROS, sim-to-hardware perception/YOLO-pose), systems-architect mindset, hardware bring-up/test. The rover-arm/reducer/manipulation work is *adjacent* (docking/capture is manipulation-flavoured) but not their core — lead with autonomy/integration, position manipulation as transferable, don't oversell it as a match.
- **Mission fit is genuine, not performed:** this is exactly the ISAM sector the whole trajectory targets. Authentic hooks: (a) in-orbit servicing/life-extension as the near-term ISAM beachhead; (b) Cosmic Labs "democratising access to orbit" rideshare angle; (c) RPO autonomy as the hard problem.
- **Location/visa:** London role (UK — fine), but Toulouse parent → worth knowing if role could shift/involve France (ties to relocation appetite + the founding-brief EU angle). A question, not a worry.
- Note: applied to BOTH Robotics Eng + GNC Eng (26/04); the GNC one is silent. Given their RPO/nav core, GNC is very central to them — fine to acknowledge interest in both if it comes up.

## Interviewers (confirmed 16/06)
- **Amin (= Amin Chabi) — Founder & CEO** of Lúnasa (the "leadership team member"). Cranfield Astronautics MSc; built the company explicitly around **sustainability / satellite life-extension / debris**. Implication: founder vets passion + mission-fit personally; he has a nose for rehearsed/insincere → be genuine and measured, not polished-corporate. His own mission framing = the same thing as my point A, so the alignment is real, not performed.
- **Alia A.** and **Sebastian R.** — almost certainly the engineering side (the "member of engineering"). Surnames given as initials only.

## "What excites you" answer (FINAL, 16/06 — measured register, talking points not a script)
> **Why servicing:** "The reason servicing interests me is fairly practical. We've treated satellites as basically disposable for decades, and that doesn't really scale — you can't keep launching replacements and leaving the dead ones up there if space is going to be something we actually depend on long-term. Life-extension and servicing is the part that makes the rest sustainable, so it seems like one of the more important problems to be working on right now."
>
> **Why Lúnasa:** "Lúnasa's the one I kept coming back to. The RPO and relative-navigation side is the hard part of servicing, which is the kind of problem I'd want to work on, and Cosmic Labs is a sensible way to bring the cost of getting to orbit down. With the Infinite Orbits acquisition it also looks like the work's moving toward actually flying, rather than staying at the research stage."
>
> **What I'd bring:** "I tend to work across the stack rather than sitting in one layer — comfortable on the hardware/mechanism side and the autonomy/software side, and the part I've enjoyed most is the integration between them. On a recent group project I wrote the control interface that bridged the motion-controller firmware, the higher-level software, and the physical end-effector — getting the whole thing working together. For a team trying to get RPO systems onto real spacecraft, that full-stack flexibility seems useful."

*Coaching notes: vision implied through reasoning, not declared ("humanity's next step" belief stays internal — reads more genuine understated). Both-sides claim anchored to integration + the concrete ros2_control example so it lands as a strength, not jack-of-all-trades. Don't memorise verbatim — hit the beats in your own words.*

## Question bank (FINAL, 16/06 — 45-min call, so most of these are askable)
*Arc: strategic → technical → role/growth. ★ = must-ask (recon flex). Open with #1, #5, a technical (#3/#4 by who's talking), #6; the rest are live given 45 mins.*

**Strategic (aim at Amin / founder-level):**
1. ★ How has the Infinite Orbits acquisition changed things day-to-day — does the London team keep its own roadmap and identity, or integrate tightly with the Toulouse side?
2. With the first Cosmic Labs demo targeted end-2026, what part of that timeline are you most focused on now — biggest risk to getting it flying?

**Technical (aim at Alia / Sebastian):**
3. How much of the RPO/autonomy stack is built in-house vs leveraged, and what does the sim-to-flight validation pipeline look like?
4. On relative navigation — RANGER taking R-GNSS from TRL 5 to 7 — where are the hard problems right now?

**Role / team / growth:**
5. How does a graduate engineer's work span the stack here — own a vertical slice across hardware + autonomy, or specialise by layer?
6. What does the first 6-12 months look like for someone joining at this level — what would you want me contributing to first?
7. What makes someone successful on a team this size?

**Salary: NOT in the bank.** Screening call — don't raise it. If they do: state the range (£40k floor, £50-60k ideal) plainly, move on. Negotiate at offer stage.

## STAR stories

### PRIMARY — RASID gripper HITL layer *(best fit: HITL = how you validate flight autonomy you can't test in orbit; maps to their sim-to-flight pipeline)*
- **S/T:** "On a group project (RASID) we needed a physical end-effector. The brief only required the hardware to exist, but I was already building the simulation stack, so I went further — integrated the real end-effector directly into it and architected the whole thing so hardware and simulated components were interchangeable."
- **A (decision beat):** "The part I'm proudest of is the containerisation. I built the stack under Docker Compose so every element was segmented — any hardware piece (the real Pico-based end-effector: servo + pressure sensor + microswitch, bridged via a C++ ros2_control interface to the STM32 motion controller) could be swapped in for its simulated counterpart with almost no friction. So you could run anything from full-sim to full-HITL, mixing real and simulated parts as needed."
- **R:** "It was the only fully functional demo in the cohort, and drove the top presentation + report grades. It held together *because* of that architecture — a monolithic build would've been far harder to integrate and test."
- **Coaching:** lead with the *architecture + went-beyond-the-brief*, NOT "module required it / wanted marks" (that's origin, not substance). Grades = validation, not motivation. **The mapping (know it, deploy if asked about validating RPO):** swap-real-for-sim-incrementally is exactly how flight hardware is matured against the system — a built example of their own pipeline mindset.

### SECOND — reducer / system characterisation *(the methodology-carrying angle: reducer + now AB Dynamics)*
- **S/T:** A fresh, novel reducer design with completely unknown real-world behaviour — needed to verify actual performance against the theoretical reduction value *before* committing the design to CNC machining.
- **A + the decision beat:** Built a bespoke closed-loop bench test stand from components on hand (NEMA 23 + TB6600, Arduino Mega, 600 PPR quadrature encoder, microstep control) with a Python host (live plots, logged CSV/PNG), running a protocol across gear-ratio, backlash, positional repeatability, speed sweep, and 500-cycle endurance. **Why this way:** deliberately a *cheap, rough verification with parts on hand before the expensive, irreversible CNC step* — putting a test gate in front of the point of no return, where design changes were still free. (Engineering-judgment beat — knowing *where* to spend verification effort.)
- **R:** Results pending — characterisation test scheduled for Wed 17/06 PM (any data = upside to mention fresh; absent it, the judgment beat carries the story).
- **The close (methodology, not one-off):** "...and it's the same empirical-characterisation approach I'm now applying on the AB Dynamics consultancy — measuring how a system actually behaves versus how it's specified to." Ties to current industry work + maps to their TRL/validation world (RANGER = TRL 5→7 is exactly this).

## Prep plan (weekend, before Mon)
- [x] **Lunasa recon:** current projects, vision, recent news, who the leadership/engineering attendees might be (LinkedIn). Tie to why-ISAM narrative.
- [x] **The "what excites you" answer** — this is the actual exam. Draft + say it out loud. The ISAM trajectory + hardware bias + rover arm story; force the "so what?" layer.
- [x] **Question bank (the proven method):** 6-8 questions arced company-state -> engineering -> role shape -> growth. At least one that shows real recon.
- [x] **One technical story loaded** (rover arm or reducer, STAR shape, with the data-driven why).
- [x] **Logistics:** Teams link comes after confirmation; test camera/mic/backdrop in the flat.
- Weekend rebalance: interview prep takes priority over MBSE course if they collide — MBSE can shrink to one session.

## IMPORTANT — they have the PRE-sweep CV (checked 11/06)
The application went in 26/04, a month before the accuracy sweep (26/05). `job_applis/lunasa/RE-role/cv.typ` contains all four claims later corrected:

| What Lunasa's copy says | The swept truth (answer from THIS) |
|---|---|
| Reducer test stand "ported to RP2350 Pico 2W" | Stand runs on Arduino Mega 2560; Pico port was planned, not done |
| Vapormatt 2025: "Led refurbishment... developed PLC-based control on a Siemens S7-1200... ran characterisation and validation campaigns" | **Scoped** the conversion: defined control architecture, specified controller migration, completed 3-phase drive integration; **commissioning handed over at placement end**. Siemens S7-1200 = BEng module project, not Vapormatt |
| Polar: "cut setup time by 40%" | Metric never measured — say "replaced the manual drawing work"; no number |
| Polar: "Integrated hardware and software for PCB test equipment... production-ready code" | Validated self-contained PCB test units at the electronics level; the Python work was the parametric jig-drawing generator |

**Handling rule:** read their copy once before the call so you know what they're looking at, then answer every question from the swept reality, plainly and confidently. Interviewers don't diff your words against the PDF for phrasing deltas — the only failure mode is *re-asserting* an inflated claim under questioning. If a conflict surfaces directly ("you ported it to the Pico?"), matter-of-fact precision wins: "It runs on a Mega — the Pico port was on the roadmap but I focused on the characterisation protocol instead." Zero drama, and it reads as exactness, not retreat.

## Context
- First interview of the season — and the door was opened by the *pre-sweep* CV (applied 26/04, sweep was 26/05); the corrected story is what walks through it.
- Lunasa applications were the first of Q2 (two roles, 26/04); the GNC one stays silent for now.


---
*Related: [[2026-04-22-isam-job-targets]] · [[2026-06-16 Job-search parameters]] · [[founding-strategy-brief]]*
