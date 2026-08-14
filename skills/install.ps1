# 一键安装 contract-enforcement 守卫到各环境（Windows）
$ErrorActionPreference = 'Stop'
$root = Split-Path -Parent $PSScriptRoot
$src = Join-Path $PSScriptRoot 'contract-enforcement\SKILL.md'
$targets = @(
  '.codex\skills\contract-enforcement',
  '.claude\skills\contract-enforcement',
  '.cursor\skills\contract-enforcement',
  '.trae\skills\contract-enforcement'
)
if (-not (Test-Path $src)) { throw "找不到守卫主文件: $src" }
foreach ($t in $targets) {
  $dir = Join-Path $root $t
  New-Item -ItemType Directory -Path $dir -Force | Out-Null
  Copy-Item $src (Join-Path $dir 'SKILL.md') -Force
  Write-Host "OK  $t"
}
Write-Host '完成：contract-enforcement 已安装到全部环境。'