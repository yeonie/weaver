//
//  putReplyViewController.swift
//  ios
//
//  Created by 이동연 on 04/10/2020.
//  Copyright © 2020 litong. All rights reserved.
//

import UIKit

class putReplyViewController: BaseViewController, UITableViewDataSource, UITableViewDelegate {
    
    var nickName = ["동탄 노인정 쌀도둑","김찬호"]
    var userProfile = ["userdefalutImage.png","userdefalutImage.png"]
    var replyContents = ["개 레전드 미친련","오랜만에 학교에서 후식으로 나온 귤 아니 벌써 귤이 나오다니 얼굴을 스치는 바람이 좀 차졌다 생각은 했지만 벌써 이렇게 시간이 지났을 줄이야~"]
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        //        return carArray.count
        return nickName.count
    }
    
    @IBOutlet weak var feed: UIView!
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "replyCell", for: indexPath) as! replyCellTableViewCell
        cell.userNickname.text = nickName[indexPath.row]
        cell.replyContents.text = replyContents[indexPath.row]
        cell.userImage.image = UIImage(named: "userProfileDefault")
        
        cell.userNickname.sizeToFit()
        cell.replyContents.sizeToFit()
        cell.userImage.sizeToFit()
        
        
        
        return cell
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    @IBOutlet weak var chatView: UIView!
    @IBOutlet weak var replyFeedView: UITableView!
   
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        chatView.layer.cornerRadius = 0.44*chatView.bounds.size.height
        
        
        //테이블뷰
        let nibName = UINib(nibName: "replyCellTableViewCell", bundle: nil)
        replyFeedView.register(nibName, forCellReuseIdentifier: "replyCell")
        replyFeedView.rowHeight = 80
        replyFeedView.delegate = self
        replyFeedView.dataSource = self
        
    }
    
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.navigationController?.isNavigationBarHidden = false
        self.navigationItem.title = "댓글 쓰기"
        self.navigationController?.navigationBar.setBackgroundImage(UIImage(named: ""), for: .default)
        self.navigationController?.navigationBar.backIndicatorImage = UIImage(named: "dismissBtn")
        self.navigationController?.navigationBar.backIndicatorTransitionMaskImage = UIImage(named: "dismissBtn")
        self.navigationItem.backBarButtonItem = UIBarButtonItem(title: nil, style: .plain
            , target: nil, action: nil)
        self.navigationController?.navigationItem.backBarButtonItem?.title = ""
        self.navigationItem.backBarButtonItem?.tintColor = .black
        self.navigationController?.navigationBar.tintColor = .black
        self.navigationController?.navigationBar.topItem?.title = ""
        self.navigationController?.navigationBar.titleTextAttributes = [NSAttributedString.Key.font: UIFont(name: "Georgia-Bold", size: 23)!,NSAttributedString.Key.foregroundColor: UIColor.black]
        
        
    }
    
    
    

}
