// Knowingslab — Blue-on-dark tuning sweep
// Fine-grained brightness sweep between NASA Blue (too dim) and
// Instrument Blue (clearly visible) to find the minimum lift that
// keeps the blue legible on warm-dark.
// Compile: typst compile --root . assets/blue-on-dark-comparison.typ assets/blue-on-dark-comparison.png --ppi 72

#import "../knowingslab-brand.typ": *

#set page(width: 1920pt, height: 1080pt, margin: 0pt, fill: ks-bg-dark)
#set text(font: ks-font, size: 14pt, fill: ks-text)

#place(top + center, dy: 40pt)[
  #text(weight: "bold", size: 26pt, fill: ks-text)[NASA Blue — brightness sweep on warm-dark]
  #v(6pt)
  #text(size: 13pt, fill: ks-muted)[
    L to R: baseline (too dim) → slight lift → moderate lift → punchy → Instrument Blue (was option C)
  ]
]

#let candidates = (
  (rgb("#0B3D91"), "#0B3D91", "NASA Blue — baseline"),
  (rgb("#124AAD"), "#124AAD", "+slight lift"),
  (rgb("#1957C5"), "#1957C5", "+moderate lift"),
  (rgb("#2565D2"), "#2565D2", "+punchy"),
  (rgb("#3370D0"), "#3370D0", "Instrument Blue"),
)

#place(center + horizon, dy: -20pt)[
  #grid(
    columns: (1fr, 1fr, 1fr, 1fr, 1fr),
    rows: auto,
    gutter: 28pt,
    align: center + horizon,
    ..candidates.map(c => [
      #ks-mark-hud(
        size: 160pt,
        letter: ks-text,
        frame: c.at(0),
        stroke-w: 2.6pt,
      )
      #v(18pt)
      #text(size: 14pt, weight: "bold", fill: ks-text)[#c.at(2)]
      #v(4pt)
      #text(size: 11pt, fill: ks-muted)[#raw(c.at(1))]
    ])
  )
]

// Wordmark row for each
#place(bottom + center, dy: -60pt)[
  #align(center)[
    #text(size: 16pt, weight: "bold", fill: ks-text)[Wordmark legibility]
    #v(16pt)
    #grid(
      columns: (1fr, 1fr, 1fr, 1fr, 1fr),
      gutter: 28pt,
      align: center + horizon,
      ..candidates.map(c => [
        #text(font: ks-font, weight: "light", size: 32pt, fill: c.at(0))[Knowingslab]
        #v(4pt)
        #text(size: 10pt, fill: ks-muted)[#raw(c.at(1))]
      ])
    )
  ]
]
