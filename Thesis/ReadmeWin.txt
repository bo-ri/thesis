ReadmeWin.txt

LaTeXのインストールは，TeXインストーラ3を利用すれば良いでしょう．
http://oku.edu.mie-u.ac.jp/~okumura/texwiki/?AbTeXInstaller
標準の設定でOKです．

ただし一箇所だけ，そのまま動かすとエラーになります．
C:\w32tex\share\texmf-dist\dvipdfmx\config
の下のdvipdfmx.cfg ファイルの一部（一箇所）を以下の様に変更してください．
修正前 D "rungs -q -dNOPAUSE -dBATCH -dEPSCrop.....
修正後 D "gs -q -dNOPAUSE -dBATCH -dEPSCrop......

エディタは好みで構いません．不明であれば，VxEditor（無料）などがよろしいかと．

あとは，注意事項として2点

Windowsの場合，EPSファイルの種類によってPDFファイルの作成がうまくいかない場合があるようです．実際に私が配布したEPSファイルは貼り込まれません．あまりがんばらずに，
PDFかPNGかJPEGに変換してから差し込んだ方が良さそうです．

Windowsの場合，標準インストールでは subfigureのクラスがインストールされないようです．
おそらく使わないと思いますので，main.tex ファイルの先頭の方に書いてある
\usepackage{subfigure}
を削除してしまってください．


最後に，このフォルダ内に置いておいたバッチファイル winmklatex.batで texからpdfまで出来上がります．
最新のAcrobatでPDFを見てください．