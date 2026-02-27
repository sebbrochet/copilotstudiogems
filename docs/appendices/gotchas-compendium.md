# Appendix C: Gotchas Compendium

Every Platform Gotcha from every Gem, consolidated and cross-referenced. Check here before deploying.

---

## Channel Limitations

| Gotcha | Severity | Source Gem |
|---|---|---|
| **ConversationStart topic does NOT fire in M365 Copilot.** Use agent instructions instead. | 🔴 Critical | [GEM-001](../gems/GEM-001-persisting-user-context-across-sessions.md), 004, 005, 007, 014, 017 |
| **M365 Copilot does NOT support proactive messaging.** Plan around Teams. | 🔴 Critical | [GEM-014](../gems/GEM-014-proactive-agent-messages-and-event-driven-conversations.md) |
| **M365 Copilot does NOT support Fabric Data Agent connections.** | 🟡 Medium | [GEM-028](../gems/GEM-028-grounding-agents-in-enterprise-analytics-data.md) |
| **M365 Copilot does NOT support Omnichannel handoff.** | 🟡 Medium | [GEM-010](../gems/GEM-010-agent-to-human-handoff-with-context.md) |
| **`System.Conversation.InTestMode` is always `false` outside Test Canvas.** | 🟡 Medium | [GEM-004](../gems/GEM-004-debug-mode-for-m365-copilot.md) |
| **Adaptive Card `Action.ShowCard` rendering varies by channel.** Test in target channel. | 🟡 Medium | [GEM-003](../gems/GEM-003-tracing-agent-progress-before-response.md), 004, 006 |
| **M365 Copilot may batch rapidly-sent sequential messages.** | 🟡 Low | [GEM-003](../gems/GEM-003-tracing-agent-progress-before-response.md) |

## Knowledge & Search

| Gotcha | Severity | Source Gem |
|---|---|---|
| **PDF tables break SharePoint knowledge retrieval.** Use Word (.docx). | 🔴 Critical | [GEM-008](../gems/GEM-008-knowledge-source-optimization.md) |
| **`SearchAndSummarizeContent` does NOT return document URLs.** | 🟡 Medium | [GEM-018](../gems/GEM-018-sharepoint-document-retrieval-and-display.md) |
| **SharePoint indexing has a delay (5-30 min) after upload.** | 🟡 Medium | [GEM-008](../gems/GEM-008-knowledge-source-optimization.md) |
| **SharePoint file limit: 7 MB without M365 Copilot license.** | 🟡 Medium | [GEM-008](../gems/GEM-008-knowledge-source-optimization.md) |
| **Max 500 knowledge objects per agent.** | 🟡 Medium | [GEM-026](../gems/GEM-026-azure-ai-search-advanced-integration.md) |
| **Azure AI Search VNet indexes not supported by Copilot Studio.** | 🟡 Medium | [GEM-026](../gems/GEM-026-azure-ai-search-advanced-integration.md) |
| **Only ONE vector index per Azure AI Search connection.** | 🟡 Medium | [GEM-026](../gems/GEM-026-azure-ai-search-advanced-integration.md) |

## Security & Data

| Gotcha | Severity | Source Gem |
|---|---|---|
| **LLM instruction-based gating is NOT a security boundary.** Add hard `ConditionGroup` checks. | 🔴 Critical | [GEM-007](../gems/GEM-007-role-based-feature-gating.md), 015, 022 |
| **Platform logs capture raw user messages (including PII).** | 🔴 Critical | [GEM-022](../gems/GEM-022-secure-data-handling-in-conversations.md) |
| **Never expose Direct Line secrets in client-side code.** | 🔴 Critical | [GEM-025](../gems/GEM-025-custom-canvas-and-embedded-agent-ux-patterns.md) |
| **`System.User.Id` format varies by channel.** Test in target channel. | 🟡 Medium | [GEM-001](../gems/GEM-001-persisting-user-context-across-sessions.md) |

## Integration

| Gotcha | Severity | Source Gem |
|---|---|---|
| **MCP requires Generative Orchestration.** Manual topics can't call MCP tools. | 🟡 Medium | [GEM-023](../gems/GEM-023-mcp-connector-integration-patterns.md) |
| **MCP SSE transport deprecated after August 2025.** Use Streamable HTTP. | 🟡 Medium | [GEM-023](../gems/GEM-023-mcp-connector-integration-patterns.md) |
| **Power Automate flow failures may not return to agent gracefully.** Check for blank outputs. | 🟡 Medium | [GEM-009](../gems/GEM-009-graceful-degradation-and-fallback-chains.md) |
| **HttpRequest default timeout may be 30+ seconds.** Set explicit timeouts (5-10s). | 🟡 Medium | [GEM-009](../gems/GEM-009-graceful-degradation-and-fallback-chains.md) |
| **Power Automate flow runs count against quota.** Plan licensing. | 🟡 Medium | [GEM-001](../gems/GEM-001-persisting-user-context-across-sessions.md), 012, 015 |

## Agent Instructions

| Gotcha | Severity | Source Gem |
|---|---|---|
| **Instructions degrade past ~3,000-4,000 words.** Modularize ([GEM-020](../gems/GEM-020-agent-instructions-as-living-documents.md)). | 🟡 Medium | [GEM-002](../gems/GEM-002-persona-adaptive-agent-instructions.md), 020 |
| **Generative orchestration routes by description, not rules.** Write clear descriptions. | 🟡 Medium | [GEM-002](../gems/GEM-002-persona-adaptive-agent-instructions.md), 021 |
| **`alwaysPrompt: true` required for mandatory questions in regulated flows.** | 🟡 Medium | [GEM-027](../gems/GEM-027-deterministic-conversation-flows-for-regulated-workflows.md) |
| **`startBehavior: CancelOtherTopics` essential for regulated flows.** | 🟡 Medium | [GEM-027](../gems/GEM-027-deterministic-conversation-flows-for-regulated-workflows.md) |

## Cost & Performance

| Gotcha | Severity | Source Gem |
|---|---|---|
| **Copilot Studio doesn't expose actual token counts.** Estimation only. | 🟡 Medium | [GEM-012](../gems/GEM-012-cost-estimation-and-token-budget-management.md) |
| **Application Insights has ~2-5 min ingestion delay.** Not real-time. | 🟡 Low | [GEM-004](../gems/GEM-004-debug-mode-for-m365-copilot.md), 016 |
| **CSAT survey response rates drop after first week.** Show selectively. | 🟡 Low | [GEM-016](../gems/GEM-016-conversation-analytics-and-quality-measurement.md) |
| **Global variables reset between conversations.** That's why [GEM-001](../gems/GEM-001-persisting-user-context-across-sessions.md) exists. | 🟡 Low | [GEM-001](../gems/GEM-001-persisting-user-context-across-sessions.md), 004 |
