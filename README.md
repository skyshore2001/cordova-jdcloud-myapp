# cordova-plugin-myapp

本插件提供自定义应用程序控制。

## 支持平台

- Android
- iOS

## API接口

通用接口：

	myapp.call(cmd, opt)

### 取App版本

显示或隐藏导航栏。

	myapp.getVersion(onGetVersion)

- onGetVersion: function (ver={version, build})

### 重新加载页面

	myapp.reload(url?)

- url: 加载指定页面。如果不指定，则加载config.xml中指定的默认页。

