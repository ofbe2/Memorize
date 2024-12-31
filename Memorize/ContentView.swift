//
//  ContentView.swift
//  Memorize
//
//  Created by Ivan Sidnev on 12/30/24.
//

import SwiftUI

struct ContentView: View {
    let emojies = ["👻", "🎃", "🕷️", "😈"]
    
    var body: some View {
        HStack {
            ForEach(emojies.indices, id: \.self) { index in
                CardView(content: emojies[index])
            }
        }
        .foregroundColor(.orange)
        .padding()
    }
}


struct CardView: View {
    @State var isFaceUp = true
    var content: String
    
    var body : some View {
        ZStack {
            let base = RoundedRectangle(cornerRadius: 12)
            if isFaceUp {
                base.fill(.white)
                base.strokeBorder(lineWidth: 2)
                Text(content).font(.largeTitle)
            } else {
                base.fill()
            }
        }
        .onTapGesture {
            isFaceUp.toggle()
        }
    }
}

#Preview {
    ContentView()
}
