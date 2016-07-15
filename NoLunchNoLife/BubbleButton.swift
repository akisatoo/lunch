//
//  BubbleButton.swift
//  NoLunchNoLife
//
//  Created by takahashi akisato on 2016/07/15.
//  Copyright © 2016年 takahashi akisato. All rights reserved.
//

import UIKit


class BubbleButton: UIButton {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        // サイズを設定する.
        //self.frame = CGRectMake(0, 0, 60, 60)
        self.autoSetDimension(ALDimension.Width, toSize: 40)
        self.autoSetDimension(ALDimension.Height, toSize: 40)
        
        // 背景色を設定する.
        self.backgroundColor = UIColor.whiteColor()
        
        // 枠を丸くする.
        self.layer.masksToBounds = true
        
        // コーナーの半径を設定する.
        self.layer.cornerRadius = 20.0
        
        // タイトルを設定する(通常時).
        self.setTitle("x", forState: UIControlState.Normal)
        self.setTitleColor(UIColor.blackColor(), forState: UIControlState.Normal)
       
    }
    
    required init(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}