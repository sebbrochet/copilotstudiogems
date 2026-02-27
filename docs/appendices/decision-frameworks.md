# Appendix D: Decision Frameworks

All decision flowcharts and comparison matrices from the Gems, consolidated for quick reference.

---

## Connector Selection ([GEM-023](../gems/GEM-023-mcp-connector-integration-patterns.md))

```
Does a prebuilt MCP connector exist?
  ├── YES → Use MCP prebuilt (3 clicks)
  └── NO → Do you control the API?
            ├── YES → Multiple agents? → YES → Build MCP server
            │                          → NO  → Governance needed?
            │                                   ├── YES → Custom Connector
            │                                   └── NO  → HTTP Node
            └── NO → OpenAPI spec available?
                     ├── YES → Custom Connector
                     └── NO  → HTTP Node
```

## Knowledge Source Selection ([GEM-008](../gems/GEM-008-knowledge-source-optimization.md) + [GEM-026](../gems/GEM-026-azure-ai-search-advanced-integration.md))

```
Content in SharePoint, < 500 files?
  ├── YES → Search quality OK after format optimization?
  │          ├── YES → SharePoint Native ✅
  │          └── NO  → Need filtering or custom chunking? → Azure AI Search
  └── NO → Content in databases/APIs/multiple sources? → Azure AI Search
           Content in Fabric (warehouse/lakehouse/PBI)?  → Fabric Data Agent (GEM-028)
```

## State Persistence ([GEM-001](../gems/GEM-001-persisting-user-context-across-sessions.md))

```
Org has Dataverse license?
  ├── YES → Dataverse (production-grade)
  └── NO → Prototyping? → SharePoint List (zero licensing friction)
           Need max performance? → External HTTP API
```

## Debug Mode ([GEM-004](../gems/GEM-004-debug-mode-for-m365-copilot.md))

```
Development/UAT  →  Keyword Inline (instant, in-chat)
Production       →  App Insights (silent, persistent, queryable)
Stakeholder demo →  Adaptive Card Panel (visual, polished)
```

## Persona Adaptation ([GEM-002](../gems/GEM-002-persona-adaptive-agent-instructions.md))

```
Tone-only adaptation (3-5 personas)?    → Branched Instructions
Different knowledge per persona?         → Multi-Agent Routing
Query-specific adaptation needed?        → Dynamic Prompt Tool
```

## Multi-Language ([GEM-005](../gems/GEM-005-multi-language-agent-response.md))

```
IT maintains Entra profiles well?  → Graph API detection + persist
Quick deploy, no infrastructure?   → LLM auto-detect from input + persist
Regulatory language requirement?   → Explicit user choice
```

## Form Collection ([GEM-006](../gems/GEM-006-adaptive-cards-as-multi-field-forms.md))

```
1-2 fields          → Sequential Questions
3-6 fields          → Adaptive Card
3-6 + validation    → Card + sequential correction (Hybrid)
7+ fields           → Split into 2 cards
```

## Handoff to Human ([GEM-010](../gems/GEM-010-agent-to-human-handoff-with-context.md))

```
Internal/enterprise   → LLM Summary (email/Teams async)
Teams-centric org     → Context Card to Teams channel
Customer-facing       → Omnichannel live transfer
```

## Regulated Flows ([GEM-027](../gems/GEM-027-deterministic-conversation-flows-for-regulated-workflows.md))

```
3-5 steps, simple consent     → Fully Manual topic
5-7 steps, user needs help    → Hybrid (deterministic + generative clarification)
7+ steps, multi-session       → State Machine with Power Automate
```

## Proactive Messages ([GEM-014](../gems/GEM-014-proactive-agent-messages-and-event-driven-conversations.md))

```
Event-driven automation   → Platform Triggers (GA, recommended)
Simple Teams notification → PA + Teams Card
In-conversation follow-up → Bot Framework API
```

## Cost Control ([GEM-012](../gems/GEM-012-cost-estimation-and-token-budget-management.md))

```
Immediate savings       → Response length capping (instructions)
Understand costs        → App Insights token tracking
Hard limit (safety net) → Turn counter (30-40 max)
```

## Testing ([GEM-013](../gems/GEM-013-testing-strategies-for-multi-agent-architectures.md))

```
Development      → Manual test script (20 cases)
Pre-production   → Automated keyword matching (30 cases, daily)
Production gate  → LLM-as-Judge scoring (15 cases, per deploy)
```
