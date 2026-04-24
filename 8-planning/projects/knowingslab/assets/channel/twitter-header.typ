// Knowingslab — Twitter/X profile header
// Output: 1500x500 PNG. Twitter/X profile banner.
// Profile picture overlaps bottom-left (~133x133px circle) — keep clear.
// Compile: typst compile --root . assets/channel/twitter-header.typ assets/channel/twitter-header.png --ppi 72

#import "../../knowingslab-brand.typ": *

#set page(
  width: 1500pt,
  height: 500pt,
  margin: 0pt,
  fill: ks-bg-dark,
)

// --- HUD corner brackets at canvas corners ---
#let corner-len = 44pt
#let corner-stroke = 2pt

#place(top + left, dx: 30pt, dy: 30pt,
  line(length: corner-len, stroke: corner-stroke + ks-muted))
#place(top + left, dx: 30pt, dy: 30pt,
  line(length: corner-len, angle: 90deg, stroke: corner-stroke + ks-muted))

#place(top + right, dx: -30pt, dy: 30pt,
  line(length: corner-len, angle: 180deg, stroke: corner-stroke + ks-muted))
#place(top + right, dx: -30pt, dy: 30pt,
  line(length: corner-len, angle: 90deg, stroke: corner-stroke + ks-muted))

#place(bottom + left, dx: 30pt, dy: -30pt,
  line(length: corner-len, stroke: corner-stroke + ks-muted))
#place(bottom + left, dx: 30pt, dy: -30pt,
  line(length: corner-len, angle: -90deg, stroke: corner-stroke + ks-muted))

#place(bottom + right, dx: -30pt, dy: -30pt,
  line(length: corner-len, angle: 180deg, stroke: corner-stroke + ks-muted))
#place(bottom + right, dx: -30pt, dy: -30pt,
  line(length: corner-len, angle: -90deg, stroke: corner-stroke + ks-muted))

// --- Meta labels ---
#place(top + left, dx: 95pt, dy: 36pt,
  text(font: ks-font, weight: "regular", size: 12pt, fill: ks-muted)[
    LOCATION \/\/ KNOWINGSLAB
  ])

#place(top + right, dx: -95pt, dy: 36pt,
  text(font: ks-font, weight: "regular", size: 12pt, fill: ks-muted)[
    EST. 2026
  ])

#place(bottom + right, dx: -95pt, dy: -38pt,
  text(font: ks-font, weight: "regular", size: 12pt, fill: ks-muted)[
    YOUTUBE.COM\/\@KNOWINGSLAB
  ])

// --- Hero lockup: offset right of centre to leave bottom-left clear
// --- for the ~133px profile picture circle ---
#place(center + horizon, dx: 160pt, dy: -20pt)[
  #align(center)[
    #box[
      #stack(
        dir: ltr,
        spacing: 22pt,
        align(horizon, ks-mark-hud(size: 110pt, letter: ks-text, frame: ks-primary-bright, stroke-w: 2pt)),
        align(horizon, text(
          font: ks-font,
          weight: "light",
          size: 80pt,
          fill: ks-text,
        )[Knowingslab]),
      )
    ]
    #v(18pt)
    #text(
      font: ks-font,
      weight: "regular",
      size: 18pt,
      fill: ks-accent,
      tracking: 0.35em,
    )[ROBOTICS · SPACE · THINGS THAT WORK]
  ]
]
