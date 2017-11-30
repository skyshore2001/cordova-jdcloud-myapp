#include <sys/types.h>
#include <sys/sysctl.h>
#import <Cordova/CDV.h>
#import "CDVMyApp.h"

@implementation CDVMyApp

- (void)call:(CDVInvokedUrlCommand*)command
{
	NSString *cmd = [command.arguments objectAtIndex:0];
	NSDictionary *opt = [command.arguments objectAtIndex:1];
	NSLog(@"%@ %@", cmd, opt);

	if ([cmd isEqualToString:@"getAppVersion"]) {
		NSDictionary *infoDict = [[NSBundle mainBundle] infoDictionary];
		NSString *appVersion = [infoDict objectForKey:@"CFBundleShortVersionString"];
		NSNumber *buildNumber = [infoDict objectForKey:@"CFBundleVersion"];

		// Build a plugin response
		CDVPluginResult* pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK messageAsDictionary: @{@"version": appVersion, @"build": buildNumber}];
		[self.commandDelegate sendPluginResult:pluginResult callbackId:command.callbackId];
	}
	else {
		NSString *errstr = [NSString stringWithFormat:@"Unknown command: %@", cmd];
		CDVPluginResult *result = [CDVPluginResult resultWithStatus:CDVCommandStatus_ERROR messageAsString:errstr];
		[self.commandDelegate sendPluginResult:result callbackId:command.callbackId];
		return;
	}

/*
	[self.commandDelegate runInBackground:^{
	
		CDVPluginResult* pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK messageAsString:videoFile];

		sleep(2);
		[self.commandDelegate sendPluginResult:pluginResult callbackId:command.callbackId];
	}];
	*/
}

@end
