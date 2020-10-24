//
//  myPageViewController.swift
//  ios
//
//  Created by 이동연 on 14/09/2020.
//  Copyright © 2020 litong. All rights reserved.
//

import UIKit

class myPageViewController: BaseViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    
    var finishedTestImg = ["testIveFinished.png","testIveFinished.png","testIveFinished.png","testIveFinished.png","testIveFinished.png","testIveFinished.png","testIveFinished.png","testIveFinished.png","testIveFinished.png"]
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return finishedTestImg.count
    }
    
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        var cell : testIveFinishedCollectionViewCell!
        
        cell = collectionView.dequeueReusableCell(withReuseIdentifier: "finishedTestCell", for: indexPath)as? testIveFinishedCollectionViewCell
        cell.testFinishedImg.image = UIImage(named: finishedTestImg[indexPath.row])
        return cell

    }
    
    
    
    @IBOutlet weak var whatTestIDid: UIView!
    @IBOutlet weak var mbtiColor1: UIView!
    @IBOutlet weak var mbtiColor2: UIView!
    
    @IBOutlet weak var testFinishedCollectionView: UICollectionView!
    
    @IBOutlet weak var stateView: UIView!
    @IBOutlet weak var imposingView: UIView!
    
    @IBOutlet weak var statevw: UIView!
    @IBOutlet weak var whoAmIView: UIView!
    
    @IBOutlet weak var profile1: UIView!
    
    @IBOutlet weak var profile2: UIView!
    
    @IBOutlet weak var profile3: UIView!
    
    @IBOutlet weak var profile4: UIView!
    
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
        
        self.stateView.layer.cornerRadius = 16
        self.imposingView.layer.cornerRadius = 16
        
        self.statevw.layer.cornerRadius = 16
        self.statevw.layer.borderColor = UIColor.lightGray.cgColor
        
        self.statevw.layer.borderWidth = 0.3
        
        self.whoAmIView.layer.cornerRadius = 16
        
        self.profile1.layer.cornerRadius = 7
        self.profile2.layer.cornerRadius = 7
        self.profile3.layer.cornerRadius = 7
        self.profile4.layer.cornerRadius = 7


        
        testFinishedCollectionView.dataSource = self
        testFinishedCollectionView.delegate = self
        let nibName = UINib(nibName: "testIveFinishedCollectionViewCell", bundle: nil)
        testFinishedCollectionView.register(nibName, forCellWithReuseIdentifier: "finishedTestCell")
        
    }


    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.navigationController?.isNavigationBarHidden = false
        self.navigationItem.title = "내 프로필"
        self.navigationItem.backBarButtonItem?.tintColor = .black

        //   프로필에 점점점 메뉴
//        self.navigationController?.navigationBar.backItem = .black
        self.navigationController?.navigationBar.backIndicatorImage = UIImage(named: "dismissBtn")
        self.navigationController?.navigationBar.backIndicatorTransitionMaskImage = UIImage(named: "dismissBtn")
        self.navigationItem.backBarButtonItem = UIBarButtonItem(title: "", style: .plain
            , target: nil, action: nil)
        self.navigationController?.navigationBar.shadowImage = UIImage()
        self.navigationController?.navigationBar.isTranslucent = false
        self.navigationController?.navigationBar.titleTextAttributes = [NSAttributedString.Key.font: UIFont(name: "Georgia-Bold", size: 23)!,NSAttributedString.Key.foregroundColor: UIColor.black]
    }
    @IBAction func profilePicFixBtnPressed(_ sender: UIButton) {
        navigationController?.pushViewController(myProfilePicFixViewController(), animated: true)

    }
    
    
//    navigationController!.pushViewController(weavingViewController(), animated: true)
}
