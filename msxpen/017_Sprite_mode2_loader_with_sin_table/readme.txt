014_Sprite_mode2_loder_exampleで扱ったスプライトを移動させるサンプル
SIN()の結果をテーブルとして保持。これを読み込んでスプライトのアトリビュートY,X(&H7600-)にVPOKEで書き込み
今回はマルチカラーの関係上、計21枚のスプライトを使用しており、これらすべてのX,Yを更新する必要があります。（X,Y合わせて2バイト）
今回は、この2*21=42バイトを単純にVPOKEで書いています。
結果として、通常のMSX2で動かすと、凄く重いです...

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

三角関数の事前計算はこちらを参考にしました。
三角関数と弾幕：プログラミング指南 Code Knowledge
https://codeknowledge.livedoor.blog/archives/12749420.html?ref=popular_article&id=8462786-566579

Twitter：
https://twitter.com/emef220/status/1637053886174494722?s=20

MSXPen:
https://msxpen.com/codes/-NQoRTgO5uL8IEkn_EEP