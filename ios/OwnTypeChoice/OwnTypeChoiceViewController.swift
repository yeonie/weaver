//
//  OwnTypeChoiceViewController.swift
//  ios
//
//  Created by 이동연 on 06/09/2020.
//  Copyright © 2020 Jerry Jung. All rights reserved.
//

import UIKit

class OwnTypeChoiceViewController: BaseViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let myText = expanation.text!
        let myParagraphStyle = NSMutableParagraphStyle()
        myParagraphStyle.lineSpacing = 5
                // Do any additional setup after loading the view.
    }

    @IBOutlet weak var expanation: UILabel!
    
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}