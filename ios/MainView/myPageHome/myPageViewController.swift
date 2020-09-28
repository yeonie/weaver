//
//  myPageViewController.swift
//  ios
//
//  Created by 이동연 on 14/09/2020.
//  Copyright © 2020 Jerry Jung. All rights reserved.
//

import UIKit

class myPageViewController: BaseViewController {
    
    


    override func viewDidLoad() {
        super.viewDidLoad()
//        let cancelButton = UIButton()
//        cancelButton.backgroundColor = .red
//        cancelButton.setTitle("Common/Cancel".localized, for: .normal)
//        cancelButton.sizeToFit() //!!!
//        let cancelBarButton = UIBarButtonItem(customView: cancelButton)
//        navigationItem.leftBarButtonItem = cancelBarButton
        

        
    }


    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.navigationController?.isNavigationBarHidden = false
        
        
        
        self.navigationItem.title = "내 프로필"
        
        
        self.navigationController?.navigationBar.setBackgroundImage(UIImage(named: "whiteBackground"), for: .default)
        self.navigationController?.navigationBar.backIndicatorImage = UIImage(named: "dismissBtn")
        self.navigationController?.navigationBar.backIndicatorTransitionMaskImage = UIImage(named: "dismissBtn")
        self.navigationItem.backBarButtonItem = UIBarButtonItem(title: "", style: .plain
            , target: nil, action: nil)
        self.navigationController?.navigationBar.shadowImage = UIImage()
        
        
        
        self.navigationController?.navigationBar.isTranslucent = false
        
        
        self.navigationController?.navigationBar.titleTextAttributes = [NSAttributedString.Key.font: UIFont(name: "Georgia-Bold", size: 23)!,NSAttributedString.Key.foregroundColor: UIColor.black]
        
        
        //        self.navigationController?.navigationBar.backIndicatorTransitionMaskImage = UIImage()
        //        self.navigationController?.navigationBar.backIndicatorImage = UIImage()
        
    }

}
