//
//  TestApp.swift
//  Test
//
//  Created by Shenxin Xu on 12/5/23.
//

import SwiftUI
import os
import Smooch
let logger = Logger(subsystem: Bundle.main.bundleIdentifier!, category: "someCategory")

final class AuthDelegate: NSObject, SKTAuthenticationDelegate {
  func onInvalidToken(_ error: Error, handler completionHandler: @escaping SKTAuthenticationCompletionBlock) {
    // retrieve new token
    print("onInvalidToken triggered... nick")
    completionHandler("fake token")
  }
}

@main
struct TestApp: App {
    init() {
        
        let settings = SKTSettings(integrationId: "65031cd01b87d62c86f88d38")
        let ad = AuthDelegate()
        settings.authenticationDelegate = ad
        Smooch.initWith(settings)
        logger.log("after Smooch init...")
    }
    
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
