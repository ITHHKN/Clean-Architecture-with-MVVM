//
//  APIBaseResponseString.swift
//  SampleProject
//
//  Created by Hasnain on 3/20/18.
//  Copyright © 2018 Hasnain Haider. All rights reserved.
//

import UIKit
import Foundation
import EVReflection

open class BaseResponseForModels: EVObject {
  public var success: Bool = false
  public var message: String = ""
  public var statusCode : Int = 0
  
  required public init() {}
}


open class APIBaseResponse : NSObject , NSCoding {
    public var httpStatusCode : Int = 0
    public var success : Bool = false
    public var responseString : String = ""

    // MARK: Declaration for string constants to be used to decode and also serialize.
    private struct SerializationKeys {
        static let responseString = "responseString"
        static let httpStatusCode = "httpStatusCode"
        static let success = "success"
    }
    
    override init() {
        super.init()
    }
    
    init(response : String , statusCode : Int , success : Bool) {
        self.httpStatusCode = statusCode
        self.success = success
        self.responseString = response
    }
    
    // MARK: NSCoding Protocol
    required public init(coder aDecoder: NSCoder) {
        self.responseString = aDecoder.decodeObject(forKey: SerializationKeys.responseString) as! String
        self.httpStatusCode = aDecoder.decodeInteger(forKey: SerializationKeys.httpStatusCode)
        self.success = aDecoder.decodeBool(forKey: SerializationKeys.success)
    }
    
    public func encode(with aCoder: NSCoder) {
        aCoder.encode(responseString, forKey: SerializationKeys.responseString)
        aCoder.encode(httpStatusCode, forKey: SerializationKeys.httpStatusCode)
        aCoder.encode(success, forKey: SerializationKeys.success)
    }
    
}


extension APIBaseResponse {
    /**
     Save this object to a file in the documents directory
     
     - parameter fileName: The filename
     
     - returns: true if successfull
     */
    @discardableResult
    public func saveToDocuments(_ fileName: String) -> Bool {
        let filePath = (NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true)[0] as NSString).appendingPathComponent(fileName)
        return NSKeyedArchiver.archiveRootObject(self, toFile: filePath)
    }
    
    /**
     Save this object to a file in the temp directory
     
     - parameter fileName: The filename
     
     - returns: Nothing
     */
    @discardableResult
    public func saveToTemp(_ fileName: String) -> Bool {
        let filePath = (NSTemporaryDirectory() as NSString).appendingPathComponent(fileName)
        return NSKeyedArchiver.archiveRootObject(self, toFile: filePath)
    }
    
    
    /**
     Initialize this object from an archived file from the temp directory
     
     - parameter fileNameInTemp: The filename
     - parameter conversionOptions: Option set for the various conversion options.
     */
    public convenience init(fileNameInTemp: String) {
        self.init()
        let filePath = (NSTemporaryDirectory() as NSString).appendingPathComponent(fileNameInTemp)
        if let temp = NSKeyedUnarchiver.unarchiveObject(withFile: filePath) as? APIBaseResponse {
            self.responseString = temp.responseString
            self.httpStatusCode = temp.httpStatusCode
            self.success = temp.success
        }
    }
    
    
    /**
     Initialize this object from an archived file from the documents directory
     
     - parameter fileNameInDocuments: The filename
     - parameter conversionOptions: Option set for the various conversion options.
     */
    public convenience init(fileNameInDocuments: String) {
        self.init()
        let filePath = (NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true)[0] as NSString).appendingPathComponent(fileNameInDocuments)
        
        if let temp = NSKeyedUnarchiver.unarchiveObject(withFile: filePath) as? APIBaseResponse {
            self.responseString = temp.responseString
            self.httpStatusCode = temp.httpStatusCode
            self.success = temp.success
        }
    }
    
    
    func handleErrorsIfAny(response: APIBaseResponse?) -> Bool {
        var isError = true
        if (response?.success)! {
            let statusCode : Int = (response?.httpStatusCode)!
            //we need to parse
            if statusCode == 500 {
                self.showProgressHud(message: "common_network_error".ls)
                isError = true
            }else if (statusCode >= 400) && (statusCode < 500) {
              self.showProgressHud(message: (response?.responseString)!)
                isError = true
            } else if (statusCode >= 200) && (statusCode < 300) {
                isError = false
            }
            
        }
        return isError
    }
}
