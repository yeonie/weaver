//
//  typeTestViewController.swift
//  ios
//
//  Created by 이동연 on 29/09/2020.
//  Copyright © 2020 litong. All rights reserved.
//

import UIKit

class typeTestViewController: BaseViewController, UICollectionViewDelegate, UICollectionViewDataSource{
    
    var typeTestImage = ["typeTest1.png","typeTest2.png","typeTest3.png","typeTest4.png","typeTest1.png","typeTest2.png","typeTest3.png","typeTest4.png","typeTest1.png","typeTest2.png","typeTest3.png","typeTest4.png"]
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return typeTestImage.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        var cell :typeTestCollectionViewCell!
        cell = collectionView.dequeueReusableCell(withReuseIdentifier: "typeTestCell", for: indexPath) as? typeTestCollectionViewCell
        cell.typeTestImg.image = UIImage(named: typeTestImage[indexPath.row])
        cell.typeTestImg.sizeToFit()
        return cell
    }
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        navigationController!.pushViewController(BoardHomeViewController(), animated: true)
        print("씨발 왜안댐?")
    }
    

    @IBOutlet weak var typeTest: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let nibName = UINib(nibName: "typeTestCollectionViewCell", bundle: nil)
        typeTest.register(nibName, forCellWithReuseIdentifier: "typeTestCell")
        typeTest.dataSource = self
        typeTest.delegate = self

        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        self.navigationController?.navigationBar.backgroundColor = UIColor.init(red: 255/255, green: 255/255, blue: 255/255, alpha: 1.0)
        self.navigationItem.title = "유형테스트"
        navigationController?.navigationBar.isHidden = false
        self.navigationController?.isNavigationBarHidden = false
        self.navigationController?.navigationBar.setBackgroundImage(UIImage(), for: .default)
        self.navigationItem.backBarButtonItem = UIBarButtonItem(title: "", style: .plain
            , target: nil, action: nil)
        self.navigationController?.navigationBar.backIndicatorImage = UIImage(named: "dismissBtn")
        self.navigationController?.navigationBar.backIndicatorTransitionMaskImage = UIImage(named: "")
        self.navigationController?.navigationBar.isTranslucent = true
        self.navigationController?.navigationBar.tintColor = .black
        //네비게이션 바 그림자
        self.navigationController?.navigationBar.shadowImage = UIImage()
        self.navigationController?.navigationBar.topItem?.title = ""
        self.navigationController?.navigationBar.titleTextAttributes = [NSAttributedString.Key.font: UIFont(name: "Georgia-Bold", size: 23)!,NSAttributedString.Key.foregroundColor: UIColor.black]
        
    }

}
