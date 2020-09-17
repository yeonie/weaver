//
//  SplashChoiceViewController.swift
//  ios
//
//  Created by 이동연 on 06/09/2020.
//  Copyright © 2020 Jerry Jung. All rights reserved.
//

import UIKit

class SplashChoiceViewController: BaseViewController {
    
    var slided = true
    var slideoff = false
    var slideoffForSignIn = true

    @IBOutlet weak var slideSignInView: UIView!
    @IBOutlet weak var slideSginUpView: UIView!
    
    @IBAction func maybeNextTime(_ sender: UIButton) {
        navigationController!.pushViewController(OwnTypeChoiceViewController(), animated: true)

    }
    @IBAction func slideOffSginIn(_ sender: UIButton) {
        
        if slideoffForSignIn{
            UIView.animate(withDuration: 0.5, animations:({
                self.slideSginUpView.transform = CGAffineTransform(translationX: 0, y: -450)
                self.slideSginUpView.layer.shadowColor = UIColor.black.cgColor
                self.slideSginUpView.layer.shadowOffset = CGSize(width: 1, height: 2)
                self.slideSginUpView.layer.shadowOpacity = 1
                self.slideSginUpView.layer.shadowRadius = 100
            }))
            //            self.backgroundColor.backgroundColor = UIColor.clear
            
            //                self.backgroundColor.backgroundColor = UIColor.darkGray
            
            
        }
        else{
            UIView.animate(withDuration: 0.6, animations:({
                
                self.slideSginUpView.transform = CGAffineTransform(translationX: 0, y: 0)
                
                self.slideSignInView.layer.shadowOffset = CGSize(width: 0, height: 0)
                self.slideSginUpView.layer.shadowOffset = CGSize(width: 0, height: 0)
                
                self.slideSginUpView.layer.shadowColor = UIColor.white.cgColor
                
            }))
            //
        }
        slideoffForSignIn = !slideoffForSignIn

        
    }
    
    //슬라이드 내려뿌기
    @IBAction func slideOff(_ sender: UIButton) {
        
        
        UIView.animate(withDuration: 0.6, animations:({
                
                self.slideSignInView.transform = CGAffineTransform(translationX: 0, y: 0)
                            }))
        
        UIView.animate(withDuration: 0.6, animations:({
            
            self.slideSginUpView.transform = CGAffineTransform(translationX: 0, y: 0)
            self.slideSignInView.layer.shadowColor = UIColor.black.cgColor
            
           
            
        }))
        
        self.slideSignInView.layer.shadowColor = UIColor.white.cgColor
        
        self.slideSginUpView.layer.shadowColor = UIColor.white.cgColor

        self.slideSignInView.layer.shadowOffset = CGSize(width: 0, height: 0)
        self.slideSginUpView.layer.shadowOffset = CGSize(width: 0, height: 0)
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        UINavigationBar.appearance().barTintColor = UIColor.blue
        UINavigationBar.appearance().tintColor = UIColor.white
        

    }
    override func viewWillAppear(_ animated: Bool) {
        
        self.navigationController!.navigationBar.isHidden = true

    }

    
    //가입하기
    @IBAction func SignUpBtn(_ sender: UIButton) {
        slided = !slided
        
        if slided{
            UIView.animate(withDuration: 0.6, animations:({
                
                self.slideSignInView.transform = CGAffineTransform(translationX: 0, y: 0)
                self.slideSignInView.layer.shadowOffset = CGSize(width: 0, height: 0)
                
                
                self.slideSginUpView.layer.shadowOffset = CGSize(width: 0, height: 0)
                
                self.slideSignInView.layer.shadowColor = UIColor.white.cgColor
                
                self.slideSginUpView.layer.shadowColor = UIColor.white.cgColor
                
            }))
            //            self.backgroundColor.backgroundColor = UIColor.darkGray
            
            
        }
        else{
            UIView.animate(withDuration: 0.5, animations:({
                self.slideSignInView.transform = CGAffineTransform(translationX: 0, y: -520)
                self.slideSignInView.layer.shadowColor = UIColor.black.cgColor
                self.slideSignInView.layer.shadowOffset = CGSize(width: 1, height: 2)
                self.slideSignInView.layer.shadowOpacity = 1
                self.slideSignInView.layer.shadowRadius = 100
//                self.mainFeedTableView.backgroundColor = UIColor.darkGray
            }))
//            self.backgroundColor.backgroundColor = UIColor.clear
            
        }
    }
    
    
}
