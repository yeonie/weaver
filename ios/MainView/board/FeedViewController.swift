//
//  FeedViewController.swift
//  ios
//
//  Created by 이동연 on 04/10/2020.
//  Copyright © 2020 litong. All rights reserved.
//

import UIKit

class FeedViewController: UIViewController {

    //   버튼 두개
    //     Create left UIBarButtonItem.
    lazy var leftButton: UIBarButtonItem = {
        let button = UIBarButtonItem(image: UIImage(named: "dismissBtn"), style: .plain, target: self, action: #selector(buttonPressed(_:)))
        button.tag = 1
        return button
        
    }()
    //     Create right UIBarButtonItem.
    lazy var rightButton: UIBarButtonItem = {
        let button = UIBarButtonItem(title: "신고하기", style: .plain, target: self, action: #selector(buttonPressed(_:)))
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
        
        //        여기가 추가한부분2
        // Set the background color to Green.
        //        self.view.backgroundColor = .green
        // Set the title of NavigationController.
        //        self.title = "navigationVC"
        // Set it to the left of the navigation bar.
        self.navigationItem.leftBarButtonItem = self.leftButton
        // Set it to the right of the navigation bar.
        self.navigationItem.rightBarButtonItem = self.rightButton
        // Add back button on view self.view.addSubview(self.backButton)
        
        
        
        
        
    }
    
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.navigationController?.isNavigationBarHidden = false
        self.navigationItem.title = ""
        
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
