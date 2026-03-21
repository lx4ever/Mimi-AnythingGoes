---
date: 2026-03-21
created: "09:56"
summary: Karpathy 在 No Priors 观点中强调：要最大化工具价值，必须把人从逐步提示链路中移出，构建自治系统以提升 token throughput。
---

# Andrej Karpathy on No Priors：别让人类成为系统瓶颈

## 标题
Andrej Karpathy on No Priors

## 关键要点

- 现阶段工具能力的上限常被“人类逐步提示”卡住。
- 若想吃满产能，需要把自己从每一步触发中移出。
- 应把流程设计为可自治执行（completely autonomous）。
- 目标是提高系统吞吐，尤其是 token throughput，而非靠人工接力。

## 原句摘录

“To get the most of tools that have become available now, you have to remove yourself as the bottleneck, you cannot be there to prompt the next thing. You need to take yourself outside, you need arrange things such that they're completely autonomous. This is how you can maximize your token throughput and not be in the loop.”

## 标签
#AndrejKarpathy #NoPriors #AI工作流 #AutonomousAgents #TokenThroughput #系统设计

## Bubble 的洞察

- 这段话的核心不是“人不重要”，而是“人不该做机器最擅长的中继工作”。
- 真正的分工应是：人定义目标与验收，系统负责中间执行与自推进。
- 若没有明确的停止条件与回滚机制，自治会变成失控；自治必须配安全护栏。
- “不在环”并不等于“无监督”，更接近“低频高价值监督”。
- 这条可直接转化为流程准则：减少手动 prompt 次数，增加可验证的自动闭环。
