//
//  AppDelegate.swift
//  Life
//
//  Created by Nathan Nguyen on 5/27/23.
//

import SwiftUI
import CoreData

class AppDelegate: NSObject, UIApplicationDelegate {
    lazy var coreDataStack: CoreDataStack = .init(modelName: "mission")
    
    static let sharedAppDelegate: AppDelegate = {
        guard let delegate = UIApplication.shared.delegate as? AppDelegate else {
            fatalError("Unexpected app delegate type, did it change? \(String(describing: UIApplication.shared.delegate))")
        }
        return delegate
    }()
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        // ...
        
        return true
    }
    
    var window: UIWindow?
    
    // ...
    
    func sceneDidEnterBackground(_ scene: UIScene) {
        // Called as the scene transitions from the foreground to the background.
        // Use this method to save data, release shared resources, and store enough scene-specific state information
        // to restore the scene back to its current state.
        AppDelegate.sharedAppDelegate.coreDataStack.saveContext()
    }
}
