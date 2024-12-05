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
    @State var isFaceUp = false
    var body: some View {
        ZStack {
            let roundedRectableBase = RoundedRectangle(cornerRadius: 12)
            if isFaceUp {
                roundedRectableBase
                    .foregroundColor(.white)
                roundedRectableBase
                    .strokeBorder(lineWidth: 10)
                Text("🤩").font(.largeTitle)
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
