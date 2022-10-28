//
//  ContextMenuDemoApp.swift
//  ContextMenuDemo
//
//  Created by Jero on 2022/10/26.
//

import SwiftUI

@main
struct ContextMenuDemoApp: App {
    var body: some Scene {
        WindowGroup {
            TestTwoView()
                .environmentObject(MemoData())
        }
    }
}
