//
//  ContentView.swift
//  Animations
//
//  Created by Omer Cagri Sayir on 26.12.2023.
//

import SwiftUI

struct ContentView: View {
    @State private var isShowingRed = false
    var body: some View {
        VStack {
            Button("Tap me") {
                // do nothing
                withAnimation {
                    isShowingRed.toggle()
                }
            }

            if isShowingRed {
                Rectangle()
                    .fill(.red)
                    .frame(width: 200, height: 200)
                    .transition(.scale)
            }
        }
    }
}

#Preview {
    ContentView()
}
