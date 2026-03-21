---
date: 2026-03-20
created: "21:25"
summary: 提取OpenClaw省Token方案：从上下文裁剪、自动压缩、缓存、本地记忆到多Agent分工，强调高消耗是架构问题而非单点操作问题。
---

# OpenClaw省Token终极方案，从入门到硬核

## 内容
### 关键要点
- 高Token消耗与架构有关（大prompt、上下文搬运、历史压缩）。
- 四层优化：Context pruning、Auto compaction、Prompt caching、Local memory。
- 建议多Agent分工：高成本模型调度、低成本模型执行，并隔离workspace。
- 提到本地语义检索（qmd）作为低成本替代外部embedding。
- 记忆管理建议：MEMORY做索引、规则放对位置、提高召回效率。

### 方法步骤（如有）
1. 先做缓存与上下文裁剪。
2. 再做多Agent职责拆分。
3. 最后上本地检索与记忆结构优化。

### 关键金句
- “OpenClaw吃Token不是你的问题，是架构决定的。”

### 标签
#OpenClaw #AI编程 #省Token

## Bubble 的洞察
- 这条的核心是“系统级降本”，关键在职责拆分与记忆路径设计。
