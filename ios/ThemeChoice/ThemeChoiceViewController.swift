//
//  ThemeChoiceViewController.swift
//  ios
//
//  Created by 이동연 on 07/09/2020.
//  Copyright © 2020 Jerry Jung. All rights reserved.
//

import UIKit

class ThemeChoiceViewController: BaseViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func maybeNextTime(_ sender: Any) {
        
    }
    //네비게이션 바 보이는 뷰에만 필요한 set
    override func viewWillAppear(_ animated: Bool) {
        self.navigationController?.navigationBar.isHidden = false
        
//        self.navigationController?.navigationBar.tintColor = UIColor(red: 110/255, green: 198/255, blue: 200/255, alpha: 0.1)
//        self.navigationController?.navigationBar.backgroundColor = UIColor(red: 110/255, green: 198/255, blue: 200/255, alpha: 0.1)
//        self.navigationController?.navigationBar.barTintColor = UIColor(red: 110/255, green: 198/255, blue: 200/255, alpha: 0.1)
        self.navigationController?.navigationBar.setBackgroundImage(UIImage(), for: .default)
    }
    override func viewWillDisappear(_ animated: Bool) {
        self.navigationController?.navigationBar.isHidden = true
    }



}
