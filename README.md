# ClearBoard GTD

GTD (Getting Things Done) メソドロジーに基づいたタスク管理アプリケーション。

## 🛠 技術スタック

### フロントエンド
- **Framework**: [Next.js](https://nextjs.org/) v16.1.4 (App Router)
- **Library**: [React](https://react.dev/) v19.0.0
- **Language**: [TypeScript](https://www.typescriptlang.org/)
- **Style**: Vanilla CSS

### インフラ・環境
- **Runtime**: Node.js v22 (Alpine Linux based Docker Container)
- **Infrastructure**: Docker, Docker Compose

## 📂 ディレクトリ構成

本プロジェクトは、将来的なバックエンド導入（Laravel等）を見据えた構成になっています。

```text
.
├── docker-compose.yml   # 開発環境起動用 (Frontend, Backend等を一括管理)
├── frontend/            # Next.js アプリケーション
│   ├── app/             # App Router ソースコード (Layout, Page)
│   ├── public/          # 静的ファイル
│   └── Dockerfile       # フロントエンド用Docker定義
└── (backend/)           # (Future) バックエンドディレクトリ予定
```

## 🚀 開発環境の構築

Docker と Docker Compose を使用して開発環境を構築します。
ローカルマシンに Node.js をインストールする必要はありません（コンテナ内で完結します）。

### 前提条件
- Docker Desktop がインストールされ、起動していること。

### 起動手順

1. **リポジトリのクローン**
   ```bash
   git clone <repository-url>
   cd gtd
   ```

2. **コンテナのビルドと起動**
   初回起動時や `package.json` 変更時は `--build` オプションを付けてください。
   ```bash
   docker-compose up -d --build
   ```
   > **Note**: 初回は `npm install` 等が走るため、起動まで数分かかる場合があります。

3. **アプリケーションへのアクセス**
   ブラウザで以下のURLにアクセスしてください。
   - URL: [http://localhost:3000](http://localhost:3000)

4. **コンテナの停止**
   ```bash
   docker-compose down
   ```

### 開発Tips

- **パッケージの追加**
  依存関係の整合性を保つため、Dockerコンテナ経由でインストールすることを推奨します。
  ```bash
  # 例: axiosを追加する場合
  docker-compose run --rm frontend npm install axios
  ```

- **ログの確認**
  ```bash
  docker-compose logs -f frontend
  ```
