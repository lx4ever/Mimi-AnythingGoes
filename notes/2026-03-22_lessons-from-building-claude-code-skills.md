---
date: 2026-03-22
created: "09:44"
summary: LinkedIn 文章总结了 Anthropic 在 Claude Code 内部大规模使用 Skills 的经验：先按技能类型分层，再通过 gotchas、渐进披露与配置化 setup 提升复用质量与稳定性。
---

# Lessons from Building Claude Code: How We Use Skills

## 内容

来源链接
https://www.linkedin.com/pulse/lessons-from-building-claude-code-how-we-use-skills-thariq-shihipar-iclmc?utm_source=rss&utm_campaign=articles_sitemaps

核心观点（提取）

- Skills 不是“只有 markdown 的提示词”，而是可包含脚本、资源、数据、配置与 hook 的完整文件夹能力。
- 内部大量实践后，技能大致可分为 9 类：
  1. Library & API Reference
  2. Product Verification
  3. Data Fetching & Analysis
  4. Business Process & Team Automation
  5. Code Scaffolding & Templates
  6. Code Quality & Review
  7. CI/CD & Deployment
  8. Runbooks
  9. Infrastructure Operations
- 作者强调：高质量 skill 往往类别边界清晰；低质量 skill 常把多个目标混在一起导致触发与执行混乱。
- 实操建议包括：
  - Don’t State the Obvious：不要写 Claude 本来就知道的泛化常识。
  - Build a Gotchas Section：把高频失败点沉淀为“坑点清单”。
  - Use File System & Progressive Disclosure：把细节拆到 references/assets/scripts，按需读取。
  - Avoid Railroading Claude：给方向，不要写死路径，保留适配空间。
  - Think through Setup：需要用户参数时，用 config 文件做初始化流程。
  - Description Field Is For the Model：description 要写“触发条件”，不是写给人的宣传摘要。
- 文章还提到记忆/数据持久化是 skill 设计中的关键延伸能力（文末展开）。

方法框架（可落地）

1. 先确定 skill 属于哪一类（单一主类优先）。
2. 再定义触发语与成功输出（description + 验收）。
3. 把易错点做成 gotchas，并持续迭代。
4. 用目录结构做分层（主指令/引用/脚本/模板）。
5. 对需要外部上下文的 skill 增加 setup + config 机制。

标签
#ClaudeCode #AgentSkills #PromptEngineering #AI编程 #开发效率 #WorkflowDesign

## Bubble 的洞察

- 这篇最值钱的不是“9 分类目录”，而是把 Skill 从提示词工程升级为“可维护的软件资产”这件事。
- 你当前 AnythingGoes 的做法已经踩在这条路上了：结构化模板 + 批量沉淀 + 可回放复用。
- 下一步如果要继续进化，优先补“Gotchas 累积机制”会比再加新 skill 更有复利。
