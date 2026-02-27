# Appendix B: Platform Quick Reference

A condensed reference for the Copilot Studio constructs used throughout this book.

## YAML Node Types

| Node Kind | Purpose | Key Properties |
|---|---|---|
| `SendActivity` | Display message to user | `activity.text[]`, `activity.speak[]` |
| `Question` | Collect user input | `variable`, `prompt`, `entity`, `choiceOptions` |
| `ConditionGroup` | Branching logic | `conditions[].condition`, `elseActions[]` |
| `SetVariable` | Set or calculate a variable | `variable`, `value` (Power Fx expression) |
| `SearchAndSummarizeContent` | Generative answers from knowledge | `variable`, `userInput`, `customInstructions` |
| `HttpRequest` | Call external REST API | `method`, `url`, `headers`, `body`, `timeout` |
| `InvokeFlow` | Call Power Automate flow | `flowId`, `inputs`, `outputVariable` |
| `InvokePrompt` | Call a Prompt Tool | `promptId`, `inputs`, `outputVariable` |
| `LogCustomTelemetryEvent` | Log to Application Insights | `eventName`, `properties` |
| `AdaptiveCardPrompt` | Display card and capture response | `card`, `outputVariable` |
| `GotoTopic` | Redirect to another topic | `topicId` |
| `EndDialog` | End conversation | `clearTopicQueue` |
| `CancelAllDialogs` | Cancel all active topics | — |

## Variable Scopes

| Scope | Syntax | Lifetime | Use For |
|---|---|---|---|
| **Topic** | `Topic.Name` | Current topic only | Temporary data within a flow |
| **Global** | `Global.Name` | Entire conversation | Cross-topic data (user role, language, debug flag) |
| **System** | `System.*` | Platform-provided | `System.User.Id`, `System.Activity.Text`, `System.Conversation.Id` |
| **Environment** | `Env.Name` | Environment-scoped | API keys, URLs, tenant config |

## Dialog Trigger Types

| Trigger Kind | Fires When | Common Use |
|---|---|---|
| `OnConversationStart` | Conversation begins | Greeting, context loading (⚠️ not in M365 Copilot) |
| `OnRecognizedIntent` | User message matches trigger phrases | Topic routing |
| `OnUnknownIntent` | No topic match | Fallback / generative answers |
| `OnEscalate` | Escalation requested | Human handoff |
| `OnError` | Error occurs | Error handling and logging |
| `OnToolSelected` | Agent/tool invocation | Child agent definitions |
| `OnScheduledTrigger` | Scheduled event fires | Proactive / autonomous agent |

## Power Fx Quick Reference

```
// String operations
Concatenate("Hello, ", Global.UserName)
Contains(Lower(System.Activity.Text), "urgent")
Len(Topic.Description)
Lower(text), Upper(text), Trim(text)

// Conditional
If(IsBlank(Global.UserRole), "User", Global.UserRole)
If(Global.DebugMode, "Debug ON", "Debug OFF")

// Date/Time
Text(Now(), DateTimeFormat.UTC)
DateAdd(Now(), -90, TimeUnit.Days)

// Type conversion
Value("42")          // String → Number
Text(123)            // Number → String
```

## Channel Compatibility Matrix

| Feature | Test Canvas | Teams | Web Chat | M365 Copilot |
|---|---|---|---|---|
| ConversationStart topic | ✅ | ✅ | ✅ | ❌ |
| Adaptive Cards (1.5) | ✅ | ✅ | ✅ | ✅ (rendering varies) |
| Action.ShowCard (collapsible) | ✅ | ✅ | ✅ | 🟡 |
| Action.Submit | ✅ | ✅ | ✅ | 🟡 |
| Proactive messages | N/A | ✅ | 🟡 | ❌ |
| Omnichannel handoff | N/A | ✅ | ✅ | ❌ |
| System.Conversation.InTestMode | ✅ (true) | ❌ (false) | ❌ (false) | ❌ (false) |
| MCP tools | ✅ | ✅ | ✅ | ✅ |
| Event triggers | N/A | ✅ | ✅ | ✅ |
| Fabric Data Agent | ✅ | ✅ | ✅ | ❌ |

## Adaptive Card Schema Limits

| Channel | Max Schema | Key Restrictions |
|---|---|---|
| Web Chat | 1.6 | Most features supported |
| Teams | 1.5 | No `Action.Execute`. `Action.ShowCard` supported. |
| M365 Copilot | 1.5 | Submit behavior may vary. Test thoroughly. |
