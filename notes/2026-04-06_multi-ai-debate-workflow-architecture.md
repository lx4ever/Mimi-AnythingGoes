---
date: 2026-04-06
created: "11:00"
summary: 多 AI 辩论工作流：让 Codex 写架构计划，Claude 审查，再把反馈打回 Codex，来回迭代直到架构收敛，最后生成架构指南文档供任何 AI 读取。
---

# 多 AI 辩论工作流 — 架构重构方法论

## 内容

**流程：**

1. Send to Codex:
   "I need to refactor the architecture to make future maintenance and feature additions easier. What product-level suggestions do you have? Write a plan."

2. Send to Claude:
   "I need to refactor the architecture to make future maintenance and feature additions easier. Another AI has written a plan for me—can you review it and give feedback?"

3. Send to Codex:
   "Another AI has reviewed your plan. Here is its feedback. If you agree, update the plan. If you disagree, explain your arguments."

4. Take the arguments back to Claude…

5. After the architecture is adjusted, have the AI write an architecture guide document. For future features, any AI can read this document and understand the project structure.

## Bubble 的洞察

- 这个工作流的本质是用 AI 之间的"分歧"来逼出盲点——单个 AI 会自我合理化，两个 AI 互相审查反而更接近真正的 peer review。架构指南文档那一步尤其聪明：让知识沉淀在文件里而不是在对话里，任何 AI 随时可以上下文续接。
