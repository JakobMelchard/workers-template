# workers-template

Quick-start for Cloudflare Workers projects.

## Use

```sh
curl -sL https://raw.githubusercontent.com/JakobMelchard/cloudflare-core/main/install.sh | bash
```

Edit `wrangler.toml` (name, bindings).
Edit `src/index.js` with your handler.

```sh
make dev      # develop
make deploy   # ship
```

## Structure

```
wrangler.toml           # Worker config (edit me!)
src/index.js            # Entry point (edit me!)
package.json            # wrangler devDependency
Makefile                # dev|validate|deploy
hooks/                  # git hooks
.github/workflows/      # CI
```
