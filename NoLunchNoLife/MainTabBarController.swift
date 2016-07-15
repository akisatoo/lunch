//
//  MainTabBarController.swift
//  NoLunchNoLife
//
//  Created by takahashi akisato on 2016/07/15.
//  Copyright © 2016年 takahashi akisato. All rights reserved.
//

import UIKit


class MainTabBarController: UITabBarController {
    var homeView: HomeViewController!
    var weeklyView: WeeklyLunchViewController!
    
    override func viewDidLoad() {
        super.viewDidLoad()
                
        homeView = HomeViewController()
        weeklyView = WeeklyLunchViewController()
        
        //表示するtabItemを指定（今回はデフォルトのItemを使用）
        homeView.tabBarItem = UITabBarItem(tabBarSystemItem: UITabBarSystemItem.Featured, tag: 1)
        weeklyView.tabBarItem = UITabBarItem(tabBarSystemItem: UITabBarSystemItem.Bookmarks, tag: 2)
        
        // タブで表示するViewControllerを配列に格納します。
        let myTabs = NSArray(objects: homeView!, weeklyView!)
        
        // 配列をTabにセットします。
        self.setViewControllers(myTabs as? [UIViewController], animated: false)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}