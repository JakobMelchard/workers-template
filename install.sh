#!/bin/bash
set -euo pipefail

COREDIR=".core"
CORE_REPO="JakobMelchard/cloudflare-core"
BRANCH="${1:-main}"

if [ -d "$COREDIR" ]; then
  echo "Already installed. Run: bash update.sh"
  exit 1
fi

if git rev-parse --git-dir &>/dev/null; then
  git submodule add "https://github.com/$CORE_REPO.git" "$COREDIR"
  git submodule update --init "$COREDIR"
else
  git clone --branch "$BRANCH" "https://github.com/$CORE_REPO.git" "$COREDIR"
fi

git config core.hooksPath "$COREDIR/hooks/"

for f in .gitignore; do
  [ -f "$f" ] || cp "$COREDIR/$f" "$f"
done

cat >> .gitignore <<'EOF'
.dev.vars
.wrangler
node_modules
EOF

if ! command -v wrangler &>/dev/null; then
  echo "  ⚠ wrangler not found — install manually (npm i -g wrangler)"
fi

echo "✓ installed"
