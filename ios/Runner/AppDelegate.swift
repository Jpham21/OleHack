import UIKit
import Flutter
import IOSDataManager

@UIApplicationMain
@objc class AppDelegate: FlutterAppDelegate {

  override func application(
    _ application: UIApplication,
    didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?
  ) -> Bool {
    // Initialize Flutter Engine
    let flutterEngine = FlutterEngine(name: "my flutter engine")

    // Use flutterEngine safely
    if let flutterEngine = flutterEngine {
      flutterEngine.run()
    }

    // Get the registrar from the flutterEngine
    guard let registrar = flutterEngine?.registrar(forPlugin: "YourPluginId") else {
      fatalError("Failed to get registrar from flutterEngine")
    }

    // Use the registrar safely
    if let registrar = registrar {
      // Call the method with the required argument 'withId'
      YourPluginClass.register(with: registrar)
    }

    return super.application(application, didFinishLaunchingWithOptions: launchOptions)
  }
}