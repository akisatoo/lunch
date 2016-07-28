//
//  WeeklyLunchViewController.swift
//  NoLunchNoLife
//
//  Created by takahashi akisato on 2016/07/15.
//  Copyright © 2016年 takahashi akisato. All rights reserved.
//

import UIKit

class WeeklyLunchViewController: UIViewController, WeeklyLunchViewDelegate {
    
    let weeklyLunchView = WeeklyLunchView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        weeklyLunchView.delegate = self
        self.view = weeklyLunchView
        
    }
    
    
    func buttonTouched(sender: UIButton) {
        weeklyLunchView.label.text = "Changed TEXT..."
        
//        let detailView = DetailController()
//        self.navigationController?.pushViewController(detailView, animated: true)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    
}

