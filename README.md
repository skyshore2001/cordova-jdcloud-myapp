# cordova-plugin-myapp

本插件提供自定义应用程序控制。

## 支持平台

- iOS

## API接口

通用接口：

	myapp.call(cmd, opt)

### 导航栏接口

显示或隐藏导航栏。

	myapp.showNav(show)

- show: true/false 

设置标题：

	myapp.setTitle(title)

### 菜单控制

	myapp.setMenu({items: [{name, page}]})

设置菜单栏每项的名称及跳转页面。
