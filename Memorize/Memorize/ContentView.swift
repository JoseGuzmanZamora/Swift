//
//  ContentView.swift
//  Memorize
//
//  Created by José Guzmán on 29/11/24.
//

import SwiftUI

struct ContentView: View {
    let emojis: [String] = ["🤩", "😍" , "🍊", "🤩", "😍" , "🍊"]
    
    var body: some View {
        HStack {
            ForEach(emojis.indices, id: \.self) {index in
                CardView(content: emojis[index])
            }
        }
        .foregroundColor(.orange)
        .padding()
    }
}

struct CardView: View {
    @State var isFaceUp = true
    let content: String
    var body: some View {
        ZStack {
            let roundedRectableBase = RoundedRectangle(cornerRadius: 12)
            if isFaceUp {
                roundedRectableBase
                    .foregroundColor(.white)
                roundedRectableBase
                    .strokeBorder(lineWidth: 10)
                Text(content).font(.largeTitle)
            }
            else {
                roundedRectableBase
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
