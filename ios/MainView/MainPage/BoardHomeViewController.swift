//
//  BoardHomeViewController.swift
//  ios
//
//  Created by 이동연 on 12/09/2020.
//  Copyright © 2020 Jerry Jung. All  rights reserved.
//

import UIKit

class BoardHomeViewController: BaseViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    
    var namedTitle = ["친구한테 싫은소리 해?", "아 지겹다", "행복 수비", "와 이거 진짜 존나 할거 많네"]
    var content = ["응 하지", "근데 언젠가는 끝나겟지","이번 학기 초부터 친해졌는데 친구한테 버릇하나가 있거든? 이게 가끔 빈정상하는데... 이제와서 말하기도 좀 그렇고 얘 infp라 상처받을듯?이번 학기 초부터 친해졌는데 친구한테 버릇하나가 있거든? 이게 가끔 빈정상하는데... 이제와서 말하기도 좀 그렇고 얘 infp라 상처받을듯?이번 학기 초부터 친해졌는데 친구한테 버릇하나가 있거든? 이게 가끔 빈정상하는데... 이제와서 말하기도 좀 그렇고 얘 infp라 상처받을듯?" ,"돈 다잃음"]
    var userImageForBoard = ["howAboutMyType2.png","howAboutMyType1.png","howAboutMyType1.png","howAboutMyType1.png","howAboutMyType2.png","howAboutMyType1.png","howAboutMyType2.png"]

    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if collectionView == namedBoard{
            return namedTitle.count
        }
        if collectionView == howAboutMyType{
            return userImageForBoard.count
        }
        return namedTitle.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "namedBoardCell", for: indexPath) as! namedBoardCollectionViewCell
        cell.namedBoardTitle.text = namedTitle[indexPath.row]
        cell.namedBoardContent.text = content[indexPath.row]
        
        cell.namedBoardTitle.sizeToFit()
        cell.namedBoardContent.sizeToFit()
        return cell
    }

    

    @IBOutlet weak var attributedString: UILabel!
    var queryText:String?
    
    @IBOutlet weak var howAboutMyType: UICollectionView!
    @IBOutlet weak var namedBoard: UICollectionView!
    override func viewDidLoad() {
        super.viewDidLoad()
        //바텀 탭바 모양 check
//        view.backgroundColor = .blue
        let nibName = UINib(nibName: "namedBoardCollectionViewCell", bundle: nil)
        
        namedBoard.dataSource = self
        namedBoard.delegate = self
        namedBoard.register(nibName, forCellWithReuseIdentifier: "namedBoardCell")
        
//        howAboutMyType.dataSource = self
//        howAboutMyType.delegate = self
//        howAboutMyType.register(nibName, forCellWithReuseIdentifier: "howAboutMyTypeCell")


        
        //글꼴
        let attributedString = NSMutableAttributedString(string: "ESTJ는 지금", attributes: [
//            .font: UIFont(name: "NotoSans-Bold", size: 20.0)!,
            :])
        attributedString.addAttribute(.foregroundColor, value: UIColor.black, range: NSRange(location: 4, length: 4))
        
        
        
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
