# AGENTS.md — Agent 通用入口

本仓库是「契约驱动开发」系统：给 AI 立规矩的契约 + 强制执行守卫。

## 必守规则（对所有 agent 生效）

1. 任何编码/修改/分析/测试/架构任务开始前，必须调用 `contract-enforcement` 守卫，先做规模分级（T0-T3），再按级查阅契约。
2. 契约唯一入口是 `INDEX.md`；不确定查哪份契约时先读它。
3. 冲突优先级：`SECURITY > PROJECT > STANDARD > 模块契约 > DATA > API > MODULE > DEPLOY > TEST > DECISION`。
4. 变更历史以 .git 为准：每次变更完成后必须 `git add` + `git commit`（消息带 BATCH 批次号）；语义理由写 `CHANGELOG.md`。
5. 任务完成后必须输出自检表（契约文件/状态/备注）；PCS 仅在跨阈值或触发硬条件时报告。

## 环境

- Skill 已按环境预装：`.codex/skills/`、`.claude/skills/`、`.cursor/skills/`、`.trae/skills/`
- 其他环境：运行 `skills/install.ps1`（Windows）或 `skills/install.sh`（macOS/Linux）一键安装
