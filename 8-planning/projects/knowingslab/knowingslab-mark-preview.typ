// Knowingslab — Mark in Hail Mary Interior Palette
// Locked parameters: 1.6pt stroke, 0.22em corners, 0.10em pivot radius,
// -0.16em pivot offset, Light K weight, Thermal Blanket Gold accent.
// Palette shifted to PHM interior register: warm near-black bg,
// tungsten cream text/whites, warm greys.
// Compile: typst compile knowingslab-mark-preview.typ preview.pdf

#import "knowingslab-brand.typ": *

#set page(paper: "a4", margin: 1.8cm, fill: white)
#set text(font: ks-font, size: 10pt, fill: rgb("#1a1a1a"))

#let caption(s) = text(size: 7.5pt, fill: rgb("#666666"))[#s]
#let section(s) = {
  v(0.8em)
  text(size: 11pt, weight: "bold", fill: ks-primary)[#s]
  v(0.3em)
}

= Knowingslab — PHM Palette Lock

Accent: Thermal Blanket Gold `#D4A84B`.
Primary: NASA Blue `#0B3D91`.
Warm background: `#1C1611`.
Tungsten cream text: `#F5EDDF`.

#section[1. Mark at scale — light ground]

#grid(
  columns: (1fr, 1fr, 1fr),
  gutter: 1em,
  align: center + horizon,
  [#ks-mark-hud(size: 72pt) #linebreak() #caption[72pt]],
  [#ks-mark-hud(size: 48pt) #linebreak() #caption[48pt]],
  [#ks-mark-hud(size: 32pt) #linebreak() #caption[32pt]],
  [#ks-mark-hud(size: 24pt) #linebreak() #caption[24pt]],
  [#ks-mark-hud(size: 18pt) #linebreak() #caption[18pt]],
  [#ks-mark-hud(size: 14pt) #linebreak() #caption[14pt]],
)

#section[2. Mark on warm dark — PHM interior ground]

The dominant context: thumbnails, video overlays, watermarks. On warm
near-black the tungsten-cream K holds, the NASA Blue (bright variant)
frame brackets keep the brand primary visible, and the gold pivot sits
tonally rather than shouting.

#block(
  width: 100%,
  inset: 24pt,
  fill: ks-bg-dark,
  radius: 4pt,
)[
  #grid(
    columns: (1fr, 1fr, 1fr),
    gutter: 1.2em,
    align: center + horizon,
    [#ks-mark-hud(size: 72pt, letter: ks-text, frame: ks-primary-bright) #linebreak()
     #text(size: 7.5pt, fill: ks-rule)[72pt]],
    [#ks-mark-hud(size: 48pt, letter: ks-text, frame: ks-primary-bright) #linebreak()
     #text(size: 7.5pt, fill: ks-rule)[48pt]],
    [#ks-mark-hud(size: 32pt, letter: ks-text, frame: ks-primary-bright) #linebreak()
     #text(size: 7.5pt, fill: ks-rule)[32pt]],
    [#ks-mark-hud(size: 24pt, letter: ks-text, frame: ks-primary-bright) #linebreak()
     #text(size: 7.5pt, fill: ks-rule)[24pt]],
    [#ks-mark-hud(size: 18pt, letter: ks-text, frame: ks-primary-bright) #linebreak()
     #text(size: 7.5pt, fill: ks-rule)[18pt]],
    [#ks-mark-hud(size: 14pt, letter: ks-text, frame: ks-primary-bright) #linebreak()
     #text(size: 7.5pt, fill: ks-rule)[14pt]],
  )
]

#section[3. Cold-black vs warm-black comparison]

Left: old neutral `#1a1a1a`. Right: new warm `#1C1611`. Subtle shift —
warm-black reads as "lit interior" rather than "void."

#grid(
  columns: (1fr, 1fr),
  gutter: 1em,
  [
    #block(width: 100%, inset: 18pt, fill: rgb("#1a1a1a"), radius: 4pt)[
      #align(center)[
        #ks-mark-hud(size: 48pt, letter: rgb("#ffffff"))
      ]
      #v(0.4em)
      #align(center)[
        #text(size: 7pt, fill: rgb("#cccccc"))[Cold `#1a1a1a` + pure white]
      ]
    ]
  ],
  [
    #block(width: 100%, inset: 18pt, fill: ks-bg-dark, radius: 4pt)[
      #align(center)[
        #ks-mark-hud(size: 48pt, letter: ks-text, frame: ks-primary-bright)
      ]
      #v(0.4em)
      #align(center)[
        #text(size: 7pt, fill: ks-rule)[Warm `#1C1611` + tungsten cream + NASA Blue bright]
      ]
    ]
  ],
)

#pagebreak()

#section[4. Wordmark lockup — on both grounds]

#ks-lockup(mark-size: 40pt, word-size: 24pt)

#v(1em)

#block(width: 100%, inset: 20pt, fill: ks-bg-dark, radius: 4pt)[
  #align(center + horizon)[
    #box[
      #ks-mark-hud(size: 40pt, letter: ks-text, frame: ks-primary-bright)
      #h(0.5em)
      #text(font: ks-font, weight: "light", size: 24pt, fill: ks-text)[Knowingslab]
    ]
  ]
]

#v(0.5em)
#caption[Wordmark rendered in Light weight to match the mark.]

#section[5. Thumbnail mock — rough]

A quick test of the mark as a video thumbnail watermark. Placed
bottom-right, small enough to feel tertiary.

#block(
  width: 100%,
  height: 220pt,
  inset: 0pt,
  fill: ks-bg-dark,
  radius: 4pt,
)[
  #place(
    top + left,
    dx: 24pt, dy: 24pt,
    text(font: ks-font, weight: "bold", size: 22pt, fill: ks-text)[
      THROWING OUT \
      4 MONTHS \
      OF WORK
    ],
  )
  #place(
    top + left,
    dx: 24pt, dy: 100pt,
    text(font: ks-font, weight: "regular", size: 10pt, fill: ks-accent)[
      ━━ REDUCER PIVOT // EP 01
    ],
  )
  #place(
    bottom + right,
    dx: -20pt, dy: -20pt,
    ks-mark-hud(size: 32pt, letter: ks-text, frame: ks-primary-bright),
  )
]

#v(0.5em)
#caption[Rough mock — no real thumbnail image, just typesetting + mark placement to check the watermark proportion.]

#section[6. Palette reference]

#grid(
  columns: (1fr, 1fr, 1fr),
  gutter: 8pt,
  box(width: 100%, height: 40pt, fill: ks-primary, radius: 2pt)[
    #align(center + horizon)[#text(fill: ks-text, size: 8pt)[*NASA Blue* #h(0.5em) \#0B3D91]]
  ],
  box(width: 100%, height: 40pt, fill: ks-accent, radius: 2pt)[
    #align(center + horizon)[#text(fill: ks-bg-dark, size: 8pt)[*Thermal Gold* #h(0.5em) \#D4A84B]]
  ],
  box(width: 100%, height: 40pt, fill: ks-bg-dark, radius: 2pt)[
    #align(center + horizon)[#text(fill: ks-text, size: 8pt)[*Warm Black* #h(0.5em) \#1C1611]]
  ],
  box(width: 100%, height: 40pt, fill: ks-text, radius: 2pt, stroke: 0.5pt + rgb("#cccccc"))[
    #align(center + horizon)[#text(fill: ks-bg-dark, size: 8pt)[*Tungsten Cream* #h(0.5em) \#F5EDDF]]
  ],
  box(width: 100%, height: 40pt, fill: ks-muted, radius: 2pt)[
    #align(center + horizon)[#text(fill: ks-text, size: 8pt)[*Warm Grey* #h(0.5em) \#7A6E5D]]
  ],
  box(width: 100%, height: 40pt, fill: ks-rule, radius: 2pt)[
    #align(center + horizon)[#text(fill: ks-bg-dark, size: 8pt)[*Warm Rule* #h(0.5em) \#B8AE9D]]
  ],
)
