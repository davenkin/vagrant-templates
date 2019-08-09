- 该代码库为各种用途虚拟机的Vagrant模板.
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


- 根据自己的用途可以选择不同的模板：

|用途|可选项：|
| --- | --- |
|最简单的Linux单机|1-bare-centos7<br/>1-bare-ubuntu1604<br/>1-bare-ubuntu1804|
|主虚互访的Linux单机|1-static-ip-centos7<br/>1-static-ip-ubuntu1604<br>1-static-ip-ubuntu1804|
|2节点集群|2-nodes-centos7<br/>2-nodes-ubuntu1604<br/>2-nodes-ubuntu1804|
|3节点集群|3-nodes-centos7<br/>3-nodes-ubuntu1604<br/>3-nodes-ubuntu1804|
|5节点集群|5-nodes-centos7<br/>5-nodes-ubuntu1604<br/>5-nodes-ubuntu1804|