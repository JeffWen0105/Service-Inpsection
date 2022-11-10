# 檢查機器資源及服務狀態

*如服務未啟動，將會嘗試啟動服務*

### 使用方式


1. 設定要檢查的機器群

vi /ansible/service_inspection/inventory

```ini=
[server]
88.8.143.33
88.8.143.34
```

2. 執行腳本 bash main.sh

可以帶上多個服務，並依輸入的 arg 順序檢查及啟動。

```
bash main.sh yyy.service xxx.service ...
```

**PS: 請務必帶上 .service 或是 .socket 完整服務名稱**





```shell
$ bash main.sh httpd.service chronyd.service

##############################
###   SERVICE INSPECTION   ###
##############################

Vault password: 
```

### 原始執行方式

```
ansible-playbook --ask-vault-pass playbook.yml -e '{"service_name":[httpd.service]}'
```

如需改變自定義密碼請多加上 ansible_become_pass=... 參數
