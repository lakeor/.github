<!-- markdownlint-disable MD033 MD041 MD060 -->
<p align="center">
  <img src="https://raw.githubusercontent.com/lakeor/.github/main/res/logo/lakeor-logo.svg" width="160" alt="Lakeor">
</p>

<h1 align="center">Lakeor</h1>

<p align="center">
  <b>An open-source runtime for the geospatial data web.</b><br/>
  Open STAC runtime. MCP for agents. Self-hosted by default.
</p>

<p align="center">
  <a href="https://github.com/lakeor/lakeor-rte"><img src="https://img.shields.io/badge/runtime-AGPL--3.0-blue?style=flat-square" alt="rte"></a>
  <a href="https://github.com/lakeor/lakeor-mcp"><img src="https://img.shields.io/badge/MCP-commercial-lightgrey?style=flat-square" alt="mcp"></a>
</p>

---

## What is Lakeor?

Lakeor is a Rust-native implementation of the
[SpatioTemporal Asset Catalog (STAC)](https://stacspec.org/) API together with
a [Model Context Protocol (MCP)](https://modelcontextprotocol.io/) layer that
makes geospatial collections directly addressable by LLM agents.

The STAC runtime (`lakeor-rte`) is AGPL-3.0; the MCP server (`lakeor-mcp`) is
commercially licensed. Most repositories are not public yet.

The stack is built to be **self-hosted by default**: it ships as containers
with Docker Compose, Kustomize, Nomad and Terraform + Ansible deployments, so
you can pick the one that matches your infrastructure.

## Get involved

- **Discussions** — questions, ideas, show-and-tell
- **Issues** — bug reports, feature requests (use the templates)
- **Security** — see [SECURITY.md](https://github.com/lakeor/.github/blob/main/SECURITY.md)
- **Contributing** — see [CONTRIBUTING.md](https://github.com/lakeor/.github/blob/main/CONTRIBUTING.md)
- **Support** — see [SUPPORT.md](https://github.com/lakeor/.github/blob/main/SUPPORT.md)

---

<p align="center">
  <sub>Made by <a href="https://lakeor.com">Lakeor</a> ·  2026</sub>
</p>
