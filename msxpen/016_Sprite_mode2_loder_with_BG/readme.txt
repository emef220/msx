009_HyperSpace_2で生成した画像を背景に、014_Sprite_mode2_loder_exampleで扱ったスプライトを表示
内容的には、モード2、マルチカラー（多色刷り）のスプライトをSCREEN5で表示。
背景は、パレットアニメーションしていますが、スプライトは動きなし。（一度PUT SPRITEを実行しただけ）

ファイル：
AUTOEXEC.BAS // プログラム本体
PROGRAM.ASM // HYPER2.SC5を生成するためのdb文(*1)
HYPER2.SC5  // AUTOEXEC.BASの実行により生成されるパレットアニメーションのベースとなる画像(SCREEN5)

(*1) MSXPenのASMタブに入力することで、起動時にビルドされHYPER2.SC5を生成 (*2)
(*2) Project SettingでFile name: HYPER2.SC5, Build as: Plain fileと設定してください

ライセンス：
MITライセンス。変更、活用ご自由にどうぞ。詳細は以下をご参照ください。
https://github.com/emef220/msx/blob/main/LICENSE.md

参考情報：

スプライトの作成はtinyspriteを利用しました
https://t.co/2Olq1vW1S1

Twitter：
https://twitter.com/emef220/status/1636751923708854274?s=20

MSXPen:
https://msxpen.com/codes/-NQkA9qiS5L822aKMDjf