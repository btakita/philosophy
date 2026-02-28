#!/usr/bin/env bash
set -euo pipefail

# Install philosophy ontology kernel into Claude Code user context.
#
# Usage: ./install.sh [TARGET_DIR]
#   TARGET_DIR defaults to $HOME
#
# Creates:
#   TARGET_DIR/.claude/CLAUDE.md  — appends/replaces philosophy kernel section
#   TARGET_DIR/.claude/philosophy — symlink to this repo
#
# Idempotent — safe to re-run after updating the philosophy repo.

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
TARGET_DIR="${1:-$HOME}"
CLAUDE_DIR="$TARGET_DIR/.claude"
CLAUDE_MD="$CLAUDE_DIR/CLAUDE.md"
SYMLINK="$CLAUDE_DIR/philosophy"

# Markers for idempotent replacement
START_MARKER="<!-- philosophy:start -->"
END_MARKER="<!-- philosophy:end -->"

mkdir -p "$CLAUDE_DIR"

# --- Symlink ---
if [ -L "$SYMLINK" ]; then
    CURRENT_TARGET="$(readlink -f "$SYMLINK")"
    if [ "$CURRENT_TARGET" = "$SCRIPT_DIR" ]; then
        echo "Symlink already points to $SCRIPT_DIR"
    else
        echo "Updating symlink: $CURRENT_TARGET → $SCRIPT_DIR"
        ln -sfn "$SCRIPT_DIR" "$SYMLINK"
    fi
elif [ -e "$SYMLINK" ]; then
    echo "Error: $SYMLINK exists but is not a symlink. Remove it first."
    exit 1
else
    ln -sfn "$SCRIPT_DIR" "$SYMLINK"
    echo "Created symlink: $SYMLINK → $SCRIPT_DIR"
fi

# --- Kernel content ---
KERNEL=$(cat <<'PHILOSOPHY'
<!-- philosophy:start -->
## Philosophy — Domain Ontology

Canonical ontology for modeling Existence across all contexts. Full definitions: `~/.claude/philosophy/src/{term}.md`

**Ontology chain:** Existence → Entity → System → Domain → Scope → Context → Resolution → Focus

| Term | Definition |
|------|-----------|
| **Existence** | Everything that 'is'; the universal set containing all entities. God = Existence. |
| **Entity** | Any information in Existence — abstractions, persons, systems, objects |
| **Abstraction** | A concept modeling something else without its complexity; enables perspective |
| **Scope** | Breadth/depth/reach of a perspective; bounds what's relevant |
| **Context** | Scope applied to abstractions; limits information needed for coherent systems |
| **Resolution** | Level of detail and granularity; zoom in/out to observe patterns |
| **Pattern** | Elements that repeat in predictable manner; transferable across domains |
| **System** | An entity viewed from an internalized perspective; a whole of relationships |
| **Domain** | A bounded system of interest with associated language |
| **Focus** | Finite attention applied to a scope; enables efficient energy use |
| **Perspective** | A viewpoint on a system; influences reality; all entities have one |
| **Consciousness** | An entity's ability to interpret relevant signals; being present |
| **Evolution** | How an entity alters in response to context; the universal pattern of change |
| **Story** | A sequence of events holding state that creates context; how meaning is communicated |

**Usage:** When these terms appear in conversation, apply the canonical definitions above. Definitions start broad (Existence scope) and narrow by context. For full node definitions (Ontology/Axiology/Epistemology), read `~/.claude/philosophy/src/{term}.md`. The philosophy repo is a living system — update nodes as understanding evolves.

**Domain overlays:** Repos extend this base ontology in their own `CLAUDE.md` with a `## Domain Ontology` section. Overlay terms reference base concepts they extend.
<!-- philosophy:end -->
PHILOSOPHY
)

# --- Write to CLAUDE.md ---
if [ -f "$CLAUDE_MD" ]; then
    if grep -q "$START_MARKER" "$CLAUDE_MD"; then
        # Replace existing section
        # Use awk to replace between markers
        awk -v kernel="$KERNEL" '
            /<!-- philosophy:start -->/ { print kernel; skip=1; next }
            /<!-- philosophy:end -->/ { skip=0; next }
            !skip { print }
        ' "$CLAUDE_MD" > "$CLAUDE_MD.tmp"
        mv "$CLAUDE_MD.tmp" "$CLAUDE_MD"
        echo "Updated philosophy kernel in $CLAUDE_MD"
    else
        # Append
        printf '\n%s\n' "$KERNEL" >> "$CLAUDE_MD"
        echo "Appended philosophy kernel to $CLAUDE_MD"
    fi
else
    printf '%s\n' "$KERNEL" > "$CLAUDE_MD"
    echo "Created $CLAUDE_MD with philosophy kernel"
fi

echo "Done. Philosophy ontology installed."
