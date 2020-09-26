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
//        let myText = expanation.text!
//        let myParagraphStyle = NSMutableParagraphStyle()
//        myParagraphStyle.lineSpacing = 5
                // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.navigationBar.isHidden = true
        
//        self.navigationController?.navigationBar.barTintColor = UIColor(displayP3Red: 0/255, green: 0/255, blue: 0/255, alpha: 0.01)
        self.navigationController?.navigationBar.setBackgroundImage(UIImage(), for: .default)
        
//        self.navigationController?.navigationItem.backBarButtonItem = UIBarButtonItem(image: UIImage(named: "dismissBtn"), style: .plain, target: nil, action: nil)
        
        self.navigationController?.navigationBar.backIndicatorImage = UIImage(named: "dismissBtn")
//        self.navigationController?.navigationBar.backIndicatorTransitionMaskImage = UIColor.black
        self.navigationController?.navigationBar.backIndicatorTransitionMaskImage = UIImage(named: "dismissBtn")
        self.navigationItem.backBarButtonItem = UIBarButtonItem(title: "", style: .plain
        , target: nil, action: nil)
    
//        self.navigationController?.navigationBar.backIndicatorTransitionMaskImage = UIImage()
//        self.navigationController?.navigationBar.backIndicatorImage = UIImage()
    }

    @IBOutlet weak var expanation: UILabel!
    
    @IBAction func skipBtnPressed(_ sender: UIButton) {
        navigationController!.pushViewController(mainThemeChoiceViewController(), animated: true)
//        self.navigationItem.backBarButtonItem = UIBarButtonItem(image: UIImage(named: "dismissBtn"), style: nil, target: nil, action: nil)
        
        
        
    }
    

}
