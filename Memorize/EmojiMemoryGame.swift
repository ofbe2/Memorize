//
//  EmojiMemoryGame.swift
//  Memorize
//
//  Created by Ivan Sidnev on 12/31/24.
//

import SwiftUI

class EmojiMemoryGame {
    private static let emojis = ["👻", "🎃", "🕷️", "😈", "💀", "🕸️", "🧙🏻‍♀️", "😱", "👹", "🙀", "☠️", "🍭"]
    
    private static func createMemoryGame() -> MemoryGame<String> {
        return MemoryGame(numberOfPairsOfCards: 4) { pairIndex in
            if emojis.indices.contains(pairIndex) {
                return emojis[pairIndex]
            } else {
                return "⁉️"
            }
        }
    }
    
    private var model: MemoryGame<String> = createMemoryGame()
    
    var cards: Array<MemoryGame<String>.Card> { model.cards }
    
    func choose(_ card: MemoryGame<String>.Card) {
        model.choose(card)
    }
}
