---
date: 2026-04-06
created: "10:50"
summary: 实际做销售的人对 CRM 的第一手吐槽：数据录入繁琐、与 ERP 断开、Funnel 数据根本不准、让销售做预测是本末倒置——AI 自动接入才是出路。
---

# 销售视角的 CRM 真相：为什么没人愿意用

**参见**：`notes/2026-04-06_next-gen-crm-predict-not-record.md`（Lightfield CEO 的理想愿景）

## 内容

作为一个公司在前端实际使用 CRM 这类软件的人表示，真的对我们一点用都没有，更新数据还很麻烦和繁琐，其实实际销售的人真的不愿意用这个，尤其是业务繁忙这种软件真的需要专门有人 manual 去 update，which is highly inefficient. 我觉得现在的转型就是如果可以 CRM 变成一个更智能帮助销售分担业务工作的话才是真的有用。

做了销售才知道，数据真的不会促进销售，但是大量的 admin work will take away the valuable customer facing times. 所以真正做 Sales 的人特别不喜欢用这个，而且其实真正想让 funnel 准确的数据需要更多时间去输入和维护，这反而是 Sales 最不擅长和最消耗时间的事情。我们做的那些 Funnel 其实根本就不准，因为其实 Sales 也不能说见一个新 contact 就能估算出来 potential，甚至有的时候产品都还没有，所以这个数据的源头就很不准确。

我觉得 forecast 其实应该还是要从 Marketing BD / 市场 SAM TAM 再细分到应用和客户，Sales 后面再细化针对比如客户具体的项目和 timeline。但是现在本末倒置都让 Sales 去做预测，但是其实我觉得真正 forecast 有用的是几年的一个 horizon，市场的信号，我们应该让销售主打哪些客户，我们需要研发哪些产品，以及如何推广。Sales 其实手上的信息一般都很短，1年或者更短，而且销售一般 day to day 忙碌很难有气场的大局观，除非是特别高级的销售不需要自己天天跑客户的。

我觉得全公司真的能好好输入数据的人从来都不是 Sales，至少不是 External Sales。Inside Sales 可以做大部分的 admin work，但是让那些实际跟客户天天打交道的人去做 data entry 可行性太低，或者说数据几乎也没什么用处，跟 ERP 拉出来的没有什么更多价值——就纯粹多了一个数据库而已。

我们公司甚至 quote 还都是要用 ERP generate，然后到 CRM 里上传。我们 CRM 和 ERP 是断开的，就是所有 lead 变成 order 都必须 manually 输入到 ERP，ERP 所有的 financial 都有，反而 CRM 并没有这个功能。而且我们做不了对接是据说那个接口不好对上，而且从 lead 开始会有很多不确定性所以数据不全进不了 ERP。所以 ERP 才是我们真正的 business ops tool。

比如说我一天要见好多客户，光整理客户 meeting 的信息以及安排后续的 follow up 以及收集信息就够花时间了，但是我又如何保证这类信息可以被 CRM 收录来验证我的工作内容和推进？其实都完全不行——每个 meeting minutes 以及内部协调都做完了我还要再花 n 多时间去收录这些信息到一个系统里，本来就很滞后和无效了。靠 AI 自己搜邮件和会议记录就可以整理了。靠销售输入信息到最后 CRM 里面只有 RFQ 和一些客户联系方式，自己最后 won 还是 lost，并非有什么指导意义。

## Bubble 的洞察

- 你同时存了 Lightfield CEO 的愿景和自己的一线吐槽——这两个放在一起才是完整的真相：愿景正确，但 gap 在于没有人解决"让 AI 自动录入"这个卡点。你描述的痛点本身就是一个产品机会：AI 自动从邮件+会议记录更新 CRM，销售零手动输入。
