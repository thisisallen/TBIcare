//
//  Insights.swift
//  UTA-TBIcare
//
//  Created by Ammar AlTahhan on 01/11/2019.
//  Copyright © 2019 Ammar AlTahhan. All rights reserved.
//

import Foundation
import Alamofire
import SwiftyJSON

extension NetworkService {
    
    static func currentUserAttempts(completion: @escaping (([AttemptModel], Score?, Error?)->Void)) {
        
        let url = URL(string: attemptsUrl)!
        
        Alamofire.request(url, method: .get, parameters: nil, encoding: JSONEncoding.default, headers: headers()).responseJSON { (response) in
            switch response.result {
            case .failure(let error):
                completion([], nil, error)
            case .success(let value):
                let json = JSON(value)
                var attempts: [AttemptModel] = []
                for attemptJson in json["attempts"].arrayValue {
                    attempts.append(AttemptModel(dictionary: attemptJson.dictionaryObject ?? [:]))
                }
                
                var score: Score?
                do {
                    score = try JSONDecoder().decode(Score.self, from: (try? json["score"].rawData()) ?? Data())
                } catch {
                    print(error)
                }
                
                completion(attempts, score, nil)
            }
        }
        
    }
    
}
