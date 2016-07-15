//
//  MainTabBarController.swift
//  NoLunchNoLife
//
//  Created by takahashi akisato on 2016/07/15.
//  Copyright © 2016年 takahashi akisato. All rights reserved.
//

import UIKit

//UITabBarControllerを継承
class MainTabBarController: UITabBarController {
    var firstView: ViewController!
    var secondView: ViewController!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        firstView = ViewController()
        secondView = ViewController()
        
        //表示するtabItemを指定（今回はデフォルトのItemを使用）
        firstView.tabBarItem = UITabBarItem(tabBarSystemItem: UITabBarSystemItem.Featured, tag: 1)
        secondView.tabBarItem = UITabBarItem(tabBarSystemItem: UITabBarSystemItem.Bookmarks, tag: 2)
        
        // タブで表示するViewControllerを配列に格納します。
        let myTabs = NSArray(objects: firstView!, secondView!)
        
        // 配列をTabにセットします。
        self.setViewControllers(myTabs as? [UIViewController], animated: false)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}