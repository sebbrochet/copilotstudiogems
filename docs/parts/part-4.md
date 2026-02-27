# Part IV — Security

Two Gems, two critical questions: **who can do what** ([GEM-007](../gems/GEM-007-role-based-feature-gating.md)) and **how is sensitive data protected** ([GEM-022](../gems/GEM-022-secure-data-handling-in-conversations.md)).

## What You'll Learn

| Gem | Pattern | Key Question |
|---|---|---|
| **[GEM-007](../gems/GEM-007-role-based-feature-gating.md)** | Role-Based Feature Gating | How do you show admin features to admins and hide them from everyone else? |
| **[GEM-022](../gems/GEM-022-secure-data-handling-in-conversations.md)** | Secure Data Handling in Conversations | What happens when users type passwords and SSNs into the chat? |

## Prerequisites

- **[GEM-001](../gems/GEM-001-persisting-user-context-across-sessions.md)** (Part I) — role caching across sessions
- **[GEM-002](../gems/GEM-002-persona-adaptive-agent-instructions.md)** (Part II) — persona detection mechanisms (reused for role detection)

## The Core Challenge

LLM-based agents are probabilistic — the model *usually* follows instructions, but instruction-based security is not a guarantee. This Part shows how to combine LLM instructions with hard-coded gates for defense-in-depth. [GEM-022](../gems/GEM-022-secure-data-handling-in-conversations.md) is essential reading for any agent handling regulated data (GDPR, HIPAA, PCI-DSS).
