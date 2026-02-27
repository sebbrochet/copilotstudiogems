# Glossary

Key terms used throughout this book.

| Term | Definition |
|---|---|
| **A2A (Agent2Agent)** | Open protocol for inter-agent communication. Copilot Studio supports connecting to A2A agents (preview). |
| **Adaptive Card** | A JSON-based UI card format for rendering interactive content (forms, buttons, images) in chat channels. Schema 1.5 for Teams, 1.6 for Web Chat. |
| **Agent Instructions** | The system prompt (Markdown text in `GptComponentMetadata.instructions`) that defines the agent's personality, capabilities, and behavioral rules. |
| **Azure AI Search** | Microsoft's enterprise search service supporting full-text, vector, and hybrid search. Used as an advanced knowledge source in Copilot Studio (GA since May 2025). |
| **Child Agent** | A specialist agent connected to and invoked by a main (orchestrator) agent. Routes based on name, description, and orchestrator instructions. |
| **ConversationStart** | A topic trigger (`OnConversationStart`) that fires when a new conversation begins. **Does not fire in M365 Copilot.** |
| **Custom Connector** | A Power Platform connector created from an OpenAPI specification. Reusable across agents, flows, and Power Apps. |
| **Dataverse** | Microsoft's enterprise data platform (part of Power Platform). Used for state persistence, configuration, and business data storage. |
| **Direct Line** | Bot Framework API for programmatic communication with a bot/agent. Used for custom Web Chat implementations and automated testing. |
| **Environment Variable** | A Power Platform configuration value (`Env.Name`) that can differ between environments (dev/test/prod). Used for URLs, API keys, and tenant-specific settings. |
| **Fabric Data Agent** | A Microsoft Fabric agent that translates natural language into SQL/DAX/KQL queries against warehouses, lakehouses, and semantic models. Consumable as a connected agent in Copilot Studio (preview). |
| **Generative Orchestration** | The AI-driven mode where the LLM automatically selects topics, tools, and agents based on user intent and available descriptions. Required for MCP tools. |
| **Global Variable** | A conversation-scoped variable (`Global.Name`) that persists across topic switches within one conversation. Resets between conversations. |
| **Integrated Vectorization** | An Azure AI Search feature that automatically chunks, embeds, and indexes content using a specified embedding model. Recommended for Copilot Studio connections. |
| **KQL (Kusto Query Language)** | Microsoft's query language for Azure Data Explorer, Application Insights, and Fabric KQL databases. |
| **LogCustomTelemetryEvent** | A Copilot Studio node that sends custom events to Application Insights for monitoring and analytics. |
| **MCP (Model Context Protocol)** | An open standard for connecting AI agents to external tools and data sources. Copilot Studio supports MCP servers (GA) with prebuilt connectors for Dataverse, Outlook, GitHub, etc. |
| **OnError** | A topic trigger that fires when an error occurs during conversation processing. Used for standardized error handling. |
| **OnToolSelected** | A topic trigger used for child agent/tool definitions. Fires when the orchestrator routes to this agent. |
| **OData** | A REST protocol for querying and manipulating data. Used in Dataverse and Azure AI Search APIs. |
| **Power Fx** | The expression language used in Copilot Studio for conditions, calculations, and variable manipulation. Similar to Excel formulas. |
| **Prompt Tool** | A Copilot Studio tool that executes an LLM prompt with defined inputs and outputs. Used for classification, summarization, and dynamic instruction generation. |
| **RLS (Row-Level Security)** | A data security mechanism that restricts which data rows a user can see, based on their identity. Applied in Dataverse and Power BI. |
| **Semantic Ranker** | An Azure AI Search feature that re-ranks initial search results using a deep learning model. Improves precision. Requires Standard tier. |
| **SearchAndSummarizeContent** | A Copilot Studio node that searches knowledge sources and generates a grounded answer using an LLM. The primary generative answers mechanism. |
| **SendActivity** | A Copilot Studio node that displays a message (text, card, or attachment) to the user. |
| **Topic** | A discrete conversation flow in Copilot Studio, triggered by user intent (trigger phrases), events, or system conditions. |
| **Trigger Phrases** | Natural language examples that train the agent's NLU model to recognize when a specific topic should activate. |
| **VS Code Extension** | The `ms-CopilotStudio.vscode-copilotstudio` extension for editing agent YAML files locally with IntelliSense, then syncing to Copilot Studio. |
