//
//  onboardingViewController.swift
//  ios
//
//  Created by 이동연 on 11/10/2020.
//  Copyright © 2020 Jerry Jung. All rights reserved.
//

import UIKit

class onboardingViewController: BaseViewController {
    
    @IBOutlet weak var finalBtn: UIButton!
    @IBOutlet weak var skipBtn: UIButton!
    @IBOutlet weak var nextBtn: UIButton!
    @IBOutlet weak var pageControl: UIPageControl!
    @IBOutlet weak var onBoardImage: UIImageView!
    var images = ["onboard1.png","onboard2.png","onboard3.png"]
  
        
    
        
        

    override func viewDidLoad() {
        super.viewDidLoad()
        
        finalBtn.isHidden = true
        
        pageControl.numberOfPages = images.count
        pageControl.currentPage = 0
        pageControl.pageIndicatorTintColor = UIColor.lightGray
        pageControl.currentPageIndicatorTintColor = UIColor.yellow
        onBoardImage.image = UIImage(named: images[0])
        
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func pageChanged(_ sender: Any) {
        onBoardImage.image = UIImage(named: images[pageControl.currentPage])
        
        if pageControl.currentPage > 2{
            pageControl.currentPage = 0
            skipBtn.isHidden = false
            nextBtn.isHidden = false
            finalBtn.isHidden = true
            onBoardImage.image = UIImage(named: images[0])
        }

    }
    
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        navigationController?.navigationBar.isHidden=true
    }
    
        @IBAction func skipBtnPressed(_ sender: UIButton) {
            let customAction = UIAlertAction(title: "확인", style: .destructive) { _ in
                guard let navigationViewController = self.navigationController else {
                    self.presentAlert(title: "오류", message: "화면 이동에 실패하였습니다.")
                    return
                }
                
                navigationViewController.pushViewController(SplashChoiceViewController(), animated: true)
            }
            self.presentAlertWithAction(title: "weaver", message: "건너뛰시겠습니까?", customAction)
    }
    @IBAction func nextBtnPressed(_ sender: UIButton) {
        pageControl.currentPage += 1
        onBoardImage.image = UIImage(named: images[pageControl.currentPage])
        if pageControl.currentPage == 2{
            skipBtn.isHidden = true
            nextBtn.isHidden = true
            finalBtn.isHidden = false
        }
        else{
            skipBtn.isHidden = false
            nextBtn.isHidden = false
            finalBtn.isHidden = true
        }
    }
    @IBAction func finalBtnPressed(_ sender: UIButton) {
        navigationController?.pushViewController(SplashChoiceViewController(), animated: true)
    }
    
}
