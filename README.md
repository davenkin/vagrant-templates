- 该代码库为各种用途虚拟机的Vagrant模板。
- 目录命名模板：`2-dns-centos7`表示由2台CentOS7虚拟机组成的集群，并且启用了DNS。
- 所有虚拟机采用private network，即虚拟机和宿主机之间可以相互访问，虚拟机之间也可以项目访问。
- 使用前请安装[`landrush`](https://github.com/vagrant-landrush/landrush) Vagrant插件：

``` bash
 vagrant plugin install landrush 
```

该插件会启动一个本地的DNS服务器，并负责VM的DNS查询，在Vagrantfile中需要配置如下：

```
  config.vm.hostname = "myhost.vagrant.test" //配置VM的域名
  config.landrush.enabled = true //启用landrush
  ```
  
- 首次运行时，由于landrush需要修改宿主机上的DNS配置，因此需要输入宿主机用户的密码。
- 对于静态ip，有时无法从host机器ping通虚拟机，此时需要执行`sudo route -n flush`然后重启机器