//
//  MainController.swift
//  cs10
//
//  Created by 黄敦仁 on 14/12/24.
//  Copyright (c) 2014年 hdr. All rights reserved.
//

import UIkit

class MainController :UITabBarController{
    let captions=["检测","服务","系统","我"]
    let tabbarHeight = CGFloat(49.0)
    override  init(){
        super.init()
    }
    
    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: NSBundle?) {
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
    }
    
    required init(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override func viewDidLoad() {
        initTabbar()
        initControllers()
        
    }
    
    func initTabbar(){
        let height = self.view.frame.height
        let itemWidth = self.view.frame.width/(CGFloat(captions.count))
        
        for i in 0..<self.captions.count {
            let btn = TabButton(title:captions[i], frame:CGRectMake(CGFloat(i)*itemWidth, height-self.tabbarHeight, itemWidth, tabbarHeight))
            self.view.addSubview(btn)
        }
    }
    
    func initControllers(){
        self.viewControllers=[MeasureController()]
        self.title=captions[0]
    }
}
