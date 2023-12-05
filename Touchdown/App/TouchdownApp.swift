//
//  TouchdownApp.swift
//  Touchdown
//
//  Created by Quest76 on 04.12.2023.
//

import SwiftUI

@main
struct TouchdownApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
            .environmentObject(Shop())
        }
    }
}
