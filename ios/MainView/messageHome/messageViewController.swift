//
//  messageViewController.swift
//  ios
//
//  Created by 이동연 on 12/09/2020.
//  Copyright © 2020 Jerry Jung. All rights reserved.
//

import UIKit

class messageViewController: BaseViewController {

    @IBOutlet weak var matchingBar: UIView!
    @IBOutlet weak var boardBar: UIView!
    
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.navigationBar.isHidden = false
        //첨에 매칭 메세지가 떠야해서 게시판건 지워준다.
        self.boardBar.isHidden = true
        self.matchingBar.isHidden=false
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    


    @IBAction func matchinBtnClicked(_ sender: UIButton) {
        self.matchingBar.isHidden = false
        self.boardBar.isHidden=true
    }
    
    @IBAction func boardBtnClicked(_ sender: UIButton) {
        self.matchingBar.isHidden=true
        self.boardBar.isHidden=false
        
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
