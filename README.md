# Lakeor org-wide GitHub configuration

This repository provides default community health files for the
[`lakeor`](https://github.com/lakeor) GitHub organization.
Anything here is inherited by every repo in the org that does not provide
its own override.

## What's in here

| Path                        | Purpose                                                        |
| --------------------------- | -------------------------------------------------------------- |
| `profile/README.md`         | Org landing page (rendered at github.com/lakeor)        |
| `CODE_OF_CONDUCT.md`        | Contributor Covenant 2.1 — default for every repo              |
| `CONTRIBUTING.md`           | Generic contribution guide                                     |
| `SECURITY.md`               | Vulnerability disclosure policy                                |
| `SUPPORT.md`                | Where to get help (docs / discussions / commercial)            |
| `FUNDING.yml`               | Sponsorship links shown in the "Sponsor" button                |
| `CODEOWNERS`                | Default reviewers                                              |
| `ISSUE_TEMPLATE/`           | Default issue forms                                            |
| `PULL_REQUEST_TEMPLATE.md`  | Default PR template                                            |
| `workflows/`                | Reusable GitHub Actions workflows                              |
| `LICENSE`                   | Apache-2.0 — applies to the contents of this org-config repo   |

### Reusable workflows

| Workflow                                       | Purpose                          |
| ---------------------------------------------- | -------------------------------- |
| [`workflows/lint.yml`](workflows/lint.yml)     | cspell + markdownlint            |
| [`workflows/rust.yml`](workflows/rust.yml)     | fmt + clippy + test              |
| [`workflows/release.yml`](workflows/release.yml) | release-please automation      |

Call them from any repo:

```yaml
jobs:
  lint:
    uses: lakeor/.github/.github/workflows/lint.yml@main
```

## Overriding

Any repo can override any of these files by providing its own at the repo
root (or under `.github/` inside the repo).

## License

Apache-2.0 — see [LICENSE](LICENSE).
