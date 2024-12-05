//
//  ContentView.swift
//  Memorize
//
//  Created by José Guzmán on 29/11/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        HStack {
            CardView(isFaceUp: true)
            CardView()
            CardView()
        }
        .foregroundColor(.orange)
        .padding()
    }
}

struct CardView: View {
    var isFaceUp: Bool = false
    var body: some View {
        ZStack {
            if isFaceUp {
                RoundedRectangle(cornerRadius: 12)
                    .foregroundColor(.white)
                RoundedRectangle(cornerRadius: 12)
                    .strokeBorder(lineWidth: 10)
                Text("🤩").font(.largeTitle)
            }
            else {
                RoundedRectangle(cornerRadius: 12)
            }
        }
    }
}











#Preview {
    ContentView()
}
