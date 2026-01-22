# ADD Directory Structure Definition

## 1. Core Area (Persistent / Git: ON)
AIの「知能」と「共有ルール」。プロジェクト間で継承・進化させる。
- `manifest.md`: 動作アルゴリズム
- `structure.md`: 本ドキュメント
- `templates/`: 各種プロセスの雛形
  - `bookmark.md`: しおり機能（中断・再開）用
  - `feedback.md`: 学習サイクル（昇華）用
  - `phase.md`: 設計（Phase分割）用
  - `task_blueprint/`: 新規タスク開始時にコピーされるフォルダ一式
- `templates/`: bookmark.md, feedback.md 等の雛形
- `skills/`: 技術スタック別（Laravel, TS等）のベストプラクティス
- `memory/`: ユーザーの癖、ドメイン知識の蓄積

## 2. Workspace Area (Ephemeral / Git: OFF)
日々の作業場。タスクごとにカプセル化し、思考の混濁を防ぐ使い捨ての領域。

### Task Folder Layout (`workspace/YYYY-MM-DD-task-name/`)
1. `00_lake/`: 生データ・資料
2. `01_phases/`: 設計書・To-Do
3. `02_iterations/`: TDDの実装ログ
4. `03_verification/`: 解析・検証ログ
5. `04_bookmark.md`: 中断・再開用のしおり
6. `feedback.md`: 今回の学びの抽出

## 3. AI Permissions
- **Read**: すべての領域に対して常に許可。
- **Write (Workspace)**: 自由。ただし `02_iterations` 以外は追記を基本とする。
- **Write (Core)**: Learningフェーズでの提案と、ユーザー承認後の更新のみ許可。

## 4. フォルダ構成
project-root/
├── .add/
│   ├── core/                      # 【Git管理：共有資産・ロボティクス領域】
│   │   ├── manifest.md            # ADDの憲法（アルゴリズム・動作ルール）
│   │   ├── structure.md           # 地図（このフォルダ構成の定義書）
│   │   ├── commands.md            # カスタムコマンドの定義書
│   │   ├── templates/             # 共通テンプレート
│   │   │   ├── bookmark.md        # しおり機能のひな形
│   │   │   ├── feedback.md        # 学習サイクル（昇華）のひな形
│   │   │   ├── phase.md           # 設計（phase）用
│   │   │   └── task_blueprint/    # タスク開始時のディレクトリ雛形
│   │   ├── skills/                # 外部スキル（ベストプラクティス）
│   │   │   ├── laravel/
│   │   │   └── typescript/
│   │   ├── memory/                # 固有知能（ユーザーの癖、ドメイン知識）
│   │   │   ├── user-preference.md # 早期リターンが好き、などの個人的な好み
│   │   │   └── domain-rules.md    # プロジェクト固有のビジネスルール
│   │   └── antigravity/           # Google Antigravity用設定
│   │       └── skill.json
│   │
│   └── workspace/                 # 【Git除外：タスク別作業場】
│       └── YYYY-MM-DD-task-name/  # ★タスクごとにカプセル化（しおり対応）
│           ├── 00_lake/           # このタスク用の生データ・資料
│           ├── 01_phases/         # 設計・To-Do分割
│           ├── 02_iterations/     # ボトムアップTDDの実装現場
│           │   └── phaseX/        # 各Phaseに対応した作業ディレクトリ
│           │       └── steps.md   # TDDサイクル記録
│           ├── 03_verification/   # 静的解析・ビルド等の検証ログ
│           ├── 04_bookmark.md     # ★作業の中断・再開ポイント（しおり）
│           └── feedback.md        # AIによる自己分析・学びの抽出
│
├── src/                           # 成果物コード
├── tests/                         # テストコード
├── AGENTS.md                      # 汎用エージェント(agent-md)用入り口
├── CLAUDE.md                      # Claude Code用入り口
├── .github/
│   └── copilot-instructions.md    # Codex / Copilot用入り口
└── .gitignore                     # 「.add/workspace/」を除外設定