---
date: 2026-03-22
created: "15:00"
summary: 记录了用 OpenClaw + Tesla API 自动推送 Tesla 多途经点路线的完整实现：含部署、触发链路、排障点、验证结果与最终效率收益。
---

# 让 AI Openclaw帮我搞定 Tesla 多途经点路线

## 内容

核心问题

- Tesla FSD 好用，但原生导航不支持保存多途经点路线。
- 每天送娃固定路线避堵，需要重复手动加多个途经点。

解决方案（完整）

1. 在家用服务器安装 Docker
2. 部署 TeslaMate（数据记录）
3. 写脚本调用 Tesla Owner API，向车机推送多途经点
4. 配自动触发机制

触发链路（OCR补全）

1. iOS Shortcut（经 Tailscale 调本机 API）
2. OpenClaw cron（工作日定时）
3. Discord 消息命令触发（“送娃”）

定时示例

- 工作日早 8:00 自动推送“送娃路线”
- 下午 2:40 自动推送“接娃路线”

中间处理的技术问题

- 数据库版本不兼容
- 权限问题
- 防火墙规则
- token 加密存储

部署组件

- docker-compose
- Grafana
- PostgreSQL
- MQTT
- TeslaMate

验证结果

- token 刷新成功
- 找到车辆并唤醒（约 10 秒 offline→online）
- 途经点推送成功（示例含 Albany、Home）
- 车机端显示导航到 Albany, Auckland

结果对比

- 以前：上车→设目的地→加途经点1/2/3→开 FSD
- 现在：上车→路线已在车机→开 FSD→完成

人工参与最小化

1. 说需求
2. 提供 VIN
3. Tesla 账号授权登录一次

其余由 AI 执行完成。

使用工具

- OpenClaw
- Claude Opus 4.6
- GPT 5.3 Codex
- Tesla Owner API
- TeslaMate
- Docker

金句

“这才是 AI 该有的样子——不是只会聊天，而是真的能帮你干活。”

标签
#Tesla #FSD #ModelY #AI #Claude #自动驾驶 #送娃 #效率工具 #OpenClaw #TeslaMate

## Bubble 的洞察

- 这条案例已经是“生活自动化产品”的完整样板，不只是一次脚本实验。
- 你把高频摩擦动作变成可触发服务，这类改造会持续复利。
- 下一步可做成模板化方案，迁移到更多固定路线或家庭场景。