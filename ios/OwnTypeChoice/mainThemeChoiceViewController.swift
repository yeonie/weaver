//
//  mainThemeChoiceViewController.swift
//  ios
//
//  Created by 이동연 on 12/09/2020.
//  Copyright © 2020 Jerry Jung. All rights reserved.
//

import UIKit

class mainThemeChoiceViewController: BaseViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction func maybeNextTime(_ sender: UIButton) {
        let window = UIApplication.shared.windows.first { $0.isKeyWindow }
        window?.rootViewController = MainTabbarViewController()
        
//        navigationController!.pushViewController(BoardHomeViewController(), animated: true)

    }
    
    

}
