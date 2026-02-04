# ClearBoard GTD

GTD (Getting Things Done) メソドロジーに基づいたタスク管理アプリケーション。

## 🛠 技術スタック

### フロントエンド
- **Framework**: [Next.js](https://nextjs.org/) (App Router)
- **Library**: React, Axios
- **Language**: TypeScript

### バックエンド
- **Framework**: [Laravel](https://laravel.com/)
- **Language**: PHP 8.3
- **Database**: MySQL 8.0
- **Web Server**: Nginx (Reverse Proxy for Backend)

### インフラ
- **Container**: Docker, Docker Compose

## 📂 ディレクトリ構成

```text
.
├── docker-compose.yml   # コンテナオーケストレーション
├── frontend/            # Next.js アプリケーション (Port: 3000)
├── backend/             # Laravel API アプリケーション (Internal Port: 9000)
├── nginx/               # Nginx 設定 (Port: 8080 - Backendへのプロキシ)
└── .add/                # ADD開発プロセス管理
```

## 🚀 環境構築と起動

### 起動手順

1. **コンテナのビルドと起動**
   ```bash
   docker-compose up -d --build
   ```
   > 初回は Laravel のセットアップや npm install が走るため時間がかかります。

2. **アクセス**
   - **Frontend (Next.js)**: [http://localhost:3000](http://localhost:3000)
   - **Backend API (via Nginx)**: [http://localhost:8080/api/hello](http://localhost:8080/api/hello)

3. **停止**
   ```bash
   docker-compose down
   ```

## 🔌 API エンドポイント

| Method | Endpoint | Description |
| :--- | :--- | :--- |
| `GET` | `/api/hello` | 動作確認用。`{ "message": "Hello from Laravel!" }` を返す。 |

## 🛠 開発コマンド

### パッケージ追加

**Frontend (npm)**
```bash
docker-compose exec frontend npm install <package-name>
```

**Backend (composer)**
```bash
docker-compose exec backend composer require <package-name>
```

### ログ確認
```bash
docker-compose logs -f            # 全ログ
docker-compose logs -f frontend   # フロントエンドのみ
docker-compose logs -f backend    # バックエンドのみ
```

### コンテナに入る
```bash
docker-compose exec frontend sh   # Frontend
docker-compose exec backend bash  # Backend
```

### テスト実行 (PHPUnit)
```bash
docker-compose exec backend php artisan test
```
