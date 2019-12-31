#import "TcosPlugin.h"
#import <tcos/tcos-Swift.h>

@implementation TcosPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftTcosPlugin registerWithRegistrar:registrar];
}
@end
