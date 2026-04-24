// Knowingslab — Channel banner
// Output: 2048x1152 PNG. YouTube channel header.
// Safe zone (visible on mobile): 1235x338 centred.
// Compile: typst compile --root . assets/banner.typ assets/banner.png --ppi 72

#import "../../knowingslab-brand.typ": *

#set page(
  width: 2048pt,
  height: 1152pt,
  margin: 0pt,
  fill: ks-bg-dark,
)

// --- Decorative HUD corner brackets at canvas corners (desktop only) ---
#let corner-len = 80pt
#let corner-stroke = 2pt

// Top-left
#place(top + left, dx: 60pt, dy: 60pt,
  line(length: corner-len, stroke: corner-stroke + ks-muted))
#place(top + left, dx: 60pt, dy: 60pt,
  line(length: corner-len, angle: 90deg, stroke: corner-stroke + ks-muted))

// Top-right
#place(top + right, dx: -60pt, dy: 60pt,
  line(length: corner-len, angle: 180deg, stroke: corner-stroke + ks-muted))
#place(top + right, dx: -60pt, dy: 60pt,
  line(length: corner-len, angle: 90deg, stroke: corner-stroke + ks-muted))

// Bottom-left
#place(bottom + left, dx: 60pt, dy: -60pt,
  line(length: corner-len, stroke: corner-stroke + ks-muted))
#place(bottom + left, dx: 60pt, dy: -60pt,
  line(length: corner-len, angle: -90deg, stroke: corner-stroke + ks-muted))

// Bottom-right
#place(bottom + right, dx: -60pt, dy: -60pt,
  line(length: corner-len, angle: 180deg, stroke: corner-stroke + ks-muted))
#place(bottom + right, dx: -60pt, dy: -60pt,
  line(length: corner-len, angle: -90deg, stroke: corner-stroke + ks-muted))

// --- Meta labels in corners (desktop-visible flavour) ---
#place(top + left, dx: 160pt, dy: 70pt,
  text(font: ks-font, weight: "regular", size: 16pt, fill: ks-muted)[
    LOCATION \/\/ KNOWINGSLAB
  ])

#place(top + right, dx: -160pt, dy: 70pt,
  text(font: ks-font, weight: "regular", size: 16pt, fill: ks-muted)[
    EST. 2026
  ])

#place(bottom + left, dx: 160pt, dy: -74pt,
  text(font: ks-font, weight: "regular", size: 16pt, fill: ks-muted)[
    TOMLEH.GG
  ])

#place(bottom + right, dx: -160pt, dy: -74pt,
  text(font: ks-font, weight: "regular", size: 16pt, fill: ks-muted)[
    \@KNOWINGSLAB
  ])

// --- Safe-zone content (mobile-visible) ---
// Safe zone: 1235x338 centred. Centre at (1024, 576).

#align(center + horizon)[
  // Mark + wordmark lockup
  #box[
    #stack(
      dir: ltr,
      spacing: 40pt,
      align(horizon, ks-mark-hud(
        size: 200pt,
        letter: ks-text, frame: ks-primary-bright,
        stroke-w: 3pt,
      )),
      align(horizon, text(
        font: ks-font,
        weight: "light",
        size: 140pt,
        fill: ks-text,
      )[Knowingslab]),
    )
  ]
  // Tagline
  #v(30pt)
  #text(
    font: ks-font,
    weight: "regular",
    size: 28pt,
    fill: ks-accent,
    tracking: 0.3em,
  )[ROBOTICS · SPACE · THINGS THAT WORK]
]
