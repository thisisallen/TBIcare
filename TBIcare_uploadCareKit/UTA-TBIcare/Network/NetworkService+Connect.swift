//
//  Connect.swift
//  UTA-TBIcare
//
//  Created by Ammar AlTahhan on 06/12/2019.
//  Copyright © 2019 Ammar AlTahhan. All rights reserved.
//

import Foundation
import Alamofire
import SwiftyJSON

extension NetworkService {
    
    static func connectCard(completion: @escaping ((Patient?, Error?)->Void)) {
        
        let url = URL(string: connectUrl)!
        
        Alamofire.request(url, method: .get, parameters: nil, encoding: JSONEncoding.default, headers: headers()).responseJSON { (response) in
            switch response.result {
            case .failure(let error):
                completion(nil, error)
            case .success(let value):
                
                let json = JSON(value)
                do {
                    let decoder = JSONDecoder()
                    let patient: Patient = try decoder.decode(Patient.self, from: try json["patient"].rawData())
                    
                    let images = [patient.imageURL ?? ""] + (patient.careTeamContacts?.map({$0.imageUrl ?? ""}) ?? [])
                    ImageCacheManager.shared.cacheImages(withUrls: images) { (success) in
                        completion(patient, nil)
                    }
                    
                } catch {
                    print(error)
                    completion(nil, error)
                }
                
                
            }
        }
        
    }
    
}


