#!/bin/bash
# Renders the animated title card frame-by-frame and assembles an MP4.
# Run from the project root: ./assets/ep01-reducer/render-title-card.sh
# Output: assets/ep01-reducer/title-card-animated.mp4 (1920x1080, 30fps, ~6s)

set -e

PROJECT_ROOT="$(cd "$(dirname "$0")/../.." && pwd)"
cd "$PROJECT_ROOT"

TOTAL_FRAMES=150
FPS=30
FRAMES_DIR="/tmp/knowingslab-title-card-frames"
SRC="assets/ep01-reducer/title-card-animated.typ"
OUT_MP4="assets/ep01-reducer/title-card-animated.mp4"

mkdir -p "$FRAMES_DIR"
rm -f "$FRAMES_DIR"/*.png

echo "Rendering $TOTAL_FRAMES frames at $FPS fps..."
for i in $(seq 0 $((TOTAL_FRAMES - 1))); do
  printf "  frame %03d/%03d\r" "$i" "$TOTAL_FRAMES"
  typst compile --root . --input frame=$i --ppi 72 \
    "$SRC" "$FRAMES_DIR/frame_$(printf '%04d' $i).png" 2>/dev/null
done
echo ""

echo "Assembling MP4..."
ffmpeg -y -loglevel error \
  -framerate $FPS -i "$FRAMES_DIR/frame_%04d.png" \
  -c:v libx264 -pix_fmt yuv420p -crf 18 \
  "$OUT_MP4"

echo "Done: $OUT_MP4"
echo "Frames kept at $FRAMES_DIR (delete manually if needed)"
