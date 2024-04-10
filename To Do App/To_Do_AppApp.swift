//
//  To_Do_AppApp.swift
//  To Do App
//
//  Created by Danika Peet on 2024-04-08.
//

import SwiftData
import SwiftUI

@main
struct To_Do_AppApp: App {
    var body: some Scene {
        WindowGroup {
            LandingView()
                .modelContainer(for: TodoItem.self)
        }
    }
}
