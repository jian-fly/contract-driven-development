# 契约驱动开发 · Contract-Driven Development

给 AI 立规矩的「宪法」+ 强制执行守卫。

> 每次新会话，AI 都会失忆一次。契约驱动开发把架构、接口、数据、安全、规范固化成 AI 看得懂的契约文件，再用守卫强制 AI 动手前先读、完成后必交作业。

## 它解决什么

- **重复造轮子**：已有模块，AI 在别的文件又写了一遍
- **数据混乱 / 接口不一致**：同一份数据几种叫法，调用全靠猜
- **随手发挥**：说好的架构，写着写着就改了
- **扫库爆窗**：让它扫一遍项目，还没干活上下文就满了

## 核心特性

- **10 份契约 + 模块契约**：INDEX / PROJECT / STANDARD / API / DATA / MODULE / DECISION / TEST / SECURITY / DEPLOY
- **强制执行守卫**：任务开始先分级（T0-T3），按需读契约，完成必须自检
- **冲突优先级**：SECURITY > PROJECT > STANDARD > 模块契约 > DATA > API > MODULE > DEPLOY > TEST > DECISION
- **渐进接入**：Lite（3 步）/ Standard（7 步）/ Full（11 步），按 PCS 复杂度评分自动分级
- **变更历史进 .git**，语义理由进 CHANGELOG.md

## 快速开始

1. 复制本仓库的契约文件到你的项目（或按 Lite/Standard/Full 只取需要的）
2. 安装守卫：`skills/install.ps1`（Windows）或 `skills/install.sh`（macOS/Linux）
3. 按 `INDEX.md` 的「待填入基线」填入你的项目信息
4. 开工——agent 会自动先读契约

## 目录结构

```
INDEX.md          契约总导航（唯一入口）
PROJECT.md        架构设计、模块边界、架构红线
STANDARD.md       代码规范、命名约定、性能约束
API.md            接口定义（超 50 个自动分片）
DATA.md           数据模型（超 50 张自动分片）
MODULE.md         模块目录索引
DECISION.md       技术决策记录（ADR）
TEST.md           测试策略
SECURITY.md       安全红线（最高优先级）
DEPLOY.md         部署与运维
modules/          模块契约（每个模块一份）
CHANGELOG.md      变更语义档案
skills/           多环境安装脚本 + 守卫主文件
AGENTS.md         Agent 通用入口
```

## 真实案例

一个 4W+ 行的微信小程序（纯 agent 编写）：接入契约系统后，每次任务基本一次过、无返工，不再全库扫 token 定位。

## License

MIT
