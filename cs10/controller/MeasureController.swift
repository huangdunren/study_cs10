//
//  MessureController.swift
//  cs10
//
//  Created by 黄敦仁 on 14/12/24.
//  Copyright (c) 2014年 hdr. All rights reserved.
//

import UIKit

class MeasureController :UIViewController {

    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: NSBundle?) {
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
    }
    
    required init(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    override func viewDidLoad() {
        let btn=UIButton(frame: CGRectMake(20, 20, 200, 50))
        btn.setTitle("检测", forState: UIControlState.Normal)
        btn.setTitleColor(UIColor.blackColor(), forState: UIControlState.Normal)
        self.view.addSubview(btn)
    }
}
