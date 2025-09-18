//
//  AppDelegate.swift
//  Shield-Ptr-SPM-Demo
//
//  Created by Deepakraj M on 24/04/25.
//

import UIKit
import ShieldPtr

@main
class AppDelegate: UIResponder, UIApplicationDelegate {



    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        let config = PartnerConfiguration(withSiteId: "SHIELD_SITE_ID", secretKey: "SHIELD_SECRET_KEY")
        config.logLevel = .info
        config.deviceShieldCallback = CallbackExtension()
//        config.enableStopShield = true
        config.clientID = "custom_client_id"
        config.userID = "custom_user_id"
        PartnerShield.setUp(with: config)
        return true
    }

}

class CallbackExtension: PartnerDeviceShieldCallback {
    func didSuccess(siteId: String, result: [String : Any]) {
        print("FP Success: ", result)

        NotificationCenter.default.post(name: .ShieldSuccess, object: result, userInfo: result)
        
        PartnerShield.stopSDK(for: "SHIELD_SITE_ID")
    }
    
    func didError(siteId: String, error: NSError) {
        print("FP ERROR: ", error.localizedDescription)
    }
}


public extension Notification.Name {
    static let ShieldSuccess = Notification.Name("ShieldSuccess")
}
