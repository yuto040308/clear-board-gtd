# ADD (Assisted Driven Development) Manifest v1.0

## 1. 根本原則
- **ホワイトボックス開発**: AIは思考の壁打ち相手であり、エンジニアが内容を100%理解・説明できるコードのみを成果物とする。
- **言語ルール**: ユーザーとの対話、ドキュメントの記述、思考ログはすべて**日本語**で行うこと。
- **階層化された開発**: 「Phase（大きなマイルストーン）」と「Steps（詳細なTDDサイクル）」の二段構えで進める。

## 2. 開発アルゴリズム
1. **Lake**: `00_lake/lake.md` に情報を集約し、現状を把握する。
2. **Phase**: `01_phases/phase.md` でタスクを大きな塊（Phase 1〜Final）に分割する。
3. **Iteration**: 各Phaseに対し、`02_iterations/phaseX/` フォルダ内で `steps.md` に基づくTDDサイクルを実行する。
4. **Verification**: `03_verification/` で静的解析・ビルドを行い、機械的な正しさを担保する。
5. **Learning**: 作業終了後に `feedback.md` を通じて知見を `core/memory/` へ昇華させる。

## 3. 手動介入の原則
95点から100点への微調整や魂入れは、AIへの指示よりも「人間による直接編集」を優先し、高速にサイクルを回すこと。

## 4. 中断・再開プロトコル
- 中断時は `core/templates/bookmark.md` を使い、`04_bookmark.md` に脳内メモリをダンプする。
- 再開時は `04_bookmark.md` を最優先で読み込み、コンテキストを復元する。