//
//  PersistentContainer.swift
//  UTA-TBIcare
//
//  Created by Ammar AlTahhan on 31/01/2020.
//  Copyright © 2020 Ammar AlTahhan. All rights reserved.
//

import Foundation

class PersistentContainer {
    
    static let shared = PersistentContainer()
    
    var backgroundDataUpload = BackgroundDataUpload()
    
    private init() { }
    
}

class BackgroundDataUpload {
    
    private let latestUploadVO2Key = "healthDataLatestUploadDateVO2"
    private let latestUploadHRVKey = "healthDataLatestUploadDateHRV"
    private let dateFormatter = DateFormatter(dateFormat: "yyyy-MM-dd HH:mm:ss")
    
    fileprivate init() { }
    
    var latestUploadVO2Date: Date? {
        return dateFormatter.date(from: UserDefaults.standard.string(forKey: latestUploadVO2Key) ?? "")
    }
    
    var latestUploadHRVDate: Date? {
        return dateFormatter.date(from: UserDefaults.standard.string(forKey: latestUploadHRVKey) ?? "")
    }
    
    var isTimeForVO2Upload: Bool {
        guard let latestUploadDate = latestUploadVO2Date else { return true }
        let now = Date()
        return now > latestUploadDate.adding(.day, value: 2)
    }
    
    var isTimeForHRVUpload: Bool {
        guard let latestUploadDate = latestUploadHRVDate else { return true }
        let now = Date()
        return now > latestUploadDate.adding(.day, value: 2)
    }
    
    func setLatestUploadVO2JustNow() {
        UserDefaults.standard.set(dateFormatter.string(from: Date()), forKey: latestUploadVO2Key)
    }
    
    func setLatestUploadHRVJustNow() {
        UserDefaults.standard.set(dateFormatter.string(from: Date()), forKey: latestUploadHRVKey)
    }
    
}
