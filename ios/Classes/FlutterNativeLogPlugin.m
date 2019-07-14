#import "FlutterNativeLogPlugin.h"
#import <flutter_native_log/flutter_native_log-Swift.h>

@implementation FlutterNativeLogPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftFlutterNativeLogPlugin registerWithRegistrar:registrar];
}
@end
