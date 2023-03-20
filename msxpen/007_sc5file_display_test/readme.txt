SCREEN5形式の画像の表示サンプルです
ポイントは、BLOADで画像を読み込んだ後、COLOR=RESTOREでパレットカラーの更新が必要な点です。（AUTOEXEC.BAS 30行目）

ファイル：
AUTOEXEC.BAS // プログラム本体
SILPHEED.SC5  // SCREEN5画像データ(bin形式)
PROGRAM.ASM  // SILPHEED.SC5を生成するためのdb文　(*1)

(*1) MSXPenのASMタブに入力しておくと、起動時にビルドしてSILPHEED.SC5を生成してくれます(*2)
(*2) MSXPenのProject Settingにて、"File name"を”SILPHEED.SC5”, Build asを”plain file”に設定してください

ライセンス：
MITライセンス。変更、活用ご自由にどうぞ。詳細は以下をご参照ください。
https://github.com/emef220/msx/blob/main/LICENSE.md

参考情報：
SCREEN5の画像はBMP2MSXを利用しています。
http://www5d.biglobe.ne.jp/~hra/software/bmptomsx/index.htm

Twitter
https://twitter.com/emef220/status/1628553745511645188?s=20

MSXPen
https://msxpen.com/codes/-NQzHTRP0Q2XQLCBENwN
