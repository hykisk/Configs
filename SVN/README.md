# SVNサーバ構築とバックアップ（複製）方法

## サーバ
- - -

```
$ mkdir -p /home/svn/repos/sample
$ svnadmin create /home/svn/repos/sample
$ svn mkdir file://localhost/home/svn/repos/sample/trunk -m "create"
$ svn mkdir file://localhost/home/svn/repos/sample/branches -m "create"
$ svn mkdir file://localhost/home/svn/repos/sample/tags -m "create"
$ mkdir -p /tmp/src
```

## クライアント
- - -

```
$ scp /mnt/c/src/* root@192.168.100.4:/tmp/src/*
```

## サーバ
- - -

```
$ svn import /tmp/src file://localhost/home/svn/repos/sample/trunk -m "import trunk branches and tags."
追加しています              src/*
Committed revision 4.

vi /etc/httpd/conf/httpd.conf
##################################################
<Location /svn/sample>
    DAV svn
    SVNPath /home/svn/repos/sample
</Location>
##################################################
$ chown -R apache:apache /home/svn/repos/sample
$ systemctl restart httpd.service
```

## クライアントからチェックアウトできればOK。
http://192.168.XXX.XXX/svn/sample/trunk/

## 任意：コマンドラインツール（Apache Subversion command line tools）
- - -

https://www.visualsvn.com/downloads/
- GUIでは差分ログを出力できなかったので使用。
```
$ svn log --diff Program.cs
```

## 複製（バックアップに使用）
- - -

```
svnadmin create /home/svn/repos/dest
vi /home/svn/repos/dest/hooks/pre-revprop-change
#新規作成（次の２行で保存）
##################################################
#!/bin/sh
exit 0
##################################################
chmod 755 /home/svn/repos/dest/hooks/pre-revprop-change
#{複製先}{複製元}を指定
svnsync init file:///home/svn/repos/dest http://localhost/svn/sample/
#複製
svnsync sync file:///home/svn/repos/dest
$ chown -R apache:apache /home/svn/repos/dest
```
