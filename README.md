# Trusted Web Recruit Use Case Demo

## Procedure Overview

1. git submodules の取得
1. node.js v16 のインストール
1. スクリプトの実行
1. 拡張機能をブラウザにインストール
1. ブラウザでデモを実行

## Setup

### Fetch submodules (1)

```
git submodule init
git submodule update
```

### Setup node (2)

```
./install-nvm.sh
nvm install 16
```

## ビルド & 実行

### Execute Scripts (3)

この手順により、 デモに必要な 2 つのサーバーがローカルで起動します。
転職先企業サイト (http://localhost:12223) と、VC アクセストレース用アプリ (localhost:12222) の 2 つが立ち上がります。
2 つのサーバーは別々の端末（ターミナル, bash, zsh など）で起動させてください。

```
nvm use 16
./install-build-run.sh
```

別の端末を立ち上げて、下記のコマンドを実行してください。

```
# Execute this in another terminal
nvm use 16
./start-recruit-site.sh
```

### Install WebExtension (4)

`browser-extension/build` フォルダを chrome の拡張機能に読み込ませてください。

### 実行 (5)

拡張機能をインストールしたブラウザで[転職先企業サイト](http://localhost:12223)にアクセスして、デモを開始してください。
