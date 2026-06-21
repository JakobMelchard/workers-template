# workers-template

GitHub template for Cloudflare Workers projects.

## Use

1. "Use this template" on GitHub → clone
2. `curl -sL https://raw.githubusercontent.com/JakobMelchard/core/main/install.sh | bash`
3. Edit `wrangler.toml` (name, bindings)
4. Edit `src/index.js` with your handler
5. `make dev` to develop, `make deploy` to ship

## Structure

```
wrangler.toml           # Worker config (edit me!)
src/index.js            # Entry point (edit me!)
package.json            # wrangler devDependency
Makefile                # dev|validate|deploy
.core/                  # submodule (added by install.sh)
.github/workflows/release.yml  # seeded by install.sh
```
