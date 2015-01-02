//
//  FileUtils.swift
//  photo
//
//  Created by yujiroarai on 2015/01/02.
//  Copyright (c) 2015年 yujiroarai. All rights reserved.
//

import UIKit

class YJRFileUtils: NSObject {

    class func getTmpDirPath() -> String! {
        return "\(NSHomeDirectory())/tmp"
    }

    class func getDocumentDirPath() -> String! {
        return NSSearchPathForDirectoriesInDomains(.CachesDirectory, .UserDomainMask, true)[0] as String
    }

    class func getCacheDirPath() -> String! {
        return NSSearchPathForDirectoriesInDomains(.DocumentDirectory, .UserDomainMask, true)[0] as String
    }
}
