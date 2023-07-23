//
//  TCATutorialsApp.swift
//  TCATutorials
//
//  Created by satorun on 2023/07/22.
//

import ComposableArchitecture
import SwiftUI

@main
struct TCATutorialsApp: App {
    static let store = Store(initialState: CounterFeature.State()) {
        CounterFeature()
            ._printChanges()
    }
    var body: some Scene {
        WindowGroup {
            CounterView(store: TCATutorialsApp.store)
        }
    }
}
