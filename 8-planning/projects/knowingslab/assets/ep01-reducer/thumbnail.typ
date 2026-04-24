// Knowingslab — Video 1 (Reducer Pivot) thumbnail
// Output: 1280x720 PNG. YouTube video thumbnail.
// Compile: typst compile --root . assets/thumbnail-ep01-reducer.typ assets/thumbnail-ep01-reducer.png --ppi 72

#import "../../knowingslab-brand.typ": *

#set page(
  width: 1280pt,
  height: 720pt,
  margin: 0pt,
  fill: ks-bg-dark,
)

// --- HUD corner brackets at canvas edges ---
#let corner-len = 64pt
#let corner-stroke = 2.5pt

#place(top + left, dx: 32pt, dy: 32pt,
  line(length: corner-len, stroke: corner-stroke + ks-text))
#place(top + left, dx: 32pt, dy: 32pt,
  line(length: corner-len, angle: 90deg, stroke: corner-stroke + ks-text))

#place(top + right, dx: -32pt, dy: 32pt,
  line(length: corner-len, angle: 180deg, stroke: corner-stroke + ks-text))
#place(top + right, dx: -32pt, dy: 32pt,
  line(length: corner-len, angle: 90deg, stroke: corner-stroke + ks-text))

#place(bottom + left, dx: 32pt, dy: -32pt,
  line(length: corner-len, stroke: corner-stroke + ks-text))
#place(bottom + left, dx: 32pt, dy: -32pt,
  line(length: corner-len, angle: -90deg, stroke: corner-stroke + ks-text))

#place(bottom + right, dx: -32pt, dy: -32pt,
  line(length: corner-len, angle: 180deg, stroke: corner-stroke + ks-text))
#place(bottom + right, dx: -32pt, dy: -32pt,
  line(length: corner-len, angle: -90deg, stroke: corner-stroke + ks-text))

// --- Top-left meta label ---
#place(top + left, dx: 110pt, dy: 44pt,
  text(font: ks-font, weight: "regular", size: 16pt, fill: ks-muted)[
    EP 01 \/\/ REDUCER PIVOT
  ])

// --- Top-right: episode status ---
#place(top + right, dx: -110pt, dy: 44pt,
  text(font: ks-font, weight: "regular", size: 16pt, fill: ks-accent-warn)[
    ● REC
  ])

// --- Hero title (left-aligned, stacked) ---
#place(left + horizon, dx: 80pt, dy: -20pt)[
  #text(font: ks-font, weight: "extrabold", size: 96pt, fill: ks-text)[
    I THREW OUT \
    4 MONTHS \
    OF WORK
  ]
]

// --- Gold subtitle below hero ---
#place(left + bottom, dx: 80pt, dy: -140pt)[
  #box[
    #line(length: 60pt, stroke: 2pt + ks-accent)
    #h(12pt)
    #text(font: ks-font, weight: "medium", size: 22pt, fill: ks-accent)[
      A CYCLOIDAL → PLATE HARMONIC STORY
    ]
  ]
]

// --- Mark watermark bottom-right ---
#place(bottom + right, dx: -110pt, dy: -70pt,
  ks-mark-hud(size: 56pt, letter: ks-text, frame: ks-primary-bright, stroke-w: 1.8pt))
