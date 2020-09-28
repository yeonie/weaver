//
//  OwnTypeChoiceViewController.swift
//  ios
//
//  Created by 이동연 on 06/09/2020.
//  Copyright © 2020 Jerry Jung. All rights reserved.
//

import UIKit

class OwnTypeChoiceViewController: BaseViewController {
    
    
    
    @IBAction func ISTJ(_ sender: UIButton) {
    }
    
    @IBAction func ISFJ(_ sender: Any) {
    }
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
//        let myText = expanation.text!
//        let myParagraphStyle = NSMutableParagraphStyle()
//        myParagraphStyle.lineSpacing = 5
                // Do any additional setup after loading the view.

    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.navigationBar.isHidden = false
        
        self.navigationController?.isNavigationBarHidden = false
        self.navigationController?.navigationBar.setBackgroundImage(UIImage(), for: .default)
        self.navigationController?.navigationBar.backIndicatorImage = UIImage(named: "dismissBtn")
        self.navigationController?.navigationBar.backIndicatorTransitionMaskImage = UIImage(named: "dismissBtn")
        self.navigationItem.backBarButtonItem = UIBarButtonItem(title: "", style: .plain
            , target: nil, action: nil)
        self.navigationController?.navigationBar.shadowImage = UIImage()
        self.navigationController?.navigationBar.isTranslucent = true
    }

    @IBOutlet weak var expanation: UILabel!
    
    @IBAction func skipBtnPressed(_ sender: UIButton) {
        navigationController!.pushViewController(mainThemeChoiceViewController(), animated: true)
//        self.navigationItem.backBarButtonItem = UIBarButtonItem(image: UIImage(named: "dismissBtn"), style: nil, target: nil, action: nil)
        
        
        
    }
    

}
