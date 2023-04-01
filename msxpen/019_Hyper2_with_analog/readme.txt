パレットアニメーションにおけるパレットをGroveのAnalog volumeで変更するサンプル
MSXPenで実行可能にするために、Analog volumeから値を読み込む処理 (GOSUB1000)の代わりにＲＮＤ処理で4095以下の整数にしています。(200行目)
また、Groveのanalogデバイスを開くために５０行目のコメントを外してください。 
40行目の先頭に"_TURBOON:"を加えると、MSX COMPILERでの実行になります。
また、背景画像はパレット2-10を変更しています。
PROGRAM.ASM の内容を018_Sprite_model2_with_BG2のものに入れ替えても実行可能です。

パレットアニメーションのためのパレットのシフト処理をFORループで行っています。

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

Twitter：
https://twitter.com/emef220/status/1640913003062386690?s=20

MSXPen:
https://msxpen.com/codes/-NRfHq6plpZFkoRm4HRV