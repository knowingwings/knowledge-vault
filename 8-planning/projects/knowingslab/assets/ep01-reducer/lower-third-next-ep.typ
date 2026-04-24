// Knowingslab — Lower-third overlay template
// Output: 1920x1080 PNG with transparent background.
// Keys onto any video frame. Edit the LABEL and STATE vars
// below per shot, or duplicate for a batch.
//
// Compile: typst compile --root . assets/lower-third.typ assets/lower-third.png --ppi 72
//
// Typical uses for Video 1:
//   LABEL = "NEXT EP",       STATE = "MEET ALGERNON"
//   LABEL = "PLATE HARMONIC",  STATE = "LAUNCHED"
//   LABEL = "PROTOTYPE V1",    STATE = "PRINT + ASSEMBLY"
//   LABEL = "TEST",            STATE = "DESIGN VERIFICATION"

#import "../../knowingslab-brand.typ": *

// ------------ Edit per shot ------------
#let LABEL = "NEXT EP"
#let STATE = "MEET ALGERNON"
#let STATE-COLOUR = ks-accent-cool  // ks-accent (gold) / ks-accent-cool (teal) / ks-accent-warn (red)
// ---------------------------------------

#set page(
  width: 1920pt,
  height: 1080pt,
  margin: 0pt,
  fill: none,  // transparent PNG
)

// --- Lower-third content: bottom-left, above bottom 10% ---
#place(bottom + left, dx: 80pt, dy: -100pt)[
  #block[
    // Left corner-bracket accent
    #box(inset: (left: 0pt, top: 4pt))[
      #box(width: 40pt, height: 40pt)[
        #place(top + left, line(length: 28pt, stroke: 2.5pt + ks-text))
        #place(top + left, line(length: 28pt, angle: 90deg, stroke: 2.5pt + ks-text))
      ]
    ]
    #h(12pt)
    #box[
      #stack(dir: ttb, spacing: 6pt,
        text(font: ks-font, weight: "regular", size: 18pt, fill: ks-muted, tracking: 0.2em)[SUBJECT],
        text(font: ks-font, weight: "bold", size: 44pt, fill: ks-text)[#LABEL],
        box[
          #line(length: 40pt, stroke: 2pt + STATE-COLOUR)
          #h(10pt)
          #text(font: ks-font, weight: "medium", size: 22pt, fill: STATE-COLOUR, tracking: 0.2em)[#STATE]
        ],
      )
    ]
  ]
]
