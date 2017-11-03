# cordova-plugin-myapp

本插件提供自定义应用程序控制。

## 支持平台

- iOS

## API接口

通用接口：

	myapp.call(cmd, opt)

### 导航栏接口

	myapp.setTitle(title)
	myapp.showNav(show)

### 菜单控制

	myapp.setMenu({items: [{name, page, flags}]})

### 子浏览器保存数据

	myapp.setData(key, val, flag)
	myapp.getData(key, flag)  TODO: 同步?

flag
: 'l'-localstorage, 's'-sessionstorage, 'v'-global variable

