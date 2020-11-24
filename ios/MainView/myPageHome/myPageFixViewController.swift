//
//  myPageFixViewController.swift
//  ios
//
//  Created by 이동연 on 28/09/2020.
//  Copyright © 2020 litong. All rights reserved.
//

import UIKit

class myPageFixViewController: BaseViewController {
    
    var ownTypeChoiceViewController : OwnTypeChoiceViewController? = nil
    var scViewController : SplashChoiceViewController? = nil

    @IBOutlet weak var typeLabel: UILabel!
    @IBOutlet weak var nicknameLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        guard let OwnTypeChoiceViewController = self.ownTypeChoiceViewController else { return }
        guard let scViewController = self.scViewController else {return}
        typeLabel.text = OwnTypeChoiceViewController.personality[0]
        nicknameLabel.text = scViewController.nicknameBoxSU.text!
        
        
        
        self.navigationController?.navigationBar.barTintColor = .white
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)

        self.navigationController?.isNavigationBarHidden = false
        self.navigationController?.navigationBar.isTranslucent = true

        self.navigationItem.title = "프로필 수정"
        //   프로필에 점점점 메뉴
        self.navigationController?.navigationBar.barTintColor = .white
        self.navigationController?.navigationBar.backIndicatorImage = UIImage(named: "dismissBtn")
        self.navigationController?.navigationBar.backIndicatorTransitionMaskImage = UIImage(named: "dismissBtn")
        self.navigationItem.backBarButtonItem = UIBarButtonItem(title: "", style: .plain
            , target: nil, action: nil)
        self.navigationItem.backBarButtonItem?.tintColor = .black
        self.navigationController?.navigationBar.shadowImage = UIImage()
        self.navigationController?.navigationBar.isTranslucent = true
        self.navigationController?.navigationBar.titleTextAttributes = [NSAttributedString.Key.font: UIFont(name: "Georgia-Bold", size: 23)!,NSAttributedString.Key.foregroundColor: UIColor.black]
        
        
    }
    
    
    @IBAction func myProfilePicFix(_ sender: UIButton) {
        navigationController?.pushViewController(myProfilePicFixViewController(), animated: true)
    }
    @IBAction func subProfilePicFixBtnPressed(_ sender: UIButton) {
        navigationController?.pushViewController(myProfilePicFixViewController(), animated: true)
    }
    
    @IBAction func nicknameFixBtnPressed(_ sender: UIButton) {
        navigationController?.pushViewController(nicknameCallViewController(), animated: true)
    }
    @IBAction func commenFixBtnPressed(_ sender: UIButton) {
        navigationController?.pushViewController(commentFIxViewController(), animated: true)
    }
    @IBAction func myTypePressed(_ sender: UIButton) {
        navigationController?.pushViewController(typeFixViewController(), animated: true)
    }
    
    @IBAction func whoAmIPressed(_ sender: UIButton) {
        navigationController?.pushViewController(whoAmIViewController(), animated: true)
    }
    @IBAction func interestedInFixPressed(_ sender: UIButton) {
        navigationController?.pushViewController(interestedInViewController(), animated: true)
    }
    
    @IBAction func logouBtnPressed(_ sender: UIButton) {
        let window = UIApplication.shared.windows.first { $0.isKeyWindow }
        window?.rootViewController = SplashChoiceViewController()

    }
}
