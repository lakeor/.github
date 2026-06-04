# Contributing to Lakeor

Thanks for your interest in contributing to the Lakeor stack
([`lakeor`](https://github.com/lakeor)). This file is the default
contribution guide for every repository in the org; individual repos may
override or extend it with their own `CONTRIBUTING.md`.

## Ground rules

1. **Be kind.** All participation is subject to our
   [Code of Conduct](./CODE_OF_CONDUCT.md).
2. **Sign your commits** with `git commit -s` — this asserts your contribution
   is made under the [Developer Certificate of Origin 1.1](https://developercertificate.org/).
3. **Prefer issues before large PRs.** Open a discussion or issue first so we
   can align on scope and design.
4. **Conventional Commits.** Use
   [Conventional Commits](https://www.conventionalcommits.org/) for commit
   messages (`feat:`, `fix:`, `docs:`, `refactor:`, `chore:`, `perf:`, `test:`).

## Branching model

- `dev` is the integration branch — open PRs against `dev`.
- `main` tracks the latest released revision.
- Release branches use `release/x.y`.

## Local development

Each repo ships a `Makefile`. Common targets:

```bash
make help        # list available targets
make build       # build the project
make test        # run the test suite
make lint        # run linters / format checks
```

Rust repos additionally expose `make check` (fmt + clippy + test).

## Pull-request checklist

- [ ] Branch is up-to-date with `dev`
- [ ] Tests pass locally (`make test`)
- [ ] Linters pass (`make lint`)
- [ ] `CHANGELOG.md` updated under `## [Unreleased]`
- [ ] Public API changes documented
- [ ] DCO sign-off (`Signed-off-by:` line)

## Security

Do **not** open public issues for vulnerabilities — see [SECURITY.md](./SECURITY.md).

## Licensing

By contributing you agree that your contribution is licensed under the same
terms as the repository it lands in (Apache-2.0 for clients/SDKs/deployments,
AGPL-3.0-or-later for runtime servers). A commercial dual-license is offered
by Lakeor for the AGPL-3.0 components — contributors retain copyright
to their contributions; see the [DCO](https://developercertificate.org/). An
optional Individual Contributor License Agreement (ICLA), provided separately
by Lakeor on request, is only required for paid contractors.
