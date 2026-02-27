# Part V — Integration

The largest technical Part — connecting your agent to the world beyond Copilot Studio.

## What You'll Learn

| Gem | Pattern | Key Question |
|---|---|---|
| **[GEM-009](../gems/GEM-009-graceful-degradation-and-fallback-chains.md)** | Graceful Degradation and Fallback Chains | What happens when your API is down? |
| **[GEM-014](../gems/GEM-014-proactive-agent-messages-and-event-driven-conversations.md)** | Proactive Agent Messages | How does the agent reach out to users first? |
| **[GEM-015](../gems/GEM-015-dataverse-crud-operations-patterns.md)** | Dataverse CRUD Operations | How does the agent create, read, update, and delete records? |
| **[GEM-018](../gems/GEM-018-sharepoint-document-retrieval-and-display.md)** | SharePoint Document Retrieval | How does the agent find and link to specific documents? |
| **[GEM-023](../gems/GEM-023-mcp-connector-integration-patterns.md)** | MCP Connector Integration Patterns | MCP, custom connector, or HTTP node — which should you use? |
| **[GEM-028](../gems/GEM-028-grounding-agents-in-enterprise-analytics-data.md)** | Grounding in Enterprise Analytics Data | How does the agent answer from warehouses and Power BI? |

## The Core Challenge

Every agent eventually needs to talk to external systems. The challenge isn't *whether* to integrate, but *how* — and each integration method (MCP, flows, HTTP, connectors) has different trade-offs. [GEM-023](../gems/GEM-023-mcp-connector-integration-patterns.md)'s decision framework is the essential reference for connector selection.
