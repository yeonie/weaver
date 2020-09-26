//
//  matchingHomeViewController.swift
//  ios
//
//  Created by 이동연 on 14/09/2020.
//  Copyright © 2020 Jerry Jung. All rights reserved.
//

import UIKit

class matchingHomeViewController: BaseViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
//    override func viewWillAppear(_ animated: Bool) {
//        super.viewWillAppear(animated)
//        navigationController?.navigationBar.isHidden = false
//        navigationController?.navigationItem.titleView?.isHidden = false
//        navigationController?.navigationItem.title = "친구찾기"
//        self.navigationController?.navigationBar.setBackgroundImage(UIImage(), for: .default)
//
//        //        self.navigationController?.navigationItem.backBarButtonItem = UIBarButtonItem(image: UIImage(named: "dismissBtn"), style: .plain, target: nil, action: nil)
//
//        self.navigationController?.navigationBar.backIndicatorImage = UIImage(named: "dismissBtn")
//        //        self.navigationController?.navigationBar.backIndicatorTransitionMaskImage = UIColor.black
//        self.navigationController?.navigationBar.backIndicatorTransitionMaskImage = UIImage(named: "dismissBtn")
//        self.navigationItem.backBarButtonItem = UIBarButtonItem(title: "", style: .plain
//            , target: nil, action: nil)
//
//    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.navigationController?.isNavigationBarHidden = false
        
        //        self.navigationController?.navigationBar.barTintColor = UIColor(displayP3Red: 0/255, green: 0/255, blue: 0/255, alpha: 0.01)
        self.navigationItem.title = "친구찾기"
        
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
