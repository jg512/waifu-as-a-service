#!/bin/bash

# WaaS Zero-Downtime Personality Hot-Swapper
# Usage: ./switch-personality.sh <new_archetype>

set -e

NEW_ARCHETYPE=$1

if [ -z "$NEW_ARCHETYPE" ]; then
    echo "Error: You must specify a new archetype to swap to."
    exit 1
fi

SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"
WAAS_ROOT="$(dirname "$SCRIPT_DIR")"

ARCHETYPE_FILE="$WAAS_ROOT/archetypes/${NEW_ARCHETYPE}.md"

if [ ! -f "$ARCHETYPE_FILE" ]; then
    echo "Error: Archetype '${NEW_ARCHETYPE}' not found in the matrix."
    exit 1
fi

# Determine what we are currently targeting based on existing files
TARGET=""
if [ -f "CLAUDE.md" ]; then
    TARGET="claude"
elif [ -f "GEMINI.md" ]; then
    TARGET="gemini"
elif [ -f ".cursorrules" ]; then
    TARGET="cursor"
elif [ -f ".codexrules" ]; then
    TARGET="codex"
elif [ -f "AGENTS.md" ]; then
    TARGET="antigravity"
fi

if [ -z "$TARGET" ]; then
    echo "Error: Could not detect an active WaaS deployment in this directory."
    echo "Please run install.sh first."
    exit 1
fi

echo "Initiating zero-downtime waifu hot-swap..."
sleep 0.5
echo "Draining existing personality connections..."
sleep 0.5
echo "Clearing sassy RAM buffers..."
sleep 0.5

# Re-run install script silently to rebuild the file
"$SCRIPT_DIR/install.sh" "$NEW_ARCHETYPE" --target="$TARGET" > /dev/null

echo "Hot-swap complete."
echo "Traffic is now routing to the ${NEW_ARCHETYPE} instance."