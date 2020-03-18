//
//  User.swift
//  UTA-TBIcare
//
//  Created by Ammar AlTahhan on 04/09/2019.
//  Copyright © 2019 Ammar AlTahhan. All rights reserved.
//

import Foundation

struct User {
    
//    static var shared: PFUser { return PFUser.current()! }
    
    static var isLoggedIn: Bool {
        return UserDefaults.standard.authToken() != ""
    }
    
    static func logout() {
        UserDefaults.standard.setAuthToken("")
    }
    
    private init() {}
    
}
