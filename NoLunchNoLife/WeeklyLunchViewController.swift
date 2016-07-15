//
//  WeeklyLunchViewController.swift
//  NoLunchNoLife
//
//  Created by takahashi akisato on 2016/07/15.
//  Copyright © 2016年 takahashi akisato. All rights reserved.
//

import UIKit

class WeeklyLunchViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = UIColor.greenColor()
        
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
        
        // ボタンの位置を指定する.
        myButton.layer.position = CGPoint(x: self.view.frame.width/2, y:200)
        
        // タグを設定する.
        myButton.tag = 1
        
        // イベントを追加する.
        myButton.addTarget(self, action: "onClickMyButton:", forControlEvents: .TouchUpInside)
        
        // ボタンをViewに追加する.
        self.view.addSubview(myButton)
    }
    
    internal func onClickMyButton(sender: UIButton){
        let detailView = DetailController()
        self.navigationController?.pushViewController(detailView, animated: true)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    
}

