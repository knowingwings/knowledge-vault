---
type: fleeting
date: 2026-06-25
status: prep (interview Tue 30/06 11:00 Teams, David Homfray / CTO)
tags: [career, interview, space-solar, isam, wedge]
---
# Space Solar interview prep (Tue 30/06 11:00 Teams, David Homfray / CTO)

The bullseye application converted to a CTO interview in three days. This is the one that matters. *(Updated 29/06 with live research on Homfray + Space Solar, and the sharpened answers.)*

## Facts / logistics
- **When:** Tue 30/06, 11:00. **Format:** Teams video call (confirmed). **Interviewer:** David Homfray, CTO. **Role:** Autonomous Assembly and Robotics Engineer (Harwell, hybrid, no visa). WFH that morning.
- **Read the room:** it is the CTO, so expect technical depth + mission/culture fit, not HR screening. The job is to show I am technically real and that I genuinely get the mission.
- **Still to confirm (minor):** length, whether anyone else joins.
- **Setup:** test the Teams link/app in advance (audio + the app-vs-browser prompt); quiet space, decent light, camera/mic check; join 2-3 min early; CV + listing + this doc + question bank glanceable off-camera (second screen or printed); water; notifications off.

## THE FRAME: who Homfray is and what he values (29/06 research)
**He is a fusion engineer, not a space or robotics specialist.** ~14 years at UKAEA Culham, including Engineer-in-Charge of JET (the Joint European Torus) - operating large, complex, expensive, hard-to-access machines under tight constraints, full lifecycle. MSc in Astronautics (Cranfield). Moved to space in 2020 (Satellite Applications Catapult), co-founded Space Solar in 2022. CEng, CPhys, FInstP; no PhD ("Mr", not "Dr").

**His signature worldview (engage him here):**
- "It's the least hard thing I've built. We've done the maths and the physics... it's engineering, not new physics." / "I just want to be Toyota. I just want to be Samsung." The hard part is *manufacturing and integration at scale*, not novel science.
- Manufacturability-first: "weight designs based on manufacturing capabilities," "launch many, not one," "modules that plug together like Lego."
- Robotic in-space assembly is the enabling capability and a spillover platform (orbital manufacturing, datacentres, defence).
- Team: inquisitive doers, tight timelines, diversity of thought, "too big for one company to own." (On HARRIER: "I set the team such a short time frame and they surpassed all our expectations.")

**So I lead with:** manufacturability, terrestrial-prototype-first, end-to-end systems integration - NOT the autonomy/ML cleverness. His JET background means analogies to operating complex hardware you can't service once deployed (= in-space) will land.

## Current Space Solar facts (so I can reference live work)
- **AlbaTRUSS** (May 2025): dual-arm robotic in-space-*assembly* proof-of-concept with UKAEA RACE at Culham - assembled a scaled truss bay on the ground. Literally the wedge. Homfray: "a milestone... for the future of large structures in space, for everything from manufacturing to datacentres to energy infrastructure."
- **OSPREY Builder:** their autonomous in-orbit assembly system, the centrepiece of their NATO DIANA 2026 defence pitch (Resilient Space Operations track).
- **HARRIER** (Apr 2024): world-first 360-degree wireless power-beaming demo (Queen's Belfast), ~0.5 m, retrodirective, no moving parts.
- **CASSiDi** (2025): ~£1.7M, 18-month design study (UKSA + DESNZ), confirmed satellite mass targets achievable. **CASSIOPeiA** architecture (Ian Cash, chief architect): ~1.7 km aperture, ~2 GW/satellite, no moving parts.
- **National Grid** terrestrial wireless-power project (Feb 2026, early feasibility). **Magdrive** propulsion MoU (Mar 2025). **Lonestar** orbital-datacentre LOI (Jun 2026).
- **Leadership:** co-CEOs Martin Soltau + Sam Adlen, CTO Homfray, chief architect Ian Cash. Chair Stuart Martin (ex-Catapult CEO). New: CFO Richard Winslade, NED Jonty Shepard. No departures.
- **Timeline:** technologies de-risked ~2028, first 30 MW ~2030, scaling to GW ~2036.
- **Funding (HOLD IN HEAD, do NOT lead with):** the $12.5M seed (announced Oct 2024) has NOT closed; running on incremental equity + grants (CASSiDi ~£1.2M, NATO DIANA), ~£91k holding-level cash end-2025. Capital-thin, grant-dependent, no distress signals. Confirms the high-risk / high-mission read.

## One-line pitch (why me, why this) - LOCKED 29/06
"In-space assembly is what I want to build my career on, and Space Solar is one of the very few places doing it for real - AlbaTRUSS and OSPREY Builder are exactly the problem I find most interesting. What I think fits best is how I work: I take hardware from terrestrial prototype to a characterised, working system, and I design for manufacture by default. On my MSc I concepted a team-built autonomous assembly cell and owned its integration - writing the control stack and getting the whole thing working as one system, in sim and hardware-in-the-loop. My undergrad dissertation was decentralised multi-robot coordination - several robots sharing out the work of building one structure - which I'm now extending toward a paper. I'm a hands-on generalist across mechanisms, electronics, firmware and software, which is what a small team building at pace needs."

## What excites you (three hooks - say them naturally, not memorised)
1. **The problem itself:** assembling km-scale structures in orbit is the single problem in space I find most interesting - the "A" in ISAM, and the bottleneck for almost everything big in space, not just solar.
2. **Why them:** one of very few actually building it, not talking about it - AlbaTRUSS demonstrated the dual-arm assembly, OSPREY Builder is next.
3. **The kind of engineering:** real hardware that has to work, proven on the ground first - I'd rather build a mechanism and characterise it on a test stand than live in simulation.

## Stories to lead with (pick 2-3; situation -> what I did -> result)
- **RASID autonomous cell (flagship):** a team-built 5-DoF cell that detects, detaches and racks a print bed. *My slice:* I concepted the overall project and owned the system integration - authored the C++ `ros2_control` interface bridging an STM32 motion controller and a Pico end-effector firmware, containerised the whole stack with full-sim and hardware-in-the-loop modes. 90.3 s HIL cycle vs a 120 s target. *(Honest: I did not do the mechanical hardware design beyond concepting it - my contribution is concept + integration.)*
- **Dissertation, decentralised multi-robot coordination (undergrad BEng, now -> paper):** extended a distributed-auction framework for task allocation across mobile manipulators. Maps onto their "robotic ecosystems coordinating with other systems, digital twins, shared world models," and onto Lego-modular assembly (robots sharing out who places which module). *(Honest: simulation-validated; extending toward a paper.)*
- **Mechanism design (reducer + the live RA task):** plate-harmonic reducer R&D, chosen partly because it 3D-prints for fast, cheap iteration (= his manufacturability/DfM value, in concrete form); plus the current RA task on actuator-to-finger motion-transfer mechanisms. Ongoing hands-on mechanism work, their bread and butter.
- **Team Bath Roving arm (Technical Lead):** 6-DoF arm, joint electronics, embedded motion, custom reducers, PDR -> CDR with FMEA + verification plan. Leadership + hardware breadth + lifecycle/systems thinking (his language).

## Honest gaps + how to frame (do not hide them)
- **No professional space-industry years:** lead with built, working systems + teaching myself unfamiliar hardware fast (micro-ROS on STM32, `ros2_control`, the reducer test protocol, each from scratch). The role is pitched wide ("talent and drive over a perfect checklist").
- **No NVIDIA Isaac Sim:** I have Gazebo + SolidWorks (2 of their 3); Isaac Sim is a quick pick-up.
- **No in-space deployment:** terrestrial rigs only - which is exactly where this role starts (terrestrial-prototype-first).

## Questions to ASK (diligence + gets the info I need)
*Mission / technical (genuine, shows homework):*
- What does the robotics roadmap look like from AlbaTRUSS and OSPREY through to the 2028 de-risking demo?
- How does the assembly-robotics team interface with the manufacturability / cost targets - is DfM owned in the robotics team or upstream?
- What would the first 6-12 months in this role actually look like, terrestrial vs space-facing?
- Where is the hardest open robotics problem right now, the bit you most need solved?
- How does assembly hardware coordinate with the digital twin / shared world model in practice (the multi-system integration in the listing)?

*Company / stage (light touch at first interview):*
- Where are you in the funding journey, and what is the next big milestone?
- How is the robotics team growing?

## Offer-stage gates (mostly NOT first interview)
- **Do NOT lead with pay.** If salary comes up: anchor ~£45k, cash must clear the £40k floor, value any equity / growth-share at ~zero (high-risk startup).
- **Runway / cash specifics** (has the seed closed, how much, runway in months) = OFFER stage, asked directly then. At interview the light "where are you in the funding journey" is enough. (Research: seed not closed, grant-dependent, ~£91k holding cash - so this matters, but hold it.)
- Full report: `job_applis/space-solar/due-diligence.md`.

## Prep checklist
- [x] Research **David Homfray** - done 29/06 (fusion engineer, JET, "engineering not physics", manufacturability-first).
- [x] Confirm interview **format** - Teams video call. (Length / others: minor, not chased.)
- [x] Re-read the **listing** + **DD digest** + **offer-gates** - done.
- [x] Skim recent **Space Solar news** - done (AlbaTRUSS, OSPREY, HARRIER, CASSiDi, National Grid, NATO DIANA, funding status).
- [ ] **Rehearse out loud:** the pitch, the "what excites you," and 2-3 stories + his likely technical probes. *(Deferred 29/06; do it in the 09:30-10:45 prep block tomorrow. This is the one remaining lever - the out-loud rep that got squeezed before Lunasa.)*
- [ ] Answer the retrieval-question confidence check (Homfray background + thesis) in the morning block.

---
*Related: [[2026-04-22-isam-job-targets]] · [[founding-strategy-brief]]*
