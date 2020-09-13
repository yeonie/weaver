//
//  MainTabbarViewController.swift
//  ios
//
//  Created by 이동연 on 12/09/2020.
//  Copyright © 2020 Jerry Jung. All rights reserved.
//

import UIKit

class MainTabbarViewController: UITabBarController {
    
    private var device: CGFloat {
        if UIDevice().userInterfaceIdiom == .phone {
            switch UIScreen.main.nativeBounds.height {
            case 1136, 1334, 1920:
                return 10.5
            default:
                return 50
            }
        }
        return 50
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
        tabBar.backgroundImage = UIImage.from(.clear)
        tabBar.shadowImage = UIImage()
        
        let tabbarBackgroundView = RoundShadowView(frame: tabBar.frame)
        tabbarBackgroundView.layer.cornerRadius = 25
        tabbarBackgroundView.backgroundColor = .white
        tabbarBackgroundView.frame = CGRect(x: tabBar.frame.origin.x, y: tabBar.frame.origin.y - device, width: tabBar.frame.width, height: 100)
        view.addSubview(tabbarBackgroundView)
        
        let fillerView = UIView()
        fillerView.frame = tabBar.frame
        fillerView.layer.cornerRadius = 25
        view.addSubview(fillerView)
        view.bringSubviewToFront(tabBar)

        let boardHomeVC = BoardHomeViewController()
        let boardNaviVC = UINavigationController(rootViewController: boardHomeVC)
        boardNaviVC.tabBarItem.image = #imageLiteral(resourceName: "bottomTapBarHomeBtn")
        boardNaviVC.tabBarItem.title = "홈"
        
        let messageVC = messageViewController()
        let messageNaviVC = UINavigationController(rootViewController: messageVC)
        messageNaviVC.tabBarItem.image = #imageLiteral(resourceName: "bottomTapBarMsgBtnOn")
        messageNaviVC.tabBarItem.title = "홈"
        
        viewControllers = [boardNaviVC, messageNaviVC]
        
        
    }

}
