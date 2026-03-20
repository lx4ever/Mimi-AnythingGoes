# UI Skill 标准流程图 + 最小闭环（执行版）

**Date**: 2026-03-20
**Source**: notes/2026-03-20_ui-skill-curation-list-for-design-workflows.md
**Lens**: 可执行流程设计（产出稳定性优先）

---

## 1) 标准流程图（输入/输出）

```text
[需求输入]
  ↓
[Step A: Baseline 生成]
  工具: ui-skills (baseline-ui / baseline-react / baseline-vue)
  输入: 页面目标、信息架构、品牌约束、技术栈
  输出: v0 页面骨架（结构/组件/基础样式）

  ↓
[Step B: 设计工程审查]
  工具: design-engineer-auditor
  输入: v0 代码
  输出: 审查报告（a11y、响应式、命名、对比度、组件完整性）+ 修复建议

  ↓
[Step C: 审美评分]
  工具: taste-skill
  输入: 修复后的 v1
  输出: 评分与问题项（排版、色彩、间距、层级）

  ↓
[Step D: 精修与排版]
  工具: impeccable (/polish /typeset /arrange)
  输入: v1 + 评分问题项
  输出: v2 精修界面（更少 AI 味）

  ↓
[Step E: 语义图标增强]
  工具: better-icons
  输入: 组件语义与场景
  输出: 图标集替换方案 + 代码

  ↓
[Step F: 动效增强]
  工具: motion-dev/ai-kit
  输入: 关键交互节点
  输出: 微交互与过渡规范（含参数）+ 动效代码

  ↓
[验收]
  指标: 可读性 / 一致性 / a11y / 响应式 / 品牌贴合 / AI感降低
  输出: 可交付版本 v3
```

---

## 2) 最小闭环（Idea 2 落地）

目标：最少步骤拿到“可上线、低AI味”的稳定版本。

### 固定链路

1. `baseline-ui` 生成 v0
2. `design-engineer-auditor` 做代码/可访问性审查并修复 → v1
3. `taste-skill` 打分并列出前三问题
4. `impeccable /polish` + `/typeset` 定向修正 → v2

### 出口门槛（不过线就回环）

- 审美评分达到设定阈值（例如 ≥ 8/10）
- 无严重 a11y 问题
- 移动端关键断点无结构错位
- 主界面文案无明显“AI套话”

### 回环规则

若任一门槛未达标：
- 回到 Step 4 做定向微调；
- 必要时回到 Step 1 重设 baseline（信息层级错误时不在末端硬修）。

---

## 3) 执行模板（可直接贴给 agent）

```text
任务：生成并优化一个[页面类型]。
约束：技术栈[React/Vue]，风格[极简/高端]，品牌色[#xxxxxx]。

按以下闭环执行：
1) 用 baseline-ui 先产出 v0。
2) 用 design-engineer-auditor 审查并修复，得到 v1。
3) 用 taste-skill 打分并输出 top3 问题。
4) 用 impeccable 执行 /polish + /typeset 修复 top3，得到 v2。
5) 输出：最终代码 + 每一步变更摘要 + 尚未解决项。
```

## Bubble 的洞察

- 你要的不是“更炫 skill”，而是“稳定可复现的产出机制”，这份流程把随机灵感变成了工程化能力。
- 最小闭环的核心价值在于：先把质量下限拉高，再考虑图标和动效等上限优化。
- “审查 + 评分”放在中段是关键，这能避免后期返工雪球。
- 你可以把这个流程作为团队默认 SOP，减少个人审美差异导致的交付波动。
- 下一步若要继续提效，建议加一个统一验收打分表，把“是否通过”从主观判断变成可比较数据。
