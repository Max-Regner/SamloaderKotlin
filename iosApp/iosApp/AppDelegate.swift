import Foundation
import Bugsnag
import BugsnagPerformance
import NSExceptionKtBugsnag
import UIKit
import common

class AppDelegate: NSObject, UIApplicationDelegate {
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
        let config = BugsnagConfiguration.loadConfig()
        
        NSExceptionKt.addReporter(.bugsnag(config))
        Bugsnag.start(with: config)
        BugsnagPerformance.start()

        return true
    }
}
