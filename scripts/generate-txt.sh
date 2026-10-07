#!/bin/bash
# Generates a plain-text uBlock filter list from filters.md.
# Markdown headings are converted to uBlock-compatible comments.
#
# Script: scripts/generate-txt.sh
# Input:  ../filters.md
# Output: ../filters.txt
#
# Usage:
#   bash scripts/generate-txt.sh
#   ./scripts/generate-txt.sh

set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
PROJECT_ROOT="$(cd "$SCRIPT_DIR/.." && pwd)"

SOURCE="$PROJECT_ROOT/filters.md"
OUTPUT="$PROJECT_ROOT/filters.txt"

if [[ ! -f "$SOURCE" ]]; then
    echo "Error: Source file not found: $SOURCE" >&2
    exit 1
fi

# Convert Markdown headings to uBlock comments and extract only fenced
# code-block contents. Prose outside code blocks is intentionally omitted.
awk '
  BEGIN { in_block = 0 }

  /^#{1,6}[[:space:]]+/ && !in_block {
    heading = $0
    sub(/^#{1,6}[[:space:]]+/, "", heading)

    if (started) {
      print ""
    }

    print "! " heading
    started = 1
    next
  }

  /^```/ {
    in_block = !in_block

    if (!in_block && started) {
      print ""
    }

    next
  }

  in_block {
    print
  }
' "$SOURCE" > "$OUTPUT"

# Count actual filter rules, excluding comments and blank lines.
rules=$(grep -E -c '^[^![:space:]]' "$OUTPUT" || true)

echo "Generated: $OUTPUT"
echo "Rules: $rules"
