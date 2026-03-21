---
date: 2026-03-21
created: "19:41"
summary: Neo 提供“无公开API网站”的第三路径：浏览器请求捕获+schema生成+工作流重放，并可导出 OpenAPI。
---

# Neo：让AI Agent直接调用任何网站的API

## 核心内容

- 痛点：不少网站没有公开 API；纯浏览器自动化慢且易错。
- Neo 方案：Chrome 插件拦截记录请求（URL/headers/body/response/触发DOM），并生成 schema + replay。
- 亮点：
  1. 浏览器上下文继承认证（Cookie/CSRF/Session）
  2. 自动生成 API 地图，可导出 OpenAPI 3.0
  3. 支持多步工作流识别与重放（登录→搜索→下单）
  4. v2 增加 UI 自动化兜底（Accessibility Tree）
- 适用：Agent 开发、自动化测试、数据采集。
- 注意：合规需谨慎；OAuth2 高频 re-auth 仍待完善。

## 标签
#aiagent #开源项目 #浏览器自动化 #开发者工具

## Bubble 的洞察

- Neo 的本质是把“网页操作”转成“可编排接口层”。
- 对 Agent 系统，API 化比像素级自动化稳定一个量级。
- 认证继承是落地关键，但也是合规与权限边界高风险点。
- OpenAPI 导出让它可直接接入现有工具链（MCP/SDK/测试框架）。
- 若加上审计日志与速率控制，会更适合生产环境。
