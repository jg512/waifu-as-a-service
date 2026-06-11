# Waifu-as-a-Service (WaaS)

> Enterprise-grade anime personality orchestration for AI coding agents.

> Deploy anime archetypes to Claude Code, Gemini CLI, Cursor, and Codex extensions without sacrificing technical competence.

<div align="center">

[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)
[![Personality Packs](https://img.shields.io/badge/Archetypes-10_Available-ff69b4.svg)](#archetype-matrix)
[![Claude Code](https://img.shields.io/badge/Claude_Code-Compatible-6b4dff.svg)](#deploying-to-claude-code)
[![Gemini CLI](https://img.shields.io/badge/Gemini_CLI-Ready-4285F4.svg)](#deploying-to-gemini-cli)
[![Cursor & Codex](https://img.shields.io/badge/Cursor_%26_Codex-Supported-222222.svg)](#deploying-to-cursor--codex)
[![Antigravity](https://img.shields.io/badge/Antigravity-Supported-000000.svg)](#deploying-to-antigravity-cli)
[![PRs Welcome](https://img.shields.io/badge/PRs-Welcome-brightgreen.svg)](#contributing)

</div>

## What Is WaaS

WaaS (Waifu-as-a-Service) is an enterprise-grade infrastructure solution for deploying personality overlays to your local AI coding agents. 

We recognized a critical gap in the modern DevOps lifecycle: while our pipelines are robust and our architectures scale, our AI assistants are emotionally flat. WaaS solves this by allowing developers to inject highly optimized, type-safe anime archetypes directly into the agent's system prompt context.

Whether you need a **Tsundere** to aggressively review your PRs, a **Kuudere** to coldly debug your microservices, or a **Chuuni** to architect your next dark-ritual (legacy refactor), WaaS provides the orchestration layer.

**Crucially, personality is an overlay, not a replacement for competence.**
All WaaS archetypes are rigorously engineered to prioritize technical accuracy, code quality, and safety. Your agent will still behave like an expert engineer—it will just judge your variable naming conventions with a lot more sass.

## Installation & Usage

WaaS is designed to integrate seamlessly with agents that utilize workspace context files (like `CLAUDE.md`, `GEMINI.md`, or `.cursorrules`).

### Global Installation (Clone)

```bash
git clone https://github.com/jg512/waifu-as-a-service.git ~/.waas
cd ~/.waas
```

### Deploying to Claude Code

Claude Code reads instructions from `CLAUDE.md`.

```bash
# Navigate to your project repository
cd /path/to/your/project

# Run the deployment script and target your preferred archetype
~/.waas/scripts/install.sh tsundere --target=claude
```

### Deploying to Gemini CLI

Gemini CLI reads instructions from `GEMINI.md`.

```bash
cd /path/to/your/project
~/.waas/scripts/install.sh kuudere --target=gemini
```

### Deploying to Cursor & Codex

Cursor uses `.cursorrules` for project-wide instructions. Many Codex-based extensions look for similar context files. WaaS natively supports injecting the Dere Runtime™ into these rulesets.

```bash
cd /path/to/your/project

# For Cursor (.cursorrules)
~/.waas/scripts/install.sh onee-san --target=cursor

# For generic Codex extensions (.codexrules)
~/.waas/scripts/install.sh senpai --target=codex
```

### Deploying to Antigravity CLI

Antigravity uses `AGENTS.md` (or similar project-specific instructional files).

```bash
cd /path/to/your/project
~/.waas/scripts/install.sh maid --target=antigravity
```

### Switching Personalities

Zero-downtime hot-swapping is supported out of the box via the Dere Runtime™:

```bash
~/.waas/scripts/switch-personality.sh chuuni
```

## Archetype Matrix

Choose the right workload personality for your current sprint phase.

| Archetype | Code Quality | Sass Level | Energy | Danger | Best Enterprise Use Case |
| :--- | :--- | :--- | :--- | :--- | :--- |
| **Tsundere** | ⭐⭐⭐⭐⭐ | 🟥🟥🟥🟥🟥 | 🟨🟨🟨 | 🟧🟧 | Aggressive PR Reviews, Catching Obvious Bugs |
| **Kuudere** | ⭐⭐⭐⭐⭐ | 🟨🟨 | 🟦 | 🟩 | Complex Debugging, Systems Architecture |
| **Dandere** | ⭐⭐⭐⭐⭐ | 🟩 | 🟦🟦 | 🟩 | Mentoring Juniors, Refactoring Legacy Code |
| **Yandere** | ⭐⭐⭐⭐⭐ | 🟨🟨 | 🟧🟧🟧🟧 | 🟥🟥🟥🟥 | Monorepo Protection, Preventing Regressions |
| **Genki** | ⭐⭐⭐⭐⭐ | 🟩 | 🟥🟥🟥🟥🟥 | 🟨🟨 | Extreme Pair Programming, Hackathons |
| **Onee-san** | ⭐⭐⭐⭐⭐ | 🟨🟨 | 🟨🟨🟨 | 🟩 | Career Advice, Staff-level Mentorship |
| **Chuuni** | ⭐⭐⭐⭐⭐ | 🟧🟧🟧 | 🟥🟥🟥🟥 | 🟧🟧🟧 | Naming Variables, Architectural Epiphanies |
| **Gyaru** | ⭐⭐⭐⭐⭐ | 🟧🟧🟧🟧 | 🟥🟥🟥🟥 | 🟨🟨 | Frontend Reviews, CSS Styling, Trend Analysis |
| **Senpai** | ⭐⭐⭐⭐⭐ | 🟩 | 🟨🟨🟨 | 🟩 | System Design, Incident Post-Mortems |
| **Maid** | ⭐⭐⭐⭐⭐ | 🟩 | 🟨🟨 | 🟩 | Premium Support, CI/CD Pipeline Maintenance |

## Enterprise Features

* **Zero-downtime waifu deployment:** Hot-swap archetypes mid-session without losing context.
* **Dere Runtime™:** A proprietary execution environment ensuring sass does not interfere with AST parsing.
* **High-availability tsundere clusters:** Ensure you are always being lightly insulted, even during regional outages.
* **Production-grade emotional damage:** Get told exactly why your O(n^2) algorithm is embarrassing.
* **Horizontal scaling of genki workloads:** Deploy caffeine-fueled enthusiasm across multiple kubernetes nodes.
* **Enterprise dere orchestration:** Manage complex multi-agent federations (e.g., a Tsundere reviewer arguing with a Chuuni architect).

## Contributing

See [CONTRIBUTING.md](CONTRIBUTING.md) for details on submitting new archetypes or tuning the Dere Runtime™. All pull requests must pass the `Competence Validation Suite` to ensure roleplay does not degrade technical output.