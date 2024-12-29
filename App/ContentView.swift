//
//  ContentView.swift
//  remote-image
//
//  Created by k21047kk on 2024/12/28.
//

import SwiftUI

extension Image {
    func imageModifier() -> some View {
        self.resizable().scaledToFit()
    }
    
    func iconModifier() -> some View {
        self
            .imageModifier()
            .frame(maxWidth: 128)
            .foregroundColor(.purple)
            .opacity(0.5)
    }
}

struct ContentView: View {
    
    private let imageURL:String = "https://credo.academy/credo-academy@3x.png"
    
    
    var body: some View {
        
        AsyncImage(url: URL(string:imageURL)){image in
            image.imageModifier()
        } placeholder: {
            Image(systemName: "photo.circle.fill")
                .iconModifier()

        }.padding(40)
        
    }
}

#Preview {
    ContentView()
}
