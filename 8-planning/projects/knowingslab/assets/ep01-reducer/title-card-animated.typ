// Knowingslab — Animated title card for Reducer Video (Ep 01)
// Per-frame render driven by `--input frame=N`. 30fps, 150 frames total (5s).
// Sequence: 6 beats — "I THREW AWAY" / "4" / "MONTHS OF" / "WORK" / "FOR" / "THIS"
// Rendered frame-by-frame and assembled into an MP4 by render-title-card.sh.
//
// Compile one frame:
//   typst compile --root . --input frame=N assets/ep01-reducer/title-card-animated.typ out.png --ppi 72

#import "../../knowingslab-brand.typ": *

#let frame = int(sys.inputs.at("frame", default: "0"))
#let frames-per-beat = 15
#let pop-frames = 8

// Word sequence. "4" is the gold pivot word.
// Beat plan: 6 beats (15 frames each).
//   b1 (f0):  I THREW AWAY     — line 1 as a single pop
//   b2 (f15): 4                — gold, on its own
//   b3 (f30): MONTHS OF        — paired
//   b4 (f45): WORK             — closes line 2
//   b5 (f60): FOR              — individual
//   b6 (f75): THIS             — individual, final hit
#let sequence = (
  (word: "I",      reveal:  0, color: ks-text),
  (word: "THREW",  reveal:  0, color: ks-text),
  (word: "AWAY",   reveal:  0, color: ks-text),
  (word: "4",      reveal: 15, color: ks-accent),
  (word: "MONTHS", reveal: 30, color: ks-text),
  (word: "OF",     reveal: 30, color: ks-text),
  (word: "WORK",   reveal: 45, color: ks-text),
  (word: "FOR",    reveal: 60, color: ks-text),
  (word: "THIS",   reveal: 75, color: ks-text),
)

// Line layout: 3 lines on the screen.
#let line1 = (0, 1, 2)            // I THREW AWAY
#let line2 = (3, 4, 5, 6)         // 4 MONTHS OF WORK
#let line3 = (7, 8)               // FOR THIS

// ============================================================
// Page
// ============================================================
#set page(
  width: 1920pt,
  height: 1080pt,
  margin: 0pt,
  fill: ks-bg-dark,
)

// ============================================================
// Static HUD frame
// ============================================================
#let corner-len = 56pt
#let corner-stroke = 2pt
#let corner-inset = 48pt

#place(top + left, dx: corner-inset, dy: corner-inset,
  line(length: corner-len, stroke: corner-stroke + ks-muted))
#place(top + left, dx: corner-inset, dy: corner-inset,
  line(length: corner-len, angle: 90deg, stroke: corner-stroke + ks-muted))

#place(top + right, dx: -corner-inset, dy: corner-inset,
  line(length: corner-len, angle: 180deg, stroke: corner-stroke + ks-muted))
#place(top + right, dx: -corner-inset, dy: corner-inset,
  line(length: corner-len, angle: 90deg, stroke: corner-stroke + ks-muted))

#place(bottom + left, dx: corner-inset, dy: -corner-inset,
  line(length: corner-len, stroke: corner-stroke + ks-muted))
#place(bottom + left, dx: corner-inset, dy: -corner-inset,
  line(length: corner-len, angle: -90deg, stroke: corner-stroke + ks-muted))

#place(bottom + right, dx: -corner-inset, dy: -corner-inset,
  line(length: corner-len, angle: 180deg, stroke: corner-stroke + ks-muted))
#place(bottom + right, dx: -corner-inset, dy: -corner-inset,
  line(length: corner-len, angle: -90deg, stroke: corner-stroke + ks-muted))

#place(top + left, dx: corner-inset + 68pt, dy: corner-inset + 2pt,
  text(font: ks-font, weight: "regular", size: 16pt, fill: ks-muted)[
    EP 01 \/\/ REDUCER PIVOT
  ])

#place(top + right, dx: -corner-inset - 68pt, dy: corner-inset + 2pt,
  text(font: ks-font, weight: "regular", size: 16pt, fill: ks-muted)[
    KNOWINGSLAB \/\/ EST. 2026
  ])

#place(bottom + right, dx: -corner-inset - 12pt, dy: -corner-inset - 12pt,
  ks-mark-hud(size: 48pt, letter: ks-text, frame: ks-primary-bright))

// ============================================================
// Pop-in animation
// Returns (opacity, scale) for a word with reveal frame `rf`.
// Overshoot curve: scale peaks at 1.08 at ~60% through pop, settles to 1.0.
// Opacity ramps to full by ~55% of the pop window.
// ============================================================
#let word-anim(f, rf) = {
  let t = f - rf
  if t < 0 { return (opacity: 0.0, scale: 70%) }
  if t >= pop-frames { return (opacity: 1.0, scale: 100%) }
  let p = t / pop-frames
  let peak-at = 0.6
  let s = if p < peak-at {
    0.7 + (1.08 - 0.7) * (p / peak-at)
  } else {
    1.08 - 0.08 * ((p - peak-at) / (1 - peak-at))
  }
  let o = calc.min(1.0, p * 1.8)
  (opacity: o, scale: s * 100%)
}

#let anim-word(entry, size: 120pt) = {
  let a = word-anim(frame, entry.reveal)
  let col = entry.color.transparentize((1 - a.opacity) * 100%)
  box(scale(a.scale, origin: center + horizon, reflow: false,
    text(font: ks-font, weight: "extrabold", size: size, fill: col, entry.word)
  ))
}

#let render-line(indices, spacing: 32pt) = {
  stack(dir: ltr, spacing: spacing,
    ..indices.map(i => anim-word(sequence.at(i)))
  )
}

// ============================================================
// Hero text (3 lines, vertically distributed around centre)
// ============================================================
#place(center + horizon, dy: -165pt)[
  #render-line(line1)
]
#place(center + horizon, dy: 0pt)[
  #render-line(line2)
]
#place(center + horizon, dy: 165pt)[
  #render-line(line3)
]
