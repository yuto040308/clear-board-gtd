#!/bin/bash

# ADD (Assisted Driven Development) Setup Script
# 実行方法: chmod +x setup_add.sh && ./setup_add.sh

echo "🚀 ADD プロジェクトの基盤を作成します..."

# 1. ディレクトリ構造の作成
mkdir -p .add/core/templates/task_blueprint/00_lake
mkdir -p .add/core/templates/task_blueprint/01_phases
mkdir -p .add/core/templates/task_blueprint/02_iterations/phase1
mkdir -p .add/core/templates/task_blueprint/03_verification
mkdir -p .add/core/skills/laravel
mkdir -p .add/core/skills/typescript
mkdir -p .add/core/memory
mkdir -p .add/core/antigravity
mkdir -p .add/workspace
mkdir -p .github

# 2. .add/core/manifest.md
cat << 'EOF' > .add/core/manifest.md
# ADD (Assisted Driven Development) 憲法 v1.1

## 1. 根本原則
- **ホワイトボックス開発**: AIは思考の壁打ち相手であり、エンジニアが内容を100%理解・説明できるコードのみを成果物とする。
- **言語ルール**: ユーザーとの対話、ドキュメントの記述、思考ログはすべて**日本語**で行うこと。
- **階層化された開発**: 「Phase（大きなマイルストーン）」と「Steps（詳細なTDDサイクル）」の二段構えで進める。

## 2. 開発アルゴリズム
1. **Lake**: `00_lake/lake.md` に情報を集約し、現状を把握する。
2. **Phase**: `01_phases/phase.md` でタスクを大きな塊（Phase 1〜Final）に分割する。
3. **Iteration**: 各Phaseに対し、`02_iterations/phaseX/` フォルダ内で `steps.md` に基づくTDDサイクルを実行する。
4. **Verification**: `03_verification/` で静的解析・ビルドを行い、機械的な正しさを担保する。
5. **Learning**: 作業終了後に `feedback.md` を通じて知見を `core/memory/` へ昇華させる。

## 3. 手動介入の原則
95点から100点への微調整や魂入れは、AIへの指示よりも「人間による直接編集」を優先し、高速にサイクルを回すこと。
EOF

# 3. .add/core/structure.md
cat << 'EOF' > .add/core/structure.md
# ADD Directory Structure Definition

## 1. Core Area (Persistent / Git: ON)
AIの「知能」と「共有ルール」。プロジェクト間で継承・進化させる資産領域。
- **manifest.md**: 動作アルゴリズム（ADDの憲法）
- **structure.md**: 本ドキュメント
- **commands.md**: カスタムコマンドの定義書
- **templates/**: 各種プロセスの雛形
- **skills/**: 技術スタック別のベストプラクティス
- **memory/**: ユーザーの癖、ドメイン知識の蓄積

## 2. Workspace Area (Ephemeral / Git: OFF)
日々の作業場。タスクごとにカプセル化し、思考の混濁を防ぐ。

### Task Folder Layout (workspace/YYYY-MM-DD-task-name/)
1. 00_lake/: 生データ・資料
2. 01_phases/: 設計書・To-Do
3. 02_iterations/: TDDの実装ログ
4. 03_verification/: 解析・検証ログ
5. 04_bookmark.md: 中断・再開用のしおり
6. feedback.md: Coreへの昇華用

## 3. フォルダ構成
.add/
├── core/
│   ├── manifest.md
│   ├── structure.md
│   ├── commands.md
│   ├── templates/
│   │   ├── bookmark.md
│   │   ├── feedback.md
│   │   ├── phase.md
│   │   └── task_blueprint/
│   ├── skills/
│   └── memory/
└── workspace/
EOF

# 4. .add/core/commands.md
cat << 'EOF' > .add/core/commands.md
# ADD カスタムコマンド・プロトコル

AIエージェントは、以下の日本語コマンドを受けた際、それぞれのプロトコルを自律的に実行せよ。

### 1. 【ADDで開始して】 (Initialize Task)
- **動作**: 
  1. `.add/core/templates/task_blueprint/` を `workspace/YYYY-MM-DD-{{タスク名}}` として丸ごとコピーせよ。
  2. `00_lake/lake.md` に現在の依頼内容を整理して記述せよ。

### 2. 【設計（Phase）して】 (Phase Design)
- **動作**: 
  1. `core/templates/phase.md` を使い、`01_phases/phase.md` に全体計画を記述せよ。
  2. 同時に `02_iterations/` 内に、定義した各Phaseに対応するサブフォルダを作成せよ。

### 3. 【Phase [X] を開始して】 (Start Iteration)
- **動作**: 
  1. 指定された `02_iterations/phaseX/` で `steps.md` に基づき [Red] ステップを開始せよ。

### 4. 【状況を教えて】 (Status Check)
- **動作**: 現在のPhaseとStepsの進捗を簡潔に報告せよ。

### 5. 【しおりを挟んで】 (Bookmark)
- **動作**: `core/templates/bookmark.md` を使い、`04_bookmark.md` を作成・更新せよ。

### 6. 【しおりから再開して】 (Resume)
- **動作**: `04_bookmark.md` を読み込み、コンテキストを復元せよ。

### 7. 【検証（Verify）して】 (Verify)
- **動作**: 静的解析を実行し、結果を `03_verification/` に記録せよ。

### 8. 【昇華（Learn）して】 (Learning)
- **動作**: ログを分析し `core/memory/` を更新せよ。

### 9. 【同期（Sync）して】 (Sync)
- **動作**: `.add/core/` 以下の資産を再読込せよ。
EOF

# 5. .add/core/antigravity/skill.json
cat << 'EOF' > .add/core/antigravity/skill.json
{
  "name": "ADD_Agent_Skill",
  "description": "Assisted Driven Development protocol",
  "version": "1.1.0",
  "language": "Japanese"
}
EOF

# 6. .add/core/memory/ (初期ファイル)
touch .add/core/memory/domain-rules.md
touch .add/core/memory/user-preference.md

# 7. .add/core/templates/ (各種テンプレート)
cat << 'EOF' > .add/core/templates/bookmark.md
# [タスク名] コンテキスト・しおり
## 📌 現在のステータス
- **現在のPhase**: {{phase_number}}
- **現在のStep**: {{step_detail}}
## 🚀 次のアクション
- [ ] {{next_action}}
EOF

cat << 'EOF' > .add/core/templates/feedback.md
# タスク振り返り & 学習
## 💡 知見の昇華案
- ユーザーの新しい癖:
- ドメインルールの追加:
EOF

cat << 'EOF' > .add/core/templates/phase.md
# Phase 1 [名称]
・タスク1
・タスク2
# Phase Final ADDに活用できるフィードバックを履歴から作成
EOF

# 8. task_blueprint の中身
cp .add/core/templates/phase.md .add/core/templates/task_blueprint/01_phases/phase.md
touch .add/core/templates/task_blueprint/00_lake/lake.md
touch .add/core/templates/task_blueprint/04_bookmark.md
touch .add/core/templates/task_blueprint/feedback.md

cat << 'EOF' > .add/core/templates/task_blueprint/02_iterations/phase1/steps.md
## TDDサイクル実行記録
[Red] ユースケースのテストを作成
[Green] ユースケーステストの最小実装
[Refactor] ユースケース、テストのリファクタリング
[Manual] 手動で確認
[CodeAnalysis] 静的解析を実施
EOF

# 9. ルート直下のエントリーポイント
cat << 'EOF' > CLAUDE.md
# Claude Code プロジェクトルール
本プロジェクトは **ADD (Assisted Driven Development)** を採用しています。
1. 言語はすべて**日本語**を使用すること。
2. タスク開始時に必ず `.add/core/manifest.md` を読み込むこと。
EOF

cat << 'EOF' > AGENTS.md
# ADD エージェント指示書
やり取りはすべて**日本語**で行うこと。`.add/core/manifest.md` を遵守せよ。
EOF

cat << 'EOF' > .github/copilot-instructions.md
# Copilot カスタム指示書
本プロジェクトは **ADD** に基づいています。日本語で対応し、`.add/core/manifest.md` に従ってください。
EOF

# 10. .gitignore の設定
if [ ! -f .gitignore ]; then
    touch .gitignore
fi
echo -e "\n# ADD Workspace\n.add/workspace/" >> .gitignore

echo "✅ セットアップが完了しました！"
echo "次にやること: AIに「新機能をADDで開始して」と伝えてみてください。"