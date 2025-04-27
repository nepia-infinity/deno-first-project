#　前提
- Slackの有料プランに加入している必要がある。
  - [料金プラン](https://slack.com/pricing)
- Slack CLIをインストールする必要がある。
  - [Quickstart Guide](https://api.slack.com/automation/quickstart)
  - Slack CLIには依存関係があり、denoやgitのインストールが必要
- Windows 環境で PowerShell を使用
- Slack CLI (v3.0.5) がダウンロード済み

# ショートカット
PowerShell 上で以下を実行すると、slack_cli という別名コマンドで Slack CLI を呼び出せるようになります。

```
cd C:\Users\nepia\OneDrive\デスクトップ\deno-first-project
```

```
Set-Alias slack_cli "C:\Users\nepia\OneDrive\デスクトップ\deno-first-project\slack_cli_3.0.5_windows_64-bit\bin\slack.exe"
```

```
slack_cli --version
```

# 開発サーバー起動
上記を実行後、slack_cliでコマンドを使用できるようになります。

```
slack_cli dev -a A08PCN4KG87
```

# アプリをローカルで実行する
```
# アプリをローカルで実行します
$ slack run

Connected, awaiting events
```

# トリガー
- [Triggers](https://api.slack.com/automation/triggers)

# データストア
- [Datastores](https://api.slack.com/automation/datastores)

# ワークフロー
- [workflow](https://api.slack.com/automation/workflows)

#　関連リンク
- [Automation Overview](https://api.slack.com/automation)
- [CLI Quick Reference](https://api.slack.com/automation/cli/quick-reference)
- [Samples and Templates](https://api.slack.com/automation/samples)

# Inquiry-Bot

