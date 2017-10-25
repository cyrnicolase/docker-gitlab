# 安装gitlab-ce && gitlab-runner

## Installation
```
docker pull gitlab-ce
docker pull gitlab-runner
```

## FAQ
1. docker启动时,使用了端口映射,但是访问的时候,不能访问?
```
这种情况一般都是防火墙的原因,将映射后端口开放出来.
```

2. 使用git 方式访问不成功?
```
因为端口映射的原因,git 仓库用的并不是22 端口(如果22:22映射就没这个问题).

所以,要在设置 **git remote** 的时候,携带上端口号

*eg: ssh://git@192.168.2.6:2289/hive/bees.git*

这里一定要注意的是, 必须在Url 的前面携带上: ** ssh:// ** 否则访问不成功.
```
