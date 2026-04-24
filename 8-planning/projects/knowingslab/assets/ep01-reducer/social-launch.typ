// Knowingslab — Launch social post (square, platform-agnostic)
// Output: 1080x1080 PNG. Works for Twitter, Instagram, LinkedIn.
// Compile: typst compile --root . assets/social-launch.typ assets/social-launch.png --ppi 72

#import "../../knowingslab-brand.typ": *

#set page(
  width: 1080pt,
  height: 1080pt,
  margin: 0pt,
  fill: ks-bg-dark,
)

// --- HUD corner brackets ---
#let corner-len = 56pt
#let corner-stroke = 2.5pt

#place(top + left, dx: 40pt, dy: 40pt,
  line(length: corner-len, stroke: corner-stroke + ks-text))
#place(top + left, dx: 40pt, dy: 40pt,
  line(length: corner-len, angle: 90deg, stroke: corner-stroke + ks-text))
#place(top + right, dx: -40pt, dy: 40pt,
  line(length: corner-len, angle: 180deg, stroke: corner-stroke + ks-text))
#place(top + right, dx: -40pt, dy: 40pt,
  line(length: corner-len, angle: 90deg, stroke: corner-stroke + ks-text))
#place(bottom + left, dx: 40pt, dy: -40pt,
  line(length: corner-len, stroke: corner-stroke + ks-text))
#place(bottom + left, dx: 40pt, dy: -40pt,
  line(length: corner-len, angle: -90deg, stroke: corner-stroke + ks-text))
#place(bottom + right, dx: -40pt, dy: -40pt,
  line(length: corner-len, angle: 180deg, stroke: corner-stroke + ks-text))
#place(bottom + right, dx: -40pt, dy: -40pt,
  line(length: corner-len, angle: -90deg, stroke: corner-stroke + ks-text))

// --- Top banner: LIVE indicator ---
#place(top + center, dx: 0pt, dy: 80pt)[
  #align(center)[
    #box[
      #stack(dir: ltr, spacing: 14pt,
        align(horizon,
          box(width: 14pt, height: 14pt, radius: 7pt, fill: ks-accent-warn)),
        align(horizon, text(
          font: ks-font, weight: "medium", size: 22pt, fill: ks-accent-warn, tracking: 0.3em,
        )[● CHANNEL LIVE]),
      )
    ]
  ]
]

// --- Hero block ---
#place(center + horizon, dx: 0pt, dy: -80pt)[
  #align(center)[
    #text(font: ks-font, weight: "regular", size: 20pt, fill: ks-muted, tracking: 0.3em)[
      EP 01 \/\/ REDUCER PIVOT
    ]
    #v(24pt)
    #text(font: ks-font, weight: "extrabold", size: 68pt, fill: ks-text)[
      I THREW OUT \
      4 MONTHS \
      OF WORK
    ]
    #v(30pt)
    #box[
      #line(length: 60pt, stroke: 2pt + ks-accent)
      #h(14pt)
      #text(font: ks-font, weight: "medium", size: 18pt, fill: ks-accent)[
        A CYCLOIDAL → PLATE HARMONIC STORY
      ]
    ]
  ]
]

// --- Mark + wordmark lockup at bottom ---
#place(bottom + center, dx: 0pt, dy: -130pt)[
  #align(center)[
    #box[
      #stack(dir: ltr, spacing: 18pt,
        align(horizon, ks-mark-hud(size: 52pt, letter: ks-text, frame: ks-primary-bright, stroke-w: 1.6pt)),
        align(horizon, text(
          font: ks-font, weight: "light", size: 40pt, fill: ks-text,
        )[Knowingslab]),
      )
    ]
    #v(16pt)
    #text(font: ks-font, weight: "regular", size: 16pt, fill: ks-accent)[
      youtube.com\/\@knowingslab  #h(1.2em) · #h(1.2em)  tomleh.gg
    ]
  ]
]
