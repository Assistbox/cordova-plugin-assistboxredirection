#import <Cordova/CDV.h>
#import <Cordova/CDVPlugin.h>

@interface AssistBoxRedirection : CDVPlugin
- (void)goBackToMainApplication:(CDVInvokedUrlCommand*)command;
@end
