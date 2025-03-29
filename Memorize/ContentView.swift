//
//  ContentView.swift
//  Memorize
//
//  Created by Semih Cetin on 3/28/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        HStack {
            CardView(isFaceUp: true)
            CardView()
            CardView()
            CardView(isFaceUp: true)
        }
        .foregroundColor(.orange)
        .padding()
    }
}

struct CardView: View {
    var isFaceUp: Bool = false
    var body: some View {
        if isFaceUp {
            ZStack(content: {
                RoundedRectangle(cornerRadius: 12)
                    .foregroundColor(.white)
                RoundedRectangle(cornerRadius: 12)
                    .strokeBorder(lineWidth: 2)
                Text("👻")
                    .font(.largeTitle)
            })
        } else {
            RoundedRectangle(cornerRadius: 12)
        }

    }
}

#Preview {
    ContentView()
}
