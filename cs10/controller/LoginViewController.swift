//
//  LoginViewController.swift
//  cs10
//
//  Created by 黄敦仁 on 14/12/10.
//  Copyright (c) 2014年 hdr. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet var usernameTF: UITextField!
    
    @IBOutlet var passwordTf: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.usernameTF.text="18607469074"
        // Do any additional setup after loading the view.
    }
    
    override  init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: NSBundle?) {
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
    }

    required init(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
     init(){
        super.init(nibName: "LoginViewController",bundle: nil);
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func loginClicked(sender: AnyObject) {
        let username=self.usernameTF.text;
        let password=self.passwordTf.text;
        let paras=["login":username,"password":password]
        HttpUtils.get(HttpUrls.loginUrl, paras:paras   , onSuccess:loginCallback)
    }
    
    func loginCallback(json:JSON)->Void{
     //   self.view.window?.rootViewController=MainController()
        let mc=MainController()
           self.presentViewController(mc, animated: true, completion: nil)
        self.dismissViewControllerAnimated(false, completion: nil)
       
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
