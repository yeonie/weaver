//
//  myPageViewController.swift
//  ios
//
//  Created by 이동연 on 14/09/2020.
//  Copyright © 2020 Jerry Jung. All rights reserved.
//

import UIKit

class myPageViewController: BaseViewController {
    
    
    @IBOutlet weak var whatTestIDid: UIView!
    @IBOutlet weak var mbtiColor1: UIView!
    @IBOutlet weak var mbtiColor2: UIView!
    

//   버튼 두개
//     Create left UIBarButtonItem.
    lazy var leftButton: UIBarButtonItem = {
        let button = UIBarButtonItem(image: UIImage(named: "threeDots"), style: .plain, target: self, action: #selector(buttonPressed(_:)))
        button.tag = 1
        return button
        
    }()
//     Create right UIBarButtonItem.
    lazy var rightButton: UIBarButtonItem = {
        let button = UIBarButtonItem(image: UIImage(named: "myProfileSetBtn"), style: .plain, target: self, action: #selector(buttonPressed(_:)))
        self.navigationController?.navigationBar.tintColor = .black
        button.tag = 2
        return button
        
    }()
    
//     Button event.
    @objc private func buttonPressed(_ sender: Any) {
        if let button = sender as? UIBarButtonItem {
            switch button.tag {
            case 1:
                self.navigationController!.pushViewController(myAppFixViewController(), animated: true)
            case 2:
                self.navigationController!.pushViewController(myPageFixViewController(), animated: true)
            default:
                print("error")
        } } }
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        mbtiColor1.layer.cornerRadius = mbtiColor1.bounds.size.width/2
        mbtiColor2.layer.cornerRadius = mbtiColor1.bounds.size.width/2
        self.navigationItem.leftBarButtonItem = self.leftButton
        // Set it to the right of the navigation bar.
        self.navigationItem.rightBarButtonItem = self.rightButton
        // Add back button on view self.view.addSubview(self.backButton)
        
        self.whatTestIDid.layer.cornerRadius = 25
        
        

        
    }


    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.navigationController?.isNavigationBarHidden = false
        self.navigationItem.title = "내 프로필"
        
        self.navigationController?.navigationBar.setBackgroundImage(UIImage(named: "whiteBackground"), for: .default)
        //   프로필에 점점점 메뉴
        self.navigationController?.navigationBar.backIndicatorImage = UIImage(named: "dismissBtn")
        self.navigationController?.navigationBar.backIndicatorTransitionMaskImage = UIImage(named: "dismissBtn")
        self.navigationItem.backBarButtonItem = UIBarButtonItem(title: "", style: .plain
            , target: nil, action: nil)
        self.navigationController?.navigationBar.shadowImage = UIImage()
        self.navigationController?.navigationBar.isTranslucent = false
        self.navigationController?.navigationBar.titleTextAttributes = [NSAttributedString.Key.font: UIFont(name: "Georgia-Bold", size: 23)!,NSAttributedString.Key.foregroundColor: UIColor.black]
        
        
    }
    
    
//    navigationController!.pushViewController(weavingViewController(), animated: true)
}
