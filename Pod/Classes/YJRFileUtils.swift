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

    class func sumSha1(file: NSData!) -> String! {
        let length:Int = Int(CC_SHA1_DIGEST_LENGTH)
        var sha1Buffer:[CUnsignedChar] = [CUnsignedChar](count: length, repeatedValue: 0)
        CC_SHA1(file.bytes, CUnsignedInt(file.length), &sha1Buffer)
        var output: NSMutableString = NSMutableString(capacity: Int(CC_SHA1_DIGEST_LENGTH * 2))

        for(var i = 0; i < Int(CC_SHA1_DIGEST_LENGTH); i++) {
            output.appendFormat("%02x", sha1Buffer[i])
        }

        return output
    }
}
