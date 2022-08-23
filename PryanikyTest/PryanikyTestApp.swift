//
//  PryanikyTestApp.swift
//  PryanikyTest
//
//  Created by Artem Paliutin on 23/08/2022.
//

import SwiftUI

@main
struct PryanikyTestApp: App {
    
    @StateObject var pryanikyVM = PryanikyVM()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(pryanikyVM)
        }
    }
}
