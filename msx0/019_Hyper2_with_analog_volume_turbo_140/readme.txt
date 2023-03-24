パレットアニメーションにおけるパレットをGroveのAnalog volumeで変更するサンプル
GOSUB1000でanalogの値を読み取っています。
_TURBOONしていますが、ちょっと速すぎかも。。
また、背景画像はパレット2-10を変更しています。
PROGRAM.ASM の内容を018_Sprite_model2_with_BG2のものに入れ替えても実行可能です。

今回は31行目で140%(1.4倍）にクロックアップしています。
I=140:_IOTPUT("msx/0/pm/cpu/percent",I)
これもMSX0ならでは。

ただ、パレットアニメーションだけだと負荷が軽すぎて、速くなりすぎますね。

ファイル：
AUTOEXEC.BAS // プログラム本体
HYPER2.SC5  // AUTOEXEC.BASの実行により生成されるパレットアニメーションのベースとなる画像(SCREEN5)

ライセンス：
MITライセンス。変更、活用ご自由にどうぞ。詳細は以下をご参照ください。
https://github.com/emef220/msx/blob/main/LICENSE.md

参考情報：

Twitter：


MSXPen版:
https://msxpen.com/codes/-NQsDOzbXQKohe5hGlG2