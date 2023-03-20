MSX2のスプライトモード2のローダーサンプル
tinyspriteのProject Type：MSX2からExportされたDATA文を組み込む前提です

ファイル：
AUTOEXEC.BAS // プログラム本体
PROGRAM.ASM // PSD3D4.SC5を生成するためのdb文(*1)
PSD3D4.SC5  // AUTOEXEC.BASの実行により生成されるパレットアニメーションのベースになる画像(SCREEN5)

(*1) MSXPenのASMタブに入力することで、起動時にビルドされHYPER2.SC5を生成 (*2)
(*2) Project SettingでFile name: PSD3D4.SC5, Build as: Plain fileと設定してください

ライセンス：
MITライセンス。変更、活用ご自由にどうぞ。詳細は以下をご参照ください。
https://github.com/emef220/msx/blob/main/LICENSE.md

参考情報：

スプライトの作成はtinyspriteを利用しました
https://t.co/2Olq1vW1S1

Twitter：
https://twitter.com/emef220/status/1632219734317096960?s=20

MSXPen:
https://msxpen.com/codes/-NPjeiNZMpR2e_RCpVZM
