//
//  DetailController.swift
//  NoLunchNoLife
//
//  Created by takahashi akisato on 2016/07/15.
//  Copyright © 2016年 takahashi akisato. All rights reserved.
//

import UIKit

class DetailController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationController!.navigationBarHidden = false
        
        self.view.backgroundColor = UIColor.blueColor()
        let title = UILabel(forAutoLayout: ())
        self.view.addSubview(title);
        title.text = "detail"
        title.textColor = UIColor.redColor()
        title.autoSetDimension(ALDimension.Height, toSize: 20)
        title.autoCenterInSuperview()
        
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    
}