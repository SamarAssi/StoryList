//
//  ContentView.swift
//  StoryList
//
//  Created by Samar Assi on 15/03/2024.
//

import SwiftUI

struct ContentView: View {
    var stories: [Story] = [
        Story(image: UIImage.panda, name: "Panda Picture"),
        Story(image: UIImage.city, name: "City Picture"),
        Story(image: UIImage.flowers, name: "Flowers Picture"),
        Story(image: UIImage.nature, name: "Nature Picture"),
        Story(image: UIImage.lake, name: "Lake Picture")
    ]
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            LazyHStack {
                ForEach(stories) { story in
                    StoryView(name: Text(story.name), image: Image(uiImage: story.image))
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
