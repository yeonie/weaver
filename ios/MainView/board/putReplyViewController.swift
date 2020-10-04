//
//  putReplyViewController.swift
//  ios
//
//  Created by 이동연 on 04/10/2020.
//  Copyright © 2020 Jerry Jung. All rights reserved.
//

import UIKit

class putReplyViewController: UIViewController {

    //   버튼 두개
    //     Create left UIBarButtonItem.
    lazy var leftButton: UIBarButtonItem = {
        let button = UIBarButtonItem(image: UIImage(named: "icExit"), style: .plain, target: self, action: #selector(buttonPressed(_:)))
        button.tag = 1
        return button
        
    }()
    
    //     Button event.
    @objc private func buttonPressed(_ sender: Any) {
        if let button = sender as? UIBarButtonItem {
            switch button.tag {
            case 1:
                self.navigationController!.pushViewController(myAppFixViewController(), animated: true)
            default:
                print("error")
            } } }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //        여기가 추가한부분2
        // Set the background color to Green.
        //        self.view.backgroundColor = .green
        // Set the title of NavigationController.
        //        self.title = "navigationVC"
        // Set it to the left of the navigation bar.
        self.navigationItem.leftBarButtonItem = self.leftButton
        // Add back button on view self.view.addSubview(self.backButton)
        
    }
    
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.navigationController?.isNavigationBarHidden = false
        self.navigationItem.title = "댓글 쓰기"
        
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
    
    

}
