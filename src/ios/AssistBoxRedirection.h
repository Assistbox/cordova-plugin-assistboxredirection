#import <AST.h>
#import <ASTPlugin.h>

@interface AssistBoxRedirection : ASTPlugin
- (void)goBackToMainApplication:(ASTInvokedUrlCommand*)command;
@end
