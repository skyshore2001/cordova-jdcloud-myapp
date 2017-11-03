#import <UIKit/UIKit.h>
#import <Cordova/CDVPlugin.h>

@interface CDVMyApp : CDVPlugin
{}

+ (NSString*)cordovaVersion;

- (void)compose:(CDVInvokedUrlCommand*)command;

@end
