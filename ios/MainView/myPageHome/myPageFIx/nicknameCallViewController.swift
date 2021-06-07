//
//  nicknameCallViewController.swift
//  ios
//
//  Created by 이동연 on 11/10/2020.
//  Copyright © 2020 litong. All rights reserved.
//

import UIKit

class nicknameCallViewController: BaseViewController, UITextFieldDelegate {
    
    var nicknameLabel = myPageFixViewController.nicknameLabel.text!

    @IBOutlet weak var nicknameBox: UITextField!
    
    
    @IBAction func nicknameFixCompleted(_ sender: UIButton) {
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        nicknameBox.delegate = self
        
        self.navigationController?.isNavigationBarHidden = false
        self.navigationItem.title = "뭐라고 부를까요?"
        
//        self.navigationController?.navigationBar.backgroundColor = UIColor.init(red: 30/255, green: 15/255, blue: 0/255, alpha: 1.0)
        self.navigationController?.navigationBar.barTintColor = UIColor.init(red: 250/255, green: 225/255, blue: 98/255, alpha: 1.0)
        self.navigationController?.navigationBar.backIndicatorImage = UIImage(named: "dismissBtn")
        self.navigationController?.navigationBar.backIndicatorTransitionMaskImage = UIImage(named: "dismissBtn")
        self.navigationItem.backBarButtonItem = UIBarButtonItem(title: "", style: .plain
            , target: nil, action: nil)
        self.navigationController?.navigationBar.shadowImage = UIImage()
        self.navigationController?.navigationBar.isTranslucent = true
        self.navigationController?.navigationBar.titleTextAttributes = [NSAttributedString.Key.font: UIFont(name: "Georgia-Bold", size: 23)!,NSAttributedString.Key.foregroundColor: UIColor.black]

        
            }


    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        
        self.navigationController?.navigationBar.isTranslucent = false
        
        
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        
        self.navigationController?.navigationBar.isTranslucent = true
        self.navigationController?.navigationBar.barTintColor = .white

    }


}
