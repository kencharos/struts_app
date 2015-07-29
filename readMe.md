Struts サンプルアプリケーション
---------------------------

## 概要

[@IT連載記事](http://www.atmarkit.co.jp/ait/articles/1507/02/news012.html) で使用するサンプルアプリケーションのStruts版

## 環境

+ JDK8
+ Glassfish4.1
+ struts 1.3.8
+ netbeans 8.1

## 導入方法
このサンプルでは、アプリケーションサーバーの認証機能を使用しているため、
アプリケーションサーバーの設定を行う必要があります。
DBレルムによる認証を使用する場合は、src/main/resoureces/ddl にあるddlを使用できます。

実行するには、warファイルをビルドして、
アプリケーションサーバーのコマンドでも可能ですが、
NetBeansなど IDEを使用した方が楽です。
