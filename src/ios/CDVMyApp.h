#import <UIKit/UIKit.h>
#import <Cordova/CDVPlugin.h>

@interface CDVMyApp : CDVPlugin
{}

+ (NSString*)cordovaVersion;

- (void)call:(CDVInvokedUrlCommand*)command;

@end
