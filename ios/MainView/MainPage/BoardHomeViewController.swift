//
//  BoardHomeViewController.swift
//  ios
//
//  Created by 이동연 on 12/09/2020.
//  Copyright © 2020 Jerry Jung. All  rights reserved.
//

import UIKit

class BoardHomeViewController: BaseViewController {

    @IBOutlet weak var attributedString: UILabel!
    var queryText:String?
    
    @IBOutlet weak var namedBoard: UICollectionView!
    override func viewDidLoad() {
        super.viewDidLoad()
        //바텀 탭바 모양 check
//        view.backgroundColor = .blue
        
        
        
        //글꼴
        let attributedString = NSMutableAttributedString(string: "ESTJ는 지금", attributes: [
//            .font: UIFont(name: "NotoSans-Bold", size: 20.0)!,
            :])
        attributedString.addAttribute(.foregroundColor, value: UIColor.black, range: NSRange(location: 4, length: 4))
        
        
        //스택뷰
//        let stackView = UIStackView()
//
//        stackView.axis = .horizontal
//        stackView.distribution = .fillEqually
//        stackView.alignment = .fill
//        stackView.spacing = 8
//        stackView.translatesAutoresizingMaskIntoConstraints = false
//
//        // stackView에 View 추가
//        stackView.addArrangedSubview(view)
//        // UIStackView Constraints
//        stackView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
//        stackView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
//        stackView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
//        stackView.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
//
//        stackView.arrangedSubviews[0].heightAnchor.constraint(equalTo: stackView.arrangedSubviews[0].widthAnchor).isActive = true
        
    }
    
    
    @IBAction func typeTestMoreBtnPressed(_ sender: UIButton) {
        navigationController!.pushViewController(typeTestViewController(), animated: true)
    }
    
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.navigationBar.isHidden = true
    }
    
//    
//    @IBAction func bottomTabMessageClicked(_ sender: UIButton) {
//        navigationController!.pushViewController(messageViewController(), animated: true)
//    }
//    @IBAction func bottomTabBoardClicked(_ sender: UIButton) {
//        navigationController!.pushViewController(BoardViewController(), animated: true)
//    }
//    
}
