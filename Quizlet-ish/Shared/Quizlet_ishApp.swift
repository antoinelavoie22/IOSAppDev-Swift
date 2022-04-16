//
//  Quizlet_ishApp.swift
//  Shared
//
//  Created by Antoine Lavoie on 4/15/22.
//

import SwiftUI

@main
struct quizlet_ish: App {
    init() {
        FirebaseApp.configure()
    }
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
