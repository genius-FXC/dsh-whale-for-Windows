$ErrorActionPreference = 'Stop'
$projectRoot = Split-Path -Parent $PSScriptRoot
$destination = Join-Path $projectRoot 'dist\DSHWhale-Vibe'
New-Item -ItemType Directory -Force -Path $destination,(Join-Path $destination 'plugins'),(Join-Path $destination 'scripts') | Out-Null
foreach ($name in @('DSHWhale-Vibe.exe','whale.png','LICENSE')) { Copy-Item -LiteralPath (Join-Path $projectRoot "build\$name") -Destination $destination -Force }
Copy-Item -LiteralPath (Join-Path $projectRoot 'README-Windows.md') -Destination $destination -Force
foreach ($name in @('balances.mjs','chatgpt-login.mjs','model-health.mjs')) { Copy-Item -LiteralPath (Join-Path $projectRoot "plugins\$name") -Destination (Join-Path $destination 'plugins') -Force }
foreach ($name in @('setup-windows.ps1','enable-chatgpt.cjs','install-companion-plugin.cjs')) { Copy-Item -LiteralPath (Join-Path $projectRoot "scripts\$name") -Destination (Join-Path $destination 'scripts') -Force }
Compress-Archive -LiteralPath $destination -DestinationPath (Join-Path $projectRoot 'dist\DSHWhale-Vibe-Windows.zip') -Force
Write-Output 'Packaged Windows companion, OAuth UI, balance plugin and setup scripts.'
