//
//  ContentView.swift
//  StoryList
//
//  Created by Samar Assi on 15/03/2024.
//

import SwiftUI

struct ContentView: View {
    var images: [String] = ["panda", "nature", "city", "flowers", "lake"]
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack {
                ForEach(images, id: \.self) { image in
                    StoryView(name: Text("\(image.capitalized) Picture"), image: Image(image))
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
