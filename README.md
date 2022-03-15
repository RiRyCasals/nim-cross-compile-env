# nim-cross-compile-env

Nimでクロスコンパイルを行うための雛形Docker環境

Docker上のUbuntu(arm64)で，各種プラットフォームへのクロスコンパイルを行うためのクロスコンパイラツールチェーンが含まれる．

# 現状

## コンパイル可能なターゲット

- Linux
  - arm64/aarch64
- MaxOSX
  - arm64/aarch64
  - amd64/x86_64
- windows
  - x86_64/amd64
