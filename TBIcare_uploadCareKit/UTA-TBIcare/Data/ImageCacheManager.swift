//
//  Kingfisher.swift
//  UTA-TBIcare
//
//  Created by Ammar AlTahhan on 06/12/2019.
//  Copyright © 2019 Ammar AlTahhan. All rights reserved.
//

import Foundation
import Kingfisher

class ImageCacheManager {
    
    static let shared = ImageCacheManager()
    
    private let cache: ImageCache!
    
    private init() {
        cache = ImageCache.default
        cache.memoryStorage.config.expiration = StorageExpiration.days(14)
        cache.diskStorage.config.sizeLimit = 0
    }
    
    func cacheImage(withUrl resource: Resource, completion: ((Bool)->Void)? = nil) {
        KingfisherManager.shared.retrieveImage(with: resource) { (result) in
            switch result {
            case .success(let value):
                print(value)
                completion?(true)
            case .failure(let err):
                print(err)
                completion?(false)
            }
        }
    }
    
    func cacheImages(withUrls resources: [Resource], completion: ((Bool)->Void)? = nil) {
        var done: [Bool] = []
        func checkDone(number: Int, _ bool: Bool) -> Bool? {
            done.append(bool)
            if number == done.count {
                return done.reduce(true, {$0 && $1})
            }
            return nil
        }
        
        for resource in resources {
            cacheImage(withUrl: resource) { (success) in
                if let done = checkDone(number: resources.count, success) {
                    completion?(done)
                }
            }
        }
    }
    
    func retrieveImage(withUrl key: String?) -> UIImage? {
        return KingfisherManager.shared.cache.retrieveImageInMemoryCache(forKey: key ?? "")?.original
    }
    
    func retrieveImagePath(withUrl key: String?) -> String? {
        return KingfisherManager.shared.cache.cachePath(forKey: key ?? "")
    }
}


extension String: Resource {
    public var cacheKey: String {
        return self
    }
    public var downloadURL: URL {
        return URL(string: self) ?? URL(fileURLWithPath: "")
    }
    
    public var cachedImage: UIImage? {
        return ImageCacheManager.shared.retrieveImage(withUrl: self)
    }
}
