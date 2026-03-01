#!/usr/bin/env bash

# 1. scratch-guiをクローン
git clone --depth 1 https://github.com/TurboWarp/scratch-gui.git

# 2. 依存関係のインストールとビルド
cd scratch-gui
npm ci
NODE_ENV=production ROUTING_STYLE=hash npm run build
cd ..

# 3. パッチの適用
python3 patch.py
