//
//  MATabBarViewController.swift
//  Multi-Amuse
//
//  Created by Corporal on 2019/2/18.
//  Copyright © 2019 广州右岸信息技术有限公司. All rights reserved.
//

import UIKit

class MATabBarViewController: UITabBarController {
    
    var vcs = [UIViewController]()

    override func viewDidLoad() {
        super.viewDidLoad()
        addChildControllers()
    }
    
    func addChildControllers() {
        
        createNavController(VC: MAPlazaViewController(), title: "广场", imageName: "tab_plaza")
        createNavController(VC: MAComicViewController(), title: "漫画", imageName: "tab_comic")
        createNavController(VC: MAPersonalViewController(), title: "我的", imageName: "tab_person")
        viewControllers = vcs
    }

    func createNavController(VC: UIViewController, title: String, imageName: String) {
        VC.title = title
        VC.tabBarItem.image = UIImage(named: imageName)
        VC.tabBarItem.selectedImage = UIImage(named: imageName + "_l")
        let navigationVc = UINavigationController(rootViewController: VC)
        vcs.append(navigationVc)
    }

}
