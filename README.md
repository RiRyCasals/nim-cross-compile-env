# nim-cross-compile-env

Nimでクロスコンパイルを行うための雛形Docker環境

Docker上のUbuntu(arm64)で，各種プラットフォームへのクロスコンパイルを行うためのクロスコンパイラツールチェーンが含まれる．


# 現状

Nimの標準ライブラリを利用するコードは問題なくコンパイル及び実行が可能．

## コンパイル可能なターゲット

- Linux
  - arm64/aarch64 : `nim c --os:linux --cpu:arm64 "path"`
  - amd64/x86_64 : `nim c --os:linux --cpu:amd64 "path"`
- MaxOSX
  - arm64/aarch64 : `nim c --os:macosx --cpu:arm64 "path"`
  - amd64/x86_64 : `nim c --os:macosx --cpu:amd64 "path"`
- windows
  - amd64/x86_64 : `nim c --os:windows --cpu:amd64 "path"`
