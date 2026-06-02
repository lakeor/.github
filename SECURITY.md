# Security Policy — lakeor

This is the default security policy for every repository in the
[`lakeor`](https://github.com/lakeor) organisation. Individual
repos may override it with their own `SECURITY.md`.

## Supported versions

| Channel | Supported |
| ------- | --------- |
| `main` (latest release) | :white_check_mark: |
| `dev` (integration)     | :white_check_mark: best-effort |
| pre-1.0 minor releases  | latest minor only |

Once a component reaches 1.0 we support the latest minor plus one previous
minor for security fixes.

## Reporting a vulnerability

**Do not open a public GitHub issue.** Use one of:

- **Email:** [security@starling.studio](mailto:security@starling.studio)
  (PGP key on request; fingerprint listed at <https://starling.studio/security>)
- **GitHub Security Advisories:**
  <https://github.com/lakeor/.github/security/advisories/new>
  (private to repo maintainers)

Please include:

- Affected repository, version/commit, and component
- A description of the vulnerability and its impact
- A minimal reproducer or proof-of-concept
- Whether you intend to publish a write-up, and on what timeline

## Response timeline

| Step | Target |
| ---- | ------ |
| Acknowledgement | within **48 hours** |
| Triage & severity assessment | within **5 business days** |
| Fix or mitigation plan | within **30 days** for High/Critical |
| Coordinated disclosure | within **90 days** unless extension agreed |

## Credit

We are happy to credit reporters in release notes and advisories. Let us know
how you would like to be acknowledged (or if you prefer to remain anonymous).

## Out of scope

- Vulnerabilities in third-party dependencies (please report upstream — we'll
  bump versions promptly once fixed)
- Issues that require physical access to a deployed machine
- Self-XSS, missing best-practice headers without demonstrated impact
- Denial-of-service via volumetric attacks on public demo deployments

## Bug-bounty

We do not currently operate a paid bug-bounty programme, but valid reports may
qualify for swag, sponsorship matching, or paid engagement at our discretion.
