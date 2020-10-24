//
//  myAppFixViewController.swift
//  ios
//
//  Created by 이동연 on 01/10/2020.
//  Copyright © 2020 litong. All rights reserved.
//

import UIKit

class myAppFixViewController: BaseViewController {
    
    
    @IBOutlet weak var everyFriendBtn: UIButton!
    @IBOutlet weak var sameSexFriendBtn: UIButton!
    @IBOutlet weak var difSexFriendBtn: UIButton!
    
    
    
    @IBAction func everyFriendBtnPressed(_ sender: Any) {
        
        everyFriendBtn.setImage(UIImage(named: "everyFriendOn"), for : .normal)
        sameSexFriendBtn.setImage(UIImage(named: "sameSexFriendOff"), for : .normal)
        difSexFriendBtn.setImage(UIImage(named: "difSexFriendOff"), for : .normal)
        
        
    }
    @IBAction func sameSexFriendBtnPressed(_ sender: UIButton) {
        
        everyFriendBtn.setImage(UIImage(named: "everyFriendOff"), for : .normal)
        sameSexFriendBtn.setImage(UIImage(named: "sameSexFriendOn"), for : .normal)
        difSexFriendBtn.setImage(UIImage(named: "difSexFriendOff"), for : .normal)
    }
    @IBAction func difSexBtnPressed(_ sender: UIButton) {
        
        everyFriendBtn.setImage(UIImage(named: "everyFriendOff"), for : .normal)
        sameSexFriendBtn.setImage(UIImage(named: "sameSexFriendOff"), for : .normal)
        difSexFriendBtn.setImage(UIImage(named: "difSexFriendOn"), for : .normal)
        
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        everyFriendBtn.setImage(UIImage(named: "everyFriendOn"), for : .normal)
        // Do any additional setup after loading the view.
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        self.navigationController?.isNavigationBarHidden = false
        self.navigationItem.title = "더보기"
        self.navigationController?.navigationBar.setBackgroundImage(UIImage(named: "whiteBackground"), for: .default)
        self.navigationItem.backBarButtonItem?.tintColor = .black
        //   프로필에 점점점 메뉴
        self.navigationController?.navigationBar.backIndicatorImage = UIImage(named: "icExit")
        self.navigationController?.navigationBar.backIndicatorTransitionMaskImage = UIImage(named: "dismissBtn")
        self.navigationItem.backBarButtonItem = UIBarButtonItem(title: "", style: .plain
            , target: nil, action: nil)
        self.navigationController?.navigationBar.shadowImage = UIImage()
        self.navigationController?.navigationBar.isTranslucent = false
        self.navigationController?.navigationBar.titleTextAttributes = [NSAttributedString.Key.font: UIFont(name: "Georgia-Bold", size: 23)!,NSAttributedString.Key.foregroundColor: UIColor.black]
        
        
    }

}
