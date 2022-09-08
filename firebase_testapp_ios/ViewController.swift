//
//  ViewController.swift
//  firebase_testapp_ios
//
//  Created by Developper on 2022/08/23.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        // バッチ件数リセット
        UIApplication.shared.applicationIconBadgeNumber = 0
        
        NotificationCenter.default.addObserver(self,
                                                selector: #selector(foreground(notification:)),
                                                name: UIApplication.willEnterForegroundNotification,
                                                object: nil
        )
        NotificationCenter.default.addObserver(self,
                                                selector: #selector(background(notification:)),
                                                name: UIApplication.didEnterBackgroundNotification,
                                                object: nil
        )
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
 
        // バッチ件数リセット
        UIApplication.shared.applicationIconBadgeNumber = 0
    }
    
    func applicationWillEnterForeground(_ application: UIApplication) {
        // バッチ件数リセット
        UIApplication.shared.applicationIconBadgeNumber = 0
    }
        
    @objc func foreground(notification: Notification) {
        print("アプリがフォアグラウンドに移動しました")
        
        // バッチ件数リセット
        UIApplication.shared.applicationIconBadgeNumber = 0
    }
     
    @objc func background(notification: Notification) {
        print("アプリがバックグラウンドに移動しました")
    }
}

