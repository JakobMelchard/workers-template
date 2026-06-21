# workers-template — CF Workers project template

```sh
bash install.sh     # adds .core submodule, sets hooks
make dev            # wrangler dev
make deploy         # wrangler deploy
bash update.sh      # pull latest workers-core
```

CI: release-please only. Deploy via pre-push hook.
