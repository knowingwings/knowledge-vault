// Knowingslab — End card
// Output: 1920x1080 PNG. Last 10–20s of video; YouTube's subscribe
// button + next-video overlays go on top (zones left clear below).
// Compile: typst compile --root . assets/end-card.typ assets/end-card.png --ppi 72

#import "../../knowingslab-brand.typ": *

#set page(
  width: 1920pt,
  height: 1080pt,
  margin: 0pt,
  fill: ks-bg-dark,
)

// --- HUD corner brackets ---
#let corner-len = 72pt
#let corner-stroke = 2.5pt

#place(top + left, dx: 48pt, dy: 48pt,
  line(length: corner-len, stroke: corner-stroke + ks-muted))
#place(top + left, dx: 48pt, dy: 48pt,
  line(length: corner-len, angle: 90deg, stroke: corner-stroke + ks-muted))
#place(top + right, dx: -48pt, dy: 48pt,
  line(length: corner-len, angle: 180deg, stroke: corner-stroke + ks-muted))
#place(top + right, dx: -48pt, dy: 48pt,
  line(length: corner-len, angle: 90deg, stroke: corner-stroke + ks-muted))
#place(bottom + left, dx: 48pt, dy: -48pt,
  line(length: corner-len, stroke: corner-stroke + ks-muted))
#place(bottom + left, dx: 48pt, dy: -48pt,
  line(length: corner-len, angle: -90deg, stroke: corner-stroke + ks-muted))
#place(bottom + right, dx: -48pt, dy: -48pt,
  line(length: corner-len, angle: 180deg, stroke: corner-stroke + ks-muted))
#place(bottom + right, dx: -48pt, dy: -48pt,
  line(length: corner-len, angle: -90deg, stroke: corner-stroke + ks-muted))

// --- Top-centre: wordmark + mark ---
#place(top + center, dx: 0pt, dy: 100pt)[
  #box[
    #stack(
      dir: ltr,
      spacing: 24pt,
      align(horizon, ks-mark-hud(size: 88pt, letter: ks-text, frame: ks-primary-bright, stroke-w: 2pt)),
      align(horizon, text(
        font: ks-font, weight: "light", size: 72pt, fill: ks-text,
      )[Knowingslab]),
    )
  ]
]

// --- Left zone label: subscribe hint (YouTube button sits here) ---
// Zone: left ~35% of frame, vertical centre; keep clear for subscribe overlay
#place(center + horizon, dx: -560pt, dy: 80pt)[
  #align(center)[
    #text(font: ks-font, weight: "regular", size: 24pt, fill: ks-muted)[
      ━━━ SUBSCRIBE
    ]
    #v(340pt)  // spacer — YouTube sub button goes above this
    #text(font: ks-font, weight: "regular", size: 18pt, fill: ks-accent)[
      FOR MORE
    ]
  ]
]

// --- Right zone label: next video hint ---
// Zone: right ~35% of frame, vertical centre; keep clear for video overlay
#place(center + horizon, dx: 560pt, dy: 80pt)[
  #align(center)[
    #text(font: ks-font, weight: "regular", size: 24pt, fill: ks-muted)[
      NEXT ━━━
    ]
    #v(340pt)  // spacer — YouTube next-video thumbnail goes above this
    #text(font: ks-font, weight: "regular", size: 18pt, fill: ks-accent)[
      MEET ALGERNON
    ]
  ]
]

// --- Bottom: tagline + URL ---
#place(bottom + center, dx: 0pt, dy: -90pt)[
  #align(center)[
    #text(font: ks-font, weight: "regular", size: 22pt, fill: ks-accent, tracking: 0.3em)[
      ROBOTICS · SPACE · THINGS THAT WORK
    ]
    #v(14pt)
    #text(font: ks-font, weight: "regular", size: 18pt, fill: ks-muted)[
      tomleh.gg #h(2em) \@knowingslab
    ]
  ]
]
