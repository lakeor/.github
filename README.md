# Lakeor org-wide GitHub configuration

Default community health files and the public organisation profile for the
[`lakeor`](https://github.com/lakeor) GitHub organisation. GitHub applies a
file from here to every repo in the org that does not ship its own.

Internal-only material (runbooks, the member-only profile) lives in a
separate private repository.

## What's in here

| Path                       | Purpose                                                         |
| -------------------------- | --------------------------------------------------------------- |
| `profile/README.md`        | Public org landing page, rendered at github.com/lakeor          |
| `CODE_OF_CONDUCT.md`       | Contributor Covenant 2.1                                        |
| `CONTRIBUTING.md`          | Generic contribution guide (DCO sign-off, Conventional Commits) |
| `SECURITY.md`              | Vulnerability disclosure policy                                 |
| `SUPPORT.md`               | Where to get help (docs, community, commercial)                 |
| `CODEOWNERS`               | Default reviewers                                               |
| `ISSUE_TEMPLATE/`          | Default issue forms (bug report, feature request) and `config.yml` |
| `PULL_REQUEST_TEMPLATE.md` | Default PR template                                             |
| `.github/workflows/`       | Reusable GitHub Actions workflows (see below)                   |
| `res/logo/`                | Lakeor logo (SVG, PNG)                                          |
| `LICENSE`                  | Apache-2.0, for the contents of this repo                       |

Any repo can override a file by providing its own at the repo root, in
`.github/`, or in `docs/`.

## Shared workflows

| Workflow                                       | Purpose                                                 |
| ---------------------------------------------- | ------------------------------------------------------- |
| [`lint.yml`](.github/workflows/lint.yml)       | cspell (when `cspell.json` exists) + markdownlint-cli2  |
| [`rust.yml`](.github/workflows/rust.yml)       | `cargo fmt --check`, clippy `-D warnings`, `cargo test` |
| [`release.yml`](.github/workflows/release.yml) | release-please (`release-type: simple`)                 |

All three declare `on: workflow_call`. `lint.yml` also runs on pushes and pull
requests to this repo, and `release.yml` on pushes to `main`. Call one from
another repo like this:

```yaml
jobs:
  lint:
    uses: lakeor/.github/.github/workflows/lint.yml@main
```

## Development

```bash
make lint   # markdownlint + yamllint, when installed
```

cspell uses [`cspell.json`](cspell.json) (British and American English) and
markdownlint uses [`.markdownlint-cli2.yaml`](.markdownlint-cli2.yaml).

## Licence

Apache-2.0. See [LICENSE](LICENSE).

---

<!-- markdownlint-disable MD033 -->
<!-- FOOTER START -->
<p align="center">
    <img src="res/logo/lakeor-logo.svg" width="5%" alt="Lakeor Logo">
</p>
<p align="center">
    <sub>Copyright © 2025-2026 <a href="https://www.lakeor.com" target="_blank">Lakeor</a>. All Rights Reserved.</sub>
</p>
<!-- FOOTER END -->
