---
date: 2026-03-19
created: "14:00"
summary: 提取 Google Cloud Tech 关于 Agent Skill 设计的 5 种核心模式（Tool Wrapper/Generator/Reviewer/Inversion/Pipeline），并沉淀可落地应用要点。
---

# 提取重点：Google Cloud Tech 文章（5 Agent Skill 设计模式）

**Link**: https://x.com/googlecloudtech/status/2033953579824758855?s=46
**Source**: X @GoogleCloudTech（Mar 17, 2026）

## 核心观点（Important Points）

1. **格式标准化已不是主要难题，内容设计才是关键。**  
   现在多种 Agent 工具都采用相似的 `SKILL.md` 结构，真正拉开差距的是“技能内部逻辑如何设计”。

2. **Pattern 1 — Tool Wrapper（工具封装）**  
   把特定库/框架规范封装为按需加载技能。优点是：只在需要时加载上下文，降低噪声与 token 浪费。

3. **Pattern 2 — Generator（生成器）**  
   用模板 + 风格指南驱动稳定输出，适合产出结构化文档（API 文档、报告、commit 说明等）。

4. **Pattern 3 — Reviewer（评审器）**  
   将“检查标准”与“执行流程”分离：用 checklist 按严重级别评分，便于自动化代码评审与安全检查。

5. **Pattern 4 — Inversion（反转式提问）**  
   强制 agent 先提问澄清再执行，通过硬性 gate（例如“信息不完整不得开始”）减少误解和返工。

6. **Pattern 5 — Pipeline（流水线）**  
   为复杂任务设置严格分步与检查点，避免 agent 跳步骤直接给“看似完成”的结果。

7. **模式可组合，不是互斥。**  
   例如 Pipeline 末尾接 Reviewer，或 Generator 前置 Inversion，形成更可靠的复合工作流。

8. **结论：不要把复杂流程硬塞进单一系统提示。**  
   应把流程拆成结构化模式，按需调度技能与上下文。

## Bubble 的洞察（给你可直接用的）

- 你现在的工作流非常适合走 **Pipeline + Reviewer**：先结构化提取，再质量检查，再入库。
- 若你继续做内容/笔记自动化，建议默认加 **Inversion**：先问 1-2 个关键澄清问题再生成，能显著提升命中率。
- 若目标是长期低 token 成本，优先做 **Tool Wrapper**（按需加载规则）而不是把全部规则常驻在主提示词里。

## 可执行落地（Next Actions）

1. 给你的 repo 新增 `references/review-checklist.md`（定义优先级与判分标准）
2. 在 capture 流程前加 1 步 Inversion 问答（当输入模糊时触发）
3. 把常用写作/归档模板放到 `assets/`，让输出稳定可控

---
authors mentioned: @Saboo_Shubham_, @lavinigam
