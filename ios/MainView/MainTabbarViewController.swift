//
//  MainTabbarViewController.swift
//  ios
//
//  Created by 이동연 on 12/09/2020.
//  Copyright © 2020 litong. All rights reserved.
//

import UIKit

class MainTabbarViewController: UITabBarController {
    
    
    //아이폰 6,7,8 경우인듯.
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
        print("------")
        print(UserDefaults.standard.string(forKey: "LoginToken"))
        
        view.backgroundColor = .white
        tabBar.backgroundImage = UIImage.from(.clear)
        tabBar.shadowImage = UIImage()
        UITabBar.appearance().tintColor = UIColor.darkGray
        
        
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
        let boardHomeNaviVC = UINavigationController(rootViewController: boardHomeVC)
        boardHomeNaviVC.tabBarItem.image = #imageLiteral(resourceName: "bottomTapBarHomeBtn")
        boardHomeNaviVC.tabBarItem.title = "홈"
        
        let messageVC = messageViewController()
        let messageNaviVC = UINavigationController(rootViewController: messageVC)
        messageNaviVC.tabBarItem.image = #imageLiteral(resourceName: "bottomTapBarMsgBtnOn")
        messageNaviVC.tabBarItem.title = "메세지"
        
        let matchingVC = matchingHomeViewController()
        let matchingNaviVC = UINavigationController(rootViewController: matchingVC)
        matchingNaviVC.tabBarItem.image = .init(imageLiteralResourceName: "bottomTapBarWeavingBtn")
        matchingNaviVC.tabBarItem.title = "친구찾기"
        
        let myPageVC = myPageViewController()
        let myPageNaviVC = UINavigationController(rootViewController: myPageVC)
        myPageNaviVC.tabBarItem.image = .init(imageLiteralResourceName: "bottomTapBarMyPageBtn")
        myPageNaviVC.tabBarItem.title = "마이"
        
        let boardVC = boardViewController()
        let boardNaviVC = UINavigationController(rootViewController: boardVC)
        boardNaviVC.tabBarItem.image = .init(imageLiteralResourceName: "bottomTapBarBoardBtn")
        boardNaviVC.tabBarItem.title = "게시판"
        
        viewControllers = [boardHomeNaviVC, matchingNaviVC, boardNaviVC, messageNaviVC, myPageNaviVC]
        
    }

}
