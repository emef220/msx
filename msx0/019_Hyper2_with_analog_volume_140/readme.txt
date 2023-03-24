パレットアニメーションにおけるパレットをGroveのAnalog volumeで変更するサンプル
GOSUB1000でanalogの値を読み取っています。
また、背景画像はパレット2-10を変更しています。
PROGRAM.ASM の内容を018_Sprite_model2_with_BG2のものに入れ替えても実行可能です。

今回はさらに31行目で1.4倍にクロックアップしています。
I=140:_IOTPUT("msx/0/pm/cpu/percent",I)
これもMSX0ならでは。

ファイル：
AUTOEXEC.BAS // プログラム本体
HYPER2.SC5  // AUTOEXEC.BASの実行により生成されるパレットアニメーションのベースとなる画像(SCREEN5)

ライセンス：
MITライセンス。変更、活用ご自由にどうぞ。詳細は以下をご参照ください。
https://github.com/emef220/msx/blob/main/LICENSE.md

参考情報：

Twitter：
https://twitter.com/emef220/status/1637321814992109568?s=20
https://twitter.com/emef220/status/1637375953117810689?s=20

MSXPen:
https://msxpen.com/codes/-NQsDOzbXQKohe5hGlG2