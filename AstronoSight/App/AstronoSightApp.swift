//
//  AstronoSightApp.swift
//  AstronoSight
//
//  Created by Valter A. Machado on 3/21/22.
//

import SwiftUI

@main
struct AstronoSightApp: App {
    @Environment(\.scenePhase) var scenePhase
    
//    @UIApplicationDelegateAdaptor(MyAppDelegate.self) private var appDelegate
    
    init(){}
    
    var body: some Scene {
        WindowGroup {
            MainView()
        }.onChange(of: scenePhase) { newScenePhase in
            switch newScenePhase {
            case .active:
                print("active")
            case .inactive:
                print("inactive")

            case .background:
                print("background")
            @unknown default:
                print("default")
            }
            
        }
    }
}
