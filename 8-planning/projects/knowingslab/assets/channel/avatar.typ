// Knowingslab — Channel avatar
// Output: 800x800 PNG. YouTube/social profile picture.
// Compile: typst compile assets/avatar.typ assets/avatar.png --ppi 72

#import "../../knowingslab-brand.typ": *

#set page(
  width: 800pt,
  height: 800pt,
  margin: 0pt,
  fill: ks-bg-dark,
)

#align(center + horizon)[
  #ks-mark-hud(
    size: 480pt,
    letter: ks-text, frame: ks-primary-bright,
    joint: ks-accent,
    stroke-w: 5pt,
  )
]
