HeyCommunity V3
============

[![Build Status](https://travis-ci.org/dev4living/HeyCommunity.svg?branch=master)](https://travis-ci.org/dev4living/HeyCommunity)
[![GPL](https://img.shields.io/badge/licence-GPL-red.svg?style=flat)](LICENSE.txt)
[![Docker](https://img.shields.io/badge/dockerImage-300M+-blue.svg?style=flat)](https://hub.daocloud.io/repos/e9aa4c04-33ac-4bc4-99fa-fb727c7acc11)

支持平台: &nbsp;&nbsp;
[![WebApp](https://img.shields.io/badge/WebApp-support-green.svg?style=flat)](#null)
[![iOS](https://img.shields.io/badge/iOS-support-green.svg?style=flat)](#null)
[![Android](https://img.shields.io/badge/Android-support-green.svg?style=flat)](#null)

服务需求: &nbsp;&nbsp;
[![PHP](https://img.shields.io/badge/PHP->5.5.9-yellowgreen.svg?style=flat)](#null)
[![Apache](https://img.shields.io/badge/Apache-normal-yellowgreen.svg?style=flat)](#null)
[![MySQL](https://img.shields.io/badge/MySQL-normal-yellowgreen.svg?style=flat)](#null)
[![Nginx](https://img.shields.io/badge/Nginx-unknown-lightgrey.svg?style=flat)](#null)
[![IIS](https://img.shields.io/badge/IIS-unknown-lightgrey.svg?style=flat)](#null)

技术栈: &nbsp;&nbsp;
[![Ionic 2](https://img.shields.io/badge/Ionic-2-yellow.svg?style=flat)](#null)
[![Angular](https://img.shields.io/badge/Angular-2-yellow.svg?style=flat)](#null)
[![Laravel](https://img.shields.io/badge/Laravel-5.1-yellow.svg?style=flat)](#null)
[![Cordova](https://img.shields.io/badge/Cordova-6-yellow.svg?style=flat)](#null)

如果你在中国大陆, 使用 GitHub 不顺畅, 那么可以使用 [Coding.net](https://coding.net/u/rod/p/HeyCommunity/git) 做为替代


Read [ENGLISH README](README.md)

HeyCommunity 是一款开源的社交软件, 适用于 iOS / Android 等一切手机操作系统, 它还可以 WebApp 的形式运行在浏览器中   
目前 Timeline / Topic 两大功能模块, 接入了微信登录、微信公众号模板消息、极光短信、极光推送等   

官方网站: [http://www.hey-community.com](http://www.hey-community.com)   
官方文档: [http://docs.hey-community.com](http://docs.hey-community.com)   
在线演示: [http://demo.hey-community.com](http://demo.hey-community.com)   
Android 演示: [TheHCase](https://fir.im/hc300)   
iOS 演示: [TheHCase](https://fir.im/hc300)



## 部署和构建

你可以使用 DaoCloud 通过 docker 快速部署 HeyCommunity, 参阅 [DaoCloud 快速部署](http://docs.hey-community.com/started/daocloud.html)

如果在部署中遇到问题, 你也可以向我们请求援助

```
### 获取完整项目代码
$ git clone https://github.com/dev4living/HeyCommunity.git HeyCommunity
$ cd HeyCommunity
$ git submodule update --init --recursive --depth 1         ## 此步骤可能比较缓慢, 可从 Releases 中获取源代码


### 前端部署和构建
$ cd HeyCommunity/frontend
$ npm install
$ vi src/index.html                             ## 修改 API_DOMAIN
$ vi ionic.config.json                          ## 可选, 修改 Proxy
$ npm run ionic:build                           ## 构建 WebApp, 并生成入口文件 www/index.html

$ vi config.xml                                 ## 修改 微信 / 极光 等配置
$ npm install ionic cordova                     ## 安装 ionic / cordova 用于构建 app
$ ionic state reset && ionic build android      ## 重置 plugins 和 platforms, 并构建 android app (在这之前, 你需要先安装和配置 android-sdk). 生成的 apk 存放在 platforms/android/build/outputs/apk/ 目录


### 后端部署
$ cd HeyCommunity/backend
$ composer install                              ## 安装 PHP 依赖
$ bower install                                 ## 安装前端依赖
$ cp .env.example .env                          ## 复制配置文件
$ php artisan key:generate                      ## 生成 AppKey
$ vi .env                                       ## 修改 数据库 / 七牛云存储 / 极光 / 微信 等配置
# php artisan migrate:refresh --seed            ## 构建数据库并生成假数据


### 配置 Apache Server
定义一个虚拟主机, 设定域名为 new.hey-community.local, 设置 DocumentRoot 为 HeyCommunity 目录   
开启 Apache Rewrite 模块, 并设置 HeyCommunity AllowOverride All, 重启 Apache

你的 WebApp URL 为: http://new.hey-community.local
你的 API_DOMAIN 为: http://new.hey-community.local
```

现在，浏览器打开 http://new.hey-community.local 即可访问 HeyCommunity WebApp   
构建 iOS / Android app 请参阅 `前端部署和构建` 部分结合相关网络资料，篇幅过大日后补充详细介绍

备注:

1. 前端基于 [Ionic Framework](http://ionicframework.com) v2, 遇到问题请查阅相关文档
2. 后端基于 [Laravel Framework](http://laravel.com), 遇到问题请查阅相关文档
3. 环境依赖可以参考 `HeyCommunity/Dockerfile` 和 `HeyCommunity/docker-entrypoint.sh` 或者[官方文档](http://docs.hey-community.com)



## 联系

Rod: Rod(AT)protobia.com   
Giter: [https://gitter.im/dev4living/hey-community](https://gitter.im/dev4living/hey-community)   
QQ群: 242078519   



## 授权

HeyCommunity 是开源软件, 遵循 [GPLv3](LICENSE.txt) 授权
