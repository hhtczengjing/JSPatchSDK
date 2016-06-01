# JSPatchSDK

[JSPatch](http://www.jspatch.com) 是一个开源项目([Github链接](https://github.com/bang590/JSPatch),[使用文档](http://www.jspatch.com/Docs/intro))，只需要在项目里引入极小的引擎文件，就可以使用 JavaScript 调用任何 Objective-C 的原生接口，替换任意 Objective-C 原生方法。目前主要用于下发 JS 脚本替换原生 Objective-C 代码，实时修复线上 bug。

### 安装

在 `Podfile` 文件下添加

``` 
	pod 'JSPatchSDK' , :git => 'https://github.com/hhtczengjing/JSPatchSDK.git'
```

###更新记录

#### 1.4（2016-05-02）

- 新增 +setupDevelopment 接口，用于开发时测试下发补丁，详见开发预览。
- 删除补丁时，客户端会立即取消 JS 补丁，无需等待下次重启。

#### 1.3.1 (2016-04-28)

- 新增 +setupRSAPublicKey: 接口，支持自定义 RSA 密钥。

#### 1.3 (2016-04-08)

- 更新 JSPatch 核心至1.0
- 修复 +setupUserData: 调用顺序问题

#### 1.2 (2016-03-27)

- 新增灰度/条件下发功能
- 新增接口 +setupUserData: ，用于条件下发，详见文档
- 新增接口 +setupCallback:，接收内部各类事件回调

#### 1.1 (2016-03-09)

- 新增接口 +sync:，负责检查patch更新，若有更新即刻下载并执行。
- 接口 +startWithAppKey: 功能变更，只负责设置 AppKey 以及执行本地已有 patch 文件，不再更新 patch。
- 新增接口 +setupLogger:，自定义logger。
- 解决因缓存导致更新不生效的问题。
- JSPatch核心代码更新到最新版本。
