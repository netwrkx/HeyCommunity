HeyCommunity V2.1.0-beta
============================

[![Build Status](https://travis-ci.org/dev4living/HeyCommunity.svg?branch=dev-master)](https://travis-ci.org/dev4living/HeyCommunity)
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


阅读 [中文文档](README_CN.md)

HeyCommunity is an open source social software for iOS / Android / Windows Phone and other mobile phone operating system   
It is amazing that it can also run in the WeChat, Using the __WeChat authorization login__ and __WeChat template message__

Official website: [http://www.hey-community.cn](http://www.hey-community.cn)   
Online Demo: [http://demo.hey-community.cn](http://demo.hey-community.cn)   



## Deploy

Use the [HeyCommunity Cloud Community](http://www.hey-community.com/cloud)，do not require technical staff to deploy, do not need the server, a simple registration can have a cloud community

If you have problems with manual deployment, you can also request assistance form us



### Simple Deployment

If you do not understand programming, then we recommend that you download the latest software source code form [Releases](https://github.com/dev4living/HeyCommunity/releases)



### Advanced Deployment

If you are an experienced software engineer, you can choose advanced deployment

```
## Get the full project code
$ git clone https://github.com/dev4living/HeyCommunity.git HeyCommunity
$ cd HeyCommunity
$ git submodule update --init --recursive       ## This step may be slow, and you can get the source code from Releases


## Front-end deployment
$ cd HeyCommunity/frontend
$ npm install
$ npm run build
$ npm install ionic cordova                     ## Optional, install the ionic cordova to build the app
$ ionic build ios                               ## Optional, use the ionic build ios app
$ open platforms/ios/HeyCommunity.xcodeproj     ## Optional, use xcode to open HeyCommunity.xcodeproj, the simulator runs, real machine test, upload to the AppStore


## Back-end deployment
$ cd HeyCommunity/backend
$ composer install
$ bower install
$ cp .env.example .env
$ php artisan key:generate
$ vi .env                                       ##  Configure the database connection
# php artisan migrate:refresh --seed            ##  Build the database and generate fake data
```

Note:

1. Front-end based on [Ionic Framework](http://ionicframework.com) v2, need to `node`` npm` encounter problems please refer to the relevant documents
2. Backend Based on [Laravel Framework](http://laravel.com), you need `composer`` bower` encounter problems please consult the relevant documents



## Run

We recommend using Apache Web Server, assuming that `demo.hey-community.local` has been parsed into the` HeyCommunit` directory   
Then in the browser to open `demo.hey-community.local` HeyCommunity can see the effect of running in the browser

To run on iOS and Android devices, read the __front-end deployment__ content in the __Advanced Deployment__ and still have questions, please check out [Ionic](http://ionicframework.com) v2 and other related documentation



## Contact

Rod: Rod(AT)protobia.com   
Giter: [https://gitter.im/dev4living/hey-community](https://gitter.im/dev4living/hey-community)   
QQ Group: 242078519   



## License

The HeyCommunity is open-sourced software licensed under the [GPLv3](LICENSE.txt)
