---
type: fleeting
date: 2026-06-25
status: prep (interview Tue 30/06 11:00, David Homfray / CTO)
tags: [career, interview, space-solar, isam, wedge]
---
# Space Solar interview prep (Tue 30/06 11:00, David Homfray / CTO)

Initial draft. The bullseye application converted to a CTO interview in three days. This is the one that matters.

## Facts / logistics
- **When:** Tue 30/06, 11:00. **Interviewer:** David Homfray, CTO. **Role:** Autonomous Assembly and Robotics Engineer (Harwell, hybrid, no visa). WFH that morning (consultancy brief meeting moved to the afternoon).
- **Read the room:** it is the CTO, so expect technical depth + mission/culture fit, not HR screening. The job is to show I am technically real and that I genuinely get the mission.
- **TO CONFIRM:** format (video vs in person at Harwell), length, whether anyone else joins.
- **Setup (if video):** quiet space, decent light, camera/mic test, listing + this doc + CV to hand, water.

## One-line pitch (why me, why this)
In-space assembly is the thing I want to build my career on, and Space Solar is one of the few places doing it for real. My MSc project was an autonomous robotic assembly cell, my dissertation was decentralised multi-robot coordination, and I am hands-on across mechanisms, electronics, firmware and software. Km-scale in-orbit assembly is exactly where I want to be.

## What excites you (have a genuine, specific version ready)
- The in-space assembly problem itself: AlbaTRUSS (dual-arm robotic truss assembly with UKAEA) and the leap to km-scale structures. This is the "A" in ISAM, the exact thing I find most interesting.
- Building real hardware that has to work, terrestrial-prototype-first and then space. Matches how I like to work: hands-on, mechanism-led.
- Mission resonance: I want to spend my career on in-space construction, and this is a front-row seat. (Name AlbaTRUSS, name the wedge. Specific, not gushing.)

## Stories to lead with (pick 2-3; situation -> what I did -> result)
- **RASID autonomous cell (flagship):** built and integrated a 5-DoF autonomous cell that detects, manipulates and racks a print bed; authored the C++ `ros2_control` interface and the physical end-effector; 90.3 s hardware-in-the-loop cycle vs a 120 s target. Autonomous robotics + integration + getting hardware to actually work.
- **Dissertation, decentralised multi-robot coordination:** extended a distributed-auction framework for task allocation across mobile manipulators. Maps straight onto their "robotic ecosystems coordinating with other systems, digital twins, shared world models." (Be honest it is validation-in-progress if pushed.)
- **Team Bath Roving arm (Technical Lead):** 6-DoF arm, joint electronics, embedded motion, custom reducers. Leadership + hands-on hardware breadth.
- **Mechanism design (reducer + the live RA task):** the plate-harmonic reducer R&D, and now a current RA task on actuator-to-finger motion-transfer mechanisms. Shows ongoing, hands-on mechanism work, which is their bread and butter.

## Honest gaps + how to frame (do not hide them)
- **No professional space-industry years:** lead with built, working systems, and a track record of teaching myself unfamiliar hardware fast (micro-ROS on STM32, `ros2_control`, the reducer test protocol, each from scratch).
- **No NVIDIA Isaac Sim:** I have Gazebo and SolidWorks (2 of their 3); Isaac Sim is a quick pick-up.
- **No in-space deployment:** terrestrial rigs only, which is exactly where this role starts.

## Questions to ASK (diligence + gets the info I need)
*Mission / technical (genuine):*
- What does the robotics roadmap look like from terrestrial prototypes through to the 2028 in-space assembly demo?
- How does the assembly-robotics team interface with the power-beaming / CASSIOPeiA side?
- What would the first 6-12 months in this role actually look like, and how much is terrestrial vs space-facing?
- Where is the hardest open robotics problem right now, the bit you most need solved?

*Company / stage (lighter touch at first interview):*
- Where is the company in its funding journey, and what is the next big milestone?
- How is the robotics team growing?

## The gates (from the due diligence; mostly OFFER-STAGE, not first interview)
- **Do NOT lead with pay.** If salary comes up: anchor around £45k, the cash must clear the £40k floor, value any equity / growth-share at roughly zero (high-risk startup). See `1-fleeting/2026-06-16 Job-search parameters.md`.
- **Runway / cash questions** (has the seed closed, how much, runway in months) are for the OFFER stage, asked directly then. At the interview, the lighter "where are you in the funding journey" version is enough.
- Hold the high-risk / high-mission framing in my own head: this is a bet, so the cash salary has to stand on its own. Full report: `job_applis/space-solar/due-diligence.md`.

## Prep tasks (before Tuesday)
- [ ] Research **David Homfray** (LinkedIn, any talks / papers / interviews). Know the CTO's background and what he cares about.
- [ ] Confirm the interview **format + length**.
- [ ] Re-read the **listing** + the **DD digest** + the **offer-gates**.
- [ ] Rehearse **out loud**: the "why me", the "what excites you", and 2-3 stories. (The out-loud rep got squeezed for Lunasa; protect it this time.)
- [ ] Skim recent **Space Solar news** (HARRIER, AlbaTRUSS, the National Grid project, NATO DIANA) so I can reference current work.

---
*Related: [[2026-04-22-isam-job-targets]] · [[founding-strategy-brief]]*
