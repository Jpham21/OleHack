import UIKit
import Connectivity
import CellularInfo
import CoreWLAN

public class IOSDataManager: NSObject, FlutterPlugin {
    public static func register(with registrar: FlutterPluginRegistrar) {
        let channel = FlutterMethodChannel(name: "ios_data_manager", binaryMessenger: registrar.messenger())
        let instance = IOSDataManager()
        registrar.addMethodCallHandler(instance, channel: channel)
    }

    public func handle(_ call: FlutterMethodCall, result: @escaping FlutterResult) {
        switch call.method {
        case "getSignalStrength":
            let signalStrength = getSignalStrength()
            result(signalStrength)
        case "getNetworkType":
            let networkType = getNetworkType()
            result(networkType)
        default:
            result(FlutterMethodNotImplemented)
        }
    }

    public func getSignalStrength() -> Int {
        let connectivity = Connectivity()
        if connectivity.connectionType == .wifi {
            return getWiFiSignalStrength()
        } else {
            return getCellularSignalStrength()
        }
    }

    private func getWiFiSignalStrength() -> Int {
        guard let interface = CWInterface.interface() else {
            return 0
        }

        do {
            let rssi = try interface.rssi()
            return Int(rssi)
        } catch {
            print("Error getting WiFi signal strength: \(error)")
            return 0
        }
    }

    private func getCellularSignalStrength() -> Int {
        let cellularInfo = CellularInfo()
        return cellularInfo.signalStrength
    }

    public func getNetworkType() -> String {
        let connectivity = Connectivity()
        return connectivity.connectionType.rawValue
    }
}