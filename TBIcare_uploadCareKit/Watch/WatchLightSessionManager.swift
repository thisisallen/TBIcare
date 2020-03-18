////
////  WatchLightSessionManager.swift
////  UTA-TBIcare
////
////  Created by Ammar AlTahhan on 21/09/2019.
////  Copyright © 2019 Ammar AlTahhan. All rights reserved.
////
//
//import WatchKit
//import WatchConnectivity
//
//class WatchLightSessionManager: NSObject, WCSessionDelegate {
//    
//    func session(_ session: WCSession, activationDidCompleteWith activationState: WCSessionActivationState, error: Error?) {
//        if activationState == .activated {
//            NotificationCenter.default.post(name: NSNotification.Name.watchSessionActiviated, object: nil, userInfo: nil)
//        } else {
//            //
//        }
//    }
//    
//    static let shared = WatchLightSessionManager()
//    
//    var validSession: WCSession? {
//        #if os(iOS)
//        if let session = session, session.isPaired && session.isWatchAppInstalled {
//            return session
//        }
//        #elseif os(watchOS)
//        return session
//        #endif
//        return nil
//    }
//    
//    private override init() {
//        super.init()
//    }
//    
//    private let session: WCSession? = WCSession.isSupported() ? WCSession.default : nil
//
//    func startSession() {
//        session?.delegate = self
//        session?.activate()
//    }
//    
//}
//
//// MARK: Interactive Messaging
//extension WatchLightSessionManager {
//    // Live messaging! App has to be reachable
//    private var validReachableSession: WCSession? {
//        if let session = validSession, session.isReachable {
//            return session
//        }
//        return nil
//    }
//    
//    // Sender
//    func sendMessage(_ message: [String : Any],
//                     replyHandler: (([String : Any]) -> Void)? = nil,
//                     errorHandler: ((Error) -> Void)? = nil) {
//        validReachableSession?.sendMessage(message, replyHandler: replyHandler, errorHandler: errorHandler)
//    }
//    
//    func sendMessageData(_ data: Data,
//                         replyHandler: ((Data) -> Void)? = nil,
//                         errorHandler: ((Error) -> Void)? = nil) {
//        validReachableSession?.sendMessageData(data, replyHandler: replyHandler, errorHandler: errorHandler)
//    }
//    
//    
//    // Receiver
//    func session(_ session: WCSession, didReceiveMessage message: [String : Any], replyHandler: @escaping ([String : Any]) -> Void) {
//        
//        for key in message.keys {
//            if let messageKey = WatchMessage(rawValue: key) {
//                switch messageKey {
//                case .activityList:
//                    
//                    break
//                case .activityTime:
//                    break
//                case .activityDistance:
//                    break
//                case .activitySteps:
//                    break
//                case .activityHeartRate:
//                    break
//                case .activityIdentifier:
//                    break
//                case .activityFinished:
//                    break
//                }
//            } else {
//                replyHandler([:])
//            }
//        }
//        
//    }
//    
//    func session(_ session: WCSession, didReceiveMessageData messageData: Data, replyHandler: @escaping (Data) -> Void) {
//        DispatchQueue.main.async {
//            print(messageData)
//        }
//    }
//}
//
//extension WatchLightSessionManager {
//    
//    // Sender
//    func updateApplicationContext(applicationContext: [String : AnyObject]) throws {
//        if let session = validSession {
//            do {
//                try session.updateApplicationContext(applicationContext)
//            } catch let error {
//                throw error
//            }
//        }
//    }
//    
//    // Receiver
//    func session(_ session: WCSession, didReceiveApplicationContext applicationContext: [String : Any]) {
//        DispatchQueue.main.async {
//            
//        }
//    }
//    
//}
//
//// MARK: User Info
//extension WatchLightSessionManager {
//    
//    // Sender
//    func transferUserInfo(userInfo: [String : AnyObject]) -> WCSessionUserInfoTransfer? {
//        return validSession?.transferUserInfo(userInfo)
//    }
//    
//    func session(session: WCSession, didFinishUserInfoTransfer userInfoTransfer: WCSessionUserInfoTransfer, error: NSError?) {
//        // implement this on the sender if you need to confirm that
//        // the user info did in fact transfer
//    }
//    
//    // Receiver
//    func session(session: WCSession, didReceiveUserInfo userInfo: [String : AnyObject]) {
//        DispatchQueue.main.async {
//            
//        }
//    }
//}
