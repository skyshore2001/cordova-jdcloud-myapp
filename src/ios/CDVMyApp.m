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

	if ([cmd isEqualToString:@"setTitle"]) {
        self.viewController.title = [opt objectForKey:@"title"];
    }
    else if ([cmd isEqualToString:@"showNav"]) {
        BOOL val = [opt objectForKey:@"show"];
        [self.viewController.navigationController setNavigationBarHidden:val animated:YES];
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
