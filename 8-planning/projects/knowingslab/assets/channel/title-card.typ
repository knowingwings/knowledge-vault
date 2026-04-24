// Knowingslab — Generic title card (intro)
// Output: 1920x1080 PNG. Static; animate fade/slide in your editor.
// Compile: typst compile --root . assets/title-card.typ assets/title-card.png --ppi 72

#import "../../knowingslab-brand.typ": *

#set page(
  width: 1920pt,
  height: 1080pt,
  margin: 0pt,
  fill: ks-bg-dark,
)

// --- HUD corner brackets ---
#let corner-len = 100pt
#let corner-stroke = 2.5pt

#place(top + left, dx: 80pt, dy: 80pt,
  line(length: corner-len, stroke: corner-stroke + ks-text))
#place(top + left, dx: 80pt, dy: 80pt,
  line(length: corner-len, angle: 90deg, stroke: corner-stroke + ks-text))
#place(top + right, dx: -80pt, dy: 80pt,
  line(length: corner-len, angle: 180deg, stroke: corner-stroke + ks-text))
#place(top + right, dx: -80pt, dy: 80pt,
  line(length: corner-len, angle: 90deg, stroke: corner-stroke + ks-text))
#place(bottom + left, dx: 80pt, dy: -80pt,
  line(length: corner-len, stroke: corner-stroke + ks-text))
#place(bottom + left, dx: 80pt, dy: -80pt,
  line(length: corner-len, angle: -90deg, stroke: corner-stroke + ks-text))
#place(bottom + right, dx: -80pt, dy: -80pt,
  line(length: corner-len, angle: 180deg, stroke: corner-stroke + ks-text))
#place(bottom + right, dx: -80pt, dy: -80pt,
  line(length: corner-len, angle: -90deg, stroke: corner-stroke + ks-text))

// --- Hero: mark + wordmark centred ---
#align(center + horizon)[
  #box[
    #stack(
      dir: ltr,
      spacing: 48pt,
      align(horizon, ks-mark-hud(size: 240pt, letter: ks-text, frame: ks-primary-bright, stroke-w: 3.5pt)),
      align(horizon, text(
        font: ks-font, weight: "light", size: 180pt, fill: ks-text,
      )[Knowingslab]),
    )
  ]
  #v(50pt)
  #text(
    font: ks-font, weight: "regular", size: 32pt, fill: ks-accent, tracking: 0.5em,
  )[ROBOTICS · SPACE · THINGS THAT WORK]
]
