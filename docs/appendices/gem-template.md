# Appendix A: Gem Template

Use this template when contributing a new Gem to the collection. Every Gem MUST follow this structure.

---

```markdown
# Gem [NNN]: [Concise Title]

*[One-line elevator pitch describing the pattern]*

## Classification

| Attribute | Value |
|---|---|
| **Category** | [Context & State · Personalization · Observability · Security · UX · Integration · Performance] |
| **Complexity** | [⭐ · ⭐⭐ · ⭐⭐⭐ · ⭐⭐⭐⭐ · ⭐⭐⭐⭐⭐] |
| **Channels** | [All · Web Chat · M365 Copilot · Teams · channel-specific notes] |
| **Prerequisite Gems** | [Gem NNN, Gem NNN] or None |

## The Problem
[2-3 paragraphs: WHY this matters, what happens if ignored, real-world scenario]

## The Ideal Outcome
[Acceptance criteria as checkboxes]

## Approaches

### Approach A: [Name]
**Summary**: [One sentence]
**Technique**: [Copilot Studio capabilities used]

#### How It Works
[Architecture diagram + explanation]

#### Implementation
[Step-by-step with code blocks]

#### Evaluation
[Table: criteria × 🟢🟡🔴 ratings]

#### Limitations
[Bullet list]

---
### Approach B: [Name]
[Same structure]

---

## Comparison Matrix
[Side-by-side table across all approaches]

## Recommended Approach
[Opinionated default + "choose differently when..."]

## Platform Gotchas
[WARNING/NOTE callouts]

## Related Gems
[Cross-references with relationship description]

## References
[Microsoft Learn links]

---
*Gem [NNN] | Author: [name] | Created: [date] | Last Validated: [date]*
```

---

## Quality Checklist

Before publishing a Gem, verify:

- [ ] Minimum **2 approaches** evaluated
- [ ] All code blocks are valid (YAML, Power Fx, JSON)
- [ ] **Comparison Matrix** includes all approaches
- [ ] **Recommended Approach** includes "choose differently when..." escape hatches
- [ ] **Platform Gotchas** section present (even if "None identified")
- [ ] **Related Gems** cross-reference at least 2 other Gems
- [ ] **References** include Microsoft Learn links
- [ ] Adaptive Card JSON targets schema **1.5** (Teams compatibility)
- [ ] Last Validated date is set
