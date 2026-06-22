# workers-template

Quick-start for Cloudflare Workers projects.

## Use

```sh
git clone --depth 1 https://github.com/JakobMelchard/cloudflare-core.git my-worker
cd my-worker
rm -rf .git
git init
cat > wrangler.toml <<'EOF'
name = "my-worker"
main = "src/index.js"
compatibility_date = "2025-06-01"
EOF
mkdir src && touch src/index.js
```

Or use the local install script in an existing dir:

```sh
bash install.sh
cat > wrangler.toml <<'EOF'
name = "my-worker"
main = "src/index.js"
compatibility_date = "2025-06-01"
EOF
mkdir src && touch src/index.js
```

## Structure

```
wrangler.toml           # Worker config (edit me!)
src/index.js            # Entry point (edit me!)
Makefile                # dev|validate|deploy
hooks/                  # git hooks (pre-commit, pre-push)
.github/workflows/      # CI (release-please)
```

See [cloudflare-core](https://github.com/JakobMelchard/cloudflare-core).
