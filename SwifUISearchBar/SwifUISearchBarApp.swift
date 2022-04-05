//
//  SwifUISearchBarApp.swift
//  SwifUISearchBar
//
//  Created by 강관구 on 2022/04/05.
//

import SwiftUI

@main
struct SwifUISearchBarApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView(viewModel: ViewModel())
        }
    }
}
