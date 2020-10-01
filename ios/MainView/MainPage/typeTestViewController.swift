//
//  typeTestViewController.swift
//  ios
//
//  Created by 이동연 on 29/09/2020.
//  Copyright © 2020 Jerry Jung. All rights reserved.
//

import UIKit

class typeTestViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        self.navigationItem.title = "유형테스트"
        navigationController?.navigationBar.isHidden = false
        self.navigationController?.isNavigationBarHidden = false
        self.navigationController?.navigationBar.setBackgroundImage(UIImage(), for: .default)
        self.navigationItem.backBarButtonItem = UIBarButtonItem(title: "", style: .plain
            , target: nil, action: nil)
        self.navigationController?.navigationBar.backIndicatorImage = UIImage(named: "dismissBtn")
        self.navigationController?.navigationBar.backIndicatorTransitionMaskImage = UIImage(named: "")
        self.navigationController?.navigationBar.isTranslucent = true
        self.navigationController?.navigationBar.tintColor = .black
        //네비게이션 바 그림자
        self.navigationController?.navigationBar.shadowImage = UIImage()
        self.navigationController?.navigationBar.topItem?.title = ""
        self.navigationController?.navigationBar.titleTextAttributes = [NSAttributedString.Key.font: UIFont(name: "Georgia-Bold", size: 23)!,NSAttributedString.Key.foregroundColor: UIColor.black]
        
    }

}
