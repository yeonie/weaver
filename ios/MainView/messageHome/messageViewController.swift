//
//  messageViewController.swift
//  ios
//
//  Created by 이동연 on 12/09/2020.
//  Copyright © 2020 litong. All rights reserved.
//

import UIKit

class messageViewController: BaseViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var matchingMessageTableView: UITableView!
    
    @IBOutlet weak var boardMessageTableView: UITableView!
    
    
    //매칭 하드코딩
    let nickAryForMatching = ["김위버", "과몰입 인팁", "팬더", "기적의 고삼"]
    var userImageForMatching = ["defalutImage.png", "defalutImage.png", "defalutImage.png", "defalutImage.png"]
    let messageAryForMatching = ["전에 네가 말한 영화 봤어!", "과몰입인팁 님과 친구가 되었어요!","우리 mbti 궁합봤는데 천생연분이다 ㅋㅋ","ㅇㅇ 굿나잇"]
    //게시판 하드코딩
    let nickAryForBoard = ["동탄노인정쌀도둑","큐평이평알큐평","강화도조약","을씨발년","보헤민아 랩소디","곽두철","강하늘","동탄노인정쌀도둑","큐평이평알큐평","강화도조약","을씨발년","보헤민아 랩소디","곽두철","강하늘"]
    var userImageForBoard = ["defalutImage.png","defalutImage.png","defalutImage.png","defalutImage.png","defalutImage.png","defalutImage.png","defalutImage.png","defalutImage.png","defalutImage.png","defalutImage.png","defalutImage.png","defalutImage.png","defalutImage.png","defalutImage.png"]
    let messageAryForBoard = ["그건 아니지 ㅂ신아","정글 차이지 정글러들 다 ISTP임","탑신병자 망나니 수준 ㅋㅋㅋ","원딜왕자님들 특 estp임","너어는~ 번호가 뭐니","그냥 이체할때마다 쎄보이려고 이 이름으로 함","나 진짜 강하늘인데?","그건 아니지 ㅂ신아","정글 차이지 정글러들 다 ISTP임","탑신병자 망나니 수준 ㅋㅋㅋ","원딜왕자님들 특 estp임","너어는~ 번호가 뭐니","그냥 이체할때마다 쎄보이려고 이 이름으로 함","나 진짜 강하늘인데?"]
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        if tableView.tag == 1{
            return nickAryForMatching.count
        }
        if tableView.tag == 2{
            return nickAryForBoard.count
        }
        return 0
        }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        var firstcell : matchingMessageTableViewCell!
        var secondcell : boardMessageTableViewCell!
        
        switch tableView {
        case self.matchingMessageTableView:
            
            firstcell = tableView.dequeueReusableCell(withIdentifier: "matchingMessageCell", for: indexPath) as? matchingMessageTableViewCell
            firstcell.userNickname.text = nickAryForMatching[indexPath.row]
            firstcell.userchat.text = messageAryForMatching[indexPath.row]
            firstcell.userImage.image = UIImage(named: "userProfileDefault")
            
            firstcell.userNickname.sizeToFit()
            firstcell.userchat.sizeToFit()
            firstcell.userImage.sizeToFit()
            return firstcell
        case self.boardMessageTableView:
            secondcell = tableView.dequeueReusableCell(withIdentifier: "boardMessageCell", for: indexPath) as? boardMessageTableViewCell
            secondcell.userNicknameFB.text = nickAryForBoard[indexPath.row]
            secondcell.userChatFB.text = messageAryForBoard[indexPath.row]
            secondcell.userImageFB.image = UIImage(named: "userProfileDefault")
            
            secondcell.userNicknameFB.sizeToFit()
            secondcell.userChatFB.sizeToFit()
            secondcell.userImageFB.sizeToFit()
            return secondcell
        //            firstcell.howLbl.isHidden = true
        default:
            return UITableViewCell()

        }
    }
    
    
    

    @IBOutlet weak var matchingBar: UIView!
    @IBOutlet weak var boardBar: UIView!
    
    @IBOutlet weak var matchingChatSet: UIView!
    @IBOutlet weak var boardChatSet: UIView!
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.navigationBar.isHidden = false
        //첨에 매칭 메세지가 떠야해서 게시판건 지워준다.
        self.boardBar.isHidden = true
        self.matchingBar.isHidden=false
        self.boardChatSet.isHidden = true
        self.matchingChatSet.isHidden = false
        navigationController?.navigationBar.isHidden = true
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let nibName1 = UINib(nibName: "matchingMessageTableViewCell", bundle: nil)
        let nibName2 = UINib(nibName: "boardMessageTableViewCell", bundle: nil)
        
        matchingMessageTableView.delegate = self
        matchingMessageTableView.dataSource = self
        matchingMessageTableView.rowHeight = 74
        matchingMessageTableView.register(nibName1, forCellReuseIdentifier: "matchingMessageCell")
        matchingMessageTableView.register(UINib(nibName: "matchingMessageTableViewCell", bundle: nil),forCellReuseIdentifier: "matchingMessageCell")
        
        
        boardMessageTableView.delegate = self
        boardMessageTableView.dataSource = self
        boardMessageTableView.rowHeight = 74
        boardMessageTableView.register(nibName2, forCellReuseIdentifier: "boardMessageCell")
        boardMessageTableView.register(UINib(nibName: "boardMessageTableViewCell", bundle: nil),forCellReuseIdentifier: "boardMessageCell")
        
        matchingMessageTableView.tag = 1
        boardMessageTableView.tag = 2
        
//        boardMessageTableView.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
        
        
//        let nibName = UINib(nibName: "boardMessageTableViewCell", bundle: nil)
//        boardMessageTableView.register(nibName, forCellReuseIdentifier: "boardMessageCell")
        
        // Do any additional setup after loading the view.
    }
    
    


    @IBAction func matchinBtnClicked(_ sender: UIButton) {
        self.matchingBar.isHidden = false
        self.boardBar.isHidden=true
        self.boardChatSet.isHidden = true
        self.matchingChatSet.isHidden = false
    }
    
    @IBAction func boardBtnClicked(_ sender: UIButton) {
        self.matchingBar.isHidden=true
        self.boardBar.isHidden=false
        self.boardChatSet.isHidden = false
        self.matchingChatSet.isHidden = true

    }
    
}
