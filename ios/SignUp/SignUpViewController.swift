//
//  SignUpViewController.swift
//  ios
//
//  Created by 이동연 on 06/09/2020.
//  Copyright © 2020 litong. All rights reserved.
//

import UIKit

class SignUpViewController: BaseViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    
    
    @IBAction func SginUpBtn(_ sender: UIButton) {
        navigationController!.pushViewController(OwnTypeChoiceViewController(), animated: true)
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
