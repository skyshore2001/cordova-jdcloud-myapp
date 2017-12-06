cordova.define("cordova-plugin-myapp.myapp", function(require, exports, module) {
var argscheck = require('cordova/argscheck'),
	channel = require('cordova/channel'),
	utils = require('cordova/utils'),
	exec = require('cordova/exec'),
	cordova = require('cordova');

function noop() {}

var name = "MyApp";
var MyApp = {
	call: function (cmd, opt, onSuccess, onError) {
		if (onSuccess == null)
			onSuccess = noop;
		if (onError == null)
			onError = noop;
		//argscheck.checkArgs('SOFF', 'MyApp.call', arguments);
		exec(onSuccess, onError, name, "call", [ cmd, opt ]);
	},
	getAppVersion: function(onGetAppVersion) {
		this.call('getAppVersion', null, onGetAppVersion, null);
	},
	reload: function(url) {
		this.call('reload', {url: url});
	}
};

module.exports = MyApp;

});
