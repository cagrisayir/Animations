//
//  ContentView.swift
//  Animations
//
//  Created by Omer Cagri Sayir on 26.12.2023.
//

import SwiftUI

struct ContentView: View {
    @State private var animationAmount = 1.0

    var body: some View {
        Button("Tap me") {
//            animationAmount += 1
        }.padding(50)
            .background(.red)
            .foregroundColor(.white)
            .clipShape(Circle())
            .overlay(Circle()
                .stroke(.red)
                .scaleEffect(animationAmount)
                .opacity(2 - animationAmount)
                .animation(
                    .easeOut(duration: 1)
                        .repeatForever(autoreverses: false),
                    value: animationAmount
                )
            )
            .onAppear {
                animationAmount = 2
            }
    }
}

#Preview {
    ContentView()
}
