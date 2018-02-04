# RTX1200

- 静的DNSレコードの登録と反映

```
dns static a gitlab.local 192.168.XXX.XXX
clear dns cache
```

- 削除
```
no dns static a gitlab.local 192.168.XXX.XXX
```