//
//  commentFIxViewController.swift
//  ios
//
//  Created by 이동연 on 11/10/2020.
//  Copyright © 2020 Jerry Jung. All rights reserved.
//

import UIKit

class commentFIxViewController: BaseViewController, UITextFieldDelegate {
    
    @IBOutlet weak var commentBox: UITextField!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        commentBox.delegate = self
        
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
