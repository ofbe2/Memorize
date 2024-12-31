//
//  ContentView.swift
//  Memorize
//
//  Created by Ivan Sidnev on 12/30/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        HStack {
            CardView(isFaceUp: false)
            CardView(isFaceUp: true)
            CardView(isFaceUp: true)
            CardView(isFaceUp: false)
        }
        .foregroundColor(.orange)
        .padding()
    }
}


struct CardView: View {
    var isFaceUp: Bool
    
    
    var body : some View {
        ZStack() {
            if isFaceUp {
                RoundedRectangle(cornerRadius: 12)
                    .foregroundColor(.white)
                RoundedRectangle(cornerRadius: 12)
                    .strokeBorder(lineWidth: 2)
                Text("👻").font(.largeTitle)
            } else {
                RoundedRectangle(cornerRadius: 12)
            }
            
        }
    }
}

#Preview {
    ContentView()
}
