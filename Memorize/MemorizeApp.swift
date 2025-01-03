//
//  MemorizeApp.swift
//  Memorize
//
//  Created by Ivan Sidnev on 12/30/24.
//

import SwiftUI

@main
struct MemorizeApp: App {
    @StateObject var game = EmojiMemoryGame()
    
    var body: some Scene {
        WindowGroup {
            EmojiMemoryGameView(viewModel: game)
        }
    }
}
