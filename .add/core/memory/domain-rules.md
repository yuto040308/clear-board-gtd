# Domain Rules & Knowledge
*このファイルはADDのLearningサイクルを通じて自動更新される。*

## プロジェクト名称: ClearBoard GTD
- **目的**: GTD (Getting Things Done) メソドロジーに基づいたタスク管理アプリケーション。
- **構成**:
  - Frontend: Next.js (TypeScript) - Port 3000
  - Backend: Laravel (PHP 8.3) - Port 9000 (Internal), 8080 (Public via Nginx)
  - DB: MySQL, SQLite (For Testing)
- **テスト戦略**:
  - Featureテストで `GET /api/hello` などのエンドポイント疎通を重視。
  - CIではSQLite (Memory) を使用して高速に実行。
  - テストメソッド名には日本語を使用し、スネークケースを許容する (`tests/` ディレクトリはPSR-12の命名規則から除外)。

## QA/CI ポリシー
- **自動修正 (Auto-Fix)**:
  - Linter系ツール (phpcs等) は、ReviewDog Suggester と組み合わせて「CIで自動修正提案」まで行う構成を標準とする。
  - 修正提案だけでなく、最終的にLintエラーが残っていればCIを失敗させる (Guard)。
- **コマンド実行環境**:
  - ホストマシンではなく、Dockerコンテナ内 (`docker compose exec backend ...`) でのコマンド実行を第一選択とする。