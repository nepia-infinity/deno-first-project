<#
.SYNOPSIS
  Slack CLI 用エイリアス slack_cli を定義し、永続化するスクリプト
.DESCRIPTION
  このスクリプトを dot-source すると、slack_cli コマンドで
  プロジェクト内の Slack CLI バイナリを呼び出せるようになります。
  また、初回実行時に自動でユーザーの PowerShell プロファイルに
  このスクリプトの dot-source 行を追記し、次回以降のセッションでも
  永続的に alias が使えるようにします。
#>

# Slack CLI 実体へのパスを解決
$cliPath = Join-Path -Path $PSScriptRoot -ChildPath '..\slack_cli_3.0.5_windows_64-bit\bin\slack.exe'

if (-not (Test-Path $cliPath)) {
    Write-Warning "Slack CLI が見つかりません: $cliPath"
    return
}

# セッション中のエイリアス定義
Set-Alias slack_cli $cliPath -Scope Global
Write-Host "Alias 'slack_cli' → $cliPath を定義しました。"

#
# プロファイルへの永続化
#
$profilePath   = $PROFILE.CurrentUserAllHosts

# プロファイルに書き込む「dot-source 行」
# 直接フルパスを展開して書く
$dotSourceLine = ". `"$($MyInvocation.MyCommand.Path)`""

# プロファイルがなければ作る
if (-not (Test-Path $profilePath)) {
    New-Item -ItemType File -Path $profilePath -Force | Out-Null
}

# まだ同じ行がなければ追記
if (-not (Select-String -Path $profilePath -SimpleMatch $dotSourceLine -Quiet)) {
    Add-Content -Path $profilePath -Value "`n# Slack CLI alias 永続化`n$dotSourceLine"
    Write-Host "PowerShell プロファイルにエイリアス永続化設定を追加しました: $profilePath"
}
else {
    Write-Host "PowerShell プロファイルには既に永続化設定が存在します。"
}
