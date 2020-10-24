//
//  matchingHomeViewController.swift
//  ios
//
//  Created by 이동연 on 14/09/2020.
//  Copyright © 2020 litong. All rights reserved.
//

import UIKit

class matchingHomeViewController: BaseViewController, UICollectionViewDataSource, UICollectionViewDelegate {
    
    var rcvImg = ["rcv1.png","rcv2.png","rcv1.png","rcv2.png"]
    var etcvImg = ["etcv1.png","etcv2.png","etcv1.png","etcv2.png","etcv1.png","etcv2.png","etcv1.png","etcv2.png"]
    var userImg = ["defalutImage.png", "defalutImage.png", "defalutImage.png", "defalutImage.png", "defalutImage.png", "defalutImage.png", "defalutImage.png", "defalutImage.png"]


    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if collectionView.tag == 1{
            return 4
        }
        if collectionView.tag == 2{
            return etcvImg.count
        }
        if collectionView.tag == 3{
            return userImg.count
        }
        return 0

    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        var firstcell : recommendationCollectionViewCell!
        var secondcell : equalTypeCollectionViewCell!
        var thirdcell : recentlyCollectionViewCell!
        
        switch collectionView{
            
        case self.recommendationCollectionView:
            
            firstcell = collectionView.dequeueReusableCell(withReuseIdentifier: "RCVcell", for: indexPath) as? recommendationCollectionViewCell
            firstcell.RCVimage.image = UIImage(named: rcvImg[indexPath.row])
            firstcell.RCVimage.sizeToFit()
            return firstcell
            
        case self.equalTypeCollectionView:
            
            secondcell = collectionView.dequeueReusableCell(withReuseIdentifier: "ETCcell", for: indexPath)as? equalTypeCollectionViewCell
            secondcell.ETCVimage.image = UIImage(named: etcvImg[indexPath.row])
            return secondcell
            
        case self.recentlyCollectionView:
            thirdcell = collectionView.dequeueReusableCell(withReuseIdentifier: "recentCell", for: indexPath) as? recentlyCollectionViewCell
            thirdcell.userProfile.image = UIImage(named: userImg[indexPath.row])
            return thirdcell
            
        default:
            return UICollectionViewCell()
            
        }
    }
    

    @IBOutlet weak var recentlyCollectionView: UICollectionView!
    
    @IBOutlet weak var recommendationCollectionView: UICollectionView!
    
    @IBOutlet weak var equalTypeCollectionView: UICollectionView!
    
    @IBOutlet weak var myProfileView: UIView!
    @IBOutlet weak var everyFriendBtn: UIButton!
    @IBOutlet weak var sameSexFriendBtn: UIButton!
    @IBOutlet weak var difSexFriendBtn: UIButton!
    @IBOutlet weak var userProfileView: UIView!
    
    
    @IBAction func everyFriendBtnPressed(_ sender: Any) {
        
        everyFriendBtn.setImage(UIImage(named: "everyFriendOn"), for : .normal)
        sameSexFriendBtn.setImage(UIImage(named: "sameSexFriendOff"), for : .normal)
        difSexFriendBtn.setImage(UIImage(named: "difSexFriendOff"), for : .normal)

        
    }
    @IBAction func sameSexFriendBtnPressed(_ sender: UIButton) {
        
        everyFriendBtn.setImage(UIImage(named: "everyFriendOff"), for : .normal)
        sameSexFriendBtn.setImage(UIImage(named: "sameSexFriendOn"), for : .normal)
        difSexFriendBtn.setImage(UIImage(named: "difSexFriendOff"), for : .normal)
    }
    @IBAction func difSexBtnPressed(_ sender: UIButton) {
        
        everyFriendBtn.setImage(UIImage(named: "everyFriendOff"), for : .normal)
        sameSexFriendBtn.setImage(UIImage(named: "sameSexFriendOff"), for : .normal)
        difSexFriendBtn.setImage(UIImage(named: "difSexFriendOn"), for : .normal)

    }
    
    
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.myProfileView.layer.cornerRadius=15
        self.myProfileView.layer.shadowColor = UIColor.orange.cgColor // 검정색 사용
        self.myProfileView.layer.masksToBounds = false
        self.myProfileView.layer.shadowOffset = CGSize(width: 0, height: 4) // 반경에 대해서 너무 적용이 되어서 4point 정도 ㅐ림.
        self.myProfileView.layer.shadowRadius = 8 // 반경?
        self.myProfileView.layer.shadowOpacity = 0.3 // alpha값입니다.
        everyFriendBtn.setImage(UIImage(named: "everyFriendOn"), for : .normal)
        
        
        self.userProfileView.layer.cornerRadius=15
        
        let nibName1 = UINib(nibName: "recommendationCollectionViewCell", bundle: nil)
        let nibName2 = UINib(nibName: "equalTypeCollectionViewCell", bundle: nil)
        let nibName3 = UINib(nibName: "recentlyCollectionViewCell", bundle: nil)
        
        
        recommendationCollectionView.dataSource = self
        recommendationCollectionView.delegate = self
        recommendationCollectionView.register(nibName1, forCellWithReuseIdentifier: "RCVcell")
        
        equalTypeCollectionView.dataSource = self
        equalTypeCollectionView.delegate = self
        equalTypeCollectionView.register(nibName2, forCellWithReuseIdentifier: "ETCcell")
        
        recentlyCollectionView.dataSource = self
        recentlyCollectionView.delegate = self
        recentlyCollectionView.register(nibName3, forCellWithReuseIdentifier: "recentCell")
        
        
        
        recommendationCollectionView.tag = 1
        equalTypeCollectionView.tag = 2
        recentlyCollectionView.tag = 3
        

    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.navigationController?.isNavigationBarHidden = false
        
        //        self.navigationController?.navigationBar.barTintColor = UIColor(displayP3Red: 0/255, green: 0/255, blue: 0/255, alpha: 0.01)
        self.navigationItem.title = "친구찾기"
        self.navigationItem.backBarButtonItem?.tintColor = .black
        
        //        self.navigationController?.navigationBar.barTintColor = UIColor(displayP3Red: 0/255, green: 0/255, blue: 0/255, alpha: 0.01)
        self.navigationController?.navigationBar.setBackgroundImage(UIImage(), for: .default)
        
        //        self.navigationController?.navigationItem.backBarButtonItem = UIBarButtonItem(image: UIImage(named: "dismissBtn"), style: .plain, target: nil, action: nil)
        
        self.navigationController?.navigationBar.backIndicatorImage = UIImage(named: ".clear")
        self.navigationController?.navigationBar.backIndicatorTransitionMaskImage = UIImage(named: ".clear")
        self.navigationItem.backBarButtonItem = UIBarButtonItem(title: "", style: .plain
            , target: nil, action: nil)
        self.navigationController?.navigationBar.shadowImage = UIImage()
        
        
        
        self.navigationController?.navigationBar.isTranslucent = false
        UINavigationBar.appearance().barTintColor = UIColor.white
        
        self.navigationController?.navigationBar.titleTextAttributes = [NSAttributedString.Key.font: UIFont(name: "Georgia-Bold", size: 23)!,NSAttributedString.Key.foregroundColor: UIColor.black]


        
        //        self.navigationController?.navigationBar.backIndicatorTransitionMaskImage = UIImage()
        //        self.navigationController?.navigationBar.backIndicatorImage = UIImage()

    }
    @IBAction func myProfileSetBtnPressed(_ sender: UIButton) {
        navigationController!.pushViewController(myPageFixViewController(), animated: true)

    }
    @IBAction func someoneSelectPressed(_ sender: UIButton) {
        navigationController!.pushViewController(othersProfileViewController(), animated: true)

    }
    

    

}
