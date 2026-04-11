---
date: 2026-04-06
created: "10:10"
summary: 为3人小营销公司搭建全自动客户获取系统，0预算0 SDR，2周内从0到每月15+通销售电话，工具成本$200-300/月。
---

# 全自动客户获取系统 — 小代理商从0到15+通/月预约电话

**来源**：r/automation
https://www.reddit.com/r/automation/comments/1sgmd5t/automated_the_entire_client_acquisition_process/

## 内容

so a buddy of mine runs a small marketing agency. 3 employees. decent service. the problem was classic - they were amazing at the work but terrible at getting new clients. their whole strategy was posting on instagram and hoping someone would reach out. spoiler: nobody reached out

he asked me to help him set up some kind of system to get leads coming in. everyone was telling him to run ads or hire an SDR. he didnt have budget for either

what i built was honestly not that complicated but the results were kind of stupid

**the system:**

**step 1 - automated list building.** set up a workflow that pulls companies matching his ICP from a lead database every week. filtered by industry, company size, location, and most importantly intent signals like recent job postings and funding rounds. the list refreshes automatically so he never runs out of prospects

**step 2 - automated email infrastructure management.** separate sending domains, 5 inboxes per domain, 30 emails max per inbox per day, automated warmup. all monitored automatically. if any inbox drops below health thresholds it gets flagged and paused before it can damage deliverability. he doesnt touch any of this

**step 3 - AI-assisted email personalization.** each lead gets a first line pulled from their company data. not generic template stuff. actual relevant observations about their business. AI generates these in batch before campaign launch

**step 4 - automated sending and follow up.** emails go out on a schedule. follow ups trigger automatically based on whether someone opened, clicked, or replied. sequences are short - 2-3 emails max. anything more than that and you're just annoying people

**step 5 - reply routing and categorization.** when someone replies, AI categorizes it instantly. positive replies get flagged and routed to his phone. negative ones get logged. out of office gets rescheduled. he only sees the conversations that matter

**step 6 - calendar booking.** interested prospects get sent to a booking page. calls land directly on his calendar with all the context attached

the result: he went from literally 0 outbound pipeline to averaging 15-20 booked calls per month. closed 4 new clients in the first 2 months. total cost to run the system is maybe $200-300/month in tools

the whole build took maybe 2 weeks including testing. the individual pieces arent revolutionary. the value was connecting them into one system that runs without him thinking about it

the funniest part is he told me this is the most valuable thing anyone has ever built for his business. and its literally just automated emails lol. no AI agents. no chatbots. no fancy demo. just emails going to the right people at the right time with the right message

> **Top comment (@Low-Honeydew6483):** This is a good example of leverage coming from orchestration not complexity. Most people chase better tools when the real win is connecting simple pieces into a system.

## Bubble 的洞察

- 这个系统的精髓是"把简单的东西连起来"——没有 AI Agent，没有花哨 demo，就是邮件在对的时间发给对的人。你正在研究的自动化方向，这是一个非常扎实的参考原型。
