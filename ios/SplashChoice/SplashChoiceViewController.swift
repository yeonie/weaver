//
//  SplashChoiceViewController.swift
//  ios
//
//  Created by 이동연 on 06/09/2020.
//  Copyright © 2020 Jerry Jung. All rights reserved.
//

import UIKit

class SplashChoiceViewController: BaseViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        UINavigationBar.appearance().barTintColor = UIColor.blue
        UINavigationBar.appearance().tintColor = UIColor.white
        

    }
    override func viewWillAppear(_ animated: Bool) {
        
        self.navigationController!.navigationBar.isHidden = true

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
