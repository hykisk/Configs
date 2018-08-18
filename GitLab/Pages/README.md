## Definition of completion
- Access to Pages site.  
`http://hykisk.pages.intra:8090/PagesTest`
  - Group or Username: hykisk  
  - Repo Name: PagesTest  

## Preparation

- Modify client hosts  
```
192.168.100.101 hykisk.pages.intra
```

- Port forwarding 

| Name  | Protocol |     Host IP     | Host port | Guest IP  | Guest port |
| ----- | -------- | --------------- | --------- | --------- | ---------- |
| Pages | TCP      | 192.168.100.101 | 8090      | 10.0.2.25 | 18060      |

- - - 

## Procedure

- Register to Repository  
`curl -L https://packages.gitlab.com/install/repositories/runner/gitlab-runner/script.rpm.sh | sudo bash`

- Install  
`yum install -y gitlab-runner`

- Copy token to clipboard  
`http://gitlab.intra:10080/hykisk/PagesTest/settings/ci_cd`  
RJxygo8sbqGxA5KyNABL

- Register to Runner
```
root@gitlab [~ ] # gitlab-runner register
Running in system-mode.

Please enter the gitlab-ci coordinator URL (e.g. https://gitlab.com/):
http://gitlab.intra:10080
Please enter the gitlab-ci token for this runner:
RJxygo8sbqGxA5KyNABL
Please enter the gitlab-ci description for this runner:
[gitlab.intra]: test runner
Please enter the gitlab-ci tags for this runner (comma separated):

Registering runner... succeeded                     runner=RJxygo8s
Please enter the executor: kubernetes, shell, ssh, docker+machine, virtualbox, docker-ssh+machine, docker, docker-ssh, parallels:
shell
Runner registered successfully. Feel free to start it, but if it's running already the config should be automatically reloaded!
```


- vi gitlab.rb  
```
##! Define to enable GitLab Pages
pages_external_url "http://pages.intra:8090"
gitlab_pages['enable'] = true
gitlab_pages['listen_proxy'] = "10.0.2.25:18060"
gitlab_pages['dir'] = "/var/opt/gitlab/gitlab-pages"
gitlab_pages['log_directory'] = "/var/log/gitlab/gitlab-pages"

################################################################################
## GitLab Pages NGINX
################################################################################
pages_nginx['enable'] = true
```

- Restart
```
sudo gitlab-ctl reconfigure
gitlab-ctl restart
```

- Git Push
```
mv Configs/GitLab/Pages/.gitlab-ci.yml {TestPages}/.
mv Configs/GitLab/Pages/index.html {TestPages}/.
git add .; git commit -m"[add] Pages test"
```

## Memo
- Delete runner
```
gitlab-runner list
sudo gitlab-ci-multi-runner unregister --url https://gitlab.intra:10080 --token=1225010a8043cc4c853d78f08b765f
```

