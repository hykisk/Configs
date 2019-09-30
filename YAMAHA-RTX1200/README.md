# RTX1200

## 静的DNSレコードの登録と削除
- - -

```
# 登録
$ dns static a gitlab.local 192.168.XXX.XXX
$ clear dns cache

# 削除
$ no dns static a gitlab.local 192.168.XXX.XXX
```

## L2TP/IPsec を使用した VPN 通信の構築
- - -

#### 参考
[L2TP/IPsecを使用したリモートアクセス : RTX1200 Web GUI設定
複数のL2TPクライアント(アドレス不定)の接続を受け付ける](https://network.yamaha.com/setting/router_firewall/vpn/vpn_client/vpn-smartphone-setup_rtx1200_gui)


#### [サーバへのホスト名の登録](http://www.rtpro.yamaha.co.jp/RT/FAQ/NetVolanteDNS/netvolante-dns-use-command.html)
```
pp select 1
netvolante-dns hostname host pp server=1 {hostname}
netvolante-dns go pp 1
```

#### [事前共有鍵の登録](http://www.rtpro.yamaha.co.jp/RT/manual/rt-common/ipsec/ipsec_ike_pre-shared-key.html)

```
ipsec ike pre-shared-key 1 text {key}
```

#### [通信タイムアウトの設定 (345600秒＝4日)](http://www.rtpro.yamaha.co.jp/RT/manual/rt-common/netvolante-dns/netvolante-dns_timeout.html)
```
tunnel select 1 l2tp tunnel disconnect time 345600
```
