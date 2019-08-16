## 项目简介
- 本项目是基于ubuntu1804的自定义镜像，主要包含安装docker和docker-compose.


## 一键式发布
- `./publish.sh`


## 发布步骤
- 登录Vagrant Cloud：`vagrant cloud auth login`,输入用户名和密码
- 启动vm：`vagrant up --provision`
- 删除先前的box: `rm ubuntu1804.box`
- 生成box：`vagrant package --output ubuntu1804.box`
- 发布新版本：`vagrant cloud publish davenkin/ubuntu1804 2 virtualbox ubuntu1804.box --release --force`，其中`2`表示版本，需要在发布是重新制定
- 删除box: `rm ubuntu1804.box`
- 使用box：

```
Vagrant.configure("2") do |config|
  config.vm.box = "davenkin/ubuntu1804"
  config.vm.box_version = "1" # 默认为最新版本
end
```
