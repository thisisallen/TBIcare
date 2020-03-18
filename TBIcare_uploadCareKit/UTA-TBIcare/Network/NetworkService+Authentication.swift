//
//  Authentication.swift
//  UTA-TBIcare
//
//  Created by Ammar AlTahhan on 04/09/2019.
//  Copyright © 2019 Ammar AlTahhan. All rights reserved.
//

import Foundation
import Alamofire
import SwiftyJSON

extension NetworkService {
    
    static func logIn(username: String,
                      password: String,
                      completion: @escaping ((_ success: Bool, _ error: Error?)->Void)) {
        
        let url = URL(string: loginUrl)!
        
        let parameters: [String: Any] = [
            "username": username,
            "password": password
        ]
        
        Alamofire.request(url, method: .post, parameters: parameters, encoding: JSONEncoding.default, headers: nil).responseJSON { (response) in
            switch response.result {
            case .failure(let err):
                completion(false, err)
            case .success(let value):
                let json = JSON(value)
                if let token = json["token"].string {
                    UserDefaults.standard.setAuthToken(token)
                    completion(true, nil)
                } else {
                    completion(false, NSError())
                }
            }
        }
//        PFUser.logInWithUsername(inBackground: username, password: password) { (user, err) in
//            completion(user != nil, err)
//        }
        
    }
    
}
