//
//  ReceipeAppApp.swift
//  ReceipeApp
//
//  Created by Sai bharadwaj Adapa on 4/11/25.
//

import SwiftUI

@main
struct ReceipeAppApp: App {
    
    @StateObject var viewModel: ViewModel = ViewModel()
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
        .environmentObject(viewModel)
    }
}
