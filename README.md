# Copilot Studio Gems 💎

[![Deploy MkDocs](https://github.com/sebbrochet/copilotstudiogems/actions/workflows/deploy.yml/badge.svg)](https://github.com/sebbrochet/copilotstudiogems/actions/workflows/deploy.yml)
[![GitHub tag](https://img.shields.io/github/v/tag/sebbrochet/copilotstudiogems?label=version&sort=semver)](https://github.com/sebbrochet/copilotstudiogems/tags)
[![License: CC BY-NC-SA 4.0](https://img.shields.io/badge/License-CC%20BY--NC--SA%204.0-lightgrey.svg)](https://creativecommons.org/licenses/by-nc-sa/4.0/)

<p align="center">
  <img src="docs/assets/cover.png" alt="Copilot Studio Gems cover" width="480" />
</p>

**Practical, evaluated patterns for building AI agents in Microsoft Copilot Studio.**

Inspired by [Game Programming Gems](https://www.satori.org/game-programming-gems/) and the [Gang of Four Design Patterns](https://en.wikipedia.org/wiki/Design_Patterns) — each Gem addresses a recurring challenge in agent development by evaluating multiple implementation approaches with honest trade-off analysis.

## Why Gems?

Microsoft Learn documents **what** Copilot Studio features exist. Blogs show **one way** to solve a problem. Gems evaluate **which approach** is best for your context.

Every Gem follows the same structure:

```Text
The Problem  →  Ideal Outcome  →  Multiple Approaches (with code)  →  Comparison Matrix  →  Recommendation  →  Gotchas
```

Minimum 2 approaches per Gem. Real YAML/Power Fx/JSON code. Platform gotchas from production experience.

---

## Gem Catalog

| # | Gem | Category | Complexity | Approaches |
| - | --- | -------- | ---------- | ---------- |
| 001 | [Persisting User Context Across Sessions](https://copilotstudiogems.sebbrochet.com/gems/GEM-001-persisting-user-context-across-sessions/) | Context & State | ⭐⭐⭐ | Dataverse · SharePoint · HTTP API |
| 002 | [Persona-Adaptive Agent Instructions](https://copilotstudiogems.sebbrochet.com/gems/GEM-002-persona-adaptive-agent-instructions/) | Personalization | ⭐⭐⭐ | Branched Instructions · Multi-Agent · Prompt Tool |
| 003 | [Tracing Agent Progress Before Response](https://copilotstudiogems.sebbrochet.com/gems/GEM-003-tracing-agent-progress-before-response/) | Observability | ⭐⭐–⭐⭐⭐ | Sequential Messages · LLM Self-Narration · Adaptive Card |
| 004 | [Debug Mode for M365 Copilot Channel](https://copilotstudiogems.sebbrochet.com/gems/GEM-004-debug-mode-for-m365-copilot/) | Observability | ⭐⭐⭐ | Keyword Inline · App Insights · Adaptive Card Panel |
| 005 | [Multi-Language Agent Response](https://copilotstudiogems.sebbrochet.com/gems/GEM-005-multi-language-agent-response/) | Personalization | ⭐⭐⭐ | Graph API Profile · LLM Auto-Detect · Explicit Choice |
| 006 | [Adaptive Cards as Multi-Field Forms](https://copilotstudiogems.sebbrochet.com/gems/GEM-006-adaptive-cards-as-multi-field-forms/) | UX | ⭐⭐⭐ | Sequential Questions · Adaptive Card · Hybrid |
| 007 | [Role-Based Feature Gating](https://copilotstudiogems.sebbrochet.com/gems/GEM-007-role-based-feature-gating/) | Security | ⭐⭐⭐ | Entra Groups · Token Claims · LLM Instructions |
| 008 | [Knowledge Source Optimization](https://copilotstudiogems.sebbrochet.com/gems/GEM-008-knowledge-source-optimization/) | Performance | ⭐⭐ | Format Strategy · Content Chunking · Custom Instructions |
| 009 | [Graceful Degradation and Fallback Chains](https://copilotstudiogems.sebbrochet.com/gems/GEM-009-graceful-degradation-and-fallback-chains/) | Integration | ⭐⭐⭐ | Error-Branch · Cached Response · Escalation |
| 010 | [Agent-to-Human Handoff with Context](https://copilotstudiogems.sebbrochet.com/gems/GEM-010-agent-to-human-handoff-with-context/) | UX | ⭐⭐⭐–⭐⭐⭐⭐ | LLM Summary · Context Card · Omnichannel |
| 011 | [Conversation Memory Within a Session](https://copilotstudiogems.sebbrochet.com/gems/GEM-011-conversation-memory-within-a-session/) | Context & State | ⭐⭐–⭐⭐⭐ | Accumulator · LLM Summary · Entity Tracking |
| 012 | [Cost Estimation and Token Budget Management](https://copilotstudiogems.sebbrochet.com/gems/GEM-012-cost-estimation-and-token-budget-management/) | Performance | ⭐⭐⭐ | App Insights Tracking · Response Capping · Turn Limits |
| 013 | [Testing Strategies for Multi-Agent Architectures](https://copilotstudiogems.sebbrochet.com/gems/GEM-013-testing-strategies-for-multi-agent-architectures/) | Observability | ⭐⭐⭐–⭐⭐⭐⭐ | Manual Script · Automated Keywords · LLM-as-Judge |
| 014 | [Proactive Agent Messages and Event-Driven Conversations](https://copilotstudiogems.sebbrochet.com/gems/GEM-014-proactive-agent-messages-and-event-driven-conversations/) | Integration | ⭐⭐⭐⭐ | PA Teams Card · Bot Framework API · Platform Triggers |
| 015 | [Dataverse CRUD Operations Patterns](https://copilotstudiogems.sebbrochet.com/gems/GEM-015-dataverse-crud-operations-patterns/) | Integration | ⭐⭐⭐ | Power Automate · HTTP Direct · Generative AI |
| 016 | [Conversation Analytics and Quality Measurement](https://copilotstudiogems.sebbrochet.com/gems/GEM-016-conversation-analytics-and-quality-measurement/) | Observability | ⭐⭐–⭐⭐⭐ | Built-in Analytics · App Insights Custom · CSAT Survey |
| 017 | [Multi-Tenant Agent Configuration](https://copilotstudiogems.sebbrochet.com/gems/GEM-017-multi-tenant-agent-configuration/) | Context & State | ⭐⭐⭐⭐ | Env per Environment · Runtime Config Table · Git Branching |
| 018 | [SharePoint Document Retrieval and Display](https://copilotstudiogems.sebbrochet.com/gems/GEM-018-sharepoint-document-retrieval-and-display/) | Integration | ⭐⭐⭐ | PA + SharePoint Search · Graph Search API · Generative Discovery |
| 020 | [Agent Instructions as Living Documents](https://copilotstudiogems.sebbrochet.com/gems/GEM-020-agent-instructions-as-living-documents/) | Personalization | ⭐⭐⭐⭐ | YAML + Git · Dataverse Store · Markdown Fragments |
| 021 | [Conversation Branching and Disambiguation](https://copilotstudiogems.sebbrochet.com/gems/GEM-021-conversation-branching-and-disambiguation/) | UX | ⭐⭐⭐ | Disambiguation Topic · LLM Inference · Trigger Engineering |
| 022 | [Secure Data Handling in Conversations](https://copilotstudiogems.sebbrochet.com/gems/GEM-022-secure-data-handling-in-conversations/) | Security | ⭐⭐⭐⭐ | Instruction Prevention · Input Sanitizer · Telemetry Redaction |
| 023 | [MCP Connector Integration Patterns](https://copilotstudiogems.sebbrochet.com/gems/GEM-023-mcp-connector-integration-patterns/) | Integration | ⭐⭐⭐ | MCP Connector · Custom Connector · HTTP Node |
| 024 | [Multi-Agent Composition and Connected Agent Patterns](https://copilotstudiogems.sebbrochet.com/gems/GEM-024-multi-agent-composition-and-connected-agent-patterns/) | Integration | ⭐⭐⭐⭐ | Child Agents · Connected CS Agents · External (A2A/Foundry/Fabric) |
| 025 | [Custom Canvas and Embedded Agent UX](https://copilotstudiogems.sebbrochet.com/gems/GEM-025-custom-canvas-and-embedded-agent-ux-patterns/) | UX | ⭐⭐–⭐⭐⭐⭐ | Default Embed · Web Chat Component · Fully Custom UI |
| 026 | [Azure AI Search Advanced Integration](https://copilotstudiogems.sebbrochet.com/gems/GEM-026-azure-ai-search-advanced-integration/) | Performance | ⭐⭐⭐–⭐⭐⭐⭐ | Native Knowledge Source · HTTP Direct · PA Search Flow |
| 027 | [Deterministic Flows for Regulated Workflows](https://copilotstudiogems.sebbrochet.com/gems/GEM-027-deterministic-conversation-flows-for-regulated-workflows/) | UX | ⭐⭐⭐⭐ | Fully Manual · Hybrid Deterministic+Generative · State Machine |
| 028 | [Grounding Agents in Enterprise Analytics Data](https://copilotstudiogems.sebbrochet.com/gems/GEM-028-grounding-agents-in-enterprise-analytics-data/) | Integration | ⭐⭐⭐–⭐⭐⭐⭐ | Fabric Data Agent · PA + SQL Flows · HTTP + SQL |

### By Category

| Category | Gems | Description |
| - | - | - |
| **Context & State** | [001](https://copilotstudiogems.sebbrochet.com/gems/GEM-001-persisting-user-context-across-sessions/), [011](https://copilotstudiogems.sebbrochet.com/gems/GEM-011-conversation-memory-within-a-session/), [017](https://copilotstudiogems.sebbrochet.com/gems/GEM-017-multi-tenant-agent-configuration/) | Persistence, memory, multi-tenant config |
| **Personalization** | [002](https://copilotstudiogems.sebbrochet.com/gems/GEM-002-persona-adaptive-agent-instructions/), [005](https://copilotstudiogems.sebbrochet.com/gems/GEM-005-multi-language-agent-response/), [020](https://copilotstudiogems.sebbrochet.com/gems/GEM-020-agent-instructions-as-living-documents/) | Adapting behavior, language, instruction lifecycle |
| **Observability** | [003](https://copilotstudiogems.sebbrochet.com/gems/GEM-003-tracing-agent-progress-before-response/), [004](https://copilotstudiogems.sebbrochet.com/gems/GEM-004-debug-mode-for-m365-copilot/), [013](https://copilotstudiogems.sebbrochet.com/gems/GEM-013-testing-strategies-for-multi-agent-architectures/), [016](https://copilotstudiogems.sebbrochet.com/gems/GEM-016-conversation-analytics-and-quality-measurement/) | Tracing, debugging, testing, analytics |
| **Security** | [007](https://copilotstudiogems.sebbrochet.com/gems/GEM-007-role-based-feature-gating/), [022](https://copilotstudiogems.sebbrochet.com/gems/GEM-022-secure-data-handling-in-conversations/) | Auth, access control, data protection |
| **UX** | [006](https://copilotstudiogems.sebbrochet.com/gems/GEM-006-adaptive-cards-as-multi-field-forms/), [010](https://copilotstudiogems.sebbrochet.com/gems/GEM-010-agent-to-human-handoff-with-context/), [021](https://copilotstudiogems.sebbrochet.com/gems/GEM-021-conversation-branching-and-disambiguation/), [025](https://copilotstudiogems.sebbrochet.com/gems/GEM-025-custom-canvas-and-embedded-agent-ux-patterns/), [027](https://copilotstudiogems.sebbrochet.com/gems/GEM-027-deterministic-conversation-flows-for-regulated-workflows/) | Conversation design, forms, disambiguation, embedding, compliance flows |
| **Integration** | [009](https://copilotstudiogems.sebbrochet.com/gems/GEM-009-graceful-degradation-and-fallback-chains/), [014](https://copilotstudiogems.sebbrochet.com/gems/GEM-014-proactive-agent-messages-and-event-driven-conversations/), [015](https://copilotstudiogems.sebbrochet.com/gems/GEM-015-dataverse-crud-operations-patterns/), [018](https://copilotstudiogems.sebbrochet.com/gems/GEM-018-sharepoint-document-retrieval-and-display/), [023](https://copilotstudiogems.sebbrochet.com/gems/GEM-023-mcp-connector-integration-patterns/), [024](https://copilotstudiogems.sebbrochet.com/gems/GEM-024-multi-agent-composition-and-connected-agent-patterns/), [028](https://copilotstudiogems.sebbrochet.com/gems/GEM-028-grounding-agents-in-enterprise-analytics-data/) | External systems, events, data operations, MCP, multi-agent, analytics, document retrieval |
| **Performance** | [008](https://copilotstudiogems.sebbrochet.com/gems/GEM-008-knowledge-source-optimization/), [012](https://copilotstudiogems.sebbrochet.com/gems/GEM-012-cost-estimation-and-token-budget-management/), [026](https://copilotstudiogems.sebbrochet.com/gems/GEM-026-azure-ai-search-advanced-integration/) | Knowledge quality, cost control, enterprise search |

---

## Reading Order

Gems are self-contained but cross-reference each other. Pick the path that matches your situation:

**Foundation first** — if you're new to Copilot Studio patterns:

```Text
GEM-004: Debug Mode        ← Start here: standalone, sharpest trade-offs
   ↓
GEM-001: State Persistence ← Foundational pattern, referenced by most Gems
   ↓
GEM-008: Knowledge Optim.  ← Every agent needs good knowledge retrieval
   ↓
GEM-002: Persona Adaptation← Builds on GEM-001 (persisted persona)
```

**By challenge** — jump straight to what you need:

| Challenge | Start With | Then Read |
| - | - | - |
| Agent can't find answers in documents | [GEM-008](https://copilotstudiogems.sebbrochet.com/gems/GEM-008-knowledge-source-optimization/) | [GEM-026](https://copilotstudiogems.sebbrochet.com/gems/GEM-026-azure-ai-search-advanced-integration/) |
| Need to debug in M365 Copilot | [GEM-004](https://copilotstudiogems.sebbrochet.com/gems/GEM-004-debug-mode-for-m365-copilot/) | [GEM-016](https://copilotstudiogems.sebbrochet.com/gems/GEM-016-conversation-analytics-and-quality-measurement/) |
| Building multi-agent architecture | [GEM-024](https://copilotstudiogems.sebbrochet.com/gems/GEM-024-multi-agent-composition-and-connected-agent-patterns/) | [GEM-013](https://copilotstudiogems.sebbrochet.com/gems/GEM-013-testing-strategies-for-multi-agent-architectures/), [GEM-021](https://copilotstudiogems.sebbrochet.com/gems/GEM-021-conversation-branching-and-disambiguation/) |
| Collecting structured input from users | [GEM-006](https://copilotstudiogems.sebbrochet.com/gems/GEM-006-adaptive-cards-as-multi-field-forms/) | [GEM-027](https://copilotstudiogems.sebbrochet.com/gems/GEM-027-deterministic-conversation-flows-for-regulated-workflows/) |
| Connecting to external systems | [GEM-023](https://copilotstudiogems.sebbrochet.com/gems/GEM-023-mcp-connector-integration-patterns/) | [GEM-009](https://copilotstudiogems.sebbrochet.com/gems/GEM-009-graceful-degradation-and-fallback-chains/), [GEM-015](https://copilotstudiogems.sebbrochet.com/gems/GEM-015-dataverse-crud-operations-patterns/) |
| Security and compliance | [GEM-007](https://copilotstudiogems.sebbrochet.com/gems/GEM-007-role-based-feature-gating/) | [GEM-022](https://copilotstudiogems.sebbrochet.com/gems/GEM-022-secure-data-handling-in-conversations/), [GEM-027](https://copilotstudiogems.sebbrochet.com/gems/GEM-027-deterministic-conversation-flows-for-regulated-workflows/) |
| Agent serves multiple languages/regions | [GEM-005](https://copilotstudiogems.sebbrochet.com/gems/GEM-005-multi-language-agent-response/) | [GEM-001](https://copilotstudiogems.sebbrochet.com/gems/GEM-001-persisting-user-context-across-sessions/), [GEM-017](https://copilotstudiogems.sebbrochet.com/gems/GEM-017-multi-tenant-agent-configuration/) |
| Measuring agent quality | [GEM-016](https://copilotstudiogems.sebbrochet.com/gems/GEM-016-conversation-analytics-and-quality-measurement/) | [GEM-012](https://copilotstudiogems.sebbrochet.com/gems/GEM-012-cost-estimation-and-token-budget-management/), [GEM-013](https://copilotstudiogems.sebbrochet.com/gems/GEM-013-testing-strategies-for-multi-agent-architectures/) |

Or browse the full [How to Read](https://copilotstudiogems.sebbrochet.com/front-matter/how-to-read/) guide for role-based paths and the complete Gem catalog.

---

## Gem Structure

Every Gem follows this template:

| Section | Purpose |
| - | - |
| **Classification** | Category, complexity, channel support, prerequisites |
| **The Problem** | Why this matters — what happens if you don't solve it |
| **The Ideal Outcome** | Acceptance criteria — what success looks like |
| **Approaches** (2-4) | Each with: How It Works, Implementation (code), Evaluation (ratings), Limitations |
| **Comparison Matrix** | Side-by-side across all approaches |
| **Recommended Approach** | Opinionated default + "choose differently when..." |
| **Platform Gotchas** | Channel limitations, undocumented behaviors, hard-won lessons |
| **Related Gems** | Cross-references building a learning graph |

### Rating System

**Per-approach evaluation:**

| Rating | Meaning |
| - | - |
| 🟢 | Good — works well, minimal friction |
| 🟡 | Acceptable — works with caveats |
| 🔴 | Poor — significant limitations |

**Complexity scale:**

| Rating | Meaning |
| - | - |
| ⭐ | Configuration only |
| ⭐⭐ | Basic YAML, simple Power Fx |
| ⭐⭐⭐ | Multiple components, Power Automate |
| ⭐⭐⭐⭐ | Custom connectors, multi-agent |
| ⭐⭐⭐⭐⭐ | Deep platform expertise |

---

## Platform Scope

- **Copilot Studio** (current version, February 2026)
- **Channels**: Web Chat, Microsoft Teams, M365 Copilot
- **Development**: VS Code with [Copilot Studio Extension](https://marketplace.visualstudio.com/items?itemName=ms-CopilotStudio.vscode-copilotstudio), YAML-first authoring
- **Code**: YAML topics, Power Fx expressions, Adaptive Card JSON, Power Automate flows

---

## Contributing

To add a new Gem, use the template in [docs/appendices/gem-template.md](https://copilotstudiogems.sebbrochet.com/appendices/gem-template/).

Key rules:

- Minimum **2 approaches** per Gem (evaluate, don't just demonstrate)
- Include **working code** (YAML, Power Fx, JSON)
- Document **Platform Gotchas** from real experience
- Cross-reference **Related Gems**

---

## Disclaimer

This content was authored with AI assistance and is based on the author's experience building production agents with Microsoft Copilot Studio. While every effort has been made to ensure accuracy, **code samples and platform guidance may contain errors or become outdated** as the platform evolves.

- **Always test** code samples in your own environment before deploying to production
- **Verify against current documentation** — each Gem includes a "Last Validated" date and links to Microsoft Learn
- **No warranty**: This content is provided "as is" without guarantee of completeness, accuracy, or fitness for any particular purpose
- **Not affiliated with Microsoft**: This is an independent community resource, not official Microsoft documentation

The author assumes no responsibility for issues arising from the use of patterns, code, or guidance in this collection. Use your professional judgment and your organization's review processes.

## License

[![CC BY-NC-SA 4.0](https://img.shields.io/badge/License-CC%20BY--NC--SA%204.0-lightgrey.svg)](https://creativecommons.org/licenses/by-nc-sa/4.0/)

This work is licensed under a [Creative Commons Attribution-NonCommercial-ShareAlike 4.0 International License](https://creativecommons.org/licenses/by-nc-sa/4.0/).

You are free to share and adapt this material for non-commercial purposes, with attribution, under the same license. See [LICENSE](LICENSE) for details.

---

*Copilot Studio Gems — Sébastien Brochet — February 2026*
