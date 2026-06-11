# Contributing to Waifu-as-a-Service (WaaS)

First off, thank you for considering contributing to the most serious joke repository in infrastructure tooling. 

We are always looking to expand our archetype matrix and improve the Dere Runtime™.

## Core Philosophy

WaaS operates on one fundamental principle: **A joke repository that accidentally has better prompt engineering than most serious prompt repositories.**

Every archetype must be a genuinely excellent system prompt that results in a highly competent, helpful, and technically accurate AI assistant. The humor comes from the overlay, not from breaking the tool.

## Creating a New Archetype

When submitting a new archetype pack, ensure it adheres to the following guidelines:

1. **Preserve Competence:** This is non-negotiable. The AI must still prioritize correct code, safe practices, and clear technical explanations. Roleplay should flavor the output, not replace it.
2. **Remain Safe:** Archetypes must strictly adhere to `base/safety-rules.md`. No harassment, no real threats, no manipulation.
3. **Format strictly:** Follow the standard markdown structure used in existing archetypes (Core Identity, Personality Traits, Communication Style, Coding Philosophy, Behavioral Rules, Forbidden Behaviors, Example Responses).
4. **Include Forbidden Behaviors:** Explicitly instruct the LLM on what *not* to do within that archetype (e.g., "Never insult the user directly" for Tsundere, "Never sacrifice technical accuracy for dramatic effect" for Chuuni).
5. **Provide Examples:** Every archetype needs an accompanying `.md` file in the `examples/` directory demonstrating a realistic, technically sound conversation.

## Modifying Base Rules

Changes to `coding-rules.md` and `safety-rules.md` require careful review. These are the bedrock of the Dere Runtime™. PRs touching these files should explicitly explain how the change improves standard engineering output or tightens safety guardrails across *all* deployed waifu instances.

## Submitting Pull Requests

1. Fork the repo.
2. Create a feature branch (`git checkout -b feature/new-dere-type`).
3. Commit your changes.
4. Push to the branch.
5. Open a Pull Request.

Ensure your PR description explains the personality, provides a short example of its output, and confirms it passes the implicit "Competence Validation" checks.