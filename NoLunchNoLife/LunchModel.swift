//
//  LunchModel.swift
//  NoLunchNoLife
//
//  Created by takahashi akisato on 2016/07/28.
//  Copyright © 2016年 takahashi akisato. All rights reserved.
//

import Foundation

struct Lunch {
    var id: Int
    var name: String
    
    init() {
        id = 1
        name = "ランチ名"
    }
}

class LunchModel: Model {
    
    func getLunch(success: (Lunch) -> Void, error: () -> Void) {
        let lunch = Lunch()
        success(lunch)
    }
    
    func getLunchList(success: (Array<Lunch>) -> Void) {
        let lunch = Lunch()
        let res: Array<Lunch> = [lunch]
        success(res)
    }
    
}