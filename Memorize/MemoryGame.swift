//
//  MemorizeGame.swift
//  Memorize
//
//  Created by Ivan Sidnev on 12/31/24.
//

import Foundation


struct MemoryGame<CardContent> {
    var cards: Array<Card>
    
    func choose(card: Card) {
        
    }
    
    struct Card {
        var isFaceUp: Bool
        var isMatched: Bool
        var content: CardContent
    }
}
