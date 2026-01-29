FROM php:8.3-fpm-alpine

# システムパッケージのインストール
#    curl \          # 外部からファイルをDLするツール
#    libpng-dev \    # PHPで画像を扱う(GD)ためのライブラリヘッダ
#    libxml2-dev \   # XML処理用のライブラリヘッダ
#    zip \           # Composerでの圧縮解凍に必要
#    unzip \         # 同上
#    git \           # Composerがパッケージを取得する際に使用
#    linux-headers   # 一部のPHP拡張のビルドに必要（特にXdebug等を入れる場合）
RUN apk add --no-cache \
    curl \
    libpng-dev \
    libxml2-dev \
    zip \
    unzip \
    git \
    linux-headers

# PHP拡張機能のインストール
# docker-php-ext-install: 公式PHPイメージに付属している便利なコマンドです。これを使うだけで、拡張機能のソースDL→コンパイル→有効化を自動でやってくれる。
# pdo_mysql: MySQL/MariaDBデータベースに接続するために必須。
# bcmath: 任意精度の数学関数。通貨計算などで誤差を出さないためにLaravelが一部使用します。
# gd: 画像処理ライブラリ。アバター画像の生成などで使われることがあります。
RUN docker-php-ext-install pdo_mysql bcmath gd

# Composerのインストール
COPY --from=composer:latest /usr/bin/composer /usr/bin/composer

# 作業ディレクトリの設定
WORKDIR /var/www

# 権限の修正
# 所有者をwww-data（webサーバー用のユーザー）に変更
# これにより、Laravelがログやキャッシュ書き込みの際の「Permisson denied」を防ぐ
RUN chown -R www-data:www-data /var/www
