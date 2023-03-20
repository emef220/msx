017_Sprite_mode2_loader_with_sin_tableでテストしたスプライトの移動ルーチンを016_Sprite_mode2_loder_with_BGに適用。
SCREEN5でパレットアニメーションをしながら、スプライトを表示する（スプライトの移動有）のサンプルとなっています。
スプライトの移動はスプライトアトリビュートのY,Xを更新。21枚のスプライトのY,X計42バイトをVPOKEで書いています。（017_Sprite_mode2_loader_with_sin_tableと一緒）
42バイト書くとかなり遅くなるのですが、MSX0では標準でBASIC COMPILERを搭載。_TURBOONすると、実用的な速度になります。
（https://twitter.com/emef220/status/1637060895909240835?s=20 参照)


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
https://twitter.com/emef220/status/1637060895909240835?s=20

MSXPen:
https://msxpen.com/codes/-NQoSAeqfZAua64We5Mr