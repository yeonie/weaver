//
//  ESFPViewController.swift
//  ios
//
//  Created by 이동연 on 26/10/2020.
//  Copyright © 2020 litong. All rights reserved.
//

import UIKit

class ESFPViewController: BaseViewController, UITableViewDataSource, UITableViewDelegate {

    let carArray = ["Benz-GLS","Benz-SLS","Benz-G-barin","Benz-GT 43","BMW X6"]
    
    let contentTitle = ["estj의 오지는 계획성","폰팔이 특징","이 직업은 이게 맞는 것 같더라","ㅋㅋ루 ㅋㅋ 삥뽕","강하늘","지푸라기라도 잡고싶은 짐승들"]
    
    let nickname = ["동탄노인정 쌀도둑", "엄준식", "굄우지", "개맛에 눈뜬 푸틴", "가화만사성"]
    
    let date = ["2020.09.25","2020.09.26","2020.09.26","2020.09.25","2020.09.25","2020.09.25"]
    
    let totalContent = ["제가 사랑했던","오빠는 미친새끼야","찰떡궁합","estj의 오지는 계획성, 그리고 짜증나는 성향","인프피만나본 썰","do you wanna build a snowman~"]
    
    var contentImage = ["estjzzal.png", "feedEX.png","estjzzal.png","feedEX.png", "estjzzal.png"]
    
    let likeNumb = ["5","532","43","5","3"]
    let replyNumb = ["54","1212","6","29","0"]
    
    
    //    var profileImageList = ["dismissBtn.png", "dismissBtn.png", "dismissBtn.png", "dismissBtn.png", "dismissBtn.png"]
    
    
    
    @IBOutlet weak var ESFPfeedTableView: UITableView!
    
    
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        //        return carArray.count
        return 5
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "ESFPcell", for: indexPath) as! ESFPTableViewCell
        cell.contentTitle.text = contentTitle[indexPath.row]
        cell.nickname.text = nickname[indexPath.row]
        cell.date.text = date[indexPath.row]
        cell.totalContent.text = totalContent[indexPath.row]
        cell.likeNumb.text = likeNumb[indexPath.row]
        cell.replyNumb.text = replyNumb[indexPath.row]
        cell.profileImage.image = UIImage(named: "userProfileDefault")
        cell.contentImage.image = UIImage(named: contentImage[indexPath.row])
        
        cell.contentTitle.sizeToFit()
        cell.nickname.sizeToFit()
        cell.date.sizeToFit()
        cell.totalContent.sizeToFit()
        cell.likeNumb.sizeToFit()
        cell.replyNumb.sizeToFit()
        cell.contentTitle.sizeToFit()
        
        
        
        return cell
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let nibName = UINib(nibName: "ESFPTableViewCell", bundle: nil)
        ESFPfeedTableView.register(nibName, forCellReuseIdentifier: "ESFPcell")
        ESFPfeedTableView.rowHeight = 335
        ESFPfeedTableView.dataSource = self
        ESFPfeedTableView.delegate = self
        
    }
    
    lazy var rightButton: UIBarButtonItem = {
        let button = UIBarButtonItem(image: UIImage(named: "boardSearchIc"), style: .plain, target: self, action: #selector(buttonPressed(_:)))
        //        self.navigationController?.navigationBar.tintColor = .black
        button.tag = 2
        return button
        
    }()
    
    //     Button event.
    @objc private func buttonPressed(_ sender: Any) {
        if let button = sender as? UIBarButtonItem {
            switch button.tag {
            case 2:
                self.navigationController!.pushViewController(myPageFixViewController(), animated: true)
            default:
                print("error")
            } } }
    
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        
        
        //네비게이션 바
        // Set it to the right of the navigation bar.
        self.navigationItem.rightBarButtonItem = self.rightButton
        self.navigationController?.isNavigationBarHidden = false
        self.navigationItem.title = "ESFP"
        //        self.navigationController?.navigationBar.setBackgroundImage(UIImage(named: "whiteBackground"), for: .default)
        self.navigationController?.navigationBar.backgroundColor = UIColor.init(red: 248/255, green: 146/255, blue: 111/255, alpha: 1.0)
        //        self.navigationController?.navigationBar.backgroundColor = .black
        //   프로필에 점점점 메뉴
        self.navigationController?.navigationBar.backIndicatorImage = UIImage(named: "dismissBtn")
        self.navigationController?.navigationBar.backIndicatorTransitionMaskImage = UIImage(named: "dismissBtn")
        self.navigationItem.backBarButtonItem = UIBarButtonItem(title: "", style: .plain
            , target: nil, action: nil)
        self.navigationController?.navigationBar.shadowImage = UIImage()
        self.navigationController?.navigationBar.isTranslucent = true
        self.navigationController?.navigationBar.titleTextAttributes = [NSAttributedString.Key.font: UIFont(name: "Montserrat-Bold", size: 23)!,NSAttributedString.Key.foregroundColor: UIColor.black]
        
    }
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(true)
        self.navigationController?.navigationBar.backgroundColor = UIColor.init(red: 255/255, green: 255/255, blue: 255/255, alpha: 1.0)
    }
}
