//
//  whoAmIViewController.swift
//  ios
//
//  Created by 이동연 on 11/10/2020.
//  Copyright © 2020 litong. All rights reserved.
//

import UIKit

class whoAmIViewController: UIViewController {

    @IBOutlet weak var viewForRadius: UIView!
    @IBOutlet weak var viewForRadius2: UIView!
    @IBOutlet weak var viewForRadius3: UIView!
    @IBOutlet weak var viewForRadius4: UIView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.viewForRadius.layer.cornerRadius = 5
        self.viewForRadius2.layer.cornerRadius = 5
        self.viewForRadius3.layer.cornerRadius = 5
        self.viewForRadius4.layer.cornerRadius = 5

        
        self.navigationController?.isNavigationBarHidden = false
        self.navigationItem.title = "나는 어떤사람?"
        
        //        self.navigationController?.navigationBar.backgroundColor = UIColor.init(red: 30/255, green: 15/255, blue: 0/255, alpha: 1.0)
        self.navigationController?.navigationBar.barTintColor = .white
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
