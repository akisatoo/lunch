//
//  WeeklyLunchView.swift
//  NoLunchNoLife
//
//  Created by takahashi akisato on 2016/07/28.
//  Copyright © 2016年 takahashi akisato. All rights reserved.
//

import UIKit

protocol WeeklyLunchViewDelegate: NSObjectProtocol {
    func buttonTouched(sender: UIButton)
}

class WeeklyLunchView: UIView {
    
    var delegate: WeeklyLunchViewDelegate?
    let label = UILabel()
    
    required init(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    required init() {
        super.init(frame: CGRectMake(0, 0, 0, 0));
        
        self.backgroundColor = UIColor.greenColor()
        
        label.text = "TEST TEXT!!"
        self.addSubview(label)
        // ボタンの位置を指定する.
        label.autoPinEdgeToSuperviewEdge(ALEdge.Top, withInset: 64)
        //label.autoPinEdgeToSuperviewEdge(ALEdge.Right, withInset: 16)

        
        // Buttonを生成する.
        let myButton = UIButton()
        
        // サイズを設定する.
        myButton.frame = CGRectMake(0,0,200,40)
        
        // 背景色を設定する.
        myButton.backgroundColor = UIColor.redColor()
        
        // 枠を丸くする.
        myButton.layer.masksToBounds = true
        
        // タイトルを設定する(通常時).
        myButton.setTitle("ボタン(通常)", forState: UIControlState.Normal)
        myButton.setTitleColor(UIColor.whiteColor(), forState: UIControlState.Normal)
        
        // タイトルを設定する(ボタンがハイライトされた時).
        myButton.setTitle("ボタン(押された時)", forState: UIControlState.Highlighted)
        myButton.setTitleColor(UIColor.blackColor(), forState: UIControlState.Highlighted)
        
        // コーナーの半径を設定する.
        myButton.layer.cornerRadius = 20.0
        
        // タグを設定する.
        myButton.tag = 1
        
        // イベントを追加する.
        myButton.addTarget(delegate, action: "buttonTouched:", forControlEvents: .TouchUpInside)
        
        // ボタンをViewに追加する.
        self.addSubview(myButton)
        
        // ボタンの位置を指定する.
        myButton.autoPinEdgeToSuperviewEdge(ALEdge.Bottom, withInset: 60)
        myButton.autoPinEdgeToSuperviewEdge(ALEdge.Right, withInset: 16)
        
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
    }
    
}