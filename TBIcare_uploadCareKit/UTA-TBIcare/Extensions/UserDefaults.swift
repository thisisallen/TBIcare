//
//  UserDefaults.swift
//  QosoorApp
//
//  Created by Ammar AlTahhan on 16/07/2019.
//  Copyright © 2019 Ammar AlTahhan. All rights reserved.
//

import Foundation

extension UserDefaults {
    func pendingPainAssessment() -> String? {
        return UserDefaults.standard.string(forKey: "pendingPainAssessment")
    }
    
    func pendingWorkoutAssessment() -> String? {
        return UserDefaults.standard.string(forKey: "pendingWorkoutAssessment")
    }
    
    func isAllWorkoutTargetsReached() -> Bool {
        return UserDefaults.standard.bool(forKey: "allWorkoutTargetsReached")
    }
    
    func setPendingPainAssessment(forAttempWithId id: String?) {
        UserDefaults.standard.set(id, forKey: "pendingPainAssessment")
    }
    
    func setPendingWorkoutAssessment(forAttempWithId id: String?) {
        UserDefaults.standard.set(id, forKey: "pendingWorkoutAssessment")
    }
    
    func setAllWorkoutTargetsReached(_ bool: Bool?) {
        UserDefaults.standard.set(bool, forKey: "allWorkoutTargetsReached")
    }
    
    func checkPainAssessment() -> Bool {
        return pendingPainAssessment() != nil
    }
    
    func checkWorkoutAssessment() -> Bool {
        return pendingWorkoutAssessment() != nil
    }
    
    func authToken() -> String {
        return UserDefaults.standard.string(forKey: "authToken") ?? ""
    }
    
    func setAuthToken(_ value: String) {
        return UserDefaults.standard.set(value, forKey: "authToken")
    }
}

extension UserDefaults {
    
    func save<T:Encodable>(customObject object: T, inKey key: String) {
        let encoder = JSONEncoder()
        if let encoded = try? encoder.encode(object) {
            self.set(encoded, forKey: key)
        }
    }
    
    func retrieve<T:Decodable>(object type:T.Type, fromKey key: String) -> T? {
        if let data = self.data(forKey: key) {
            let decoder = JSONDecoder()
            if let object = try? decoder.decode(type, from: data) {
                return object
            }else {
                print("Couldnt decode object")
                return nil
            }
        }else {
            print("Couldnt find key")
            return nil
        }
    }
    
}
