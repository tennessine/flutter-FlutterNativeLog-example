import Flutter
import UIKit

public class SwiftFlutterNativeLogPlugin: NSObject, FlutterPlugin {
  public static func register(with registrar: FlutterPluginRegistrar) {
    let channel = FlutterMethodChannel(name: "flutter_native_log", binaryMessenger: registrar.messenger())
    let instance = SwiftFlutterNativeLogPlugin()
    registrar.addMethodCallDelegate(instance, channel: channel)
  }

  public func handle(_ call: FlutterMethodCall, result: @escaping FlutterResult) {
    if (call.method == "getPlatformVersion") {
        result("iOS " + UIDevice.current.systemVersion);
    } else if (call.method == "printLog") {
        var map = call.arguments as? Dictionary<String, String>;
        let tag = map?["tag"];
        let msg = map?["msg"];
        print(tag, msg);
    } else {
        result(FlutterMethodNotImplemented)
    }
  }
}
