#import "AssistBoxRedirection.h"
#import <Foundation/Foundation.h>
//#import "AppDelegate.h"

@implementation AssistBoxRedirection

- (void) pluginInitialize {
    
}

- (void)goBackToMainApplication:(ASTInvokedUrlCommand*)command
{
    NSLog(@"AssistBox Redirection: goBackToMainApplication");
    UIWindow *window = [[UIApplication sharedApplication] keyWindow];
    UINavigationController* navController = (UINavigationController*)window.rootViewController;
    if(((ASTViewController*)self.viewController).hasNavigationStack){
        navController.navigationBar.hidden = ((ASTViewController*)self.viewController).isMainAppNavigationBarHidden;
        NSLog(@"AssistBox Redirection: goBackToMainApplication - calling popViewController");
        [navController  popViewControllerAnimated:NO];
    } else {
        NSLog(@"AssistBox Redirection: goBackToMainApplication - calling dismissViewController");
        UINavigationController* navController = (UINavigationController*)window.rootViewController;
        [navController  dismissViewControllerAnimated:NO completion:nil];
    }
}

@end

