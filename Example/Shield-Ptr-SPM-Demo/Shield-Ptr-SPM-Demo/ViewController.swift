//
//  ViewController.swift
//  Shield-Ptr-SPM-Demo
//
//  Created by Deepakraj M on 24/04/25.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textView: UITextView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        NotificationCenter.default.addObserver(self, selector: #selector(methodOfReceivedNotification(notification:)), name: NSNotification.Name(rawValue: "ShieldSuccess"), object: nil)

    }
    
    @objc func methodOfReceivedNotification(notification: Notification) {
        if let userInfo = notification.object as? [String: Any] {
            textView.text = self.prettyPrint(with: userInfo)
        }
    }

    deinit {
        NotificationCenter.default.removeObserver(self, name: NSNotification.Name.ShieldSuccess, object: nil)
    }

    func prettyPrint(with json: [String: Any]) -> String {
        if let data = try? JSONSerialization.data(withJSONObject: json, options: .prettyPrinted),
           let string = NSString(data: data, encoding: String.Encoding.utf8.rawValue) as String? {
            return string
        } else {
            return "Error formatting response"
        }
    }
}

