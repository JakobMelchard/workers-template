# workers-template

GitHub template for Cloudflare Workers projects.

## Usage

1. "Use this template" on GitHub, clone
2. `bash install.sh` — adds workers-core as `.core` submodule, sets hooks
3. `make dev` — local dev
4. `make deploy` — deploy to Workers

## Structure

```
wrangler.toml       # Worker config
src/index.js        # Entry point
package.json        # wrangler devDependency
Makefile            # include .core/Makefile
install.sh          # Bootstrap
update.sh           # Pull latest workers-core
```
