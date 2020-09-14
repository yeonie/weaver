//
//  BoardViewController.swift
//  ios
//
//  Created by 이동연 on 12/09/2020.
//  Copyright © 2020 Jerry Jung. All rights reserved.


import UIKit

class BoardViewController: UIViewController {
    
    var tastID: UIBackgroundTaskIdentifier?
    var timer: Timer?
    var number: Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
//        tastID = UIApplication.shared.beginBackgroundTask(expirationHandler: {
//            UIApplication.shared.endBackgroundTask(self.tastID!)
//            self.tastID = .invalid
//        })
//
//        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(timerCallback), userInfo: nil, repeats: true)
    }
    
//    @objc func timerCallback() {
//        number += 1
//        print(number)
//        if number == 1000000 {
//            tastID = .invalid
//            UIApplication.shared.endBackgroundTask(tastID!)
//        }
//    }
    
}
