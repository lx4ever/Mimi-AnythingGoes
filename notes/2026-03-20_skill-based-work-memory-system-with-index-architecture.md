---
date: 2026-03-20
created: "12:23"
summary: 提取一套“skill + 索引文件”的工作记忆系统：通过项目级skill与倒序链接索引，解决多轮对话上下文断裂问题，并支持复盘、汇报与项目快速重启。
---

# 几百人赞过的用 skill 做工作记忆系统

## 内容

标题 / Title
几百人赞过的用skill做工作记忆系统

关键要点 / Key Points

• 这套方法解决的是：每次新对话都要重讲项目背景，导致上下文断裂。
This system solves repeated context loss when every new chat starts from zero.
• 核心方案：skill + 索引文件，让 Claude 自动读取项目上下文。
Core setup: skill + index file so Claude can auto-load project context.
• 系统分两层：

1. 给 Claude 的 skill（启动说明与行为规范）
2. 给人和 Claude 共用的索引文件（项目文本入口）
Two layers: skill instructions + shared index document.

• 索引文件设计原则：时间倒序 + 链接一切。
Index principle: reverse chronological order + link everything.
• 索引本身不写长内容，只放日期和链接；具体内容放在各条笔记里。
Keep index minimal (date + links), put details in linked notes.
• 好处：自动日/周/月复盘、导师汇报初稿、搁置项目快速重启。
Benefits: periodic review, advisor update draft, fast project restart.

方法步骤（如有） / Steps (if any)

1. 每个项目单独建一个 skill（如 /demo），避免跨项目污染。
Create one skill per project (e.g., /demo) to isolate context.
2. 在 skill 里写三类信息：

• 项目资产位置（索引、代码库、数据、服务器等）
• 启动时读哪些文件、输出格式
• 工作规范（语言、简洁度、引用要求）
In skill: locations, startup reads/output format, working norms.

3. 建一个索引文件（如 00_PROJ-Demo.md），按时间倒序挂笔记链接。
Maintain one index file with reverse-chronological links.
4. 日常只新增条目，不维护复杂分类体系。
Append entries instead of maintaining complex categories.
5. 让 Claude 启动时先读索引，再输出状态简报并询问今日任务。
On startup, Claude reads index first, gives status brief, then asks next task.

关键金句 / Key Quotes

• 极简，但可以链接一切。
Minimal, but links to everything.
• 时间和 attention 本身就是组织结构。
Time and attention are the organizing structure.
• 不去总结，让 Claude 直接读项目里产生的所有文本。
Don’t over-summarize; let Claude read the project-generated texts directly.
• 最好的方式就是现在启动，慢慢迭代。
The best way is to start now and iterate.

标签 / Tags
#效率 #科研 #科研生产力 #个人开发者 #claudecode #openclaw #obsidian #博士生 #生产力 #codex

## Bubble 的洞察

- 这个方法的高明点在于把“记忆管理”从模型能力问题，转成“信息架构问题”。
- 你提取到的“倒序+全链接”非常实用：它符合真实工作流，新增成本低、检索效率高。
- “索引极简、正文外置”能显著减少维护负担，避免系统很快烂尾。
- 这套结构和你今天大量沉淀的内容天然兼容：一边持续记录，一边自动形成可重启上下文。
- 若要进一步增强，可补一个“周度归档脚本/模板”，自动把本周新增链接打包成复盘入口。
