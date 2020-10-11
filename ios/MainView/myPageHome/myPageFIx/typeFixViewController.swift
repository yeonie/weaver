//
//  typeFixViewController.swift
//  ios
//
//  Created by 이동연 on 11/10/2020.
//  Copyright © 2020 Jerry Jung. All rights reserved.
//

import UIKit

class typeFixViewController: UIViewController {

    @IBOutlet weak var typeComment: UILabel!
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
            typeComment.text = "청렴결백한 논리주의자!"
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
            typeComment.text = "용감한 수호자?"
            
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
            typeComment.text = "선의의 옹호자!"
            
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
            typeComment.text = "용의주도한 전략가!"
            
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
            
            typeComment.text = "만능 재주꾼!"
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
            
            typeComment.text = "호기심 많은 예술가!"
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
            typeComment.text = "열정적인 중재자!"
            
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
            typeComment.text = "논리적인 사색가!"
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
            typeComment.text = "모함을 즐기는 사업가!"
            
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
            typeComment.text = "자유로운 영혼의 연예인!?"
            
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
            typeComment.text = "재기발랄한 활동가!"
            
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
            typeComment.text = "뜨거운 논쟁을 즐기는 변론가!"
            
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
            typeComment.text = "엄격한 관리자..!"
            
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
            typeComment.text = "사교적인 외교관!"
            
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
            typeComment.text = "정의로운 사회운동가!"
            
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
            typeComment.text = "대담한 통솔자!"
            
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        self.navigationController?.isNavigationBarHidden = false
        self.navigationItem.title = "나의 유형은?"
        
        //        self.navigationController?.navigationBar.backgroundColor = UIColor.init(red: 30/255, green: 15/255, blue: 0/255, alpha: 1.0)
        self.navigationController?.navigationBar.barTintColor = UIColor.init(red: 250/255, green: 225/255, blue: 98/255, alpha: 1.0)
        self.navigationController?.navigationBar.backIndicatorImage = UIImage(named: "dismissBtn")
        self.navigationController?.navigationBar.backIndicatorTransitionMaskImage = UIImage(named: "dismissBtn")
        self.navigationItem.backBarButtonItem = UIBarButtonItem(title: "", style: .plain
            , target: nil, action: nil)
        self.navigationController?.navigationBar.shadowImage = UIImage()
        self.navigationController?.navigationBar.isTranslucent = true
        self.navigationController?.navigationBar.titleTextAttributes = [NSAttributedString.Key.font: UIFont(name: "Georgia-Bold", size: 23)!,NSAttributedString.Key.foregroundColor: UIColor.black]
        
        
    }
    
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        
        self.navigationController?.navigationBar.isTranslucent = false
    }
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        
        self.navigationController?.navigationBar.isTranslucent = true
        self.navigationController?.navigationBar.barTintColor = .white
        
    }

}
