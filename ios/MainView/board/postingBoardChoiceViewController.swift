//
//  postingBoardChoiceViewController.swift
//  ios
//
//  Created by 이동연 on 24/10/2020.
//  Copyright © 2020 litong. All rights reserved.
//

import UIKit

class postingBoardChoiceViewController: UIViewController {
    
    @IBOutlet weak var boardSelectType: UIImageView!
    
    @IBOutlet weak var boardSelectFree: UIImageView!
    
    @IBOutlet weak var boardSelectAnony: UIImageView!
    
    @IBOutlet weak var boardSelectTeen: UIImageView!
    
    @IBOutlet weak var boardSelect2Teen: UIImageView!
    
    @IBOutlet weak var boardSelect3Teen: UIImageView!
    
    var boardType = ["freeBoard"]
    
    @IBAction func typeBoardPsd(_ sender: UIButton) {
        boardSelectType.isHidden = false
        boardSelectFree.isHidden = true
        boardSelectAnony.isHidden = true
        boardSelectTeen.isHidden = true
        boardSelect2Teen.isHidden = true
        boardSelect3Teen.isHidden = true
        boardType = ["ESTJ"]
    }
    
    @IBAction func freeBoardPsd(_ sender: UIButton) {
        boardSelectType.isHidden = true
        boardSelectFree.isHidden = false
        boardSelectAnony.isHidden = true
        boardSelectTeen.isHidden = true
        boardSelect2Teen.isHidden = true
        boardSelect3Teen.isHidden = true
        boardType = ["freeBoard"]
    }
    
    @IBAction func anonyBoardPsd(_ sender: Any) {
        boardSelectType.isHidden = true
        boardSelectFree.isHidden = true
        boardSelectAnony.isHidden = false
        boardSelectTeen.isHidden = true
        boardSelect2Teen.isHidden = true
        boardSelect3Teen.isHidden = true
        boardType = ["anonyBoard"]
    }
    
    @IBAction func teenBoardPsd(_ sender: Any) {
        
        boardSelectType.isHidden = true
        boardSelectFree.isHidden = true
        boardSelectAnony.isHidden = true
        boardSelectTeen.isHidden = false
        boardSelect2Teen.isHidden = true
        boardSelect3Teen.isHidden = true
        boardType = ["teenBoard"]
    }
    
    @IBAction func teen2BoardPsd(_ sender: UIButton) {
        boardSelectType.isHidden = true
        boardSelectFree.isHidden = true
        boardSelectAnony.isHidden = true
        boardSelectTeen.isHidden = true
        boardSelect2Teen.isHidden = false
        boardSelect3Teen.isHidden = true
        boardType = ["2teenBoard"]
    }
    
    @IBAction func teen3BoardPsd(_ sender: Any) {
        boardSelectType.isHidden = true
        boardSelectFree.isHidden = true
        boardSelectAnony.isHidden = true
        boardSelectTeen.isHidden = true
        boardSelect2Teen.isHidden = true
        boardSelect3Teen.isHidden = false
        boardType = ["3teenBoard"]
    }
    
    
    
    
    
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
                self.navigationController!.pushViewController(putFeedViewController(), animated: true)
            default:
                print("error")
            } } }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Set it to the right of the navigation bar.
        self.navigationItem.rightBarButtonItem = self.rightButton
        
        
        
        
        boardSelectType.isHidden = true
        boardSelectFree.isHidden = true
        boardSelectAnony.isHidden = true
        boardSelectTeen.isHidden = true
        boardSelect2Teen.isHidden = true
        boardSelect3Teen.isHidden = true

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
