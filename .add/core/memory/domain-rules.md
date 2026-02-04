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