// Knowingslab Brand & Content Strategy Document
// Version 2.0 — April 2026

#import "knowingslab-brand.typ": *

#set page(
  paper: "a4",
  margin: (x: 2cm, y: 2.5cm),
  fill: rgb("#ffffff"),
)

#set text(
  font: "JetBrains Mono",
  size: 9.5pt,
  fill: rgb("#1a1a1a"),
)

#set heading(numbering: "1.1")

#show heading.where(level: 1): it => {
  set text(fill: rgb("#0B3D91"), size: 14pt, weight: "bold")
  block(above: 1.5em, below: 0.8em)[
    #it.body
    #v(-0.3em)
    #line(length: 100%, stroke: 1pt + rgb("#0B3D91"))
  ]
}

#show heading.where(level: 2): it => {
  set text(fill: rgb("#0B3D91"), size: 11pt, weight: "bold")
  block(above: 1.2em, below: 0.5em)[#it.body]
}

#show heading.where(level: 3): it => {
  set text(fill: rgb("#1a1a1a"), size: 10pt, weight: "bold")
  block(above: 1em, below: 0.4em)[#it.body]
}

#show link: it => {
  set text(fill: rgb("#0B3D91"))
  underline(it)
}

// Title block
#align(center)[
  #block(above: 2em, below: 0.5em)[
    #text(size: 8pt, fill: rgb("#666666"))[DOCUMENT \/\/ KNO-BRAND-001 \/\/ REV 2.0]
  ]
  #text(size: 28pt, weight: "bold", fill: rgb("#0B3D91"))[KNOWINGSLAB]
  #v(-0.3em)
  #text(size: 12pt, fill: rgb("#D94F00"))[Brand & Content Strategy]
  #v(0.5em)
  #text(size: 9pt, fill: rgb("#666666"))[Prepared: December 2025 | Revised: April 2026 | Author: Tom Leh]
]

#v(1em)

= Channel Identity

== Core Statement

*Knowingslab* is a robotics and space-focused channel following an engineer who builds things that work—actuators, arms, rovers, and occasional detours into other domains when a problem catches attention. The content is technically legitimate (with companion blog posts for depth) but presented with personality and dry humour; the goal is making real engineering accessible without dumbing it down.

This is not a presenter explaining other people's work—it's documenting personal projects, including failures, late-night debugging, and the parts where months of progress get thrown out to start again.

== Naming Convention

#table(
  columns: (auto, 1fr),
  stroke: 0.75pt + rgb("#cccccc"),
  inset: 8pt,
  fill: (col, row) => if row == 0 { rgb("#0B3D91") } else { rgb("#f5f5f5") },
  text(fill: white)[*Element*], text(fill: white)[*Usage*],
  [Knowingslab], [Primary channel name (compound, one word), spoken identity, handle (\@knowingslab)],
  [`[K•]`], [Primary mark — HUD-style K with kinematic pivot at vertex (see §2 Mark). Renders as `ks-mark-hud` from `knowingslab-brand.typ`.],
  [tomleh.gg], [Portfolio/blog domain, companion technical content],
)

== Project Naming Convention

Projects use twisted acronyms that are descriptive but playful. This creates memorable names that reward attention.

#table(
  columns: (auto, 1fr),
  stroke: 0.75pt + rgb("#cccccc"),
  inset: 8pt,
  fill: (col, row) => if row == 0 { rgb("#0B3D91") } else { rgb("#f5f5f5") },
  text(fill: white)[*Name*], text(fill: white)[*Meaning*],
  [ALGERNON], [Articulated Limb, Generally Earnest, Rarely Nimble, Often Nuisance],
  [NEIL Rover], [Non-Expensive Intelligent Loadout Rover],
  [DOTT], [Don't Over Think That (LLM assistant concept)],
)

== Positioning

#table(
  columns: (1fr, 1fr),
  stroke: 0.75pt + rgb("#cccccc"),
  inset: 8pt,
  fill: (col, row) => if row == 0 { rgb("#0B3D91") } else { rgb("#f5f5f5") },
  text(fill: white)[*Reference Points*], text(fill: white)[*Differentiation*],
  [Joe Barnard (BPS Space)], [Dry British tone vs American earnestness],
  [Michael Reeves], [More technical depth, less chaos-for-chaos-sake],
  [Stuff Made Here], [Scrappier, personal projects vs polished builds],
  [Tom Scott], [Similar articulate delivery, but maker-focused],
)

= Visual Identity

== Mark

The Knowingslab mark is a bracketed K with a pivot circle at the vertex —
dual-reading as the letterform and as the kinematic joint symbol used
in robotics schematics. HUD-style corner brackets frame the letter;
everything renders at consistent thin stroke weight for the wireframe /
targeting-reticle feel drawn from Elite Dangerous HUD language and
Fraser's Project Hail Mary cinematography.

#v(0.8em)
#align(center)[
  #grid(
    columns: (auto, auto, auto, auto),
    gutter: 2em,
    align: center + horizon,
    ks-mark-hud(size: 72pt),
    ks-mark-hud(size: 48pt),
    ks-mark-hud(size: 32pt),
    ks-mark-hud(size: 18pt),
  )
]
#v(0.4em)
#align(center)[
  #text(size: 8pt, fill: ks-muted)[72pt #h(3.3em) 48pt #h(3.2em) 32pt #h(2.6em) 18pt]
]
#v(0.8em)

On the warm-dark background (primary context — thumbnails, video overlays,
end cards), the mark inverts: letter and frame become tungsten cream, pivot
stays gold.

#v(0.5em)
#block(
  width: 100%,
  inset: 20pt,
  fill: ks-bg-dark,
  radius: 4pt,
)[
  #align(center)[
    #grid(
      columns: (auto, auto, auto, auto),
      gutter: 2em,
      align: center + horizon,
      ks-mark-hud(size: 72pt, letter: ks-text, frame: ks-primary-bright),
      ks-mark-hud(size: 48pt, letter: ks-text, frame: ks-primary-bright),
      ks-mark-hud(size: 32pt, letter: ks-text, frame: ks-primary-bright),
      ks-mark-hud(size: 18pt, letter: ks-text, frame: ks-primary-bright),
    )
  ]
]

=== Specification

#table(
  columns: (auto, 1fr),
  stroke: 0.75pt + ks-rule,
  inset: 7pt,
  fill: (col, row) => if row == 0 { ks-primary } else { rgb("#F5EDDF") },
  text(fill: ks-text)[*Parameter*], text(fill: ks-text)[*Value*],
  [Form],           [Corner-bracket frame + K + outline pivot circle at vertex],
  [Line weight],    [1.6pt (default); scales with mark size],
  [Corner length],  [0.22em relative to mark size],
  [Pivot radius],   [0.10em],
  [Pivot offset],   [-0.16em horizontal from K centre],
  [K weight],       [Light (JetBrains Mono)],
  [Letter + frame], [NASA Blue on light; Tungsten Cream on dark],
  [Pivot],          [Thermal Gold in both contexts],
)

=== Usage

- *Avatar / favicon:* mark alone, centred, minimum render size 24pt (32pt+ preferred for mobile)
- *Watermark:* mark at ~5% of frame height, bottom-right of video frame
- *End card:* mark + wordmark lockup (`ks-lockup`)
- *Inline / in-document:* use module tokens, never hex literals or redrawn SVGs

=== Wordmark

The wordmark *Knowingslab* renders in JetBrains Mono Light to match
the K's stroke weight. Used for the channel banner, end cards,
document headers, and any context where the name needs to be spelled
out rather than glyph'd.

#v(0.5em)
#align(center)[
  #ks-wordmark(size: 32pt, bracketed: false)
]
#v(0.3em)
#align(center)[
  #text(size: 8pt, fill: ks-muted)[Bare wordmark — preferred for banners and long-form contexts.]
]
#v(0.6em)
#align(center)[
  #ks-wordmark(size: 24pt, bracketed: true)
]
#v(0.3em)
#align(center)[
  #text(size: 8pt, fill: ks-muted)[Bracketed wordmark — use when pairing with the HUD mark system.]
]

=== Canonical source

All mark variants (`ks-mark-hud`, `ks-wordmark`, `ks-watermark`,
`ks-lockup`) are defined in `knowingslab-brand.typ`. Import and call
those functions rather than redrawing by hand — tuning the mark
there updates everything downstream in a single edit.

== Colour Palette

Palette aligned to Project Hail Mary interior cinematography (Greig
Fraser, 2026): warm analog grade rather than cold clinical. NASA Blue
primary paired with Thermal Blanket Gold accent (the colour of MLI
spacecraft insulation — JWST, Perseverance descent stage, Cassini).
Tertiary accents cover the cool-morning and warning registers of
Fraser's circadian lighting system.

=== Accents

*Light/dark rule for primary:* NASA Blue `#0B3D91` is canonical on light
grounds (documents, print, white backgrounds). On warm-dark grounds the
primary crushes into the background, so use the *dark-mode variant*
`#124AAD` (slight lift, same NASA character) for frames, HUD elements,
and wordmarks rendered on dark. The token is `ks-primary-bright`.

#grid(
  columns: (1fr, 1fr, 1fr, 1fr),
  gutter: 8pt,
  box(width: 100%, inset: 8pt, fill: rgb("#0B3D91"), radius: 2pt)[
    #text(fill: rgb("#F5EDDF"), size: 8.5pt)[*NASA Blue — Primary (light)* \ \#0B3D91]
  ],
  box(width: 100%, inset: 8pt, fill: rgb("#124AAD"), radius: 2pt)[
    #text(fill: rgb("#F5EDDF"), size: 8.5pt)[*NASA Blue — Bright (dark)* \ \#124AAD]
  ],
  box(width: 100%, inset: 8pt, fill: rgb("#D4A84B"), radius: 2pt)[
    #text(fill: rgb("#1C1611"), size: 8.5pt)[*Thermal Gold — Accent* \ \#D4A84B]
  ],
  box(width: 100%, inset: 8pt, fill: rgb("#4A8287"), radius: 2pt)[
    #text(fill: rgb("#F5EDDF"), size: 8.5pt)[*Instrument Teal — Cool* \ \#4A8287]
  ],
  box(width: 100%, inset: 8pt, fill: rgb("#C44A2F"), radius: 2pt)[
    #text(fill: rgb("#F5EDDF"), size: 8.5pt)[*Safety Vermillion — Warn* \ \#C44A2F]
  ],
)

=== Neutrals

#grid(
  columns: (1fr, 1fr, 1fr, 1fr),
  gutter: 8pt,
  box(width: 100%, inset: 8pt, fill: rgb("#1C1611"), radius: 2pt)[
    #text(fill: rgb("#F5EDDF"), size: 8.5pt)[*Warm Black — Background* \ \#1C1611]
  ],
  box(width: 100%, inset: 8pt, fill: rgb("#F5EDDF"), radius: 2pt, stroke: 0.5pt + rgb("#B8AE9D"))[
    #text(fill: rgb("#1C1611"), size: 8.5pt)[*Tungsten Cream — Text* \ \#F5EDDF]
  ],
  box(width: 100%, inset: 8pt, fill: rgb("#7A6E5D"), radius: 2pt)[
    #text(fill: rgb("#F5EDDF"), size: 8.5pt)[*Warm Grey — Muted* \ \#7A6E5D]
  ],
  box(width: 100%, inset: 8pt, fill: rgb("#B8AE9D"), radius: 2pt)[
    #text(fill: rgb("#1C1611"), size: 8.5pt)[*Warm Rule — Divider* \ \#B8AE9D]
  ],
)

#v(0.3em)
#text(size: 8pt, fill: rgb("#7A6E5D"))[Canonical values live in `knowingslab-brand.typ` as tokens (`ks-primary`, `ks-accent`, `ks-accent-cool`, `ks-accent-warn`, `ks-bg-dark`, `ks-text`, `ks-muted`, `ks-rule`). Import and use tokens rather than hex literals in downstream docs.]

== Typography

Single-family hierarchy — JetBrains Mono carries everything (mark,
body, HUD overlays, thumbnail titles). No display sans. Hierarchy is
weight-based, not family-based.

- *Primary*: JetBrains Mono (required)
- *Fallbacks*: Space Mono, IBM Plex Mono

=== Weight tokens

Use these semantically rather than picking weights ad hoc. Tokens
defined in `knowingslab-brand.typ`:

#table(
  columns: (auto, auto, 1fr),
  stroke: 0.75pt + rgb("#B8AE9D"),
  inset: 7pt,
  fill: (col, row) => if row == 0 { rgb("#0B3D91") } else { rgb("#F5EDDF") },
  text(fill: rgb("#F5EDDF"))[*Token*],
  text(fill: rgb("#F5EDDF"))[*Weight*],
  text(fill: rgb("#F5EDDF"))[*Use*],

  [`ks-w-decorative`], [ExtraLight], [Subtle overlays, quiet marks],
  [`ks-w-mark`],       [Light],      [The K inside the mark; wordmark],
  [`ks-w-body`],       [Regular],    [Default body text],
  [`ks-w-emphasis`],   [Medium],     [Inline emphasis, small headings],
  [`ks-w-heading`],    [Bold],       [Section headings],
  [`ks-w-hero`],       [ExtraBold],  [Thumbnail hero titles],
)

=== Rationale

Monospace throughout gives the industrial/technical aesthetic anchor
(mission control, spacecraft consoles, JetBrains Mono's code-editor
origins). Single-family feel is critical for the HUD/reticle system
to read coherently; a sans display face would fragment that. If a
specific thumbnail needs more impact, reach for ExtraBold, not another
family.

== Visual Language

=== Analog Space-Industrial

(Formerly "NASA-Punk / Space Industrial" in v1.4; renamed to capture
the warm/analog dimension central to the PHM-aligned direction.)

- Clean, functional aesthetic inspired by *lived-in spacecraft
  interiors and mission control* — Hail Mary, Nostromo, Solaris, 2001
  Discovery. Industrial but warm, not clinical.
- *Warm-dark* backgrounds with tungsten-cream highlights; reject cold
  clinical whites and pure blacks.
- *HUD / reticle framing* — corner brackets, thin consistent line
  weights, targeting elements. The mark is the primary exemplar of
  this language.
- Grid-based layouts reminiscent of engineering schematics and
  spacecraft console UIs.
- Subtle space-hardware references: MLI thermal blankets, anodized
  aluminum, illuminated panels, circadian lighting cycles.
- *Optional textures:* rainbow-flare highlights (per Fraser), CRT
  scanlines, analog film grain, practical-light bokeh.
- Monospace typography throughout — single family, weight-based
  hierarchy.

=== Thumbnail Style

- Warm-dark background (`#1C1611`); reject cold black
- Corner-bracket framing — reticle motif carried over from the mark
- Hero title ≤6 words in ExtraBold tungsten cream; optional subtitle in gold, Regular or Medium weight
- HUD mark watermark bottom-right, ~5% of frame height
- Clear primary subject: hardware, failure, result, or face
- *Face policy:* allowed when the video is personal (ALGERNON intro, career milestones, reflections). No face-performance tropes — no pointing, no shocked-face, no mouth-agape reactions. Composed, considered.
- *Accent usage:* gold for highlights and labels, teal for cold/technical moments, vermillion for warnings and pivot-points (sparingly)

= Tone & Delivery

== Voice Characteristics

- *Dry British humour* — understated, self-deprecating, deadpan
- *Technically precise* — correct terminology, no dumbing down
- *Conversational authority* — knows the subject, doesn't lecture
- *Slightly "posh"* — natural vocabulary elevated, not performed

== What This Sounds Like

Excerpted from the Video 1 script (`Reducer Video.md`) — verbatim passage
chosen as the reference for voice across future scripts.

#block(
  fill: rgb("#f0f4f8"),
  inset: 12pt,
  radius: 2pt,
  stroke: 0.75pt + rgb("#0B3D91"),
)[
  _"I spent a couple of months on and off over the summer designing this. This traffic cone coloured little bugger is a cycloidal drive. \... Now this little guy is a great reducer, but you'll notice that it is very tall, made of PLA, and overall not an excellent design. And to be honest between packing and other distractions I forgot about working on this little fella."_
]

#v(0.3em)
Hits the markers: dry understatement ("not an excellent design" for
something that visibly failed), natural Britishism ("little bugger",
"little fella"), deadpan self-accounting (forgot about it), technical
grounding without jargon-gating.

== What to Avoid

- American "maker energy" enthusiasm
- Explaining obvious things to pad runtime
- Excessive self-deprecation that undermines credibility
- Winking at the "British" delivery (let it be natural)
- Apologies for technical content

= ALGERNON

*Details compressed in v2.0 — ALGERNON (Articulated Limb, Generally Earnest, Rarely Nimble, Often Nuisance) is the channel's recurring character: a 5-DoF workshop arm, cat-like in temperament rather than stupid, named with a nod to Flowers for Algernon. His dedicated long-form debut is Video 2 (end May 2026); he is teased through shortform content from Q1 2026 onward but does not appear on-screen in Video 1, which closes only with a verbal hand-off ("someone in the next video"). Full joint specification, character breakdown, controller stack, and autonomy direction live in the Video 2 prep doc — re-evaluated before filming rather than frozen into the brand guide, as both the rolling-joint elbow mechanism and the autonomy approach have shifted since v1.4 and need re-planning before they earn space here.*

= Content Strategy

== Content Pillars

#table(
  columns: (auto, 1fr, auto),
  stroke: 0.75pt + rgb("#cccccc"),
  inset: 8pt,
  fill: (col, row) => if row == 0 { rgb("#0B3D91") } else { rgb("#f5f5f5") },
  text(fill: white)[*Type*], text(fill: white)[*Description*], text(fill: white)[*Frequency*],
  [Tentpole Projects], [Major builds: actuators, arms, rovers. Full story arc with companion blog.], [Monthly],
  [Interstitial], [Printer retrofits, tools, "what's on my bench", MSc adjacent.], [Bi-weekly],
  [Process/Pivot], ["Why I threw out X months of work" — design pivots, failures.], [As needed],
)

== Companion Content

- *Blog (tomleh.gg)*: Deep technical writeups, equations, design rationale
- *Shortform (self-managed)*: Instagram Reels, TikTok, YouTube Shorts — lighter between tentpoles, ramps up 1–2 weeks before each video launches

== Recurring Elements

- *ALGERNON*: 5-DoF workshop arm — see dedicated section above
- *Project status overlays*: HUD-style lower-thirds (`lower-third-template.typ` in `assets/channel/`) — coloured stripe, section label, episode number, per §2 Visual Language
- *HUD mark end card*: Consistent outro using the `ks-mark-hud` + wordmark lockup with links to blog/next video (`assets/ep01-reducer/end-card.typ` is the Video 1 instance)

= Content Roadmap

== Phase 0: Pre-Launch (Dec 2025 – Apr 2026)

Shortform content establishing ALGERNON before long-form launch. Self-managed posting to Instagram Reels, TikTok, YouTube Shorts. Pre-launch extended through Q1 2026 as the original Jan 2026 launch slipped while remaining uni assignments (RASID, CMNT, Robo-ethics, ME52078) took precedence.

*Content Ideas:*
- ALGERNON build progress clips (printing, assembly, wiring)
- First movements, calibration footage
- Early mischief moments (reaching for things, "investigating" the desk)
- Workshop ambiance with ALGERNON in frame
- Teaser clips with no context — generate curiosity

*Platform Strategy:*
- TikTok: Primary discovery platform, trending sounds where appropriate
- Instagram Reels: Cross-post from TikTok, build follower base
- YouTube Shorts: Seed the YouTube algorithm, funnel to main channel

*Shortform Guidelines:*
- Self-managed — prioritise consistency over volume
- Lighter cadence between tentpoles; ramp 1–2 weeks before each video launches
- Maintain visual consistency (Analog Space-Industrial per §2 — warm-dark grounds, HUD corner framing)
- No voiceover needed — music/ambient audio
- Include `ks-mark-hud` watermark on all content, bottom-right, ~5% of frame height

*Success Metrics:*
- Not about viral hits — about consistent posting and building a small base
- Any follower count >0 means Video 1 has an audience

Goal: Build anticipation so Video 1 doesn't drop into a void.

== Phase 1: Launch (Apr–Jun 2026)

First three tentpole videos establishing the channel's identity and technical credibility. Monthly cadence.

#table(
  columns: (auto, 1fr, auto),
  stroke: 0.75pt + rgb("#cccccc"),
  inset: 8pt,
  fill: (col, row) => if row == 0 { rgb("#0B3D91") } else { rgb("#f5f5f5") },
  text(fill: white)[*\#*], text(fill: white)[*Video*], text(fill: white)[*Target*],
  [1], [Plate harmonic reducer — throwing out months of cycloidal work over a random tweet], [24 Apr 2026],
  [2], [Meet ALGERNON — dedicated long-form introduction to the workshop arm], [End May 2026],
  [3], [Rover team content (TBC — likely arm testing or reducer integration)], [End Jun 2026],
)

*Video 1 — Actuator Pivot (Reducer):*
- Hook: Doomscroll on Twitter → Nick Parker's plate harmonic reducer post → drop old cycloidal prototype in the bin (cold open, minimal voiceover)
- Structure: Doomscroll hook → what-is-a-reduction explainer (car-gearbox analogy) → old cycloidal backstory (traffic-cone-orange PLA, broken output pin, shelved) → discovery + rover-team justification (became technical lead on arm) → strain wave gear explainer → plate harmonic benefits (flip the flex direction, compact, 3D-printable, replaces team's old cycloidal) → build montage → prototype verification testing (design validation, not torque) → tease Video 2
- ALGERNON: Does *not* appear on-screen. Referenced only at the end as "someone in the next video" — the hand-off that sets up the Video 2 debut
- Companion blog: Deep dive on reducer theory, Nick Parker's paper breakdown, plate harmonic vs cycloidal vs strain wave tradeoffs
- Script: `scripts/Reducer Video.md`. ~75–85% drafted as of launch week; polish pass + explicit b-roll shot list outstanding
- Target length: 12–18 minutes

*Video 2 — Meet ALGERNON:*
- Hook: Dedicated introduction to ALGERNON — the workshop arm already glimpsed in shortform
- Structure: Build recap → joint-by-joint tour (including rolling-joint elbow) → first task attempts (helpful + mischievous) → personality reveal → teaser for future videos
- ALGERNON: *The* focus. Character-first framing over technical-first
- Companion blog: Build details, joint design, firmware, control approach
- Target length: 12-18 minutes

*Video 3 — Rover Team Content (TBC):*
- Likely angle: Rover team arm testing or reducer integration — concept locked mid-quarter based on what ships
- Hook: TBD once concept locked (subject matter may itself be the hook — real competition hardware)
- Structure: Context on rover team involvement → the specific system/subsystem → testing/results → what's next
- ALGERNON: Workshop presence
- Companion blog: Technical writeup of featured system
- Target length: 15-20 minutes
- *Personal NEIL rover remains back-burner — not the Video 3 subject.*

*Phase 1 Goals:*
- Establish technical credibility
- Establish tone (dry British, personality-driven)
- Introduce ALGERNON as recurring presence
- Build companion blog habit
- Learn the production workflow (filming, editing, publishing cadence)
- *Stretch:* rougher bi-weekly build logs / project updates on Patreon — Joe Barnard-style cadence, gated on channel traction (~2k subs as a loose threshold), not a launch requirement

== Phase 2: Growth (Jul–Sep 2026)

Assuming Phase 1 completes successfully, expand content variety and posting frequency.

*Tentpole Videos (Monthly):*
- Continue major project coverage (rover progress, new builds)
- Each tentpole gets companion blog post

*Interstitial Content (Bi-weekly):*
- "What's on my bench" — 5-8 minute updates on current work
- Tool/technique spotlights — specific skills or tools you're using
- 3D printer retrofit episodes — each printer gets 1-2 videos
- MSc content — research explainers, paper breakdowns

*Shortform:*
- Continue self-managed shorts from tentpole footage
- ALGERNON clips as ongoing content
- Behind-the-scenes moments
- Ramp around tentpole launches

*Phase 2 Goals:*
- Increase upload frequency (tentpole + interstitial = 3-4 videos/month)
- Grow subscriber base through consistency
- Identify what content performs best
- Refine production efficiency

== Phase 3: Expansion (Oct 2026+)

Longer-term ambitions, contingent on Phase 1-2 success.

*Potential Directions:*
- Collaboration with other maker channels
- Rover team content (if permission secured)
- SCATT system project (new audience crossover)
- Dissertation algorithm series (multi-part technical deep dive)
- "Making ALGERNON Smarter" premium content
- Sponsorship integration (if audience warrants)

*Platform Expansion:*
- Evaluate Patreon/membership for premium content
- Consider long-form podcast/discussion format
- Potential conference talks or maker faire presence

*Phase 3 Goals:*
- Sustainable content creation rhythm
- Revenue generation (sponsorship, membership, or other)
- Recognised presence in robotics/maker community

== Gap Content Ideas

Quick-turnaround content for between tentpole videos:

*Printer Retrofit Series:*
- "Rescuing a dead Ender 3" — diagnosis, repair, upgrades
- Specific upgrade videos (direct drive conversion, Klipper setup, etc.)
- Each printer = 2-3 videos of content

*Workshop/Process:*
- "What's on my bench this week" — casual updates
- Tool reviews/spotlights (only tools you actually use)
- "How I design [X]" — CAD workflow, design decisions
- Failed prints/parts — what went wrong, what I learned

*Technical Explainers:*
- MSc coursework adjacent — explain concepts you're learning
- Paper breakdowns — interesting papers in accessible format
- "How [mechanism] actually works" — animations, demos

*ALGERNON-specific:*
- Calibration and tuning sessions
- New behaviour additions
- "ALGERNON tries to [task]" — task attempt videos

== Future Arcs

Multi-video series for long-term planning:

*Dissertation Algorithm Series:*
- Part 1: The problem (multi-robot coordination)
- Part 2: The algorithm (auction-based task allocation)
- Part 3: Simulation results
- Part 4: Real-world implementation on NEIL
- Potential for 4-6 videos over 6+ months

*Novel Cycloidal Design:*
- Revisit shelved actuator concept
- "The idea I couldn't let go of"
- Design, prototype, test arc

*Rover Team Content (pending permission):*
- Behind-the-scenes of competition prep
- Technical deep dives on team systems
- Competition coverage

*SCATT Alternative:*
- "Building a £50 shooting trainer"
- Appeals to entirely different audience (shooting sports)
- Crossover potential — brings new viewers to robotics content

= Production Setup

== Hardware

#table(
  columns: (auto, 1fr),
  stroke: 0.75pt + rgb("#cccccc"),
  inset: 8pt,
  fill: (col, row) => if row == 0 { rgb("#0B3D91") } else { rgb("#f5f5f5") },
  text(fill: white)[*Component*], text(fill: white)[*Current Setup*],
  [Primary Camera], [Panasonic Lumix GH4 + 14–42mm f/3.5–5.6 kit lens],
  [B-Roll / Alt Camera], [Nothing 2a Plus (smartphone)],
  [Voiceover Audio], [Blue Yeti Nano (desk setup)],
  [On-Location Audio], [DJI Mic Mini (2× TX + RX, camera-mounted)],
)

== Planned Upgrades

- *Near-term*: Faster prime lens (25mm f/1.7) for low-light workshop shots

== Workflow

+ *Filming*: GH4 for main footage, phone for spontaneous B-roll
+ *Audio*: Voiceover-heavy edit using Yeti Nano; accept rough on-location audio
+ *Talking head*: Film at desk (Yeti range) or on location (coastal/garage)
+ *Edit*: Narration-first workflow — write tighter after seeing footage
+ *Review*: Send rough cut to trusted friends for honest feedback

= Business Structure

== Entity Purpose

- Equipment/expense management
- Collaborator agreements (shortform content creators)
- Future: potential sponsorship handling

== Scope Limitation

Corporate structure exists for practical management only. Priority remains: *make videos first, worry about business later*.

== IP Considerations

- Plate harmonic reducer design based on patented Korean paper
- US/Korea patents exist; no known EU/UK filing
- Personal/educational use: acceptable
- Closed-source component approach for own projects
- Not open-sourcing reducer design; modular component excluded from public rover project

#v(2em)
#align(center)[
  #line(length: 40%, stroke: 0.75pt + rgb("#cccccc"))
  #v(0.5em)
  #text(size: 8pt, fill: rgb("#666666"))[
    KNOWINGSLAB \/\/ EST. 2026 \/\/ tomleh.gg
  ]
]
