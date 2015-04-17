//
//  HttpUtils.swift
//  cs10
//
//  Created by 黄敦仁 on 14/12/15.
//  Copyright (c) 2014年 hdr. All rights reserved.
//

import Foundation

class HttpUtils
{

    
    class func putPublicParams(inout  paras: Dictionary<String,AnyObject>)->Void{
        paras["intf_revision"] = "1.2"
        paras["app_revision"] = "2.1.2"
        paras["app_id"] = "Yolanda_Bodyfat"
        paras["platform"]="android"
        paras["android_url"]="new_revision"

    }
    

    class func get( var url:String,var paras:Dictionary<String,AnyObject>,onSuccess:(JSON ->Void))
    {
        url=HttpUrls.baseUrl+url;
       putPublicParams(&paras )
        let req = HTTPTask()
        req.POST(url, parameters:paras, success:{
            (res:HTTPResponse) ->Void
            in
            HttpUtils.success(res,onSuccess: onSuccess)
            }, failure: HttpUtils.onfailure)
        
    }
    
    class func success(res:HTTPResponse,onSuccess:(JSON->Void)){
        if res.responseObject != nil {
            let data = res.responseObject as! NSData
            let json = JSON(data:data)
            let status = json["status"]
            println(status["code"])

        }
    }
    
    class  func onfailure(error:NSError,res:HTTPResponse?){
        println(error)
    }
}