# GitLab(CentOS7)
- - -

[参考](https://about.gitlab.com/installation/#centos-7)

- VM上に構築する場合、DHCPをやめてIPを固定する。
  - ifcfg-enp0s3
  - ifcfg-enp0s8


- インストール手順
```
$ sudo yum update
$ setenforce 0
$ sudo yum install -y curl policycoreutils-python openssh-server
$ sudo systemctl enable sshd
$ sudo systemctl start sshd
$ systemctl list-unit-files | grep sshd
$ sudo firewall-cmd --permanent --add-service=http
$ sudo systemctl reload firewalld
$ sudo yum install postfix
$ sudo systemctl enable postfix
$ sudo systemctl start postfix
$ curl https://packages.gitlab.com/install/repositories/gitlab/gitlab-ce/script.rpm.sh | sudo bash
$ sudo EXTERNAL_URL="http://XXX.com" yum install -y gitlab-ce
```

```
$ vi /etc/gitlab/gitlab.rb
  external_url='http://XXX.com'
```

```
$ gitlab-ctl reconfigure
```

### リポジトリのURLを設定
http://gitlab.local/root/Practice.git のようにしたい場合。

```
$ vi /var/opt/gitlab/gitlab-rails/etc/gitlab.yml
  ## Web server settings (note: host is the FQDN, do not include http://)
  host: gitlab.local

$ gitlab-ctl restart
```

- 他クライアントから、ホスト名でアクセスできるようにする  
ルータに接続して、HOSTSの設定の登録と反映

[静的DNSレコードの登録と反映](../YAMAHA-RTX1200/README.md)

- 確認：アクセスして、502エラーになるとき。
メモリ不足が考えられる。拡張が必要。

