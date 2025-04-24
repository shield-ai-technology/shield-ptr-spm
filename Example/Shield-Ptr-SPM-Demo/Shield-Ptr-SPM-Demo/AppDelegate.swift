//
//  AppDelegate.swift
//  Shield-Ptr-SPM-Demo
//
//  Created by Deepakraj M on 24/04/25.
//

import UIKit
import ShieldFraud

@main
class AppDelegate: UIResponder, UIApplicationDelegate {



    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        let config = Configuration(withSiteId: "SHIELD_SITE_ID", secretKey: "SHIELD_SECRET_KEY")
        config.logLevel = .info
        config.deviceShieldCallback = CallbackExtension()
        config.enableStopShield = true
        config.clientID = "custom_client_id"
        config.userID = "custom_user_id"
        Shield.setUp(with: config)
        return true
    }

    // MARK: UISceneSession Lifecycle

    func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration {
        // Called when a new scene session is being created.
        // Use this method to select a configuration to create the new scene with.
        return UISceneConfiguration(name: "Default Configuration", sessionRole: connectingSceneSession.role)
    }

    func application(_ application: UIApplication, didDiscardSceneSessions sceneSessions: Set<UISceneSession>) {
        // Called when the user discards a scene session.
        // If any sessions were discarded while the application was not running, this will be called shortly after application:didFinishLaunchingWithOptions.
        // Use this method to release any resources that were specific to the discarded scenes, as they will not return.
    }


}

class CallbackExtension: DeviceShieldCallback {
    func didError(error: NSError) {
        print("FP ERROR: ", error.localizedDescription)
    }
    
    func didSuccess(result: [String: Any]) {
        print("FP Success: ", result)

        NotificationCenter.default.post(name: .ShieldSuccess, object: result, userInfo: result)
        
        Shield.stopSDK()
    }
}


public extension Notification.Name {
    static let ShieldSuccess = Notification.Name("ShieldSuccess")
}
