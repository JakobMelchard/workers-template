# workers-template — CF Workers project

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

Edit `wrangler.toml` with your worker name and bindings.
