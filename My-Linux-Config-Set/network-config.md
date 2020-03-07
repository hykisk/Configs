# 仮想環境構築(CentOS Minimal 7.x)

### CentOSのインストール前

VirtualBoxにCentOSをインストールする前に、ネットワークアダプタにNAT、HostOnlyNetWorkを設定しておく。

### 完了の定義

- GuestOSからインターネットへの接続確認。
```
$ curl http://www.example.com/
```
- ホストOSからsshできる。
```
$ ssh {username}@{host-only-network_ip} -p 1022
```

- ホストOS以外の端末からsshできる。
```
$ ssh {username}@{host-os_ip} -p 1022
```

### USキーボード配列

- 一時的
`loadkeys us`
- 永続的
`localectl set-keymap us`

### NATネットワーク設定の変更点

```
$ vi /etc/sysconfig/network-scripts/ifcfg-enp0s3

TYPE=Ethernet
PROXY_METHOD=none
BROWSER_ONLY=no
BOOTPROTO=none #← 変更元dhcp
DEFROUTE=yes
IPV4_FAILURE_FATAL=no
IPV6INIT=yes
IPV6_AUTOCONF=yes
IPV6_DEFROUTE=yes
IPV6_FAILURE_FATAL=no
IPV6_ADDR_GEN_MODE=stable-privacy
NAME=enp0s3
UUID=xxx
DEVICE=enp0s3
ONBOOT=yes #← 変更元no
IPADDR=10.0.2.25 #← 追加
NETMASK=255.255.255.0 #← 追加
GATEWAY=10.0.2.2 #← 追加
DNS1=8.8.8.8 #← 追加
```

### ホストオンリーネットワーク設定の変更点

```
$ vi /etc/sysconfig/network-scripts/ifcfg-enp0s8

TYPE=Ethernet
PROXY_METHOD=none
BROWSER_ONLY=no
BOOTPROTO=none  #← 変更元dhcp
DEFROUTE=yes
IPV4_FAILURE_FATAL=no
IPV6INIT=yes
IPV6_AUTOCONF=yes
IPV6_DEFROUTE=yes
IPV6_FAILURE_FATAL=no
IPV6_ADDR_GEN_MODE=stable-privacy
NAME=enp0s8
UUID=yyy
DEVICE=enp0s8
ONBOOT=yes #← 変更元no
IPADDR=192.168.56.101 #← 追加
NETMASK=255.255.255.0 #← 追加
DNS1=8.8.8.8 #← 追加
```

### シャットダウン

```
shutdown -h now
```

### Port Forwarding

- 名前：Rule1
- プロトコル：TCP
- ホストIP：{host_ip}
- ホストポート：1022
- ゲストIP：192.168.56.101
- ゲストポート：22

以上
