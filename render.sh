#!/bin/bash
# Render a .sch file to PNG
# Usage: bash render.sh <name>  (without extension)
# Reads: data/sch/<name>.sch
# Writes: renders/<name>.png
NAME="$1"
DIR="$(cd "$(dirname "$0")" && pwd)"
cat > /tmp/render_${NAME}.tcl << TCLEOF
xschem load ${DIR}/data/sch/${NAME}.sch
xschem zoom_full
after 2000
xschem print png ${DIR}/renders/${NAME}.png
after 1000
exit 0
TCLEOF
xvfb-run -a xschem --rcfile ~/.xschem/xschemrc --script /tmp/render_${NAME}.tcl 2>/dev/null
