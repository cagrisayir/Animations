//
//  ContentView.swift
//  Animations
//
//  Created by Omer Cagri Sayir on 26.12.2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Button("Tap me") {
            
        }.padding(50)
            .background(.red)
            .foregroundColor(.white)
            .clipShape(Circle())
    }
}

#Preview {
    ContentView()
}
