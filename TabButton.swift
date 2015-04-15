//
//  TabButton.swift
//  cs10
//
//  Created by 黄敦仁 on 14/12/24.
//  Copyright (c) 2014年 hdr. All rights reserved.
//

import UIKit

class TabButton :UIButton {
    
     init(title:String,frame:CGRect) {
        super.init(frame:frame)
        
        self.setTitleColor(UIColor.blueColor(), forState: UIControlState.Normal)
        self.setTitle(title, forState: UIControlState.Normal)
    }

    required init(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
