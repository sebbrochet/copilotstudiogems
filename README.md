# Copilot Studio Gems 💎

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
| 001 | [Persisting User Context Across Sessions](gems/GEM-001-persisting-user-context-across-sessions.md) | Context & State | ⭐⭐⭐ | Dataverse · SharePoint · HTTP API |
| 002 | [Persona-Adaptive Agent Instructions](gems/GEM-002-persona-adaptive-agent-instructions.md) | Personalization | ⭐⭐⭐ | Branched Instructions · Multi-Agent · Prompt Tool |
| 003 | [Tracing Agent Progress Before Response](gems/GEM-003-tracing-agent-progress-before-response.md) | Observability | ⭐⭐–⭐⭐⭐ | Sequential Messages · LLM Self-Narration · Adaptive Card |
| 004 | [Debug Mode for M365 Copilot Channel](gems/GEM-004-debug-mode-for-m365-copilot.md) | Observability | ⭐⭐⭐ | Keyword Inline · App Insights · Adaptive Card Panel |
| 005 | [Multi-Language Agent Response](gems/GEM-005-multi-language-agent-response.md) | Personalization | ⭐⭐⭐ | Graph API Profile · LLM Auto-Detect · Explicit Choice |
| 006 | [Adaptive Cards as Multi-Field Forms](gems/GEM-006-adaptive-cards-as-multi-field-forms.md) | UX | ⭐⭐⭐ | Sequential Questions · Adaptive Card · Hybrid |
| 007 | [Role-Based Feature Gating](gems/GEM-007-role-based-feature-gating.md) | Security | ⭐⭐⭐ | Entra Groups · Token Claims · LLM Instructions |
| 008 | [Knowledge Source Optimization](gems/GEM-008-knowledge-source-optimization.md) | Performance | ⭐⭐ | Format Strategy · Content Chunking · Custom Instructions |
| 009 | [Graceful Degradation and Fallback Chains](gems/GEM-009-graceful-degradation-and-fallback-chains.md) | Integration | ⭐⭐⭐ | Error-Branch · Cached Response · Escalation |
| 010 | [Agent-to-Human Handoff with Context](gems/GEM-010-agent-to-human-handoff-with-context.md) | UX | ⭐⭐⭐–⭐⭐⭐⭐ | LLM Summary · Context Card · Omnichannel |
| 011 | [Conversation Memory Within a Session](gems/GEM-011-conversation-memory-within-a-session.md) | Context & State | ⭐⭐–⭐⭐⭐ | Accumulator · LLM Summary · Entity Tracking |
| 012 | [Cost Estimation and Token Budget Management](gems/GEM-012-cost-estimation-and-token-budget-management.md) | Performance | ⭐⭐⭐ | App Insights Tracking · Response Capping · Turn Limits |
| 013 | [Testing Strategies for Multi-Agent Architectures](gems/GEM-013-testing-strategies-for-multi-agent-architectures.md) | Observability | ⭐⭐⭐–⭐⭐⭐⭐ | Manual Script · Automated Keywords · LLM-as-Judge |
| 014 | [Proactive Agent Messages and Event-Driven Conversations](gems/GEM-014-proactive-agent-messages-and-event-driven-conversations.md) | Integration | ⭐⭐⭐⭐ | PA Teams Card · Bot Framework API · Platform Triggers |
| 015 | [Dataverse CRUD Operations Patterns](gems/GEM-015-dataverse-crud-operations-patterns.md) | Integration | ⭐⭐⭐ | Power Automate · HTTP Direct · Generative AI |
| 016 | [Conversation Analytics and Quality Measurement](gems/GEM-016-conversation-analytics-and-quality-measurement.md) | Observability | ⭐⭐–⭐⭐⭐ | Built-in Analytics · App Insights Custom · CSAT Survey |
| 017 | [Multi-Tenant Agent Configuration](gems/GEM-017-multi-tenant-agent-configuration.md) | Context & State | ⭐⭐⭐⭐ | Env per Environment · Runtime Config Table · Git Branching |
| 018 | [SharePoint Document Retrieval and Display](gems/GEM-018-sharepoint-document-retrieval-and-display.md) | Integration | ⭐⭐⭐ | PA + SharePoint Search · Graph Search API · Generative Discovery |
| 020 | [Agent Instructions as Living Documents](gems/GEM-020-agent-instructions-as-living-documents.md) | Personalization | ⭐⭐⭐⭐ | YAML + Git · Dataverse Store · Markdown Fragments |
| 021 | [Conversation Branching and Disambiguation](gems/GEM-021-conversation-branching-and-disambiguation.md) | UX | ⭐⭐⭐ | Disambiguation Topic · LLM Inference · Trigger Engineering |
| 022 | [Secure Data Handling in Conversations](gems/GEM-022-secure-data-handling-in-conversations.md) | Security | ⭐⭐⭐⭐ | Instruction Prevention · Input Sanitizer · Telemetry Redaction |
| 023 | [MCP Connector Integration Patterns](gems/GEM-023-mcp-connector-integration-patterns.md) | Integration | ⭐⭐⭐ | MCP Connector · Custom Connector · HTTP Node |
| 024 | [Multi-Agent Composition and Connected Agent Patterns](gems/GEM-024-multi-agent-composition-and-connected-agent-patterns.md) | Integration | ⭐⭐⭐⭐ | Child Agents · Connected CS Agents · External (A2A/Foundry/Fabric) |
| 025 | [Custom Canvas and Embedded Agent UX](gems/GEM-025-custom-canvas-and-embedded-agent-ux-patterns.md) | UX | ⭐⭐–⭐⭐⭐⭐ | Default Embed · Web Chat Component · Fully Custom UI |
| 026 | [Azure AI Search Advanced Integration](gems/GEM-026-azure-ai-search-advanced-integration.md) | Performance | ⭐⭐⭐–⭐⭐⭐⭐ | Native Knowledge Source · HTTP Direct · PA Search Flow |
| 027 | [Deterministic Flows for Regulated Workflows](gems/GEM-027-deterministic-conversation-flows-for-regulated-workflows.md) | UX | ⭐⭐⭐⭐ | Fully Manual · Hybrid Deterministic+Generative · State Machine |
| 028 | [Grounding Agents in Enterprise Analytics Data](gems/GEM-028-grounding-agents-in-enterprise-analytics-data.md) | Integration | ⭐⭐⭐–⭐⭐⭐⭐ | Fabric Data Agent · PA + SQL Flows · HTTP + SQL |

### By Category

| Category | Gems | Description |
| - | - | - |
| **Context & State** | [001](gems/GEM-001-persisting-user-context-across-sessions.md), [011](gems/GEM-011-conversation-memory-within-a-session.md), [017](gems/GEM-017-multi-tenant-agent-configuration.md) | Persistence, memory, multi-tenant config |
| **Personalization** | [002](gems/GEM-002-persona-adaptive-agent-instructions.md), [005](gems/GEM-005-multi-language-agent-response.md), [020](gems/GEM-020-agent-instructions-as-living-documents.md) | Adapting behavior, language, instruction lifecycle |
| **Observability** | [003](gems/GEM-003-tracing-agent-progress-before-response.md), [004](gems/GEM-004-debug-mode-for-m365-copilot.md), [013](gems/GEM-013-testing-strategies-for-multi-agent-architectures.md), [016](gems/GEM-016-conversation-analytics-and-quality-measurement.md) | Tracing, debugging, testing, analytics |
| **Security** | [007](gems/GEM-007-role-based-feature-gating.md), [022](gems/GEM-022-secure-data-handling-in-conversations.md) | Auth, access control, data protection |
| **UX** | [006](gems/GEM-006-adaptive-cards-as-multi-field-forms.md), [010](gems/GEM-010-agent-to-human-handoff-with-context.md), [021](gems/GEM-021-conversation-branching-and-disambiguation.md), [025](gems/GEM-025-custom-canvas-and-embedded-agent-ux-patterns.md), [027](gems/GEM-027-deterministic-conversation-flows-for-regulated-workflows.md) | Conversation design, forms, disambiguation, embedding, compliance flows |
| **Integration** | [009](gems/GEM-009-graceful-degradation-and-fallback-chains.md), [014](gems/GEM-014-proactive-agent-messages-and-event-driven-conversations.md), [015](gems/GEM-015-dataverse-crud-operations-patterns.md), [018](gems/GEM-018-sharepoint-document-retrieval-and-display.md), [023](gems/GEM-023-mcp-connector-integration-patterns.md), [024](gems/GEM-024-multi-agent-composition-and-connected-agent-patterns.md), [028](gems/GEM-028-grounding-agents-in-enterprise-analytics-data.md) | External systems, events, data operations, MCP, multi-agent, analytics, document retrieval |
| **Performance** | [008](gems/GEM-008-knowledge-source-optimization.md), [012](gems/GEM-012-cost-estimation-and-token-budget-management.md), [026](gems/GEM-026-azure-ai-search-advanced-integration.md) | Knowledge quality, cost control, enterprise search |

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
| Agent can't find answers in documents | [GEM-008](gems/GEM-008-knowledge-source-optimization.md) | [GEM-026](gems/GEM-026-azure-ai-search-advanced-integration.md) |
| Need to debug in M365 Copilot | [GEM-004](gems/GEM-004-debug-mode-for-m365-copilot.md) | [GEM-016](gems/GEM-016-conversation-analytics-and-quality-measurement.md) |
| Building multi-agent architecture | [GEM-024](gems/GEM-024-multi-agent-composition-and-connected-agent-patterns.md) | [GEM-013](gems/GEM-013-testing-strategies-for-multi-agent-architectures.md), [GEM-021](gems/GEM-021-conversation-branching-and-disambiguation.md) |
| Collecting structured input from users | [GEM-006](gems/GEM-006-adaptive-cards-as-multi-field-forms.md) | [GEM-027](gems/GEM-027-deterministic-conversation-flows-for-regulated-workflows.md) |
| Connecting to external systems | [GEM-023](gems/GEM-023-mcp-connector-integration-patterns.md) | [GEM-009](gems/GEM-009-graceful-degradation-and-fallback-chains.md), [GEM-015](gems/GEM-015-dataverse-crud-operations-patterns.md) |
| Security and compliance | [GEM-007](gems/GEM-007-role-based-feature-gating.md) | [GEM-022](gems/GEM-022-secure-data-handling-in-conversations.md), [GEM-027](gems/GEM-027-deterministic-conversation-flows-for-regulated-workflows.md) |
| Agent serves multiple languages/regions | [GEM-005](gems/GEM-005-multi-language-agent-response.md) | [GEM-001](gems/GEM-001-persisting-user-context-across-sessions.md), [GEM-017](gems/GEM-017-multi-tenant-agent-configuration.md) |
| Measuring agent quality | [GEM-016](gems/GEM-016-conversation-analytics-and-quality-measurement.md) | [GEM-012](gems/GEM-012-cost-estimation-and-token-budget-management.md), [GEM-013](gems/GEM-013-testing-strategies-for-multi-agent-architectures.md) |

Or browse the full [How to Read](docs/front-matter/how-to-read.md) guide for role-based paths and the complete Gem catalog.

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

To add a new Gem, use the template in [docs/appendices/gem-template.md](docs/appendices/gem-template.md).

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
