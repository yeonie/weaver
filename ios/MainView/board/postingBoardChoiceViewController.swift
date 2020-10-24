//
//  postingBoardChoiceViewController.swift
//  ios
//
//  Created by 이동연 on 24/10/2020.
//  Copyright © 2020 Jerry Jung. All rights reserved.
//

import UIKit

class postingBoardChoiceViewController: UIViewController {
    
    
    //   버튼 두개
    //     Create left UIBarButtonItem.
    
    //     Create right UIBarButtonItem.
    lazy var rightButton: UIBarButtonItem = {
        let button = UIBarButtonItem(title: "확인", style: .plain, target: self, action: #selector(buttonPressed(_:)))
        self.navigationController?.navigationBar.tintColor = .black
        button.tag = 2
        return button
        
    }()
    
    @objc private func buttonPressed(_ sender: Any) {
        if let button = sender as? UIBarButtonItem {
            switch button.tag {
            case 2:
                self.navigationController!.pushViewController(myPageFixViewController(), animated: true)
            default:
                print("error")
            } } }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Set it to the right of the navigation bar.
        self.navigationItem.rightBarButtonItem = self.rightButton


        // Do any additional setup after loading the view.
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.navigationController?.isNavigationBarHidden = false
        self.navigationItem.title = "게시판 선택"
        
        //   프로필에 점점점 메뉴
        //        self.navigationController?.navigationBar.backItem = .black
        self.navigationController?.navigationBar.backIndicatorImage = UIImage(named: "icExit")
        self.navigationController?.navigationBar.backIndicatorTransitionMaskImage = UIImage(named: "icExit")
        self.navigationItem.backBarButtonItem = UIBarButtonItem(title: "", style: .plain
            , target: nil, action: nil)
        self.navigationController?.navigationBar.shadowImage = UIImage()
        self.navigationController?.navigationBar.isTranslucent = false
        self.navigationController?.navigationBar.titleTextAttributes = [NSAttributedString.Key.font: UIFont(name: "Georgia-Bold", size: 23)!,NSAttributedString.Key.foregroundColor: UIColor.black]
    }

}
