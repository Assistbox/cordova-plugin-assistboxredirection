#import "AssistBoxRedirection.h"
#import <Foundation/Foundation.h>
//#import "AppDelegate.h"

@implementation AssistBoxRedirection

- (void) pluginInitialize {
    
}

- (void)goBackToMainApplication:(ASTInvokedUrlCommand*)command
{
    UIWindow *window = [[UIApplication sharedApplication] keyWindow];
    UINavigationController* navController = (UINavigationController*)window.rootViewController;
    [navController popViewControllerAnimated:YES];
}

@end

