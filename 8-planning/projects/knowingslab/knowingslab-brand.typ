// Knowingslab — Brand Module
// Version 0.1 — April 2026
//
// Reusable typst module defining Knowingslab brand primitives:
// colour tokens, typography, mark, and wordmark.
// Import with: #import "knowingslab-brand.typ": *
//
// The mark is a bracketed K with a pivot dot at the vertex —
// dual-reading as letterform and as a kinematic joint symbol.

// ============================================================
// Colour tokens
// ============================================================

// Palette v2 — aligned to Project Hail Mary interior grade (Fraser):
// cool NASA Blue primary (cockpit instrument) + warm Thermal Gold accent
// (tungsten/MLI), on warm near-black backgrounds with tungsten-tinted
// cream text. Rejects clinical cold whites; leans analog/warm.
#let ks-primary        = rgb("#0B3D91")  // NASA Blue — primary brand colour (light-ground documents, print)
#let ks-primary-bright = rgb("#124AAD")  // NASA Blue (dark-mode variant) — smallest lift from #0B3D91 that stays legible on warm-dark; use as `frame` on dark-ground marks and for wordmarks rendered on warm-dark backgrounds
#let ks-accent         = rgb("#D4A84B")  // Thermal Blanket Gold — MLI/spacecraft, warm tungsten
#let ks-accent-cool = rgb("#4A8287")  // Instrument Teal — circadian-cool, morning register, porthole/glass reflection
#let ks-accent-warn = rgb("#C44A2F")  // Safety Vermillion — caution/warning, PHM harness + REC indicator
#let ks-bg-dark     = rgb("#1C1611")  // Warm near-black — amber-tinted shadow
#let ks-text        = rgb("#F5EDDF")  // Tungsten cream — off-white with warm cast
#let ks-muted       = rgb("#7A6E5D")  // Warm grey — meta/annotation text
#let ks-rule        = rgb("#B8AE9D")  // Warm rule/divider

// ============================================================
// Typography weight convention — single-family hierarchy
// ============================================================
// JetBrains Mono carries everything. Hierarchy is weight-based, not
// family-based. No display sans is used. Use these tokens semantically
// rather than picking weights ad hoc — that's what keeps the system
// coherent across documents, thumbnails, and overlays.

#let ks-w-decorative = "extralight"  // Subtle marks, quiet overlays
#let ks-w-mark       = "light"       // The K inside the mark, wordmark
#let ks-w-body       = "regular"     // Default body text
#let ks-w-emphasis   = "medium"      // Inline emphasis, small headings
#let ks-w-heading    = "bold"        // Section headings
#let ks-w-hero       = "extrabold"   // Thumbnail titles, hero text

// ============================================================
// Typography
// ============================================================

#let ks-font = ("JetBrains Mono", "Space Mono", "IBM Plex Mono")

// ============================================================
// Mark: [K•]
// ============================================================
// A bracketed K with a filled circle overlaid at the vertex where
// the diagonals meet the stem — reads as both the letter K and as
// the kinematic pivot/joint symbol used in robotics diagrams.
//
// Parameters:
//   size       — cap-height of the letter (controls overall scale)
//   letter     — colour of the K and brackets
//   joint      — colour of the pivot dot
//   joint-dx   — horizontal nudge of the dot; tune per render size
//   joint-dy   — vertical nudge of the dot; should stay near 0
//   joint-r    — pivot dot radius (em, relative to size)
//
// The dot position (-0.22em horizontal from the K's centre) is a
// starting point calibrated for JetBrains Mono; adjust joint-dx
// if the dot doesn't sit on the K's vertex at your target size.

#let ks-mark(
  size: 48pt,
  letter: ks-primary,
  joint: ks-accent,
  joint-dx: -0.22em,
  joint-dy: 0em,
  joint-r: 0.09em,
  joint-filled: true,
  joint-stroke: 1.6pt,
) = {
  set text(font: ks-font, weight: "bold", size: size)
  box[
    #text(fill: letter)[\[]
    #box[
      #text(fill: letter)[K]
      #place(
        center + horizon,
        dx: joint-dx,
        dy: joint-dy,
        if joint-filled {
          circle(radius: joint-r, fill: joint)
        } else {
          circle(radius: joint-r, fill: none, stroke: joint-stroke + joint)
        },
      )
    ]
    #text(fill: letter)[\]]
  ]
}

// ============================================================
// Mark — integrated pivot variant
// ============================================================
// The K is "interrupted" at the vertex by the pivot circle: an area
// of the letter is erased (filled with bg colour) and an outline
// circle is drawn on top. The stem and diagonals appear to terminate
// at the circle edge, so the pivot is part of the letter structure
// rather than overlaid on it.
//
// Note: relies on `bg` matching the actual background where the mark
// is rendered. For use on coloured backgrounds, pass the matching bg.

#let ks-mark-integrated(
  size: 48pt,
  letter: ks-primary,
  joint: ks-accent,
  bg: rgb("#ffffff"),
  joint-dx: -0.22em,
  joint-dy: 0em,
  joint-r: 0.11em,
  joint-stroke: 1.8pt,
) = {
  set text(font: ks-font, weight: "bold", size: size)
  box[
    #text(fill: letter)[\[]
    #box[
      #text(fill: letter)[K]
      #place(
        center + horizon,
        dx: joint-dx,
        dy: joint-dy,
        circle(radius: joint-r, fill: bg),
      )
      #place(
        center + horizon,
        dx: joint-dx,
        dy: joint-dy,
        circle(radius: joint-r, fill: none, stroke: joint-stroke + joint),
      )
    ]
    #text(fill: letter)[\]]
  ]
}

// ============================================================
// Mark — HUD / Elite Dangerous line-graphics variant
// ============================================================
// Ditches typographic brackets in favour of four thin HUD-style
// corner brackets framing a K. Pivot is an outline circle at the
// vertex. Everything rendered at consistent thin stroke weight to
// read as a wireframe / schematic / targeting-reticle mark rather
// than bold typographic letterforms.
//
// Parameters:
//   size         — cap-height reference for the K
//   stroke-w     — stroke weight; controls overall line weight
//   corner-len   — length of each HUD corner stroke (em, relative to size)
//   box-w / box-h — framing rectangle dimensions (em, relative to size)
//   pivot-r      — pivot circle radius (em)
//   pivot-dx/dy  — pivot offset from centre of the framing box

#let ks-mark-hud(
  size: 56pt,
  letter: ks-primary,
  frame: none,  // if none, defaults to `letter`; pass a colour to split frame from K
  joint: ks-accent,
  stroke-w: 1.6pt,
  corner-len: 0.22em,
  box-w: 0.95em,
  box-h: 1.0em,
  pivot-r: 0.10em,
  pivot-dx: -0.16em,
  pivot-dy: 0em,
  k-weight: "light",
) = {
  let f = if frame == none { letter } else { frame }
  set text(font: ks-font, weight: k-weight, size: size, fill: letter)

  box(width: box-w, height: box-h)[
    // Top-left corner (→ right, ↓ down)
    #place(top + left, line(length: corner-len, stroke: stroke-w + f))
    #place(top + left, line(length: corner-len, angle: 90deg, stroke: stroke-w + f))
    // Top-right corner (← left, ↓ down)
    #place(top + right, line(length: corner-len, angle: 180deg, stroke: stroke-w + f))
    #place(top + right, line(length: corner-len, angle: 90deg, stroke: stroke-w + f))
    // Bottom-left corner (→ right, ↑ up)
    #place(bottom + left, line(length: corner-len, stroke: stroke-w + f))
    #place(bottom + left, line(length: corner-len, angle: -90deg, stroke: stroke-w + f))
    // Bottom-right corner (← left, ↑ up)
    #place(bottom + right, line(length: corner-len, angle: 180deg, stroke: stroke-w + f))
    #place(bottom + right, line(length: corner-len, angle: -90deg, stroke: stroke-w + f))

    // Centred K
    #place(center + horizon)[K]

    // Pivot circle (outline) near the K's vertex
    #place(
      center + horizon,
      dx: pivot-dx,
      dy: pivot-dy,
      circle(radius: pivot-r, fill: none, stroke: stroke-w + joint),
    )
  ]
}

// ============================================================
// Wordmark: [Knowingslab] or Knowingslab
// ============================================================

#let ks-wordmark(
  size: 24pt,
  fill: ks-primary,
  bracketed: true,
) = {
  set text(font: ks-font, weight: "bold", size: size)
  if bracketed {
    text(fill: fill)[\[Knowingslab\]]
  } else {
    text(fill: fill)[Knowingslab]
  }
}

// ============================================================
// Watermark — inverted mark for dark backgrounds (thumbnails, videos)
// ============================================================

#let ks-watermark(size: 18pt) = {
  ks-mark(size: size, letter: ks-text, joint: ks-accent)
}

// ============================================================
// Combined lockup — mark + wordmark, horizontally stacked
// ============================================================

#let ks-lockup(
  mark-size: 36pt,
  word-size: 20pt,
  fill: ks-primary,
  joint: ks-accent,
  gap: 0.4em,
) = {
  box[
    #ks-mark(size: mark-size, letter: fill, joint: joint)
    #h(gap)
    #ks-wordmark(size: word-size, fill: fill, bracketed: false)
  ]
}
