# React 18.2.0 開発環境

## 前提
以下環境。
```
MacOS
Docker for Mac
```
### 手順0
クローンしたアプリケーションのディレクトリをアプリ名に変更


### 手順1
アプリケーションの直下に.envファイルを作成。以下をコピーして、環境変数を設定
```
APP_PATH=アプリの絶対パス
IMAGE_NAME=イメージ名
CONTAINER_NAME=コンテナ名
```

### 手順2
package.jsonの以下の箇所を編集
```
{
  "name": "sample", // <= "sample"を"アプリ名"に変更
```
package-lock.jsonの以下の箇所(2行目と8行目)を編集
```
   "name": "sample", // <= "Sample"を"アプリ名"に変更

		"name": "sample", // <= "Sample"を"アプリ名"に変更
```

manifest.jsonの以下の箇所を編集
```
  "name": "Create React App Sample", // <= "Sample"を"アプリ名"に変更
```

### 手順3
以下コマンドを実行。
``` 
# イメージビルド+コンテナ立ち上げ
make up

# コンテナ立ち上げ
make run

# コンテナの停止・削除
make down
```