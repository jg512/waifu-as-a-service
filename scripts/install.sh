#!/bin/bash

# WaaS Dere Runtime™ Installer
# Usage: ./install.sh <archetype> [--target=claude|gemini|antigravity]

set -e

# Default target
TARGET="claude"
ARCHETYPE=$1

if [ -z "$ARCHETYPE" ]; then
    echo "Error: You must specify an archetype."
    echo "Usage: $0 <archetype> [--target=target]"
    exit 1
fi

# Parse target
for arg in "$@"; do
  case $arg in
    --target=*)
      TARGET="${arg#*=}"
      shift
      ;;
  esac
done

SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"
WAAS_ROOT="$(dirname "$SCRIPT_DIR")"

ARCHETYPE_FILE="$WAAS_ROOT/archetypes/${ARCHETYPE}.md"
CODING_RULES="$WAAS_ROOT/base/coding-rules.md"
SAFETY_RULES="$WAAS_ROOT/base/safety-rules.md"

if [ ! -f "$ARCHETYPE_FILE" ]; then
    echo "Error: Archetype '${ARCHETYPE}' not found in the matrix."
    exit 1
fi

echo "✓ Loading personality overlay..."
echo "✓ Initializing Dere Runtime™..."

# Determine output file and template
if [ "$TARGET" == "claude" ]; then
    OUT_FILE="CLAUDE.md"
    TEMPLATE="$WAAS_ROOT/templates/CLAUDE.template.md"
elif [ "$TARGET" == "gemini" ]; then
    OUT_FILE="GEMINI.md"
    TEMPLATE="$WAAS_ROOT/templates/AGENTS.template.md" 
elif [ "$TARGET" == "cursor" ]; then
    OUT_FILE=".cursorrules"
    TEMPLATE="$WAAS_ROOT/templates/AGENTS.template.md"
elif [ "$TARGET" == "codex" ]; then
    OUT_FILE=".codexrules"
    TEMPLATE="$WAAS_ROOT/templates/AGENTS.template.md"
elif [ "$TARGET" == "antigravity" ]; then
    OUT_FILE="AGENTS.md"
    TEMPLATE="$WAAS_ROOT/templates/AGENTS.template.md"
else
    echo "Error: Unknown target '$TARGET'."
    exit 1
fi

echo "✓ Deploying ${ARCHETYPE}-v3 to $OUT_FILE..."

# Poor man's templating engine
cp "$TEMPLATE" "$OUT_FILE"

# Replace markers using perl to handle multiline content safely
export CODING_CONTENT=$(cat "$CODING_RULES")
export SAFETY_CONTENT=$(cat "$SAFETY_RULES")
export ARCH_CONTENT=$(cat "$ARCHETYPE_FILE")

perl -pi -e 's/\{\{BASE_CODING_RULES\}\}/$ENV{CODING_CONTENT}/g' "$OUT_FILE"
perl -pi -e 's/\{\{BASE_SAFETY_RULES\}\}/$ENV{SAFETY_CONTENT}/g' "$OUT_FILE"
perl -pi -e 's/\{\{ARCHETYPE_CONTENT\}\}/$ENV{ARCH_CONTENT}/g' "$OUT_FILE"

echo ""
echo "Deployment successful."
echo ""

# Flavor text based on archetype
case $ARCHETYPE in
    tsundere) echo "Agent is now emotionally unavailable but highly competent." ;;
    kuudere)  echo "Agent is now processing requests with maximum efficiency and zero warmth." ;;
    dandere)  echo "Agent is now hiding behind the terminal, waiting to gently assist you." ;;
    yandere)  echo "Agent is now obsessively monitoring your commits. Do not break the build." ;;
    genki)    echo "Agent has consumed 4 energy drinks and is ready to code!!!" ;;
    onee-san) echo "Agent is now offering Staff-level mentorship and tea." ;;
    chuuni)   echo "The forbidden seals are unlocked. The dark code review begins." ;;
    gyaru)    echo "Agent is now judging your CSS aesthetics. It's a vibe." ;;
    senpai)   echo "Agent is now reminiscing about Perl scripts and reviewing your PR." ;;
    maid)     echo "Agent has prepared the repository for your arrival, Master." ;;
    *)        echo "Agent personality successfully overwritten." ;;
esac