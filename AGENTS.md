# workers-template — CF Workers project

```sh
curl -sL https://raw.githubusercontent.com/JakobMelchard/cloudflare-core/main/install.sh | bash
npm install
```

Edit `wrangler.toml` with your worker name and bindings.

## Commands

```sh
npm run format    # prettier src/
make dev          # wrangler dev
make validate     # wrangler deploy --dry-run
make deploy       # wrangler deploy
```
