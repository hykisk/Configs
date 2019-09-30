# GitLab(CentOS7)
- - -

- インストール手順
[参考](https://about.gitlab.com/installation/#centos-7)
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

$ vi /etc/gitlab/gitlab.rb
  external_url='http://gitlab.local'

$ gitlab-ctl reconfigure

$ gitlab-ctl restart
```

- ホスト名 (gitlab.local) でアクセスできることを確認
[静的DNSレコードの登録と反映](../YAMAHA-RTX1200/README.md)
