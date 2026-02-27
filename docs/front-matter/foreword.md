# Foreword

## Why This Book Exists

I've been building AI agents with Microsoft Copilot Studio for enterprise clients — the kind of agents that serve thousands of employees across multiple countries, languages, and departments. Along the way, I kept hitting the same pattern:

**The documentation tells you _what_ features exist. But it doesn't tell you _which approach_ to use.**

"How should I persist user context across sessions?" Three viable approaches, each with different licensing, performance, and maintenance trade-offs. No guidance on which to choose.

"How do I debug my agent in M365 Copilot, where the Test Canvas doesn't exist?" A real problem with no official solution.

"My knowledge source has 500 documents but the agent can't find answers." A format and chunking problem that took me hours to diagnose — and that [Gem 008](../gems/GEM-008-knowledge-source-optimization.md) now saves others from repeating.

These aren't feature questions. They're **design decision questions**. And they deserve the same rigor that software engineering has given to design patterns.

## The Inspiration

Two books shaped how I think about recurring technical problems:

**Game Programming Gems** (Mark DeLoura, 2000-2009): A series of books where each "gem" is a self-contained, practical solution to a specific game development challenge. Written by practitioners, for practitioners. No theory without code.

**Design Patterns** (Gang of Four, 1994): The foundational catalog of reusable solutions to recurring software design problems. Each pattern evaluates trade-offs — when to use it, when *not* to use it, and what alternatives exist.

**Copilot Studio Gems** applies this philosophy to AI agent development. Each Gem is:

- **Focused**: One recurring challenge, thoroughly explored.
- **Multi-approach**: At least 2 implementation strategies, evaluated against objective criteria.
- **Honest**: Limitations, gotchas, and "when NOT to use this" are first-class content.
- **Code-complete**: Working YAML, Power Fx, and JSON that you can implement today.

## Who This Book Is For

- **Copilot Studio makers** building production agents who need to make informed design decisions, not just follow tutorials.
- **Solution architects** evaluating implementation approaches for enterprise agent deployments.
- **Pro developers** using the VS Code Extension for YAML-first development who want structured patterns.
- **Anyone** who's ever searched "Copilot Studio best practices" and found only feature documentation.

## How This Book Was Built

Every Gem in this collection originates from real project experience — patterns discovered, gotchas suffered, and trade-offs evaluated on production agents. The domain expertise was captured in a structured knowledge bank alongside platform research using Microsoft Learn documentation.

The Gems were authored iteratively: the first 4 established the template, feedback refined the format, and subsequent Gems were evaluated for viability before writing. Backlog evaluation ensured each Gem earned its place — some ideas were deferred because they lacked sufficient trade-off richness.

The platform evolves fast. Each Gem records when it was last validated. If you're reading this after a major Copilot Studio release, check the "Last Validated" dates and verify code samples against the current platform.

## A Living Document

Copilot Studio evolves continuously. New features emerge, old limitations disappear, and yesterday's workaround becomes tomorrow's built-in feature.

This book is designed to evolve with the platform. The web version is updated as Gems are revised. The platform gotchas section of each Gem tracks known issues — and notes when gotchas become obsolete.

If you find that a Gem's guidance no longer applies, or if you've discovered a pattern worth sharing, the contribution guide in Appendix A provides the template.

---

*Sébastien Brochet*  
*February 2026*

*This work is licensed under [CC BY-NC-SA 4.0](https://creativecommons.org/licenses/by-nc-sa/4.0/).*
