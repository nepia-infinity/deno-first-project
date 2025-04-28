#　前提
- Windows端末で開発を進める前提
  -　PowerShell7を使用
- Slackの有料プランに加入している必要がある。
  - [料金プラン](https://slack.com/pricing)
- Slack CLIをインストールする必要がある。
  - [Quickstart Guide](https://api.slack.com/automation/quickstart)
  - [インストールページ](https://tools.slack.dev/deno-slack-sdk/guides/getting-started/)
  - Slack CLIには依存関係があり、denoやgitのインストールが必要
  - VS Codeで開発を進める場合は、Denoの拡張機能が必要


# システム環境変数の設定
```
sysdm.cpl
```
システム環境変数を編集
マニュアルインストールしたSlack CLIのパスを追記する
[【Windows】Slack CLIのインストールに躓いた話。](https://note.com/nepia_infinity/n/n9fa70ac50cae) を参照

# 開発サーバー起動
上記を実行後、slack_cliでコマンドを使用できるようになります。
App IDは環境によって異なります。

```
cd C:\Users\nepia\OneDrive\デスクトップ\deno-first-project
```

```
slack dev -a A08PCN4KG87
```

#　関連リンク
- [Automation Overview](https://api.slack.com/automation)
- [workflow](https://api.slack.com/automation/workflows)
- [Triggers](https://api.slack.com/automation/triggers)
- [Datastores](https://api.slack.com/automation/datastores)
- [CLI Quick Reference](https://api.slack.com/automation/cli/quick-reference)
- [Samples and Templates](https://api.slack.com/automation/samples)

