HeyCommunity V2
============

[![Build Status](https://travis-ci.org/dev4living/HeyCommunity.svg?branch=dev-master)](https://travis-ci.org/dev4living/HeyCommunity)
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


Read [ENGLISH README](README.md)

HeyCommunity 是一款开源的社交软件，适用于 iOS / Android / Windows Phone 等一切手机操作系统   
令人惊叹的是它还可以运行在微信中，享受__微信授权登录__和__微信模板消息__带来的便利

官方网站: [http://www.hey-community.cn](http://www.hey-community.cn)   
在线演示: [http://demo.hey-community.cn](http://demo.hey-community.cn)   



## 部署

使用 [HeyCommunity 云社区](http://www.hey-community.com/cloud)，不需要技术人员进行部署，也不需要服务器，简单注册即可拥有一个云社区

如果在手动部署中遇到问题，你也可以向我们请求援助



### 简单部署

如果你不太懂编程，那么我们推荐你从 [Releases](https://github.com/dev4living/HeyCommunity/releases) 下载最新的软件源代码



### 高级部署

如果你是一名经验丰富的软件工程师，你可以选择高级部署

```
## 获取完整项目代码
$ git clone https://github.com/dev4living/HeyCommunity.git HeyCommunity
$ cd HeyCommunity
$ git submodule update --init --recursive       ## 此步骤可能比较缓慢，可从 Releases 中获取源代码


## 前端部署
$ cd HeyCommunity/frontend
$ npm install
$ npm run build
$ npm install ionic cordova                     ## 可选操作，安装 ionic cordova 用于构建 app
$ ionic build ios                               ## 可选操作，使用 ionic build ios app
$ open platforms/ios/HeyCommunity.xcodeproj     ## 可选操作，使用 xcode 打开 HeyCommunity.xcodeproj，进行模拟器运行、真机测试、上传到 AppStore


## 后端部署
$ cd HeyCommunity/backend
$ composer install
$ bower install
$ cp .env.example .env
$ php artisan key:generate
$ vi .env                                       ## 配置数据库连接
# php artisan migrate:refresh --seed            ## 构建数据库并生成假数据
```

备注:

1. 前端基于 [Ionic Framework](http://ionicframework.com) v2，需要 `node`  `npm` 遇到问题请查阅相关文档
2. 后端基于 [Laravel Framework](http://laravel.com)，需要 `composer` `bower` 遇到问题请查阅相关文档



## 运行

我们推荐使用 Apache Web Server，假设已经把 `demo.hey-community.local` 解析到了 `HeyCommunit` 目录   
那么在浏览器中打开 `demo.hey-community.local` 即可看到 HeyCommunity 在浏览器中运行的效果   

要运行在 iOS 和 Android 设备上，请阅读 __高级部署__ 中的 __前端部署__ 内容，依然有问题请查阅 [Ionic](http://ionicframework.com) v2 等相关文档



## 联系

Rod: Rod(AT)protobia.com   
Giter: [https://gitter.im/dev4living/hey-community](https://gitter.im/dev4living/hey-community)   
QQ群: 242078519   



## 授权

HeyCommunity 是开源软件，遵循 [GPLv3](LICENSE.txt) 授权
