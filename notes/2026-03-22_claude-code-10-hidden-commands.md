---
date: 2026-03-22
created: "09:15"
summary: 这条笔记系统整理了 Claude Code 的 10 个隐藏命令与上手路径，核心价值在于用“上下文隔离、分叉试验、循环自动化”三类能力提升复杂会话与开发效率。
---

# 10个你可能不知道的 Claude Code 隐藏命令

## 内容

标题
10个你可能不知道的 Claude Code 隐藏命令

关键要点（完整）

1. /btw（插入式提问，不污染主上下文）
- 用法：在 Claude 正在执行主任务时，临时插一个小问题。
- 核心：这段问答不会并入主对话历史，问完可直接清掉。
- 价值：避免“上下文污染”，尤其长会话里很实用，且几乎不额外耗 token（复用当前提示缓存）。

2. /rewind（回退/撤销，支持代码与对话分离）
- 相当于 Ctrl+Z。
- 新能力：可分别“回退代码”或“回退对话”，不再必须整段一起撤销。
- 场景：实验某方案失败，回退代码但保留讨论上下文，快速换方向。

3. /insights（个人使用习惯分析）
- 生成本地 HTML 报告，分析你近一个月使用习惯。
- 内容：常用命令、重复操作模式、可做自定义命令/Skills 的建议。
- 建议：每月跑一次，能发现流程优化点。

4. （规划用 Opus、执行切 Sonnet）
- 用于复杂推理阶段：先 Opus 4.6 做 plan，再用 Sonnet 4.6 执行。
- 价值：对 Pro 用户更省额度，且“规划能力”和“编码执行”分工更合理。
- 作者观点：这是隐藏得比较深但很实用的模式。

5. /simplify（多 Agent 并行审查优化）
- 启动 3 个并行 Agent，从“代码复用 / 质量 / 运行效率”三角度审查改动。
- 输出：汇总可优化点（冗余 import、重复逻辑、可简化写法等）。
- 定位：作者觉得比旧 /review 更好用，适合每次大改后跑一遍。

6. /branch（对话分叉，旧名 /fork）
- 现在 /fork 也可用，会自动跳到 /branch。
- 作用：从当前对话开新分支，原会话不受影响。
- 与 /rewind 区别：
  - /rewind = 回退（后悔药）
  - /branch = 分叉（平行宇宙）
- 适合：同一路思考衍生两种实现并行试验。

7. /loop（定时循环任务）
- 用法：/loop 5m 检查部署状态（示例）。
- 作用：定时重复执行某任务，结果直接留在当前对话上下文。
- 限制：循环任务默认会在创建约 3 天后自动过期，最后触发一次后自删。
- 长期常驻需求：建议桌面端方案。

8. /remote-control（终端会话手机远控）
- 别名：/rc。
- 行为：终端生成 URL，手机打开后可同步看到并操作 Claude Code 会话。
- 特点：双端实时同步；代码仍在本机运行，手机是远程操控窗口，安全且方便。

9. /export（导出当前对话为 Markdown）
- 作用：把当前整段对话导出成 md 文件。
- 场景：
  - 架构讨论留档
  - 作为后续上下文输入给其他 Agent（如 Codex 协同排障）

/batch (v2.1.63+, bundled skill)
∙	定义：将大规模变更分解为5-30个独立单元，每个单元在隔离的git worktree中由独立agent并行执行，完成后自动创建PR。
∙	好处：批量迁移神器。每个agent独立隔离，不影响其他，且每个PR自动跑/simplify。
∙	场景：框架迁移，全局rename、批量加type annotation、lodash替换为原生方法等模式化重复变更   

/frontend-design ⚠️ (official plugin/skill, 非内置命令)
∙	定义：Anthropic官方发布的skill，引导Claude在写代码前先确定大胆的美学方向（brutalist、maximalist、retro-futuristic等），避免”AI slop”千篇一律的Inter字体+紫色渐变。 需要手动安装。
∙	好处：解决AI生成UI同质化问题。强制Claude思考typography pairing、color system、motion design，输出production-grade前端。

10. 快捷键（作者常用）
- Ctrl+V：可直接粘贴截图，不用先存文件再拖入。
- Ctrl+J（Mac 可 Option+Enter）：直接换行。
- Ctrl+R：搜索历史 prompt。
- Ctrl+U：删除整行输入。
- 注：文中强调在该场景下是 Ctrl+V（不是 Cmd+V）。

方法步骤（如何上手）
1. 先把这 6 个优先练熟：/btw /rewind /insights /simplify /branch /export
2. 把 /model opusplan 用在“复杂规划+普通执行”的任务上。
3. 给常见巡检任务加 /loop（如部署状态、日志关键字）。
4. 有移动办公需求就配 /remote-control。
5. 每月固定跑一次 /insights 做使用习惯复盘。

金句
- “/rewind 是后悔药，/branch 是平行宇宙。”
- “很多新功能先在开发者 Twitter 提到，常常比文档更快。”

标签
#ClaudeCode #隐藏命令 #AI编程 #开发效率 #AgentWorkflow #VibeCoding

## Bubble 的洞察

- 这 10 条里真正构成体系的是三件事：上下文治理（/btw /rewind /branch）、流程自动化（/loop）、知识沉淀（/export /insights）。
- 你给出的“先练 6 个”顺序很实战，等于先拿到 80% 的效率提升，再补模型切换和远控这种进阶能力。
- 如果后续要团队化复用，这份清单可以直接升级成“命令触发条件表”（什么时候该 rewind、什么时候该 branch），减少协作分歧。
