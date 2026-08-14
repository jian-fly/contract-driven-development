#!/usr/bin/env bash
# 一键安装 contract-enforcement 守卫到各环境（macOS/Linux）
set -euo pipefail
ROOT="$(cd "$(dirname "$0")/.." && pwd)"
SRC="$ROOT/skills/contract-enforcement/SKILL.md"
if [ ! -f "$SRC" ]; then
  echo "找不到守卫主文件: $SRC" >&2
  exit 1
fi
for t in .codex/skills/contract-enforcement .claude/skills/contract-enforcement .cursor/skills/contract-enforcement .trae/skills/contract-enforcement; do
  mkdir -p "$ROOT/$t"
  cp "$SRC" "$ROOT/$t/SKILL.md"
  echo "OK  $t"
done
echo "完成：contract-enforcement 已安装到全部环境。"
