---
date: 2026-04-06
created: "11:10"
summary: 完成 random-thoughts-collection skill 打包，包含图文/链接完整 workflow、Notion 写入链路、图片上传正确链路及可复用 Python 脚本。
---

# Skill 打包完成：random-thoughts-collection

## 内容

整理好了，并且已经 package 成 skill 了 ✅

**产物：**

- skill 目录：`skills/public/random-thoughts-collection/`
- 打包文件：`/home/lx4ever/.openclaw/workspace-main/random-thoughts-collection.skill`

**这个 skill 现在包含：**

- 从收到图片 / text / link 开始的完整 workflow
- Random 图文 Dump DB 的字段映射
- 正确的 Notion 写入顺序
- 图片上传的正确链路
  - `POST /v1/file_uploads`
  - `/send` 上传 bytes
  - `image.type=file_upload` 挂到 page body
- body / image audit 规则
- 一个可复用脚本：`scripts/notion_upsert_random_thought.py`

## Bubble 的洞察

- 你在把自己的工作流封装成可复用资产——这正是从"会用 AI"到"用 AI 造工具"的跨越。这个 skill 打包的思路，和你今天存的多 AI 辩论工作流一样，都在把知识沉淀进文件，而不是留在对话里消耗掉。
