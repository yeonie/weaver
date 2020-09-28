//
//  matchingHomeViewController.swift
//  ios
//
//  Created by 이동연 on 14/09/2020.
//  Copyright © 2020 Jerry Jung. All rights reserved.
//

import UIKit

class matchingHomeViewController: BaseViewController {

    
    @IBOutlet weak var myProfileView: UIView!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.myProfileView.layer.cornerRadius=15
        self.myProfileView.layer.shadowColor = UIColor.orange.cgColor // 검정색 사용
        self.myProfileView.layer.masksToBounds = false
        self.myProfileView.layer.shadowOffset = CGSize(width: 0, height: 4) // 반경에 대해서 너무 적용이 되어서 4point 정도 ㅐ림.
        self.myProfileView.layer.shadowRadius = 8 // 반경?
        self.myProfileView.layer.shadowOpacity = 0.3 // alpha값입니다.
        


        // Do any additional setup after loading the view.
    }
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
        UINavigationBar.appearance().barTintColor = UIColor.white
        
        self.navigationController?.navigationBar.titleTextAttributes = [NSAttributedString.Key.font: UIFont(name: "Georgia-Bold", size: 23)!,NSAttributedString.Key.foregroundColor: UIColor.black]


        
        //        self.navigationController?.navigationBar.backIndicatorTransitionMaskImage = UIImage()
        //        self.navigationController?.navigationBar.backIndicatorImage = UIImage()

    }


    

}
