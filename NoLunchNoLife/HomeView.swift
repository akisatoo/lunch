//
//  HomeView.swift
//  NoLunchNoLife
//
//  Created by takahashi akisato on 2016/07/15.
//  Copyright © 2016年 takahashi akisato. All rights reserved.
//

import UIKit

protocol HomeViewDelegate: NSObjectProtocol {
    func buttonTouched(sender:UIButton)
}

class HomeView: UIView {
    var delegate: HomeViewDelegate?

    required init(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    required init() {
        super.init(frame: CGRectMake(0, 0, 0, 0));
        self.backgroundColor = UIColor.redColor()
        
        // Buttonを生成する.
        let bubbleButton = BubbleButton()
        // タグを設定する.
        bubbleButton.tag = 1
        // イベントを追加する.
        bubbleButton.addTarget(delegate, action: "buttonTouched:", forControlEvents: .TouchUpInside)
        // ボタンをViewに追加する.
        self.addSubview(bubbleButton)
        // ボタンの位置を指定する.
        bubbleButton.autoPinEdgeToSuperviewEdge(ALEdge.Bottom, withInset: 60)
        bubbleButton.autoPinEdgeToSuperviewEdge(ALEdge.Right, withInset: 16)

    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
    }
    
}