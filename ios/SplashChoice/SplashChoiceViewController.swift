//
//  SplashChoiceViewController.swift
//  ios
//
//  Created by 이동연 on 06/09/2020.
//  Copyright © 2020 Jerry Jung. All rights reserved.
//

import UIKit

class SplashChoiceViewController: BaseViewController {
    
    var slided = false
    var slideoff = false

    @IBOutlet weak var slideSignInView: UIView!
    
    @IBAction func slideOff(_ sender: Any) {
        slideoff = !slideoff
        
        if slideoff{
            UIView.animate(withDuration: 0.5, animations:({
                self.slideSignInView.transform = CGAffineTransform(translationX: 0, y: -520)
                //                self.mainFeedTableView.backgroundColor = UIColor.darkGray
            }))
            //            self.backgroundColor.backgroundColor = UIColor.clear
            
//                self.backgroundColor.backgroundColor = UIColor.darkGray
            
            
        }
        else{
            UIView.animate(withDuration: 0.6, animations:({
                
                self.slideSignInView.transform = CGAffineTransform(translationX: 0, y: 0)
                //                self.slideSignInView.layer.masksToBounds = false
                self.slideSignInView.layer.shadowColor = UIColor.black.cgColor
                self.slideSignInView.layer.shadowOffset = CGSize(width: 1, height: 2)
                self.slideSignInView.layer.shadowOpacity = 1
                self.slideSignInView.layer.shadowRadius = 100
            }))
            //
        }
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        UINavigationBar.appearance().barTintColor = UIColor.blue
        UINavigationBar.appearance().tintColor = UIColor.white
        

    }
    override func viewWillAppear(_ animated: Bool) {
        
        self.navigationController!.navigationBar.isHidden = true

    }

    @IBAction func SignUpBtn(_ sender: UIButton) {
        slided = !slided
        
        if slided{
            UIView.animate(withDuration: 0.6, animations:({
                
                self.slideSignInView.transform = CGAffineTransform(translationX: 0, y: 520)
//                self.slideSignInView.layer.masksToBounds = false
                self.slideSignInView.layer.shadowColor = UIColor.black.cgColor
                self.slideSignInView.layer.shadowOffset = CGSize(width: 1, height: 2)
                self.slideSignInView.layer.shadowOpacity = 1
                self.slideSignInView.layer.shadowRadius = 100
            }))
            //            self.backgroundColor.backgroundColor = UIColor.darkGray
            
            
        }
        else{
            UIView.animate(withDuration: 0.5, animations:({
                self.slideSignInView.transform = CGAffineTransform(translationX: 0, y: -520)
//                self.mainFeedTableView.backgroundColor = UIColor.darkGray
            }))
//            self.backgroundColor.backgroundColor = UIColor.clear
            
        }
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
