//
//  boardViewController.swift
//  ios
//
//  Created by 이동연 on 14/09/2020.
//  Copyright © 2020 Jerry Jung. All rights reserved.
//

import UIKit

class boardViewController: BaseViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        
    }


    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.navigationController?.isNavigationBarHidden = false
        
        //        self.navigationController?.navigationBar.barTintColor = UIColor(displayP3Red: 0/255, green: 0/255, blue: 0/255, alpha: 0.01)
        self.navigationItem.title = "게시판"
        
        //        self.navigationController?.navigationBar.barTintColor = UIColor(displayP3Red: 0/255, green: 0/255, blue: 0/255, alpha: 0.01)
        self.navigationController?.navigationBar.setBackgroundImage(UIImage(), for: .default)
        
        //        self.navigationController?.navigationItem.backBarButtonItem = UIBarButtonItem(image: UIImage(named: "dismissBtn"), style: .plain, target: nil, action: nil)
        
        self.navigationController?.navigationBar.backIndicatorImage = UIImage(named: ".clear")
        self.navigationController?.navigationBar.backIndicatorTransitionMaskImage = UIImage(named: ".clear")
        self.navigationItem.backBarButtonItem = UIBarButtonItem(title: "", style: .plain
            , target: nil, action: nil)
        self.navigationController?.navigationBar.shadowImage = UIImage()
        
        
        
        self.navigationController?.navigationBar.isTranslucent = false
        
        
        self.navigationController?.navigationBar.titleTextAttributes = [NSAttributedString.Key.font: UIFont.boldSystemFont(ofSize: 24),NSAttributedString.Key.foregroundColor: UIColor.black]
        
        
        //        self.navigationController?.navigationBar.backIndicatorTransitionMaskImage = UIImage()
        //        self.navigationController?.navigationBar.backIndicatorImage = UIImage()
        
    }
    
    
    
}
