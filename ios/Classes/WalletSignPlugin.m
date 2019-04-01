#import "WalletSignPlugin.h"
#import <wallet_sign/wallet_sign-Swift.h>

@implementation WalletSignPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftWalletSignPlugin registerWithRegistrar:registrar];
}
@end
