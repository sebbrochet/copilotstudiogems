# Part I — Foundations: State & Context

Every agent in this book builds on one assumption: **the agent knows something about the user and the conversation**. This Part establishes the patterns for making that happen.

## What You'll Learn

| Gem | Pattern | Key Question |
|---|---|---|
| **[GEM-001](../gems/GEM-001-persisting-user-context-across-sessions.md)** | Persisting User Context Across Sessions | How does the agent remember who you are after the conversation ends? |
| **[GEM-011](../gems/GEM-011-conversation-memory-within-a-session.md)** | Conversation Memory Within a Session | How does the agent remember what was said 5 turns ago? |
| **[GEM-017](../gems/GEM-017-multi-tenant-agent-configuration.md)** | Multi-Tenant Agent Configuration | How does one agent serve multiple clients with different settings? |

## Why Start Here

State management is the **most referenced pattern** in the entire collection. Out of 26 Gems:

- **[GEM-002](../gems/GEM-002-persona-adaptive-agent-instructions.md)** (persona) needs persisted user context from [GEM-001](../gems/GEM-001-persisting-user-context-across-sessions.md)
- **[GEM-004](../gems/GEM-004-debug-mode-for-m365-copilot.md)** (debug mode) can persist debug preferences via [GEM-001](../gems/GEM-001-persisting-user-context-across-sessions.md)
- **[GEM-005](../gems/GEM-005-multi-language-agent-response.md)** (language) persists language choice via [GEM-001](../gems/GEM-001-persisting-user-context-across-sessions.md)
- **[GEM-007](../gems/GEM-007-role-based-feature-gating.md)** (roles) caches detected roles via [GEM-001](../gems/GEM-001-persisting-user-context-across-sessions.md)
- **[GEM-017](../gems/GEM-017-multi-tenant-agent-configuration.md)** (multi-tenant) extends [GEM-001](../gems/GEM-001-persisting-user-context-across-sessions.md)'s persistence to configuration

If you skip Part I, you'll see "link to Gem 001" in almost every other Gem.

## The Core Challenge

Copilot Studio conversations are **stateless by default**. Global variables reset between conversations. Conversation history vanishes when the session ends. The platform has no built-in persistence mechanism.

Everything in this Part addresses: *How do you give the agent memory?*
