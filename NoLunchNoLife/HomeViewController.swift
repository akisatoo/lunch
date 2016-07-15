//
//  ViewController.swift
//  NoLunchNoLife
//
//  Created by takahashi akisato on 2016/07/15.
//  Copyright © 2016年 takahashi akisato. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController, HomeViewDelegate {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let homeView = HomeView()
        homeView.delegate = self
        self.view = homeView
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    func buttonTouched() {
        self.view.backgroundColor = UIColor.orangeColor()
        
        let detailView = DetailController()
        self.navigationController?.pushViewController(detailView, animated: true)
    }


}

