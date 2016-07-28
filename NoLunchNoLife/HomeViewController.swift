//
//  ViewController.swift
//  NoLunchNoLife
//
//  Created by takahashi akisato on 2016/07/15.
//  Copyright © 2016年 takahashi akisato. All rights reserved.
//

import UIKit
import Foundation

class HomeViewController: UIViewController, HomeViewDelegate {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let homeView = HomeView()
        homeView.delegate = self
        self.view = homeView
        
        test()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    func test() {
        let lunchModel = LunchModel()
        lunchModel.getLunch(
            { (res: Lunch) -> Void in
                // success
                print(res.name)
            },
            error: { () -> Void in
                // error
                
            }
        )
    }
    
    func buttonTouched(sender:UIButton) {
        self.view.backgroundColor = UIColor.orangeColor()
        
        let detailView = DetailController()
        self.navigationController?.pushViewController(detailView, animated: true)
    }

}

