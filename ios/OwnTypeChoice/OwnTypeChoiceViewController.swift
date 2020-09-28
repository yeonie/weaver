//
//  OwnTypeChoiceViewController.swift
//  ios
//
//  Created by 이동연 on 06/09/2020.
//  Copyright © 2020 Jerry Jung. All rights reserved.
//

import UIKit

class OwnTypeChoiceViewController: BaseViewController {
    
    @IBOutlet weak var ISTJ: UIButton!
    @IBOutlet weak var ISFJ: UIButton!
    @IBOutlet weak var INFJ: UIButton!
    @IBOutlet weak var INTJ: UIButton!
    @IBOutlet weak var ISTP: UIButton!
    @IBOutlet weak var ISFP: UIButton!
    @IBOutlet weak var INFP: UIButton!
    @IBOutlet weak var INTP: UIButton!
    @IBOutlet weak var ESTP: UIButton!
    @IBOutlet weak var ESFP: UIButton!
    @IBOutlet weak var ENFP: UIButton!
    @IBOutlet weak var ENTP: UIButton!
    @IBOutlet weak var ESTJ: UIButton!
    @IBOutlet weak var ESFJ: UIButton!
    @IBOutlet weak var ENFJ: UIButton!
    @IBOutlet weak var ENTJ: UIButton!
    
    
    
    
    @IBAction func ISTJ(_ sender: UIButton) {
        if let image = UIImage(named: "istjOn"){
            ISTJ.setImage(image, for : .normal)
            ISFJ.setImage(UIImage(named: "isfj60Off"), for : .normal)
            INFJ.setImage(UIImage(named: "infj60Off"), for : .normal)
            INTJ.setImage(UIImage(named: "intj60Off"), for : .normal)
            ISTP.setImage(UIImage(named: "istp60Off"), for : .normal)
            ISFP.setImage(UIImage(named: "isfp60Off"), for : .normal)
            INFP.setImage(UIImage(named: "infp60Off"), for : .normal)
            INTP.setImage(UIImage(named: "intp60Off"), for : .normal)
            ESTP.setImage(UIImage(named: "estp60Off"), for : .normal)
            ESFP.setImage(UIImage(named: "esfp60Off"), for : .normal)
            ENFP.setImage(UIImage(named: "enfp60Off"), for : .normal)
            ENTP.setImage(UIImage(named: "entp60Off"), for : .normal)
            ESTJ.setImage(UIImage(named: "estj60Off"), for : .normal)
            ESFJ.setImage(UIImage(named: "esfj60Off"), for : .normal)
            ENFJ.setImage(UIImage(named: "enfj60Off"), for : .normal)
            ENTJ.setImage(UIImage(named: "entj60Off"), for : .normal)
        }
    }
    
    @IBAction func ISFJ(_ sender: Any) {
        if let image = UIImage(named: "isfjOn"){
            ISFJ.setImage(image, for : .normal)
            INFJ.setImage(UIImage(named: "infj60Off"), for : .normal)
            INTJ.setImage(UIImage(named: "intj60Off"), for : .normal)
            ISTP.setImage(UIImage(named: "istp60Off"), for : .normal)
            ISFP.setImage(UIImage(named: "isfp60Off"), for : .normal)
            INFP.setImage(UIImage(named: "infp60Off"), for : .normal)
            INTP.setImage(UIImage(named: "intp60Off"), for : .normal)
            ESTP.setImage(UIImage(named: "estp60Off"), for : .normal)
            ESFP.setImage(UIImage(named: "esfp60Off"), for : .normal)
            ENFP.setImage(UIImage(named: "enfp60Off"), for : .normal)
            ENTP.setImage(UIImage(named: "entp60Off"), for : .normal)
            ESTJ.setImage(UIImage(named: "estj60Off"), for : .normal)
            ESFJ.setImage(UIImage(named: "esfj60Off"), for : .normal)
            ENFJ.setImage(UIImage(named: "enfj60Off"), for : .normal)
            ENTJ.setImage(UIImage(named: "entj60Off"), for : .normal)
            ISTJ.setImage(UIImage(named: "istj60Off"), for: .normal)

        }
    }
    
    @IBAction func INFJ(_ sender: Any) {
        if let image = UIImage(named: "infjOn"){
            INFJ.setImage(image, for : .normal)
            ISFJ.setImage(UIImage(named: "isfj60Off"), for : .normal)
            INTJ.setImage(UIImage(named: "intj60Off"), for : .normal)
            ISTP.setImage(UIImage(named: "istp60Off"), for : .normal)
            ISFP.setImage(UIImage(named: "isfp60Off"), for : .normal)
            INFP.setImage(UIImage(named: "infp60Off"), for : .normal)
            INTP.setImage(UIImage(named: "intp60Off"), for : .normal)
            ESTP.setImage(UIImage(named: "estp60Off"), for : .normal)
            ESFP.setImage(UIImage(named: "esfp60Off"), for : .normal)
            ENFP.setImage(UIImage(named: "enfp60Off"), for : .normal)
            ENTP.setImage(UIImage(named: "entp60Off"), for : .normal)
            ESTJ.setImage(UIImage(named: "estj60Off"), for : .normal)
            ESFJ.setImage(UIImage(named: "esfj60Off"), for : .normal)
            ENFJ.setImage(UIImage(named: "enfj60Off"), for : .normal)
            ENTJ.setImage(UIImage(named: "entj60Off"), for : .normal)
            ISTJ.setImage(UIImage(named: "istj60Off"), for: .normal)

        }
    }
    
    @IBAction func INTJ(_ sender: Any) {
        if let image = UIImage(named: "intjOn"){
            INTJ.setImage(image, for : .normal)
            ISFJ.setImage(UIImage(named: "isfj60Off"), for : .normal)
            INFJ.setImage(UIImage(named: "infj60Off"), for : .normal)
            ISTP.setImage(UIImage(named: "istp60Off"), for : .normal)
            ISFP.setImage(UIImage(named: "isfp60Off"), for : .normal)
            INFP.setImage(UIImage(named: "infp60Off"), for : .normal)
            INTP.setImage(UIImage(named: "intp60Off"), for : .normal)
            ESTP.setImage(UIImage(named: "estp60Off"), for : .normal)
            ESFP.setImage(UIImage(named: "esfp60Off"), for : .normal)
            ENFP.setImage(UIImage(named: "enfp60Off"), for : .normal)
            ENTP.setImage(UIImage(named: "entp60Off"), for : .normal)
            ESTJ.setImage(UIImage(named: "estj60Off"), for : .normal)
            ESFJ.setImage(UIImage(named: "esfj60Off"), for : .normal)
            ENFJ.setImage(UIImage(named: "enfj60Off"), for : .normal)
            ENTJ.setImage(UIImage(named: "entj60Off"), for : .normal)
            ISTJ.setImage(UIImage(named: "istj60Off"), for: .normal)

        }
    }
    @IBAction func ISTP(_ sender: Any) {
        if let image = UIImage(named: "istpOn"){
            ISTP.setImage(image, for : .normal)
            ISFJ.setImage(UIImage(named: "isfj60Off"), for : .normal)
            INFJ.setImage(UIImage(named: "infj60Off"), for : .normal)
            INTJ.setImage(UIImage(named: "intj60Off"), for : .normal)
            ISFP.setImage(UIImage(named: "isfp60Off"), for : .normal)
            INFP.setImage(UIImage(named: "infp60Off"), for : .normal)
            INTP.setImage(UIImage(named: "intp60Off"), for : .normal)
            ESTP.setImage(UIImage(named: "estp60Off"), for : .normal)
            ESFP.setImage(UIImage(named: "esfp60Off"), for : .normal)
            ENFP.setImage(UIImage(named: "enfp60Off"), for : .normal)
            ENTP.setImage(UIImage(named: "entp60Off"), for : .normal)
            ESTJ.setImage(UIImage(named: "estj60Off"), for : .normal)
            ESFJ.setImage(UIImage(named: "esfj60Off"), for : .normal)
            ENFJ.setImage(UIImage(named: "enfj60Off"), for : .normal)
            ENTJ.setImage(UIImage(named: "entj60Off"), for : .normal)
            ISTJ.setImage(UIImage(named: "istj60Off"), for: .normal)

        }
    }
    @IBAction func ISFP(_ sender: Any) {
        if let image = UIImage(named: "isfpOn"){
            ISFP.setImage(image, for : .normal)
            ISFJ.setImage(UIImage(named: "isfj60Off"), for : .normal)
            INFJ.setImage(UIImage(named: "infj60Off"), for : .normal)
            INTJ.setImage(UIImage(named: "intj60Off"), for : .normal)
            ISTP.setImage(UIImage(named: "istp60Off"), for : .normal)
            INFP.setImage(UIImage(named: "infp60Off"), for : .normal)
            INTP.setImage(UIImage(named: "intp60Off"), for : .normal)
            ESTP.setImage(UIImage(named: "estp60Off"), for : .normal)
            ESFP.setImage(UIImage(named: "esfp60Off"), for : .normal)
            ENFP.setImage(UIImage(named: "enfp60Off"), for : .normal)
            ENTP.setImage(UIImage(named: "entp60Off"), for : .normal)
            ESTJ.setImage(UIImage(named: "estj60Off"), for : .normal)
            ESFJ.setImage(UIImage(named: "esfj60Off"), for : .normal)
            ENFJ.setImage(UIImage(named: "enfj60Off"), for : .normal)
            ENTJ.setImage(UIImage(named: "entj60Off"), for : .normal)
            ISTJ.setImage(UIImage(named: "istj60Off"), for: .normal)

        }
    }
    @IBAction func INFP(_ sender: Any) {
        if let image = UIImage(named: "infpOn"){
            INFP.setImage(image, for : .normal)
            ISFJ.setImage(UIImage(named: "isfj60Off"), for : .normal)
            INFJ.setImage(UIImage(named: "infj60Off"), for : .normal)
            INTJ.setImage(UIImage(named: "intj60Off"), for : .normal)
            ISTP.setImage(UIImage(named: "istp60Off"), for : .normal)
            ISFP.setImage(UIImage(named: "isfp60Off"), for : .normal)
            INTP.setImage(UIImage(named: "intp60Off"), for : .normal)
            ESTP.setImage(UIImage(named: "estp60Off"), for : .normal)
            ESFP.setImage(UIImage(named: "esfp60Off"), for : .normal)
            ENFP.setImage(UIImage(named: "enfp60Off"), for : .normal)
            ENTP.setImage(UIImage(named: "entp60Off"), for : .normal)
            ESTJ.setImage(UIImage(named: "estj60Off"), for : .normal)
            ESFJ.setImage(UIImage(named: "esfj60Off"), for : .normal)
            ENFJ.setImage(UIImage(named: "enfj60Off"), for : .normal)
            ENTJ.setImage(UIImage(named: "entj60Off"), for : .normal)
            ISTJ.setImage(UIImage(named: "istj60Off"), for: .normal)

        }
    }
    @IBAction func INTP(_ sender: Any) {
        if let image = UIImage(named: "intpOn"){
            INTP.setImage(image, for : .normal)
            ISFJ.setImage(UIImage(named: "isfj60Off"), for : .normal)
            INFJ.setImage(UIImage(named: "infj60Off"), for : .normal)
            INTJ.setImage(UIImage(named: "intj60Off"), for : .normal)
            ISTP.setImage(UIImage(named: "istp60Off"), for : .normal)
            ISFP.setImage(UIImage(named: "isfp60Off"), for : .normal)
            INFP.setImage(UIImage(named: "infp60Off"), for : .normal)
            ESTP.setImage(UIImage(named: "estp60Off"), for : .normal)
            ESFP.setImage(UIImage(named: "esfp60Off"), for : .normal)
            ENFP.setImage(UIImage(named: "enfp60Off"), for : .normal)
            ENTP.setImage(UIImage(named: "entp60Off"), for : .normal)
            ESTJ.setImage(UIImage(named: "estj60Off"), for : .normal)
            ESFJ.setImage(UIImage(named: "esfj60Off"), for : .normal)
            ENFJ.setImage(UIImage(named: "enfj60Off"), for : .normal)
            ENTJ.setImage(UIImage(named: "entj60Off"), for : .normal)
            ISTJ.setImage(UIImage(named: "istj60Off"), for: .normal)

        }
    }
    @IBAction func ESTP(_ sender: Any) {
        if let image = UIImage(named: "estpOn"){
            ESTP.setImage(image, for : .normal)
            ISFJ.setImage(UIImage(named: "isfj60Off"), for : .normal)
            INFJ.setImage(UIImage(named: "infj60Off"), for : .normal)
            INTJ.setImage(UIImage(named: "intj60Off"), for : .normal)
            ISTP.setImage(UIImage(named: "istp60Off"), for : .normal)
            ISFP.setImage(UIImage(named: "isfp60Off"), for : .normal)
            INFP.setImage(UIImage(named: "infp60Off"), for : .normal)
            INTP.setImage(UIImage(named: "intp60Off"), for : .normal)
            ESFP.setImage(UIImage(named: "esfp60Off"), for : .normal)
            ENFP.setImage(UIImage(named: "enfp60Off"), for : .normal)
            ENTP.setImage(UIImage(named: "entp60Off"), for : .normal)
            ESTJ.setImage(UIImage(named: "estj60Off"), for : .normal)
            ESFJ.setImage(UIImage(named: "esfj60Off"), for : .normal)
            ENFJ.setImage(UIImage(named: "enfj60Off"), for : .normal)
            ENTJ.setImage(UIImage(named: "entj60Off"), for : .normal)
            ISTJ.setImage(UIImage(named: "istj60Off"), for: .normal)

        }
    }
    @IBAction func ESFP(_ sender: Any) {
        if let image = UIImage(named: "esfpOn"){
            ESFP.setImage(image, for : .normal)
            ISFJ.setImage(UIImage(named: "isfj60Off"), for : .normal)
            INFJ.setImage(UIImage(named: "infj60Off"), for : .normal)
            INTJ.setImage(UIImage(named: "intj60Off"), for : .normal)
            ISTP.setImage(UIImage(named: "istp60Off"), for : .normal)
            ISFP.setImage(UIImage(named: "isfp60Off"), for : .normal)
            INFP.setImage(UIImage(named: "infp60Off"), for : .normal)
            INTP.setImage(UIImage(named: "intp60Off"), for : .normal)
            ESTP.setImage(UIImage(named: "estp60Off"), for : .normal)
            ENFP.setImage(UIImage(named: "enfp60Off"), for : .normal)
            ENTP.setImage(UIImage(named: "entp60Off"), for : .normal)
            ESTJ.setImage(UIImage(named: "estj60Off"), for : .normal)
            ESFJ.setImage(UIImage(named: "esfj60Off"), for : .normal)
            ENFJ.setImage(UIImage(named: "enfj60Off"), for : .normal)
            ENTJ.setImage(UIImage(named: "entj60Off"), for : .normal)
            ISTJ.setImage(UIImage(named: "istj60Off"), for: .normal)

        }
    }
    @IBAction func ENFP(_ sender: Any) {
        if let image = UIImage(named: "enfpOn"){
            ENFP.setImage(image, for : .normal)
            ISFJ.setImage(UIImage(named: "isfj60Off"), for : .normal)
            INFJ.setImage(UIImage(named: "infj60Off"), for : .normal)
            INTJ.setImage(UIImage(named: "intj60Off"), for : .normal)
            ISTP.setImage(UIImage(named: "istp60Off"), for : .normal)
            ISFP.setImage(UIImage(named: "isfp60Off"), for : .normal)
            INFP.setImage(UIImage(named: "infp60Off"), for : .normal)
            INTP.setImage(UIImage(named: "intp60Off"), for : .normal)
            ESTP.setImage(UIImage(named: "estp60Off"), for : .normal)
            ESFP.setImage(UIImage(named: "esfp60Off"), for : .normal)
            ENTP.setImage(UIImage(named: "entp60Off"), for : .normal)
            ESTJ.setImage(UIImage(named: "estj60Off"), for : .normal)
            ESFJ.setImage(UIImage(named: "esfj60Off"), for : .normal)
            ENFJ.setImage(UIImage(named: "enfj60Off"), for : .normal)
            ENTJ.setImage(UIImage(named: "entj60Off"), for : .normal)
            ISTJ.setImage(UIImage(named: "istj60Off"), for: .normal)

        }
    }
    @IBAction func ENTP(_ sender: Any) {
        if let image = UIImage(named: "entpOn"){
            ENTP.setImage(image, for : .normal)
            ISFJ.setImage(UIImage(named: "isfj60Off"), for : .normal)
            INFJ.setImage(UIImage(named: "infj60Off"), for : .normal)
            INTJ.setImage(UIImage(named: "intj60Off"), for : .normal)
            ISTP.setImage(UIImage(named: "istp60Off"), for : .normal)
            ISFP.setImage(UIImage(named: "isfp60Off"), for : .normal)
            INFP.setImage(UIImage(named: "infp60Off"), for : .normal)
            INTP.setImage(UIImage(named: "intp60Off"), for : .normal)
            ESTP.setImage(UIImage(named: "estp60Off"), for : .normal)
            ESFP.setImage(UIImage(named: "esfp60Off"), for : .normal)
            ENFP.setImage(UIImage(named: "enfp60Off"), for : .normal)
            ESTJ.setImage(UIImage(named: "estj60Off"), for : .normal)
            ESFJ.setImage(UIImage(named: "esfj60Off"), for : .normal)
            ENFJ.setImage(UIImage(named: "enfj60Off"), for : .normal)
            ENTJ.setImage(UIImage(named: "entj60Off"), for : .normal)
            ISTJ.setImage(UIImage(named: "istj60Off"), for: .normal)

        }
    }
    @IBAction func ESTJ(_ sender: Any) {
        if let image = UIImage(named: "estjOn"){
            ESTJ.setImage(image, for : .normal)
            ISFJ.setImage(UIImage(named: "isfj60Off"), for : .normal)
            INFJ.setImage(UIImage(named: "infj60Off"), for : .normal)
            INTJ.setImage(UIImage(named: "intj60Off"), for : .normal)
            ISTP.setImage(UIImage(named: "istp60Off"), for : .normal)
            ISFP.setImage(UIImage(named: "isfp60Off"), for : .normal)
            INFP.setImage(UIImage(named: "infp60Off"), for : .normal)
            INTP.setImage(UIImage(named: "intp60Off"), for : .normal)
            ESTP.setImage(UIImage(named: "estp60Off"), for : .normal)
            ESFP.setImage(UIImage(named: "esfp60Off"), for : .normal)
            ENFP.setImage(UIImage(named: "enfp60Off"), for : .normal)
            ENTP.setImage(UIImage(named: "entp60Off"), for : .normal)
            ESFJ.setImage(UIImage(named: "esfj60Off"), for : .normal)
            ENFJ.setImage(UIImage(named: "enfj60Off"), for : .normal)
            ENTJ.setImage(UIImage(named: "entj60Off"), for : .normal)
            ISTJ.setImage(UIImage(named: "istj60Off"), for: .normal)

        }
    }
    @IBAction func ESFJ(_ sender: Any) {
        if let image = UIImage(named: "esfjOn"){
            ESFJ.setImage(image, for : .normal)
            ISFJ.setImage(UIImage(named: "isfj60Off"), for : .normal)
            INFJ.setImage(UIImage(named: "infj60Off"), for : .normal)
            INTJ.setImage(UIImage(named: "intj60Off"), for : .normal)
            ISTP.setImage(UIImage(named: "istp60Off"), for : .normal)
            ISFP.setImage(UIImage(named: "isfp60Off"), for : .normal)
            INFP.setImage(UIImage(named: "infp60Off"), for : .normal)
            INTP.setImage(UIImage(named: "intp60Off"), for : .normal)
            ESTP.setImage(UIImage(named: "estp60Off"), for : .normal)
            ESFP.setImage(UIImage(named: "esfp60Off"), for : .normal)
            ENFP.setImage(UIImage(named: "enfp60Off"), for : .normal)
            ENTP.setImage(UIImage(named: "entp60Off"), for : .normal)
            ESTJ.setImage(UIImage(named: "estj60Off"), for : .normal)
            ENFJ.setImage(UIImage(named: "enfj60Off"), for : .normal)
            ENTJ.setImage(UIImage(named: "entj60Off"), for : .normal)
            ISTJ.setImage(UIImage(named: "istj60Off"), for: .normal)

        }
    }
    @IBAction func ENFJ(_ sender: Any) {
        if let image = UIImage(named: "enfjOn"){
            ENFJ.setImage(image, for : .normal)
            ISFJ.setImage(UIImage(named: "isfj60Off"), for : .normal)
            INFJ.setImage(UIImage(named: "infj60Off"), for : .normal)
            INTJ.setImage(UIImage(named: "intj60Off"), for : .normal)
            ISTP.setImage(UIImage(named: "istp60Off"), for : .normal)
            ISFP.setImage(UIImage(named: "isfp60Off"), for : .normal)
            INFP.setImage(UIImage(named: "infp60Off"), for : .normal)
            INTP.setImage(UIImage(named: "intp60Off"), for : .normal)
            ESTP.setImage(UIImage(named: "estp60Off"), for : .normal)
            ESFP.setImage(UIImage(named: "esfp60Off"), for : .normal)
            ENFP.setImage(UIImage(named: "enfp60Off"), for : .normal)
            ENTP.setImage(UIImage(named: "entp60Off"), for : .normal)
            ESTJ.setImage(UIImage(named: "estj60Off"), for : .normal)
            ESFJ.setImage(UIImage(named: "esfj60Off"), for : .normal)
            ENTJ.setImage(UIImage(named: "entj60Off"), for : .normal)
            ISTJ.setImage(UIImage(named: "istj60Off"), for: .normal)

        }
    }
    @IBAction func ENTJ(_ sender: Any) {
        if let image = UIImage(named: "entjOn"){
            ENTJ.setImage(image, for : .normal)
            ISFJ.setImage(UIImage(named: "isfj60Off"), for : .normal)
            INFJ.setImage(UIImage(named: "infj60Off"), for : .normal)
            INTJ.setImage(UIImage(named: "intj60Off"), for : .normal)
            ISTP.setImage(UIImage(named: "istp60Off"), for : .normal)
            ISFP.setImage(UIImage(named: "isfp60Off"), for : .normal)
            INFP.setImage(UIImage(named: "infp60Off"), for : .normal)
            INTP.setImage(UIImage(named: "intp60Off"), for : .normal)
            ESTP.setImage(UIImage(named: "estp60Off"), for : .normal)
            ESFP.setImage(UIImage(named: "esfp60Off"), for : .normal)
            ENFP.setImage(UIImage(named: "enfp60Off"), for : .normal)
            ENTP.setImage(UIImage(named: "entp60Off"), for : .normal)
            ESTJ.setImage(UIImage(named: "estj60Off"), for : .normal)
            ESFJ.setImage(UIImage(named: "esfj60Off"), for : .normal)
            ENFJ.setImage(UIImage(named: "enfj60Off"), for : .normal)
            ISTJ.setImage(UIImage(named: "istj60Off"), for: .normal)

        }
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
