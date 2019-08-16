## 项目简介
- 本项目是基于centos7的自定义镜像，主要包含安装docker和docker-compose.


## 一键式发布
- `./publish.sh`


## 发布步骤
- 登录Vagrant Cloud：`vagrant cloud auth login`,输入用户名和密码
- 启动vm：`vagrant up -- provision`
- 删除先前的box: `rm centos7.box`
- 生成box：`vagrant package --output centos7.box`
- 发布新版本：`vagrant cloud publish davenkin/centos7 2 virtualbox centos7.box --release --force`，其中`2`表示版本，需要在发布是重新制定
- 删除box: `rm centos7.box`
- 使用box：

```
Vagrant.configure("2") do |config|
  config.vm.box = "davenkin/centos7"
  config.vm.box_version = "1" # 默认为最新版本
end
```
