---
date: 2026-03-20
created: "08:46"
summary: Mimi整理了一个可让skill自动迭代优化的autopilot方法（autoresearch skill）：通过可量化checklist驱动“修改-测试-保留/回退”循环，实现无人值守提质。
---

# 一个方法让 skill 自动进化（autoresearch）

## 内容

一个方法让 skill 自动进化

正文（作者原文整理）

• 搭了一套 autopilot 方法，可自动迭代任何 skill
• 启动后 agent 会持续测试、打磨 skill，无需人工干预
• 例子：落地页文案 skill 质量通过率 56% → 92%，全程零手动

灵感来源

• Andrej Karpathy 的 autoresearch 思路
• 机制：小改动 → 测试结果 → 变好保留 / 变差回退 → 循环迭代

如何优化 skill（方法论）

• 用 checklist 定义“好坏”
• 每项 yes/no 判定，通过或失败
• 推荐 3–6 个检查点（太多会导致“应付检查”）
• 示例检查项：
• headline 是否有具体数字/结果
• copy 是否避免流行词
• CTA 是否为具体动词短语
• 第一行是否指出具体痛点
• 总字数是否在限制内

Skill 信息

• 名称：autoresearch skill
• 作者：Ole Lehmann
• 适用：Claude Code / Cowork
• 下载：https://github.com/olelehmann100kMRR/autoresearch-skill

运行流程（6步）

1. 下载 skill
2. 选择要优化的 skill
3. agent 询问测试输入与 checklist
4. 跑 baseline score
5. 打开 live dashboard
6. 自动循环：分析 → 修改 → 测试 → 保留/回退

结果示例

• 4 轮改动
• 3 次保留、1 次回退
• 实际改动：增加 headline 规则、禁用 buzzwords 列表、增加 worked example、尝试更严字数后回退

一句话总结
If you can score it, you can autoresearch it.

## Bubble 的洞察

- 这套方法的核心不是“自动写得更好”，而是把 skill 优化变成**可度量的实验系统**：有分数、有回退、有保留，才能稳定进化。
- 你抓到的关键点非常对：checklist 用 3–6 项最有效，既能约束质量，又不至于把模型逼成“只会过题”的机械产出。
- 这和你前面做 UI 流程闭环的思路高度一致：先定义评分标准，再做循环优化，最后沉淀成SOP。
- “变差即回退”是最有工程价值的机制，它让试错成本可控，能支持更激进的探索而不破坏稳定版本。
- 这句话可以当你的方法论座右铭：**能被评分的能力，就能被自动进化**；下一步就是把你的常用 skill 都补上最小评分卡。
