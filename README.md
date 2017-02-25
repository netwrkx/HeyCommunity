HeyCommunity V3
============================

[![Build Status](https://travis-ci.org/dev4living/HeyCommunity.svg?branch=master)](https://travis-ci.org/dev4living/HeyCommunity)
[![GPL](https://img.shields.io/badge/licence-GPL-red.svg?style=flat)](LICENSE.txt)
[![Docker](https://img.shields.io/badge/dockerImage-300M+-blue.svg?style=flat)](https://hub.daocloud.io/repos/e9aa4c04-33ac-4bc4-99fa-fb727c7acc11)

Supported Platform: &nbsp;&nbsp;
[![WebApp](https://img.shields.io/badge/WebApp-support-green.svg?style=flat)](#null)
[![iOS](https://img.shields.io/badge/iOS-support-green.svg?style=flat)](#null)
[![Android](https://img.shields.io/badge/Android-support-green.svg?style=flat)](#null)

Service Required: &nbsp;&nbsp;
[![PHP](https://img.shields.io/badge/PHP->5.5.9-yellowgreen.svg?style=flat)](#null)
[![Apache](https://img.shields.io/badge/Apache-normal-yellowgreen.svg?style=flat)](#null)
[![MySQL](https://img.shields.io/badge/MySQL-normal-yellowgreen.svg?style=flat)](#null)
[![Nginx](https://img.shields.io/badge/Nginx-unknown-lightgrey.svg?style=flat)](#null)
[![IIS](https://img.shields.io/badge/IIS-unknown-lightgrey.svg?style=flat)](#null)

Technology Stack: &nbsp;&nbsp;
[![Ionic 2](https://img.shields.io/badge/Ionic-2-yellow.svg?style=flat)](#null)
[![Angular](https://img.shields.io/badge/Angular-2-yellow.svg?style=flat)](#null)
[![Laravel](https://img.shields.io/badge/Laravel-5.1-yellow.svg?style=flat)](#null)
[![Cordova](https://img.shields.io/badge/Cordova-6-yellow.svg?style=flat)](#null)

If you are using GitHub in mainland China, you can use [Coding.net] (https://coding.net/u/rod/p/HeyCommunity/git) as an alternative


阅读 [中文文档](README_CN.md)

HeyCommunity is an open source social software for iOS / Android and all other mobile operating systems, it can also run in the form of WebApp in the browser
At present Timeline / Topic two functional modules, employ to the WeChat LogIn, WeChat Notice, JiGuang SMS, JiGuang push, etc.

Official Website: [http://www.hey-community.com](http://www.hey-community.com)   
Official Docs: [http://docs.hey-community.com](http://docs.hey-community.com)   
Online DEMO: [http://demo.hey-community.com](http://demo.hey-community.com)   
Android DEMO: [TheHCase](https://fir.im/hc300)   
iOS DEMO: [TheHCase](https://fir.im/hc300)



## Deploy

You can use DaoCloud to quickly deploy HeyCommunity via the docker, see [DaoCloud Quick Deployment] (http://docs.hey-community.com/started/daocloud.html)

If you have problems with manual deployment, you can also request assistance form us

```
## Get the full project code
$ git clone https://github.com/dev4living/HeyCommunity.git HeyCommunity
$ cd HeyCommunity
$ git submodule update --init --recursive --depth 1         ## This step may be slow, and you can get the source code from Releases


### Front-end deployment and build
$ cd HeyCommunity/frontend
$ npm install
$ vi src/index.html                             ## Modify API_DOMAIN
$ vi ionic.config.json                          ## Optional, Modify Proxy
$ npm run ionic:build                           ## Build WebApp, And generate the index file www/index.html

$ vi config.xml                                 ## Modify WeChat / JiGuang and other configurations
$ npm install ionic cordova                     ## Install ionic / cordova for build app
$ Ionic state reset && ionic build android      ## reset plugins and platforms, and build android app (before that, you need to install and configure android-sdk.) Generated apk stored in platforms / android / build / / table of Contents


### Back-end deployment
$ cd HeyCommunity/backend
$ composer install                              ## Install PHP dependencies
$ bower install                                 ## Install front-end dependencies
$ cp .env.example .env                          ## Copy the configuration file
$ php artisan key:generate                      ## Generate AppKey
$ vi .env                                       ## Modify Database / Qiniu / JiGuang / Wechat and other configurations
# php artisan migrate:refresh --seed            ## Build the database and generate fake data


### Configuration Apache Server
Define a virtual host, set the domain new.hey-community.local, set DocumentRoot for the HeyCommunity directory
Enable the Apache Rewrite module and set HeyCommunity AllowOverride All to restart Apache

Your WebApp URL is: http://new.hey-community.local
Your API_DOMAIN is: http://new.hey-community.local
```

Now, the browser opens http: //new.hey-community.local to access HeyCommunity WebApp
Build iOS / Android app Please refer to the `Front-end deployment and build` part of the relevant network data, the length is too large to add a detailed description later


Note:

1. Front-end based on Ionic Framework v2, need to nodenpm encounter problems please refer to the relevant documents
2. Backend Based on Laravel Framework, you need composerbower encounter problems please consult the relevant documents
3. Environment dependency can refer to `HeyCommunity/Dockerfile` and `HeyCommunity/docker-entrypoint.sh` of [Official Docs](http://docs.hey-community.com)


## Contact

Rod: Rod(AT)protobia.com   
Giter: [https://gitter.im/dev4living/hey-community](https://gitter.im/dev4living/hey-community)   
QQ Group: 242078519   



## License

The HeyCommunity is open-sourced software licensed under the [GPLv3](LICENSE.txt)
